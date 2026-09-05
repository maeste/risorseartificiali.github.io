# Promo — 99,9% nel benchmark, 61 nell'indice: il caso GPT-6 Astra

> File consolidato con TUTTI i deliverable del drop nuovo episodio.
> Generato da `podcast-promo` v4.8 il 2026-09-04.
> Identifier campaign: `ep70_drop`

---

## Cheat sheet

| Campo              | Valore                                                                             |
| ------------------ | ---------------------------------------------------------------------------------- |
| Titolo             | 99,9% nel benchmark, 61 nell'indice: il caso GPT-6 Astra                           |
| Format             | numerato                                                                           |
| Episode number     | 70                                                                                 |
| Drop date          | 2026-09-05 13:00 Europe/Rome                                                       |
| YouTube ID         | `y79Nb91Akto` → https://www.youtube.com/watch?v=y79Nb91Akto                        |
| Spotify Episode ID | `50oM4N7LLJLU3szU2Sh2x7` → https://open.spotify.com/episode/50oM4N7LLJLU3szU2Sh2x7 |
| Apple URL          | `null` (da aggiungere post-publish Apple RSS, T+4-24h)                             |
| Thumbnail path     | `/assets/images/episodes/ep70.png`                                                 |
| Jekyll post path   | `_posts/2026-09-05-999-nel-benchmark-61-nellindice-il-caso-gpt-6-astra.md`         |

---

# 1. Titolo

```text
99,9% nel benchmark, 61 nell'indice: il caso GPT-6 Astra
```

56 char. Numerato: numeri contrapposti + keyword tech (`GPT-6 Astra`) nel claim.

# 2. Frasi in sovraimpressione (overlay video)

Citazioni verbatim dal transcript, ancorate al minuto. Distribuite da 05:57 a 1:07:53.

## 2.1 Frasi brevi (max 10 parole) — 7

```text
[05:57] "Astra fa il 99,9" (3 parole)
[17:58] "Costi per intelligent task: Fable 5.1 sfondiamo nuovi massimi" (9 parole)
[28:47] "C'è qualcosa che non torna sui modelli di punta" (8 parole)
[37:17] "Serve quello che mi dà il risultato medio migliore" (9 parole)
[46:52] "Siamo nella fase di ingegnerizzazione dei modelli" (6 parole)
[53:48] "12,9 miliardi di dollari in contanti di piccola taglia" (9 parole)
[1:07:53] "Io ce l'ho un'etica, non sono Astra" (7 parole)
```

## 2.2 Frasi lunghe (max 20 parole) — 3

```text
[08:00] "Maxare il benchmark vuol dire farlo vedere al modello in addestramento" (11 parole)
[41:00] "Stiamo cercando di decidere che macchina devo comprare per portare i figli a scuola" (17 parole)
[54:20] "Usano hardware diverso da Nvidia per fare l'inferenza, 100.000 chip" (11 parole)
```

Motivazioni: [05:57] numero-shock del caso Astra; [08:00] definisce il sospetto overfitting; [17:58] costo reale per intelligent task; [28:47] tesi scettica sull'indice; [37:17] sintesi dell'episodio; [41:00] metafora Formula 1 vs auto di famiglia; [46:52] claim sull'ingegnerizzazione (Qwen 3.8 Flash Next); [53:48] cifra Nvidia-Hugging Face; [54:20] scoop GLM su Huawei Ascent; [1:07:53] chiusura ad arco, momento comedy.

Nota: timestamp ±15s. In montaggio sovrapponi ogni frase intorno al timestamp indicato, così l'overlay combacia con ciò che si sente.

# 3. Brief thumbnail + prompt image pronto

## Brief

| Elemento | Scelta | Derivazione |
|----------|--------|-------------|
| Hook testo | `BENCHMARK MAXATO?` (16 char) | Claim centrale del titolo, il punto interrogativo preserva il dubbio |
| Tono emozionale | Scettico / contrarian | Drama tech + sospetto benchmark maxato |
| Background | `#FFC700` giallo saturo | Tono scettico/shock, non usato negli ultimi 3 drop (rosso, fucsia, verde) |
| Testo colore | Nero bold, nessun outline | Contrasto massimo su giallo |
| Composizione | Host a destra ~60% frame, crop dal petto, testo a sinistra centrato verticalmente ~40% width | Template numerato (volto 40%+ frame) |
| File output | `/assets/images/episodes/ep70.png` (1280×720 min, 16:9) | Convenzione numerato |

