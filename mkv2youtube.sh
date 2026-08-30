#!/usr/bin/env bash
#
# mkv2youtube.sh — converte un MKV (1 traccia video + 1 traccia audio) in MP4
# pronto per l'upload su YouTube.
#
# Cosa fa:
#   - Video: se il sorgente e' gia' H.264 8-bit yuv420p lo COPIA senza
#     riencodare (secondi, zero perdita). Altrimenti riencoda con NVENC
#     sulla GPU NVIDIA.
#   - Audio: normalizza sempre a -14 LUFS con loudnorm a due passate
#     (misura reale + correzione lineare), poi AAC 192k 48 kHz stereo.
#   - Container: MP4 con +faststart, cosi' l'upload parte subito.
#
# Uso:
#   ./mkv2youtube.sh input.mkv [output.mp4]
#
# Opzioni:
#   --force-encode     riencoda il video anche se sarebbe copiabile
#   --cpu              usa libx264 CRF 18 preset slow invece di NVENC
#   --nvenc            forza NVENC saltando il test del driver
#   --no-loudnorm      salta la normalizzazione (audio copiato se gia' AAC)
#   --cq N             qualita' NVENC, default 19 (piu' basso = migliore)
#   --tp N             true peak del loudnorm, default -1.5 dBTP
#   --audio-track N    quale traccia audio usare se ce n'e' piu' di una (default 0)
#   -y, --overwrite    sovrascrive l'output se esiste
#   -n, --dry-run      stampa i comandi senza eseguirli
#   -h, --help         questo messaggio
#
set -euo pipefail

# ---------------------------------------------------------------- default ---
TARGET_I=-14          # LUFS, standard YouTube (stesso di normalize_audio.sh)
TARGET_TP=-1.5        # dBTP. -1.5 e non -1 perche' dopo c'e' un encode AAC
TARGET_LRA=11         # loudness range
AAC_BITRATE=192k
NVENC_CQ=19
NVENC_PRESET=p6       # p1 veloce ... p7 lento/migliore
X264_CRF=18
X264_PRESET=slow

FFMPEG="${FFMPEG:-ffmpeg}"     # override: FFMPEG=/usr/bin/ffmpeg ./mkv2youtube.sh ...
FFPROBE="${FFPROBE:-ffprobe}"

ATRACK=0
FORCE_ENCODE=0
USE_CPU=0
FORCE_NVENC=0
DO_LOUDNORM=1
OVERWRITE=0
DRY_RUN=0

# ------------------------------------------------------------------ utils ---
die()  { printf '\033[31mErrore:\033[0m %s\n' "$*" >&2; exit 1; }
info() { printf '\033[36m%s\033[0m\n' "$*"; }
ok()   { printf '\033[32m%s\033[0m\n' "$*"; }
warn() { printf '\033[33mAttenzione:\033[0m %s\n' "$*"; }

usage() { sed -n '3,28p' "$0" | sed 's/^# \{0,1\}//'; exit 0; }

run() {
  if [[ $DRY_RUN -eq 1 ]]; then
    printf '\033[90m[dry-run]\033[0m'; printf ' %q' "$@"; printf '\n'
  else
    "$@"
  fi
}

# Legge un singolo campo da ffprobe. probe <stream_selector> <campo>
# Il `|| true` finale serve perche' `head -1` chiude la pipe in anticipo: con
# `set -o pipefail` il SIGPIPE di ffprobe (141) farebbe abortire lo script.
probe() {
  "$FFPROBE" -v error -select_streams "$1" -show_entries "stream=$2" \
          -of default=noprint_wrappers=1:nokey=1 "$INPUT" 2>/dev/null | head -1 || true
}