Workflow: allega la foto reale dell'host a ChatGPT Image 2 nello stesso turn del prompt, PRIMA di incollarlo. La foto è source of truth del volto.

## Prompt ChatGPT Image 2 (con face reference)

```text
Create a YouTube thumbnail image, 16:9 aspect ratio, photorealistic style,
1280x720 minimum, suitable for a feed at 246x138 pixels.

Use the attached reference photo of the subject as the basis for the portrait.
Maintain the exact facial features, hair, complexion, and identifiable
likeness with high fidelity. Do NOT alter, idealize, beautify, or stylize the
face. Keep the resemblance as close as possible to the reference photo.

Place the subject in a close-up portrait on the right side of the frame,
occupying about 60% of the composition, cropped from the chest up, angled
slightly toward the text.

Expression: skeptical, contrarian, one eyebrow raised, intense focused gaze.
Not smiling, not stiff corporate, not posed-for-LinkedIn: natural analytical
disbelief.

Background: solid saturated yellow (#FFC700), no elements, no gradient,
uniform.

Lighting: dramatic key light from the left, shallow depth of field, subject
in focus, background perfectly smooth, 85mm portrait lens feel.

Include the text "BENCHMARK MAXATO?" rendered prominently in the image as
bold condensed sans-serif ultra-heavy weight (Anton / Impact / Bebas Neue
style), black (#000000) with no outline on the yellow background, positioned
left side vertically centered, filling approximately 40% of the frame width.
The text must be perfectly legible, crisp, integrated as part of the
composition, not as watermark, every letter rendered correctly.

Style: high-contrast YouTube thumbnail aesthetic, attention-grabbing in
the feed.

Avoid: circular portrait frames, dark blue cosmic backgrounds, multiple
faces, stiff corporate poses, garbled text, obituary aesthetic, altering
or beautifying the subject's facial features beyond what the reference
photo shows.
```

Se la prima generazione idealizza il volto, rilancia con: "the subject's facial features must match the reference photo exactly, do not change face shape, jawline, or eye spacing".

## Fallback post-production e verifica pre-upload

Dopo 3-4 tentativi con testo garblato: rigenera senza il blocco `Include the text...`, aggiungi "BENCHMARK MAXATO?" in Canva/Figma/Photopea (Bebas Neue / Anton / Impact, nero, lato sinistro centrato verticalmente, ~40% frame width), esporta PNG 1280×720.

Checklist:
- [ ] Leggibilità a 246×138px (preview feed YT Studio)
- [ ] Volto copre almeno 40% del frame (numerato)
- [ ] Zero ritratti circolari, zero fondo blu scuro, zero numero episodio
- [ ] Ogni lettera del testo corretta (niente glyph strani)
- [ ] Testo leggibile anche in scala di grigi
- [ ] Safe area bottom-right 20% libera (badge durata YT)
- [ ] File in `/assets/images/episodes/ep70.png`, 1280×720 minimo (16:9)

# 4. Chapters YouTube

```text
00:00 GPT-6 Astra e il 99,9% su ARC-AGI
06:18 Overfitting: quando il benchmark è maxato
13:21 Fable 5.1: costi da record e cache
23:10 Il nostro benchmark alla pellicano
25:33 L'indice di Artificial Analysis non torna
33:40 Coding: conta la sensazione d'uso
38:04 Formula 1 o auto per la scuola?
43:18 Qwen 3.8 Flash Next: l'ingegnerizzazione dei modelli
48:34 Waymo in Europa: inferenza locale su TPU
53:46 Nvidia compra Hugging Face, GLM su Huawei
1:00:52 Le licenze open weight cambiano
1:04:07 Hermes in Gen Z, Q&A e OmniRouter
```

12 capitoli, precisione timestamp ±15s.

# 5. Descrizioni YouTube + Spotify + Tag YouTube

## 5.1 Descrizione YouTube

```markdown
GPT-6 Astra fa 99,9% su ARC-AGI-3 ma l'indice di intelligenza gli dà 61: il caso del benchmark maxato, spiegato da chi i benchmark li usa tutti i giorni.

OpenAI ha rilasciato GPT-6 Astra con numeri da record su tutta la linea: incrementi a doppia cifra su ogni benchmark e un 99,9% su ARC-AGI-3 che nessun altro modello sfiora. Ma un benchmark maxato, cioè mostrato al modello in addestramento, vale ancora qualcosa? E perché l'indice di intelligenza di Artificial Analysis gli dà 61, lo stesso punteggio di GLM 5.3 Max?

In puntata Stefano, Paolo e Alessio prendono il rilascio e lo girano al contrario: i costi per intelligent task (Fable 5.1 a 3,69 dollari contro 1,67 di Astra, 8.500 dollari per una test suite completa), i pesi che compongono l'indice, il tasso di allucinazioni che nessuno cita. E tutta la parte che i benchmark non raccontano: Qwen 3.8 Flash Next con l'architettura che arriverà su Qwen 4, l'inferenza locale di Waymo scesa da 250 mila a 50 mila dollari grazie a una TPU di Google, Nvidia che compra Hugging Face per 12,9 miliardi in contanti, GLM che serve 100 mila chip Huawei Ascent e le licenze open weight che non sono più MIT puro.

00:00 GPT-6 Astra e il 99,9% su ARC-AGI
06:18 Overfitting: quando il benchmark è maxato
13:21 Fable 5.1: costi da record e cache
23:10 Il nostro benchmark alla pellicano
25:33 L'indice di Artificial Analysis non torna
33:40 Coding: conta la sensazione d'uso
38:04 Formula 1 o auto per la scuola?
43:18 Qwen 3.8 Flash Next: l'ingegnerizzazione dei modelli
48:34 Waymo in Europa: inferenza locale su TPU
53:46 Nvidia compra Hugging Face, GLM su Huawei
1:00:52 Le licenze open weight cambiano
1:04:07 Hermes in Gen Z, Q&A e OmniRouter

Ascolta l'audio anche su Spotify:
https://open.spotify.com/episode/50oM4N7LLJLU3szU2Sh2x7?utm_source=youtube&utm_medium=description&utm_campaign=ep70_drop

Sito, show notes e trascrizione completa:
https://risorseartificiali.com/?utm_source=youtube&utm_medium=description&utm_campaign=ep70_drop

Iscriviti al canale: AI engineering in italiano, senza hype, ogni sabato.

#70
```

Primi 125 char (snippet YT feed/search): "GPT-6 Astra fa 99,9% su ARC-AGI-3 ma l'indice di intelligenza gli dà 61: il caso del benchmark maxato, spiegato da chi i benchmark li..."

## 5.2 Descrizione Spotify

```markdown
GPT-6 Astra fa 99,9% su ARC-AGI-3 ma l'indice di intelligenza gli dà 61: il caso del benchmark maxato.

OpenAI ha rilasciato GPT-6 Astra con numeri da record su tutta la linea, incluso un 99,9% su ARC-AGI-3 che nessun altro modello sfiora. Ma un benchmark mostrato al modello in addestramento vale ancora qualcosa? E perché l'indice di Artificial Analysis gli assegna 61, pari a GLM 5.3 Max?

Stefano, Paolo e Alessio smontano i numeri del rilascio: i costi per intelligent task di Fable 5.1, i pesi che compongono l'indice, il tasso di allucinazioni. Poi tutto ciò che i benchmark non dicono: Qwen 3.8 Flash Next e l'architettura di Qwen 4, l'inferenza locale di Waymo scesa da 250 a 50 mila dollari, Nvidia che compra Hugging Face per 12,9 miliardi, GLM su 100 mila chip Huawei e le licenze open weight non più MIT puro.

La sintesi: non serve il modello più performante in assoluto, serve quello che dà il risultato medio migliore al minor costo.

Video completo su YouTube:
https://www.youtube.com/watch?v=y79Nb91Akto&utm_source=spotify&utm_medium=description&utm_campaign=ep70_drop

Segui il podcast per il consueto appuntamento del sabato.

#70
```

Primi 100 char (snippet Spotify): "GPT-6 Astra fa 99,9% su ARC-AGI-3 ma l'indice di intelligenza gli dà 61: il caso del benchmark maxato."

## 5.3 Tag YouTube custom

Termini chiave dal transcript: GPT-6 Astra, ARC-AGI-3, overfitting, Artificial Analysis, Fable 5.1, costi per intelligent task, Qwen 3.8 Flash Next, Waymo, Nvidia, Hugging Face, GLM 5.3, Huawei Ascent, licenze open weight.