# --------------------------------------------------------------- args ------
ARGS=()
while [[ $# -gt 0 ]]; do
  case "$1" in
    --force-encode) FORCE_ENCODE=1; shift ;;
    --cpu)          USE_CPU=1; FORCE_NVENC=0; shift ;;
    --nvenc)        FORCE_NVENC=1; USE_CPU=0; shift ;;
    --no-loudnorm)  DO_LOUDNORM=0; shift ;;
    --cq)           NVENC_CQ="${2:?--cq richiede un valore}"; shift 2 ;;
    --tp)           TARGET_TP="${2:?--tp richiede un valore}"; shift 2 ;;
    --audio-track)  ATRACK="${2:?--audio-track richiede un numero}"; shift 2 ;;
    -y|--overwrite) OVERWRITE=1; shift ;;
    -n|--dry-run)   DRY_RUN=1; shift ;;
    -h|--help)      usage ;;
    -*)             die "opzione sconosciuta: $1 (usa --help)" ;;
    *)              ARGS+=("$1"); shift ;;
  esac
done

[[ ${#ARGS[@]} -ge 1 ]] || die "devi indicare il file di input. Uso: $0 input.mkv [output.mp4]"

INPUT="${ARGS[0]}"
OUTPUT="${ARGS[1]:-${INPUT%.*}.mp4}"

# ------------------------------------------------------------- preflight ---
command -v "$FFMPEG"  >/dev/null || die "$FFMPEG non trovato."
command -v "$FFPROBE" >/dev/null || die "$FFPROBE non trovato."
command -v python3    >/dev/null || die "python3 non trovato (serve per leggere la misura loudnorm)."
FFMPEG_BIN=$(command -v "$FFMPEG")
[[ -f "$INPUT" ]] || die "il file '$INPUT' non esiste."
[[ "$INPUT" != "$OUTPUT" ]] || die "input e output coincidono."

if [[ -e "$OUTPUT" && $OVERWRITE -eq 0 && $DRY_RUN -eq 0 ]]; then
  die "'$OUTPUT' esiste gia'. Usa -y per sovrascrivere."
fi

# Encoder compilato in ffmpeg != encoder utilizzabile: il driver NVIDIA puo'
# essere assente o non funzionante. Un encode finto da 0.2s costa nulla e
# evita di scoprire il problema dopo un'ora di lavoro.
nvenc_usable() {
  "$FFMPEG" -hide_banner -loglevel error -nostdin \
         -f lavfi -i "nullsrc=s=256x144:d=0.2:r=25" \
         -c:v h264_nvenc -f null - >/dev/null 2>&1
}

if [[ $USE_CPU -eq 0 ]]; then
  # La lista va catturata in una variabile: `ffmpeg | grep -q` farebbe uscire
  # grep al primo match, ffmpeg prenderebbe SIGPIPE e con `set -o pipefail`
  # la pipeline tornerebbe 141, cioe' un falso "NVENC non disponibile".
  ENCODERS=$("$FFMPEG" -hide_banner -encoders 2>/dev/null || true)
  if ! grep -q h264_nvenc <<<"$ENCODERS"; then
    warn "h264_nvenc non compilato in $FFMPEG_BIN, uso libx264 su CPU."
    # Tipico in un env conda/homebrew: l'ffmpeg in PATH non e' quello di sistema.
    if [[ "$FFMPEG_BIN" != "/usr/bin/ffmpeg" && -x /usr/bin/ffmpeg ]]; then
      # Anche qui la lista va catturata prima: `... | grep -q` sotto pipefail
      # tornerebbe 141 per SIGPIPE e il suggerimento non comparirebbe mai.
      SYS_ENCODERS=$(/usr/bin/ffmpeg -hide_banner -encoders 2>/dev/null || true)
      if grep -q h264_nvenc <<<"$SYS_ENCODERS"; then
        warn "Pero' /usr/bin/ffmpeg ce l'ha. Per usarlo:"
        warn "  FFMPEG=/usr/bin/ffmpeg FFPROBE=/usr/bin/ffprobe $0 <file.mkv>"
      fi
    fi
    USE_CPU=1
  elif [[ $FORCE_NVENC -eq 0 ]] && ! nvenc_usable; then
    warn "h264_nvenc c'e' ma non e' utilizzabile (driver NVIDIA non risponde: prova 'nvidia-smi')."
    warn "Uso libx264 su CPU: piu' lento ma stesso risultato. Forza la GPU con --nvenc quando il driver torna."
    USE_CPU=1
  fi
fi

# ----------------------------------------------------------------- probe ---
V_CODEC=$(probe v:0 codec_name)
V_PIXFMT=$(probe v:0 pix_fmt)
V_W=$(probe v:0 width)
V_H=$(probe v:0 height)
V_FPS=$(probe v:0 r_frame_rate)
A_CODEC=$(probe "a:$ATRACK" codec_name)
A_CH=$(probe "a:$ATRACK" channels)
A_RATE=$(probe "a:$ATRACK" sample_rate)
A_COUNT=$("$FFPROBE" -v error -select_streams a -show_entries stream=index \
          -of csv=p=0 "$INPUT" | wc -l)
DURATION=$("$FFPROBE" -v error -show_entries format=duration \
           -of default=noprint_wrappers=1:nokey=1 "$INPUT" | cut -d. -f1)

[[ -n "$V_CODEC" ]] || die "nessuna traccia video trovata in '$INPUT'."
[[ -n "$A_CODEC" ]] || die "traccia audio a:$ATRACK non trovata in '$INPUT'."

hms() { printf '%d:%02d:%02d' $(($1/3600)) $((($1%3600)/60)) $(($1%60)); }

info "Sorgente: $INPUT"
echo  "  video : $V_CODEC ${V_W}x${V_H} $V_PIXFMT @ $V_FPS fps"
echo  "  audio : $A_CODEC ${A_CH}ch ${A_RATE} Hz (traccia a:$ATRACK di $A_COUNT)"
echo  "  durata: $(hms "${DURATION:-0}")"
if [[ "$A_COUNT" -gt 1 ]]; then
  warn "il file ha $A_COUNT tracce audio: sto usando a:$ATRACK. Cambiala con --audio-track N."
fi

# ------------------------------------------------- decisione sul video -----
# Copiabile solo se e' gia' H.264 8-bit 4:2:0: e' quello che YouTube ingoia
# senza sorprese e che tutti i player leggono da un MP4.
VIDEO_OPTS=()
if [[ $FORCE_ENCODE -eq 0 && "$V_CODEC" == "h264" && ( "$V_PIXFMT" == "yuv420p" || "$V_PIXFMT" == "yuvj420p" ) ]]; then
  VIDEO_OPTS=(-c:v copy)
  VIDEO_PLAN="copia diretta (nessun re-encode, nessuna perdita)"
elif [[ $USE_CPU -eq 1 ]]; then
  VIDEO_OPTS=(-c:v libx264 -preset "$X264_PRESET" -crf "$X264_CRF"
              -profile:v high -pix_fmt yuv420p -fps_mode cfr
              -x264-params "keyint=$((2*60)):min-keyint=$((2*60))")
  VIDEO_PLAN="re-encode libx264 CRF $X264_CRF preset $X264_PRESET"
else
  VIDEO_OPTS=(-c:v h264_nvenc -preset "$NVENC_PRESET" -tune hq
              -rc vbr -cq "$NVENC_CQ" -b:v 0 -maxrate 40M -bufsize 80M
              -profile:v high -pix_fmt yuv420p -fps_mode cfr
              -spatial-aq 1 -aq-strength 8 -rc-lookahead 32 -bf 3)
  VIDEO_PLAN="re-encode NVENC cq $NVENC_CQ preset $NVENC_PRESET"
fi

# ------------------------------------------------- loudnorm, passata 1 -----
AUDIO_OPTS=()
if [[ $DO_LOUDNORM -eq 1 ]]; then
  info "Passata 1/2: misuro il loudness (solo audio, il video non viene decodificato)."
  if [[ $DRY_RUN -eq 1 ]]; then
    printf '\033[90m[dry-run]\033[0m ffmpeg -i %q -vn -af loudnorm=...print_format=json -f null -\n' "$INPUT"
    MEASURED=(-99 -99 0 -99 0)
  else
    PASS1_LOG=$("$FFMPEG" -hide_banner -nostdin -i "$INPUT" -vn \
      -map "0:a:$ATRACK" \
      -af "loudnorm=I=$TARGET_I:TP=$TARGET_TP:LRA=$TARGET_LRA:print_format=json" \
      -f null - 2>&1) || die "la misura loudnorm e' fallita."

    # Il JSON di loudnorm e' l'ultimo blocco { ... } stampato su stderr.
    mapfile -t MEASURED < <(
      printf '%s\n' "$PASS1_LOG" | python3 -c '
import sys, json, re
raw = sys.stdin.read()
blocks = re.findall(r"\{[^{}]*\}", raw, re.S)
if not blocks:
    sys.exit("nessun JSON loudnorm nell output ffmpeg")
d = json.loads(blocks[-1])
for k in ("input_i", "input_tp", "input_lra", "input_thresh", "target_offset"):
    print(d[k])
' || true
    )
    # mapfile non propaga l'esito della process substitution: controlla i dati.
    [[ ${#MEASURED[@]} -eq 5 ]] || die "non sono riuscito a leggere la misura loudnorm dal log ffmpeg."
    # loudnorm risponde -inf quando la traccia e' silenzio digitale.
    if [[ "${MEASURED[0]}" == "-inf" ]]; then
      warn "la traccia a:$ATRACK e' silenzio digitale: non c'e' niente da normalizzare."
      [[ "$A_COUNT" -gt 1 ]] && warn "Il file ha $A_COUNT tracce audio: prova --audio-track $(( (ATRACK+1) % A_COUNT ))."
      warn "Verifica i livelli reali con:"
      warn "  $FFMPEG -i \"$INPUT\" -map 0:a:$ATRACK -af volumedetect -f null - 2>&1 | grep volume"
      warn "(max_volume -91 dB = registrazione muta)"
      die  "mi fermo per non farti caricare un video senza audio. Con --no-loudnorm converto lo stesso."
    fi
    for v in "${MEASURED[@]}"; do
      [[ "$v" =~ ^[+-]?([0-9]+\.?[0-9]*|\.[0-9]+)$ ]] || die "misura loudnorm non numerica: '$v'."
    done
  fi

  M_I="${MEASURED[0]}"; M_TP="${MEASURED[1]}"; M_LRA="${MEASURED[2]}"
  M_THRESH="${MEASURED[3]}"; M_OFFSET="${MEASURED[4]}"
  echo "  misurato: I=${M_I} LUFS, TP=${M_TP} dBTP, LRA=${M_LRA} -> target ${TARGET_I} LUFS"

  # loudnorm applica la correzione lineare (solo guadagno, mix intatto) solo se
  # il picco risultante resta sotto il tetto TP. Altrimenti passa in dinamica,
  # che comprime: su un podcast e' meglio saperlo prima di lanciare l'encode.
  # int(p*10)/10 tronca verso lo zero: sui negativi e' l'arrotondamento per
  # eccesso, cioe' il tetto minimo che terrebbe la correzione lineare.
  read -r GAIN PRED_TP NORM_MODE TP_SUGG < <(awk -v mi="$M_I" -v mtp="$M_TP" \
      -v ti="$TARGET_I" -v ttp="$TARGET_TP" 'BEGIN{
        g = ti - mi; p = mtp + g; s = int(p*10)/10;
        printf "%+.1f %.2f %s %s\n", g, p, (p > ttp ? "dinamica" : "lineare"),
               (s > -0.3 ? "nessuno" : sprintf("%.1f", s))
      }')
  if [[ "$NORM_MODE" == "dinamica" ]]; then
    warn "servono ${GAIN} dB e il picco arriverebbe a ${PRED_TP} dBTP, sopra il tetto ${TARGET_TP}."
    warn "loudnorm limitera' i picchi invece di applicare solo guadagno: il mix viene toccato."
    if [[ "$TP_SUGG" == "nessuno" ]]; then
      warn "Il guadagno richiesto e' troppo alto per restare lineare senza rasentare lo zero."
      warn "Alternativa: --no-loudnorm e lascia normalizzare YouTube in riproduzione."
    else
      warn "Per restare lineari: --tp ${TP_SUGG} (picchi piu' vicini allo zero) oppure --no-loudnorm."
    fi
  else
    echo "  correzione lineare: ${GAIN} dB, picco previsto ${PRED_TP} dBTP (mix non compresso)"
  fi

  AF="loudnorm=I=$TARGET_I:TP=$TARGET_TP:LRA=$TARGET_LRA"
  AF+=":measured_I=$M_I:measured_TP=$M_TP:measured_LRA=$M_LRA"
  AF+=":measured_thresh=$M_THRESH:offset=$M_OFFSET:linear=true:print_format=summary"

  # loudnorm lavora internamente a 192 kHz: -ar 48000 riporta al rate YouTube.
  AUDIO_OPTS=(-af "$AF" -c:a aac -b:a "$AAC_BITRATE" -ar 48000 -ac 2)
  AUDIO_PLAN="loudnorm 2 passate -> ${TARGET_I} LUFS, AAC $AAC_BITRATE 48 kHz stereo"
elif [[ "$A_CODEC" == "aac" ]]; then
  AUDIO_OPTS=(-c:a copy)
  AUDIO_PLAN="copia diretta (gia' AAC, nessuna normalizzazione)"
else
  AUDIO_OPTS=(-c:a aac -b:a "$AAC_BITRATE" -ar 48000 -ac 2)
  AUDIO_PLAN="AAC $AAC_BITRATE 48 kHz stereo (nessuna normalizzazione)"
fi

# ------------------------------------------------------ passata finale -----
echo
info "Piano di conversione"
echo  "  video : $VIDEO_PLAN"
echo  "  audio : $AUDIO_PLAN"
echo  "  output: $OUTPUT"
echo

[[ $DO_LOUDNORM -eq 1 ]] && info "Passata 2/2: scrivo l'MP4." || info "Scrivo l'MP4."

run "$FFMPEG" -hide_banner -nostdin -stats -y \
  -i "$INPUT" \
  -map 0:v:0 -map "0:a:$ATRACK" -sn -dn \
  -map_metadata 0 -map_chapters 0 \
  "${VIDEO_OPTS[@]}" \
  "${AUDIO_OPTS[@]}" \
  -movflags +faststart \
  "$OUTPUT"

[[ $DRY_RUN -eq 1 ]] && { echo; ok "Dry-run completato, nessun file scritto."; exit 0; }

# ------------------------------------------------------------ verifica -----
echo
OUT_DUR=$("$FFPROBE" -v error -show_entries format=duration \
          -of default=noprint_wrappers=1:nokey=1 "$OUTPUT" | cut -d. -f1)
OUT_V=$("$FFPROBE" -v error -select_streams v:0 -show_entries stream=codec_name,pix_fmt \
        -of csv=p=0 "$OUTPUT")
OUT_A=$("$FFPROBE" -v error -select_streams a:0 -show_entries stream=codec_name,sample_rate,channels \
        -of csv=p=0 "$OUTPUT")
OUT_SIZE=$(du -h "$OUTPUT" | cut -f1)

ok "Fatto: $OUTPUT ($OUT_SIZE)"
echo "  video : $OUT_V"
echo "  audio : $OUT_A"
echo "  durata: $(hms "${OUT_DUR:-0}")"

# Scarto di durata oltre 2 secondi = qualcosa non torna (troncamento, drift).
DELTA=$(( ${OUT_DUR:-0} - ${DURATION:-0} )); DELTA=${DELTA#-}
if [[ $DELTA -gt 2 ]]; then
  warn "la durata differisce di ${DELTA}s dal sorgente. Controlla il file prima di caricarlo."
fi