```csv
GPT-6 Astra,benchmark LLM,ARC-AGI 3,overfitting,OpenAI,Artificial Analysis,Fable 5.1,Anthropic,costi LLM,inferenza locale,Qwen 3.8 Flash Next,Waymo,Nvidia Hugging Face,GLM 5.3,Huawei Ascent,open weight,AI engineering italiano,podcast AI italiano,intelligenza artificiale
```

19 tag, ~60% IT / ~40% EN, pronti per YouTube Studio > Dettagli > Tag.

# 6. YouTube Shorts script + Spotify Clip spec

## 6.1 YouTube Shorts script

Segmento: **[07:35 - 08:27]** (~52s), voce Stefano, zero cross-talk. È il claim centrale dell'episodio (il benchmark maxato) con chiusura ironica, completo e self-contained.

Script (montaggio del segmento reale):
- Hook 0-3s: "Ci vorranno mesi o anni per maxare questo benchmark. Ecco: ci ha messo settimane." (taglia la ripetizione "ci ha mette" in edit)
- Corpo 3-40s: "Poi hanno maxato il benchmark, che in gergo maxare il benchmark vuol dire farlo vedere al modello in addestramento, e quindi poi per forza capace di farlo. Di solito accusano i cinesi di fare qualcosa lì, però non so se chi scaglia la prima pietra..."
- Cliffhanger 40-50s: "...il primo che alza la mano e dice chi ha fatto la scorreggia, poi è lui che l'ha fatta." + overlay "Ma allora il 99,9% conta?"
- CTA 50-60s: "Il caso GPT-6 Astra completo nell'episodio, link nel primo commento."

Testo overlay mute-friendly:
1. `99,9% su ARC-AGI-3`
2. `MAXARE = farlo vedere in addestramento`
3. `Chi accusa... sei sicuro?`
4. `L'episodio completo è sul canale`

Descrizione Shorts:
```markdown
Il 99,9% di GPT-6 Astra su ARC-AGI-3, spiegato in 60 secondi. L'episodio completo: https://www.youtube.com/watch?v=y79Nb91Akto&utm_source=youtube_short&utm_medium=description&utm_campaign=ep70_drop
```

Pinned comment:
```markdown
L'episodio completo: https://www.youtube.com/watch?v=y79Nb91Akto&utm_source=youtube_short&utm_medium=pinned&utm_campaign=ep70_drop
```

Publishing: STESSO GIORNATE del long-form, sabato 2026-09-05 ~13:30 Europe/Rome (strategia canale: Short del drop a drop day, gap 30-60 min). Schedulabile in anticipo, YT genera l'URL all'upload.

## 6.2 Spotify Clip spec

Segmento: **[40:36 - 42:06]** (~90s), voce Paolo, una voce sola, self-contained. Complementare allo Short (scetticismo sul numero vs metafora dell'acquisto reale). È il momento più memorabile e il più adatto ai non-follower.

Trascrizione (verbatim ripulita): "Talvolta sembra che, se facessimo una trasposizione di questo lavoro dei modelli, è come se parlassimo di automobili. Da un lato guardiamo le macchine di Formula 1 che vanno 300 all'ora su un circuito, ma sono praticamente delle astronavi. Ma poi in pratica stiamo cercando di decidere tra di noi che macchina devo comprare per portare i figli a scuola, e i criteri non sono gli stessi: non guardo la velocità, guardo il rapporto costi qualità, l'efficienza, una curva dove la media è il valore più significativo, non tanto il valore massimo raggiunto."

Overlay Spotify: `Quale macchina compri per la scuola?`
Titolo Clip (39 char): `I modelli LLM non sono auto di Formula 1`

Publishing: STESSO MOMENTO del drop (sabato 2026-09-05 13:00), zero gap.

# 7. Post LinkedIn (host)

```markdown
GPT-6 Astra fa 99,9% su ARC-AGI-3. L'indice di intelligenza di Artificial Analysis gli dà 61, lo stesso punteggio di GLM 5.3 Max.

Uno dei due numeri dice qualcosa che non torna.

Abbiamo passato la puntata a girare il rilascio al contrario: un benchmark "maxato" è un benchmark che il modello ha già visto in addestramento, e a quel punto il 99,9% si legge in un altro modo. Abbiamo guardato i costi per intelligent task (una test suite completa: 8.500 dollari con Fable 5.1, 3.000 con GPT-6), i pesi con cui l'indice aggrega i benchmark e il tasso di allucinazioni che nessuno cita nei thread entusiasti.

E siamo finiti dove finiamo di solito: a cercare la macchina giusta per portare i figli a scuola, non la Formula 1. Ormai il modello giusto è quello che dà il risultato medio migliore, al costo minore, nel tempo minore. Non è solo sensazione: Google la pensa così con Gemini Flash, e Qwen 3.8 Flash Next sta ingegnerizzando i modelli per girare su hardware normale.

Episodio completo (dentro c'è anche Waymo scesa a 50 mila dollari di allestimento e Nvidia che compra Hugging Face per 12,9 miliardi):
https://www.youtube.com/watch?v=y79Nb91Akto&utm_source=linkedin&utm_medium=post&utm_campaign=ep70_drop

#AIEngineering #LLM #GPT6 #Benchmark
```

~195 parole. Publishing hint: martedì 2026-09-08 14:00 Europe/Rome (+3 giorni dal drop, peak audience italiano).

# 8. Sezione newsletter codiceartificiale

Modalità `bullet` (30-50 parole), da inserire in intro:

```markdown
- Sabato è uscito "99,9% nel benchmark, 61 nell'indice: il caso GPT-6 Astra": smontiamo i numeri del rilascio OpenAI, i costi reali per intelligent task e perché l'indice di Artificial Analysis non torna. Ascolta: https://www.youtube.com/watch?v=y79Nb91Akto&utm_source=codiceartificiale&utm_medium=newsletter&utm_campaign=ep70_drop
```

35 parole effettive. Publishing: prossima edizione regolare di codiceartificiale, nessun orario forzato.

# 9. Guest Launch Kit (solo se intervista)

Sezione omessa — non applicabile a episodi numerati.

# 10. Checklist Publishing

PRE-DROP (T-1gg, venerdì 2026-09-04):
- [ ] Genera thumbnail dal prompt del cap. 3 (ChatGPT Image 2 + foto reale) → `/assets/images/episodes/ep70.png`
- [ ] Monta le frasi in sovraimpressione nel video (cap. 2, timestamp ±15s)
- [ ] Commit + push: post Jekyll + thumbnail + promo file
- [ ] YouTube Studio: titolo (cap. 1) / descrizione (cap. 5.1) / tag (cap. 5.3) / capitoli (cap. 4) / thumbnail + visibilità Programmata sabato 13:00
- [ ] Spotify for Creators: metadati + descrizione (cap. 5.2) + publish programmato sabato 13:00
- [ ] Prepara Spotify Clip [40:36-42:06] (cap. 6.2) per pubblicarla a drop
- [ ] Edita + schedula YT Short [07:35-08:27] per sabato ~13:30 (drop day)
- [ ] codiceartificiale: bullet del cap. 8 nella prossima edizione

DROP (sabato 2026-09-05):
- [ ] 13:00 YouTube long-form pubblica automatico
- [ ] 13:00 Spotify episodio pubblica automatico
- [ ] 13:00 Spotify Clip: pubblica SUBITO (zero gap)
- [ ] ~13:30-14:00 YT Short (stesso giorno del drop, gap 30-60 min)
- [ ] Pinned comment sullo Short (template cap. 6.1)
- [ ] Verifica thumbnail rendering + CTR primi 30 min

POST-DROP:
- [ ] Mar 2026-09-08 14:00 LinkedIn post (cap. 7)
- [ ] codiceartificiale prossima edizione (cap. 8)
- [ ] T+4-24h: Apple URL retrofit via RSS → campo `apple_episode_url` del frontmatter Jekyll

MONITORING:
- [ ] T+7 (sab 2026-09-12): CTR YT, retention, Spotify plays vs storico
- [ ] T+30 (lun 2026-10-05): engagement cumulato, eventuale Test & Compare thumbnail

# 11. Link rapidi

- YT Studio deep-link al video: https://studio.youtube.com/video/y79Nb91Akto/edit
- Spotify for Creators: https://creators.spotify.com
- Jekyll post path: `_posts/2026-09-05-999-nel-benchmark-61-nellindice-il-caso-gpt-6-astra.md`
- Thumbnail path: `/assets/images/episodes/ep70.png`
- LinkedIn company: https://www.linkedin.com/company/risorseartificiali
- Substack codiceartificiale: https://codiceartificiale.substack.com

# 12. Note operative

- **Apple URL**: il frontmatter Jekyll ha `# apple_episode_url:` commentato. Quando Apple Podcasts auto-pubblica via RSS (T+4-24h dal drop), estrai l'URL e decommenta il campo con un micro-commit separato.
- **Preservazione engagement history**: NON re-uploadare video/audio dopo il drop. Per correzioni di titolo/descrizione usa edit in-place su YT Studio e Spotify Creators.
- **UTM campaign**: tutti i link in questo file usano `ep70_drop`. Non modificarlo nelle pubblicazioni (altrimenti perdi attribution cross-piattaforma).
- **Frasi overlay**: verbatim e ancorate al minuto. In montaggio sovrapponi ogni frase intorno al timestamp (±15s).
- **Short del drop**: pubblica lo Short lo STESSO giorno del long-form (gap 30-60 min), non il lunedì successivo. Canale a regime: 6 Shorts/settimana (5 Lun-Ven derivati + 1 a drop day).
- **Thumbnail iteration**: se dopo 48h il CTR YT è sotto target, usa YT Studio Test & Compare per A/B test (rigenera il prompt del cap. 3 variando palette/espressione).
- **Rilancio futuro**: se a T+90gg l'episodio sottoperforma, considera nuova thumbnail via `thumbnail-gen` v1.1 (per numerati).
- **Workflow tip**: la thumbnail è al cap. 3 (early nel flusso). Lancia in parallelo ChatGPT Image 2 (con foto reference) così hai già la thumbnail pronta per YT Studio.

---

# 13. End screen + YT Cards (suggerito da youtube-cross-link v1.2)

<!-- Generato da .claude/skills/youtube-cross-link v1.2 il 2026-09-04 (modalita' automatica, Passaggio 12 di podcast-promo v4.8).
     Cache canale: .claude/skills/youtube-cross-link/.cache/channel-videos.json (refresh 2026-09-04, 87 video).
     Episodio target: y79Nb91Akto | "99,9% nel benchmark, 61 nell'indice: il caso GPT-6 Astra" | drop 2026-09-05.
     Candidati validi: 27 | pre-screened top-15 | Selezione finale: 1 end screen + 5 cards.
     Numero capitolo N = 13 derivato automaticamente (max header # del promo file = 12, +1).
     NB: view_count non disponibile dalla cache flat-playlist yt-dlp -> score
     su semantic (0.55) + recency (0.25), views_log = 0 per tutti. -->

## End screen — 1 video (layout: Subscribe + Video)

| Campo | Valore |
|---|---|
| Titolo target | Era stealth, era GLM: 5.3 Flash e i numeri da giganti (ep69) |
| YT ID | `_C22mIG9LZs` |
| Durata | 71:20 |
| Views (al 2026-09-04) | N/D (flat-playlist non espone view_count) |
| Pubblicato | 2026-08-29 |
| URL | https://www.youtube.com/watch?v=_C22mIG9LZs |

**Razionale**: è il callback più diretto dell'intero canale. L'episodio corrente chiude il cerchio aperto sette giorni fa: ep69 annunciava Nvidia-Hugging Face come voce ("Nvidia compra Hugging Face: il parallelo GitHub", min 20:30) che in ep70 diventa ufficiale per 12,9 miliardi; il capitolo "GLM 5.3 Flash: benchmark, costi, 6B attivi" (min 56:25) è il presupposto della discussione su Z.AI/Huawei Ascent; e Free LLM API (ep69) riceve in ep70 il follow-up OmniRouter. Score 0.77 (semantic 0.95, recency 0.97). Vince come end screen perché offre la continuazione naturale della terna Cina-hardware-open weight, non un semplice accenno.

**Setup in YT Studio** (operativo, ~90s):

1. YT Studio → Content → seleziona video corrente → Editor → End screen
2. Aggiungi elemento → Subscribe (canale Risorse Artificiali, già selezionato di default)
3. Aggiungi elemento → Video → Specific video → incolla URL sopra
4. Layout: pre-set "Subscribe + 1 video". Posiziona negli ultimi 20 secondi (timestamp consigliato: ~72:50 → fine).
5. Save.

---

## YT Cards — 5 cards a timestamp specifici del video corrente

Le YT Cards si configurano in YT Studio → Editor video → Cards. Ogni card mostra un teaser nell'angolo superiore destro per 5-10 secondi al timestamp impostato, poi resta cliccabile come icona "i" fino a fine video.

### Card 1 — Mostra al min `13:21` del video corrente

| Campo | Valore |
|---|---|
| Linka video | Fable, GPT 5.6 e tanti modelli cinesi (ep61) |
| YT ID target | `Xsmd-qbtgVA` |
| URL | https://www.youtube.com/watch?v=Xsmd-qbtgVA |
| Tema della card | Costi reali dei modelli |
| Custom message (opzionale) | Costi reali dei modelli |
| Teaser text (opzionale) | Quanto costa davvero Fable |

**Razionale**: al min 13:21 si apre il capitolo "Fable 5.1: costi da record e cache" (3,69 dollari per intelligent task, 8.500 dollari di test suite). Ep61 al min 32:33 ("Costi reali: Fable, Grok e Sonnet più di Opus") affronta lo stesso tema con l'angolo del confronto storico tra modelli, e al min 1:00:34 ("LongCat 2.0 trainato su chip Huawei") anticipa proprio lo scoop Huawei ripreso in questo episodio. La card aggancia il viewer nel momento di massima rilevanza tematica.

---

### Card 2 — Mostra al min `25:33` del video corrente

| Campo | Valore |
|---|---|
| Linka video | L'AGI è un asintoto: perché non serve la perfezione (ep65) |
| YT ID target | `ay18maVnX_k` |
| URL | https://www.youtube.com/watch?v=ay18maVnX_k |
| Tema della card | Benchmark e scetticismo sui punteggi |
| Custom message (opzionale) | Benchmark inversi |
| Teaser text (opzionale) | Quanto sbagli, non quanto sai |

**Razionale**: al min 25:33 parte la polemica sull'indice di Artificial Analysis (Astra Max a 61). Ep65 al min 12:55 ("Benchmark inversi: non cosa sai fare, quanto sbagli") è l'episodio più coerente sul tema "i punteggi non dicono quello che sembrano", e al min 27:41 tratta Inkling/Thinking Machines Lab, la stessa realtà citata nella polemica dei 42 punti. Complementare, non ridondante.

---

### Card 3 — Mostra al min `43:18` del video corrente

| Campo | Valore |
|---|---|
| Linka video | Bannato da GLM: hybrid routing con LiteLLM (ep68) |
| YT ID target | `Y7gkGLG4LPY` |
| URL | https://www.youtube.com/watch?v=Y7gkGLG4LPY |
| Tema della card | Qwen 3.8 e modelli open nel quotidiano |
| Custom message (opzionale) | Qwen 3.8 in locale |
| Teaser text (opzionale) | Coding su 16 giga |

**Razionale**: al min 43:18 si discute Qwen 3.8 Flash Next e l'architettura di Qwen 4. Ep68 al min 19:55 ("Qwen 3.8 27B: coding su 16 giga") è l'esperienza pratica dello stesso modello su hardware modesto, e al min 46:15 ("Report Hugging Face sui modelli open") fornisce il contesto del mercato open weight citato a più riprese nell'episodio corrente. Dalla teoria architetturale alla pratica.

---

### Card 4 — Mostra al min `48:34` del video corrente

| Campo | Valore |
|---|---|
| Linka video | Physical AI: VLA contro World Model (ep58) |
| YT ID target | `8Dlsukidue4` |
| URL | https://www.youtube.com/watch?v=8Dlsukidue4 |
| Tema della card | Guida autonoma e edge inference |
| Custom message (opzionale) | Waymo e guida autonoma |
| Teaser text (opzionale) | Robotica su quattro ruote |

**Razionale**: al min 48:34 si apre il capitolo Waymo (allestimento da 250 a 50 mila dollari, TPU locale, arrivo in Europa). Ep58 al min 10:36 ("Edge, cloud e i dati di Tesla e Waymo") e al min 1:03:39 ("Guida autonoma in Europa e sovranità") trattano esattamente il binomio edge-vs-cloud e l'arrivo in Europa, con l'angolo della robotica. È l'unico candidato con doppio capitolo dedicato al tema.

---

### Card 5 — Mostra al min `1:00:52` del video corrente

| Campo | Valore |
|---|---|
| Linka video | Open weight con l'asterisco: cosa Qwen non ha rilasciato (ep67) |
| YT ID target | `Fv1Uf-TksLM` |
| URL | https://www.youtube.com/watch?v=Fv1Uf-TksLM |
| Tema della card | Licenze open weight |
| Custom message (opzionale) | Licenze open weight |
| Teaser text (opzionale) | Open, con l'asterisco |

**Razionale**: al min 1:00:52 parte "Le licenze open weight cambiano" (GLM 5.3 non più MIT, MiniMax M3 retroattivo, ipotesi licenza OEM). Ep67 è l'episodio-madre di questo tema: dal min 16:14 ("Minimax H3 e le licenze per regione") al min 1:07:37 ("La fine dei modelli open? Al contrario"), con in apertura proprio "Qwen 3.8 senza Max" (00:00). Continuità perfetta di una serie tematica interna al canale.

---

## Setup in YT Studio (cards, operativo ~5min)

1. YT Studio → Content → video corrente → Editor → Cards
2. Per ogni card sopra:
   a. Click "Aggiungi card" → Tipo "Video" → incolla URL del video target
   b. Imposta "Show card at" al timestamp indicato
   c. (Opzionale) Compila Custom message + Teaser text dai campi della tabella
3. Aggiungi tutte e 5 in una sessione, poi un solo Save a fine.
4. Verifica: riproduci il video, scorri ai timestamp, controlla il teaser (~5s nell'angolo superiore destro).

## Distribuzione timestamp lungo l'episodio

| Card | Timestamp video corrente | Posizione relativa |
|---|---|---|
| Card 1 | 13:21 | 18% (primi 15-20%) |
| Card 2 | 25:33 | 35% |
| Card 3 | 43:18 | 60% |
| Card 4 | 48:34 | 67% |
| Card 5 | 1:00:52 | 83% (verso la fine, prima dell'end screen) |

<!-- Distribuzione: card 1 nei primi 20%, card 2 a metà, card 5 verso fine prima dell'end screen.
     Gap minimi tra card consecutive: 12:12, 17:45, 5:16, 12:18 (tutti > 90s). -->

## Score breakdown (trasparenza algoritmo)

| Video | Score finale | Semantic | Recency | Views (log) | Note |
|---|---|---|---|---|---|
| ep69 Era stealth, era GLM | 0.77 | 0.95 | 0.97 | 0.00 (N/D) | end screen: callback diretto Nvidia-HF/ox-alpha/Free LLM |
| ep67 Open weight con l'asterisco | 0.67 | 0.80 | 0.92 | 0.00 (N/D) | card 5: tema licenze open weight |
| ep68 Bannato da GLM | 0.63 | 0.72 | 0.95 | 0.00 (N/D) | card 3: Qwen 3.8 locale + report HF open |
| ep65 L'AGI è un asintoto | 0.62 | 0.72 | 0.88 | 0.00 (N/D) | card 2: benchmark inversi + Inkling |
| ep61 Fable, GPT 5.6 e cinesi | 0.62 | 0.75 | 0.81 | 0.00 (N/D) | card 1: costi reali + LongCat/Huawei |
| ep58 Physical AI | 0.55 | 0.66 | 0.77 | 0.00 (N/D) | card 4: Waymo/edge/guida autonoma Europa |

<!-- Pesi: semantic 0.55, recency 0.25 (decay esponenziale half-life 6 mesi), views log-normalizzata 0.20.
     Recency = exp(-ln(2) * mesi_trascorsi / 6), calcolata sulla data Jekyll come proxy di upload YT.
     views_log = 0 per tutti: la cache flat-playlist yt-dlp non espone view_count.
     Selezione con vincoli: 5 temi diversi (costi, benchmark, Qwen locale, guida autonoma, licenze),
     timestamp distribuiti, mix temporale (tutti i selezionati < 3 mesi: pool candidati a alto score
     è recent-heavy per natura del tema "drop di modelli"). -->

## Note operative

- **Cards visibili sia su mobile che desktop**: teaser di pochi secondi al timestamp, poi icona "i" cliccabile fino a fine video.
- **End screen e ultimi secondi**: lascia 15-20 secondi finali con outro pulito (no contenuto critico sovrapposto).
- **Misurazione**: YT Studio → Analytics → Engagement → "End screens" e "Cards". Soglie: CTR card > 2% buono, > 4% ottimo.
- **Refresh cache canale**: valida 5 giorni (prossimo refresh suggerito: 2026-09-09).
- **Re-invocazione**: se a T+30gg il CTR è sotto soglia, re-invoca la skill: il capitolo #13 viene sovrascritto dopo conferma.
- **Nessun match decente**: non applicato, tutti i selezionati hanno score >= 0.55.
