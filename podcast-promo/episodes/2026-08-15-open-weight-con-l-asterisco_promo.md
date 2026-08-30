 # Promo — Open weight con l'asterisco: cosa Qwen non ha rilasciato

> File consolidato con TUTTI i deliverable del drop nuovo episodio.
> Generato da `podcast-promo` v4.8 il 2026-08-13.
> Identifier campaign: `ep67_drop`

---

## Cheat sheet

| Campo | Valore |
|-------|--------|
| Titolo | Open weight con l'asterisco: cosa Qwen non ha rilasciato (56 char) |
| Format | numerato |
| Episode number | 67 |
| Drop date | 2026-08-15 13:00 Europe/Rome (sabato) |
| YouTube ID | `Fv1Uf-TksLM` → https://www.youtube.com/watch?v=Fv1Uf-TksLM |
| Spotify Episode ID | `5r7HVXxocIGv9lDezyvvZE` → https://open.spotify.com/episode/5r7HVXxocIGv9lDezyvvZE |
| Apple URL | `null` (da aggiungere post-publish Apple RSS, T+4-24h) |
| Thumbnail path | `/assets/images/episodes/ep67.png` |
| Jekyll post path | `_posts/2026-08-15-open-weight-con-l-asterisco.md` |
| Durata | 1:12:20 (PT1H12M) |
| Host | Stefano, Paolo Antinori, Alessio Soldano |

---

# 1. Titolo

```
Open weight con l'asterisco: cosa Qwen non ha rilasciato
```

56 caratteri. Keyword tech (`Open weight`) nei primi 11 char. Nessun `#N` nel titolo: il numero puntata vive in `episode_number` e nel footer delle descrizioni.

---

# 2. Frasi in sovraimpressione (overlay video)

Citazioni verbatim dal transcript, ancorate al minuto in cui vengono pronunciate.
Ortografia normalizzata per la resa a schermo (`QN3.8` → `Qwen 3.8`, `MacStudio` → `Mac Studio`); le parole pronunciate sono identiche.

## 2.1 Frasi brevi (max 10 parole) — 7

```
[03:08]   "Chi oggi non ha in casa quei 10 Mac Studio?"          (10 parole)
[04:40]   "È un modello open per metà, se vogliamo essere onesti" (10 parole)
[10:07]   "Lo annunciano come subagent workhorse"                  (5 parole)
[26:21]   "È la stessa cosa della dimensione del contesto"         (8 parole)
[39:10]   "Stai firmando digitalmente della roba senza consapevolezza" (7 parole)
[58:16]   "Gli agenti cominciano ad avere una personalità diversa" (8 parole)
[1:08:30] "Io lo vedo esattamente in modo diametralmente opposto"  (8 parole)
```

Motivazione di ogni scelta:

- `03:08` — sarcasmo di Stefano subito dopo il dato dei 2,4 TB, primo momento comico della puntata
- `04:40` — il claim del titolo, detto esplicitamente
- `10:07` — keyword tech + setup per la battuta di Paolo sul "muletto"
- `26:21` — il ponte didattico tra costo di generazione video e dimensione del contesto negli LLM
- `39:10` — chiusura del ragionamento di Paolo sul watermark, la frase più tagliente
- `58:16` — la tesi del secondo tempo, quella su cui Stefano stesso dice "possiamo farci un reel"
- `1:08:30` — dissenso frontale con Dwarkesh Patel, chiusura della puntata

## 2.2 Frasi lunghe (max 20 parole) — 3

```
[02:50] "Qwen 3.8 Max o Non Max quantizzato 8 bit ci vogliono più di 2 TB e mezzo di RAM"          (19 parole)
[34:35] "Se tu non sai qual è il modo con cui hanno influenzato il testo non lo potrai mai trovare" (19 parole)
[55:00] "Siamo forse facendo un passo più vicino a rendere lo sviluppo software un'attività artigianale, meno industriale" (16 parole)
```

Motivazione:

- `02:50` — il numero che smonta la polemica, detto da Alessio
- `34:35` — sintesi del meccanismo watermark, regge come fermo-immagine
- `55:00` — la riflessione di Paolo, il momento più quotabile fuori contesto

Nota: timestamp ±15s. Frasi verbatim: sovrapponi ogni frase intorno al suo timestamp così l'overlay combacia con ciò che si sente.

---

# 3. Brief thumbnail + prompt image pronto

## Brief

| Campo | Valore |
|-------|--------|
| Hook (3 parole) | `OPEN CON ASTERISCO` — split due righe: "OPEN CON" sopra, "ASTERISCO" sotto più grande |
| Tono emozionale | Scettico / contrarian (sopracciglio alzato, mezzo sorriso di chi non se la beve) |
| Background | `#E63946` rosso pieno saturo — drama / controversia |
| Testo | Bianco con outline nero 4px, left side, ~40% larghezza frame |
| Soggetto | 1 host in primo piano, 40-50% del frame, lato destro |
| File output | `/assets/images/episodes/ep67.png` — 1280×720 minimo, 1920×1080 ideale (16:9) |

Scelta colore: gli ultimi 3 drop erano fucsia (07-25), giallo (08-01) e verde (08-08). Il rosso differenzia il feed ed è coerente col tono (polemica community sui rilasci "open").

## Prompt ChatGPT Image 2 (con face reference)

Allega **prima** la foto reale del soggetto, nello stesso turn del prompt.

```
Create a YouTube thumbnail image, 16:9 aspect ratio, photorealistic style,
1280x720 minimum, suitable for a feed at 246x138 pixels.

Use the attached reference photo of the subject as the basis for the portrait.
Maintain the exact facial features, hair, complexion, and identifiable
likeness with high fidelity. Do NOT alter, idealize, beautify, or stylize the
face. Keep the resemblance as close as possible to the reference photo.

Place the subject as a portrait on the right side of the frame, occupying
about 45% of the composition, cropped from the chest up, slight 3/4 profile
angle, head turned toward the camera.

Expression: skeptical and unconvinced, one eyebrow slightly raised, a faint
knowing half-smile, direct eye contact with the camera. Not angry, not
smiling openly, not stiff corporate, not posed-for-LinkedIn.

Background: solid saturated red (#E63946), no elements, no gradient, uniform.

Lighting: dramatic key light from the upper left, shallow depth of field,
subject in focus, background perfectly smooth, 85mm portrait lens feel.

Include the text "OPEN CON ASTERISCO" rendered prominently in the image as
bold condensed sans-serif ultra-heavy weight (Anton / Impact / Bebas Neue
style), white with a 4px black outline, positioned on the left side
vertically centered, split on two lines: first line "OPEN CON", second line
"ASTERISCO" noticeably bigger. The text fills approximately 40% of the frame
width. The text must be perfectly legible, crisp, integrated as part of the
composition, not as watermark, every letter rendered correctly.

Style: high-contrast YouTube thumbnail aesthetic, attention-grabbing in the
feed.

Avoid: circular portrait frames, dark blue cosmic backgrounds, multiple
faces, stiff corporate poses, garbled text, obituary aesthetic, altering or
beautifying the subject's facial features beyond what the reference photo
shows.
```

## Fallback post-production e verifica pre-upload

Se dopo 3-4 tentativi il testo esce sporco: rigenera togliendo il blocco `Include the text ...`, poi aggiungi il testo a mano in Canva / Figma / Photopea.

- Testo: "OPEN CON" / "ASTERISCO" (seconda riga più grande)
- Font: Bebas Neue / Anton / Impact / Montserrat Black
- Colore: bianco, outline nero 4px
- Posizione: left side, verticalmente centrato, ~40% larghezza frame
- Export PNG 1280×720 (o 1920×1080)

Checklist verifica pre-upload:

- [ ] Test leggibilità a 246×138px (preview YT Studio)
- [ ] Volto copre almeno 40% del frame
- [ ] Zero ritratti circolari
- [ ] Zero fondo blu scuro
- [ ] Zero numero episodio visibile
- [ ] Testo leggibile anche in scala di grigi
- [ ] Ogni lettera corretta (occhio a "ASTERISCO")
- [ ] Safe area bottom-right 20% libera
- [ ] File salvato in `/assets/images/episodes/ep67.png`
- [ ] Dimensioni 1280×720 minimo (16:9)

---

# 4. Chapters YouTube

```
00:00 Sondaggio ascoltatori e Qwen 3.8 senza Max
06:08 Kimi K3, Muse Glimmer e il workhorse Nemotron
11:20 Intelligenza ibrida: DGX Spark, RTX e Apple Silicon
16:14 Minimax H3 e le licenze per regione
19:48 LTX 2.5, auto duration e i LoRA
25:25 Attention quadratica e vision language nei prompt video
30:00 Watermark su Claude e AI Act
35:37 Reverse engineering del watermark e Musk
40:28 Detector che sbagliano: Substack e Reddit
44:14 Grok 4.6 e le PR su Hermes
49:07 MuseSpark 1.2, continual learning e memorie condivise
54:37 Sviluppo artigianale e agenti con personalità
58:32 Hermes in vacanza: mappa interattiva e spese
1:04:09 Se ogni installazione diverge, cosa legiferi?
1:07:37 La fine dei modelli open? Al contrario
```

15 capitoli su 1:12:20, intervalli 3,5-6 min. Timestamp ±15s.

---

# 5. Descrizioni YouTube + Spotify + Tag YouTube

## 5.1 Descrizione YouTube

```
Open weight con l'asterisco: Qwen ha rilasciato i pesi di 3.8, ma senza la variante Max, senza vision e con il contesto tagliato. Kimi K3 invece aveva rilasciato tutto, e la differenza si vede su chi ci fa inferenza davvero.

Nella prima parte il giro dei rilasci di queste settimane: Muse Glimmer e Nemotron pensati per girare in locale, il subagent workhorse (o muletto, se preferite la traduzione di Paolo), la corsa all'hardware a memoria condivisa tra DGX Spark, RTX e Apple Silicon. Poi il video open weight, con Minimax H3 che si prende la community a colpi di LoRA e LTX 2.5 che risponde con l'auto duration e una tabella comparativa un po' interessata.

Nella seconda parte Anthropic mette il watermark sui testi di Claude per stare dentro l'AI Act, e ne parliamo per quello che è: un gioco a guardie e ladri che dura da prima di noi. Alessio spiega come funziona davvero il watermark sul testo, Paolo racconta la storia delle mail di Musk e quella volta che Reddit lo ha bannato per un post generato.

Poi la parte che ci ha tenuti più a lungo: il continual learning si sta spostando dai modelli agli harness, gli agenti iniziano ad avere una personalità che dipende da chi li usa, e se ogni installazione prende una deriva diversa diventa complicato perfino capire cosa si legifera. Dwarkesh Patel dà questo per la fine dei modelli open. Noi la vediamo al contrario.

CAPITOLI
00:00 Sondaggio ascoltatori e Qwen 3.8 senza Max
06:08 Kimi K3, Muse Glimmer e il workhorse Nemotron
11:20 Intelligenza ibrida: DGX Spark, RTX e Apple Silicon
16:14 Minimax H3 e le licenze per regione
19:48 LTX 2.5, auto duration e i LoRA
25:25 Attention quadratica e vision language nei prompt video
30:00 Watermark su Claude e AI Act
35:37 Reverse engineering del watermark e Musk
40:28 Detector che sbagliano: Substack e Reddit
44:14 Grok 4.6 e le PR su Hermes
49:07 MuseSpark 1.2, continual learning e memorie condivise
54:37 Sviluppo artigianale e agenti con personalità
58:32 Hermes in vacanza: mappa interattiva e spese
1:04:09 Se ogni installazione diverge, cosa legiferi?
1:07:37 La fine dei modelli open? Al contrario

Ascolta su Spotify: https://open.spotify.com/episode/5r7HVXxocIGv9lDezyvvZE?utm_source=youtube&utm_medium=description&utm_campaign=ep67_drop
Tutti gli episodi e le trascrizioni: https://risorseartificiali.com/?utm_source=youtube&utm_medium=description&utm_campaign=ep67_drop
LinkedIn: https://www.linkedin.com/company/risorseartificiali

Se la puntata ti è servita iscriviti al canale, ci aiuta più di quanto sembri. E diteci nei commenti se volete Ivan Fioravanti in puntata a parlare di inferenza locale.

Risorse Artificiali, AI Engineering in italiano. Puntata #67
```

Lunghezza corpo: 242 parole (chapters e link esclusi).

Primi 125 char (snippet YT feed/search):
`Open weight con l'asterisco: Qwen ha rilasciato i pesi di 3.8, ma senza la variante Max, senza vision e con il contesto tagli`

## 5.2 Descrizione Spotify

Niente timestamp, niente capitoli: Spotify li ignora nella descrizione.

```
Open weight con l'asterisco: Qwen ha rilasciato i pesi di 3.8 senza la variante Max, senza vision e con il contesto tagliato. Kimi K3 aveva rilasciato tutto, e la differenza si vede su chi ci fa inferenza davvero.

Facciamo il giro dei rilasci di queste settimane: Muse Glimmer e Nemotron pensati per girare in locale, il subagent workhorse, la corsa all'hardware a memoria condivisa tra DGX Spark, RTX e Apple Silicon. Poi il video open weight, con Minimax H3 che si prende la community a colpi di LoRA e LTX 2.5 che risponde con l'auto duration.

Nella seconda metà Anthropic mette il watermark sui testi di Claude per stare dentro l'AI Act, e Alessio spiega come funziona davvero un watermark sul testo. Da lì finiamo sul continual learning che si sposta dai modelli agli harness, sugli agenti che iniziano ad avere una personalità diversa a seconda di chi li usa, e su cosa vuol dire legiferare quando ogni installazione prende una deriva sua. Dwarkesh Patel dà questo per la fine dei modelli open, noi la vediamo esattamente al contrario.

Se ti va, segui il podcast: esce ogni sabato.

Puntata #67
```

Lunghezza: 179 parole.

Primi 100 char (snippet Spotify):
`Open weight con l'asterisco: Qwen ha rilasciato i pesi di 3.8 senza la variante Max, senza vision e `

## 5.3 Tag YouTube custom

Pronti da incollare in YouTube Studio → Dettagli → Tag (20 tag, ~60% italiano / 40% inglese):

```
modelli open weight, open weight, Qwen 3.8, Kimi K3, inferenza locale, intelligenza artificiale, AI engineering italia, podcast tech italia, Minimax H3, LTX 2.5, generazione video AI, Nemotron, DGX Spark, Apple Silicon, watermark AI, AI act, continual learning, apprendimento continuo, agenti AI, modelli cinesi
```

Termini pescati dall'episodio: Qwen 3.8 (Max), Kimi K3, Muse Glimmer, MuseSpark 1.2, MuseCode, Nemotron, Minimax H3, LTX 2.5, ComfyUI, GGUF, ROCm, DGX/RTX Spark, Apple Silicon, Mac Studio, Grok 4.6, Hermes, Claude, GLM 5.2, AI Act, LoRA, continual learning.

---

# 6. YouTube Shorts script + Spotify Clip spec

## 6.1 YouTube Shorts script (≈55s)

Segmento scelto: il blocco watermark. È l'unico punto della puntata in cui una notizia mainstream (Anthropic mette il watermark su Claude) viene spiegata a livello di token sampling in 40 secondi, con un finale che è un claim netto e non una conclusione aperta. Regge standalone, senza il contesto precedente.

Montaggio da 3 tagli, voce singola in ciascuno, zero cross-talk:

| Beat | Timestamp | Contenuto |
|------|-----------|-----------|
| Hook 0-8s | `30:15-30:25` | Stefano: "Anthropic ha annunciato che metterà il watermark su tutti i testi generati da Claude. Polemica infinita." |
| Corpo 8-42s | `33:05-33:50` | Alessio: il meccanismo di scelta del token, la discrezionalità statistica, la traccia lasciata nel testo |
| Cliffhanger 42-52s | `34:30-34:47` | Alessio: "Se tu non sai qual è il modo con cui hanno influenzato il testo non lo potrai mai trovare" |
| CTA 52-58s | — | Card finale: "Puntata completa sul canale. Link nel primo commento" |

Testo overlay mute-friendly (grande, per chi guarda senza audio):

```
1. ANTHROPIC METTE IL WATERMARK SU CLAUDE
2. COME FUNZIONA DAVVERO
3. UNA TRACCIA STATISTICA NELLA SCELTA DEI TOKEN
4. SE NON SAI COME L'HANNO FATTO, NON LO TROVI
```

Descrizione Shorts:

```
Anthropic mette il watermark sui testi di Claude per l'AI Act. Alessio spiega come funziona davvero, a livello di scelta del token.

Puntata completa: https://www.youtube.com/watch?v=Fv1Uf-TksLM&utm_source=youtube_short&utm_medium=description&utm_campaign=ep67_drop

#AIEngineering #Claude #AIAct
```

Pinned comment:

```
Puntata intera qui, con il resto: Qwen 3.8 senza Max, video open weight e gli agenti che iniziano ad avere una personalità.
https://www.youtube.com/watch?v=Fv1Uf-TksLM&utm_source=youtube_short&utm_medium=pinned&utm_campaign=ep67_drop
```

**Publishing: sabato 2026-08-15, 13:30-14:00 Europe/Rome** (gap 30-60 min dal long-form). Schedula venerdì T-1.

Razionale: feed Shorts e long-form sono separati su YouTube, non c'è cannibalizzazione, e il drop-day sync amplifica il momentum cross-piattaforma del primo giorno. I 5 Shorts Lun-Ven derivati da puntate passate restano pipeline separata, questa skill non li tocca.

## 6.2 Spotify Clip spec (≈80s)

| Campo | Valore |
|-------|--------|
| Timestamp | `57:10 → 58:32` (≈82s) |
| Relazione con lo Short YT | **Complementare**. Lo Short prende la news (watermark), il Clip prende la tesi evergreen (agenti con personalità). Zero overlap, due bacini di discovery diversi |
| Voce | Stefano, con una interiezione di Alessio a 58:06 ("personalità diverse") che chiude la frase, non la spezza |
| Titolo Clip | `Il tuo Hermes è diverso dal mio Hermes` (38 char) |

Trascrizione del segmento:

```
Gli agenti oggi sono tutti uguali, siamo noi diversi come li usiamo. Ma se si
spinge molto il self-improvement, tanto che il ciclo di miglioramento è molto
più stretto, molto più vicino all'utente, a un certo punto vedremo, già lo
stiamo vedendo, con le memorie condivise. Pensiamo a Hermes: Hermes è il
miglior esempio su questo secondo me. Il tuo Hermes è diverso dal mio Hermes.
E probabilmente se ci scambiassimo i telefoni o gli account, e io utilizzassi
il tuo Hermes e tu utilizzassi il mio, avremmo risultati diversi, non ci
troveremmo. Gli agenti cominciano ad avere una personalità diversa, e questo
è dovuto al fatto che hanno memorizzato modi diversi di comportarsi che noi
gli abbiamo insegnato.
```

Testo overlay Spotify:

```
IL TUO HERMES È DIVERSO DAL MIO
GLI AGENTI HANNO UNA PERSONALITÀ
```

**Publishing: STESSO MOMENTO del drop** (sabato 15/08 13:00). Zero gap: i Clip vanno al discovery feed dei non-follower, gli episodi alla Library dei follower.

---

# 7. Post LinkedIn (host)

```
Il rilascio dei pesi di Qwen 3.8 di questa settimana è arrivato senza la variante Max, senza la parte di vision e con il contesto ridimensionato. La community si è messa a gridare al tradimento nel giro di undici ore, e la cosa curiosa è che quasi nessuno di quelli che protestano potrebbe comunque farlo girare in locale: per la versione quantizzata a 8 bit servono più di due terabyte e mezzo di RAM.

Il punto vero però è un altro, e non riguarda l'etica del rilascio. Riguarda cosa resta fuori. Senza vision non fai i workflow di generazione video che stanno esplodendo adesso, perché per scrivere un prompt decente serve un modello che l'immagine la sappia guardare. E infatti Minimax H3 e LTX 2.5, che i pesi li hanno rilasciati davvero, si stanno prendendo la community a colpi di LoRA.

Nella seconda parte della puntata siamo finiti su una cosa che mi gira in testa da settimane: il continual learning si sta spostando dai modelli agli harness. Il tuo Hermes è già diverso dal mio, perché ha memorizzato modi diversi di lavorare che gli abbiamo insegnato noi. Dwarkesh Patel legge questa deriva come la fine dei modelli open. Io la vedo esattamente al contrario: se ogni installazione prende una strada sua, un modello piccolo che sta sulla tua macchina e impara con te diventa più difendibile, non meno.

Puntata 67, con Paolo Antinori e Alessio Soldano.

https://www.youtube.com/watch?v=Fv1Uf-TksLM&utm_source=linkedin&utm_medium=post&utm_campaign=ep67_drop

#AIEngineering #OpenWeight #LLM #AIagents #ContinualLearning
```

234 parole.

**Publishing hint: martedì 2026-08-18, 14:00 Europe/Rome** (+3 giorni dal drop, peak audience italiano, cavalca la long-tail del weekend). Spotify eventualmente nei commenti.

---

# 8. Sezione newsletter codiceartificiale

Modalità: `bullet` (39 parole). Da inserire **in intro** alla prossima edizione regolare.

```
- Sabato è uscita la puntata 67 di Risorse Artificiali, su Qwen 3.8 rilasciato senza la variante Max, senza vision e col contesto tagliato, e su cosa succede quando il continual learning si sposta dai modelli agli harness. Ascolta: https://www.youtube.com/watch?v=Fv1Uf-TksLM&utm_source=codiceartificiale&utm_medium=newsletter&utm_campaign=ep67_drop
```

**Publishing**: nella prossima edizione regolare di `codiceartificiale`, nessun orario forzato, nessuna sincronizzazione col drop.

---

# 9. Guest Launch Kit

Sezione omessa — non applicabile a episodi numerati.

---

# 10. Checklist Publishing

## PRE-DROP (T-3 → T-1)

- [ ] Genera thumbnail dal prompt del cap. 3 su ChatGPT Image 2, allegando la foto reference
- [ ] Verifica thumbnail a 246×138px, salva in `/assets/images/episodes/ep67.png`
- [ ] Monta le 10 frasi in sovraimpressione del cap. 2 nel video (timestamp ±15s)
- [ ] Commit + push: post Jekyll, promo file, `ep67.png`
- [ ] YT Studio: titolo (cap. 1), descrizione (cap. 5.1), tag (cap. 5.3), chapter (cap. 4), thumbnail → visibilità Programmato sab 13:00
- [ ] Spotify for Creators: descrizione (cap. 5.2) + publish programmato
- [ ] Spotify Clip: prepara il taglio 57:10-58:32 (cap. 6.2)
- [ ] YT Short: edita i 3 tagli (30:15-30:25 / 33:05-33:50 / 34:30-34:47) e schedula **venerdì T-1 per sabato 13:30**

## DROP — sabato 2026-08-15

- [ ] 13:00 YouTube long-form pubblica automatico
- [ ] 13:00 Spotify episodio pubblica automatico
- [ ] 13:00 Spotify Clip: pubblica subito, zero gap
- [ ] 13:30-14:00 YT Short pubblica (già schedulato)
- [ ] Pinned comment sullo Short col deep-link UTM (cap. 6.1)
- [ ] Verifica rendering thumbnail sul feed + CTR primi 30 min

## POST-DROP

- [ ] Mar 18/08 14:00 → post LinkedIn (cap. 7). Spotify nei commenti se vuoi
- [ ] Sezione bullet (cap. 8) nella prossima edizione regolare di `codiceartificiale`
- [ ] T+4-24h → recupera `apple_episode_url` dall'RSS Apple e decommenta il campo nel frontmatter
- [ ] Setup end screen + 5 YT cards (cap. 13)

## MONITORING

- [ ] T+7gg: CTR YT, retention curve, plays Spotify vs storico
- [ ] T+30gg: engagement cumulato, eventuale YT Studio Test & Compare con thumbnail alternativa

---

# 11. Link rapidi

- YT Studio deep-link al video: https://studio.youtube.com/video/Fv1Uf-TksLM/edit
- Video pubblico: https://www.youtube.com/watch?v=Fv1Uf-TksLM
- Spotify episodio: https://open.spotify.com/episode/5r7HVXxocIGv9lDezyvvZE
- Spotify for Creators: https://creators.spotify.com
- Jekyll post path: `_posts/2026-08-15-open-weight-con-l-asterisco.md`
- Thumbnail path: `/assets/images/episodes/ep67.png`
- LinkedIn company: https://www.linkedin.com/company/risorseartificiali
- Substack codiceartificiale: https://codiceartificiale.substack.com

---

# 12. Note operative

- **Formato dei deep-link YT**: usa sempre `https://www.youtube.com/watch?v=Fv1Uf-TksLM&utm_source=...` con la `&`. Il formato `...watch?v=ID?utm_source=` produce un URL malformato e perdi l'attribution.
- **Apple URL**: il frontmatter Jekyll ha `# apple_episode_url:` commentato. Quando Apple Podcasts auto-pubblica via RSS (T+4-24h dal drop), estrai l'URL e decommenta il campo con un micro-commit separato.
- **Preservazione engagement history**: non re-uploadare video/audio dopo il drop. Per correzioni di titolo/descrizione usa edit in-place su YT Studio e Spotify Creators, così preservi le metriche accumulate.
- **UTM campaign**: tutti i link di questo file usano `ep67_drop`. Non modificarlo nelle pubblicazioni, altrimenti perdi l'attribution cross-piattaforma.
- **Frasi overlay**: le frasi del cap. 2 sono verbatim e ancorate al minuto. In montaggio sovrapponi ogni frase intorno al timestamp indicato (±15s), così l'overlay combacia con ciò che si sente.
- **Call to action nella puntata**: in apertura e in chiusura chiedete ai commenti se invitare Ivan Fioravanti. Vale la pena presidiare i commenti nelle prime 48h e, se la risposta è buona, usarla come gancio per il contatto.
- **Thumbnail iteration**: se dopo 48h il CTR è sotto target, usa YT Studio Test & Compare con una thumbnail alternativa (rigenera il prompt del cap. 3 variando palette o espressione).
- **Rilancio futuro**: se a T+90gg l'episodio sottoperforma, considera una nuova thumbnail via `thumbnail-gen` v1.1.

---

# 13. End screen + YT Cards (suggerito da youtube-cross-link v1.2)

<!-- Generato da .claude/skills/youtube-cross-link v1.2 il 2026-08-13.
     Cache canale: .claude/skills/youtube-cross-link/.cache/channel-videos.json (mtime 2026-08-13 22:08).
     Episodio target: Fv1Uf-TksLM | "Open weight con l'asterisco: cosa Qwen non ha rilasciato" | drop 2026-08-15.
     Candidati validi: 47 | pre-screened: 15 | Selezione finale: 1 end screen + 5 cards.
     Numero capitolo N=13 derivato automaticamente (max header # del promo file + 1).
     NB: view_count non disponibile dalla cache flat-playlist yt-dlp -> score
     su semantic (0.55) + recency (0.25), views_log = 0 per tutti. -->

## End screen — 1 video (layout: Subscribe + Video)

| Campo | Valore |
|---|---|
| Titolo target | Open weight americano e Kimi K3: cambio di scena |
| YT ID | `6Q_EmEDixY8` |
| Episodio | 63 (numerato) |
| Pubblicato | 2026-07-18 |
| Views | N/D (cache flat-playlist) |
| URL | https://www.youtube.com/watch?v=6Q_EmEDixY8 |

**Razionale**

È letteralmente il capitolo precedente della stessa storia. Ep63 racconta il cambio di scena sull'open weight con l'arrivo di Kimi K3, e questo episodio riprende esattamente quel filo per dire cosa è successo dopo: Qwen rilascia a metà, e il confronto col rilascio completo di Kimi K3 è il perno dell'argomentazione (min 06:08 di questo episodio). Chi arriva alla fine dell'episodio 67 e ha capito il tema ha una ragione concreta per guardare ep63: è il contesto che rende leggibile la polemica di oggi. Semantic 0.95, recency 0.90 (28 giorni), score finale 0.75, il più alto del set.

**Setup in YT Studio** (~90s)

1. YT Studio → Content → seleziona `Fv1Uf-TksLM` → Editor → End screen
2. Aggiungi elemento → Subscribe (canale Risorse Artificiali)
3. Aggiungi elemento → Video → Specific video → incolla `https://www.youtube.com/watch?v=6Q_EmEDixY8`
4. Layout pre-set "Subscribe + 1 video". Posiziona negli ultimi 20 secondi (da circa `1:12:00` a fine)
5. Save

---

## YT Cards — 5 cards a timestamp specifici del video corrente

### Card 1 — Mostra al min `01:25`

| Campo | Valore |
|---|---|
| Linka video | L'AI fa 10 scoperte matematiche in una settimana |
| YT ID target | `YXGBwrwfpkU` |
| URL | https://www.youtube.com/watch?v=YXGBwrwfpkU |
| Tema della card | Callback diretto all'ospite della settimana scorsa |
| Custom message | `La puntata con Alessandro` |
| Teaser text | `Ep 66 con Maserati` |

**Razionale**

A `01:25` dici testualmente "ringraziamo ancora Alessandro, che è venuto l'altra volta da noi, e con lui abbiamo parlato anche di open weight". È un callback per nome: il viewer sente il riferimento e la card compare nello stesso istante. È il trigger a più alto CTR atteso di tutto il set, perché non chiede al viewer di immaginare la connessione, gliela nomina. Semantic 0.80, recency 0.97 (7 giorni), score 0.68.

---

### Card 2 — Mostra al min `11:20`

| Campo | Valore |
|---|---|
| Linka video | Inferenza europea e zero log \| Eugenio Petullà (Regolo.ai) |
| YT ID target | `gjQOF7CEZQE` |
| URL | https://www.youtube.com/watch?v=gjQOF7CEZQE |
| Tema della card | Dove gira l'inferenza e cosa comporta |
| Custom message | `Inferenza, dove gira` |
| Teaser text | `Intervista Petullà` |

**Razionale**

A `11:20` parte il blocco sull'intelligenza ibrida: DGX Spark, RTX, Apple Silicon, cioè la domanda "dove far girare il modello". L'intervista a Petullà affronta la stessa domanda dal lato opposto, quello di chi l'inferenza la offre come servizio in Europa con zero log. Angolo complementare, non ripetizione: locale vs sovranità del provider. Semantic 0.72, recency 0.89 (31 giorni), score 0.62.

---

### Card 3 — Mostra al min `30:00`

| Campo | Valore |
|---|---|
| Linka video | La politica USA su AI e open source mi fa drizzare i peli |
| YT ID target | `iB9MxO5jn6E` |
| URL | https://www.youtube.com/watch?v=iB9MxO5jn6E |
| Tema della card | Regolamentazione e open source |
| Custom message | `Policy e open source` |
| Teaser text | `Ep 60` |

**Razionale**

A `30:00` si apre il blocco watermark, e il punto chiave è che Anthropic lo fa per aderire all'AI Act. È esattamente il terreno dell'ep60, che guarda alla pressione politica sull'open source dal lato americano. La card arriva nel momento in cui il viewer sta già ragionando su regolamentazione, non prima. Semantic 0.78, recency 0.85 (42 giorni), score 0.64.

---

### Card 4 — Mostra al min `49:07`

| Campo | Valore |
|---|---|
| Linka video | Workflow dinamici: l'AI che si scrive gli harness |
| YT ID target | `A7y6dQdqaIo` |
| URL | https://www.youtube.com/watch?v=A7y6dQdqaIo |
| Tema della card | Harness che si auto-evolvono |
| Custom message | `Harness che si scrivono` |
| Teaser text | `Ep 55` |

**Razionale**

A `49:07` arriva MuseSpark 1.2 trainato insieme al suo harness, e da lì il ragionamento sul continual learning che si sposta dai modelli agli harness. Ep55 è la puntata in cui quel tema è stato aperto per la prima volta e trattato per intero, quindi qui la card offre la versione estesa di un'idea che nell'episodio corrente occupa cinque minuti. Semantic 0.88, recency 0.77 (70 giorni), score 0.68.

---

### Card 5 — Mostra al min `58:32`

| Campo | Valore |
|---|---|
| Linka video | Un AI agent in casa: ecco cosa fa Hermes |
| YT ID target | `uqL22MeZFKI` |
| URL | https://www.youtube.com/watch?v=uqL22MeZFKI |
| Tema della card | Hermes in uso reale |
| Custom message | `Hermes, cosa fa davvero` |
| Teaser text | `Ep 51` |

**Razionale**

A `58:32` Paolo racconta la vacanza pianificata con un agente Hermes su Telegram, subito dopo il claim "il tuo Hermes è diverso dal mio". Ep51 è la puntata dedicata a cosa fa Hermes in casa: chi in questo momento si sta chiedendo "ma cos'è Hermes esattamente" trova la risposta completa a un click. Semantic 0.82, recency 0.69 (98 giorni), score 0.62.

---

## Setup in YT Studio (cards, ~5 min)

1. YT Studio → Content → `Fv1Uf-TksLM` → Editor → Cards
2. Per ogni card: Aggiungi card → Tipo "Video" → incolla l'URL target → imposta "Show card at" al timestamp indicato → compila Custom message e Teaser text dalla tabella
3. Aggiungi tutte e 5 in una sessione, poi Save una volta sola
4. Verifica: scorri ai 5 timestamp e controlla che il teaser appaia per ~5 secondi in alto a destra

## Distribuzione timestamp lungo l'episodio (durata 1:12:20)

| Card | Timestamp | Posizione relativa | Gap dalla precedente |
|---|---|---|---|
| Card 1 | `01:25` | 2% (callback in apertura) | — |
| Card 2 | `11:20` | 16% | 9:55 |
| Card 3 | `30:00` | 41% | 18:40 |
| Card 4 | `49:07` | 68% | 19:07 |
| Card 5 | `58:32` | 81% (prima dell'end screen) | 9:25 |

Nessun cluster: il gap minimo tra card consecutive è 9:25, ampiamente sopra la soglia di 90 secondi. Tutte le card cadono all'inizio del capitolo YouTube corrispondente, quindi il teaser appare quando il tema si apre, non a metà del ragionamento.

## Score breakdown (trasparenza algoritmo)

| Video | Score finale | Semantic | Recency | Views (log) | Note |
|---|---|---|---|---|---|
| Ep 63 — Open weight americano e Kimi K3 | 0.75 | 0.95 | 0.90 | 0.00 | selezionato come **end screen**: score massimo del set e tema centrale, non di striscio |
| Ep 66 — 10 scoperte matematiche | 0.68 | 0.80 | 0.97 | 0.00 | tema: callback per nome all'ospite |
| Ep 55 — Workflow dinamici, harness | 0.68 | 0.88 | 0.77 | 0.00 | tema: harness auto-evolutivi |
| Ep 60 — Politica USA su AI e open source | 0.64 | 0.78 | 0.85 | 0.00 | tema: regolamentazione |
| Ep 51 — Un AI agent in casa: Hermes | 0.62 | 0.82 | 0.69 | 0.00 | tema: Hermes in uso reale |
| Intervista Petullà — Inferenza europea | 0.62 | 0.72 | 0.89 | 0.00 | tema: dove gira l'inferenza |

In panchina, primi esclusi: **ep 64** "Quali skills usiamo davvero per i nostri agenti" (0.64) e **ep 61** "Fable, GPT 5.6 e tanti modelli cinesi" (0.64). Entrambi hanno score da card, ma sono stati esclusi per il vincolo di temi differenti: ep64 si sovrappone a ep51 sul tema agenti personalizzati, ep61 si sovrappone all'end screen sul tema modelli cinesi. Usali come sostituti se una delle 5 card sottoperforma a T+30gg.

## Note operative

- **Views N/D**: la cache `yt-dlp --flat-playlist` non restituisce `view_count`, quindi `views_log = 0` per tutti i candidati e lo score poggia su semantic (0.55) e recency (0.25). Per views reali servirebbe un fetch per-video sui top-15 (~3-5 min in più), non attivo nel flusso di default.
- **Mix format**: 4 numerati + 1 intervista (Petullà). Il pool di candidati fortemente correlati a questo episodio è quasi tutto numerato, le interviste del canale battono altri temi.
- **Diversità temporale**: tutti i selezionati sono entro 3,5 mesi. È una conseguenza del tema: open weight, harness e inferenza locale sono argomenti che il canale ha ripreso di continuo negli ultimi mesi, e i candidati più vecchi hanno match sotto 0.55.
- **End screen e ultimi secondi**: l'end screen occupa parte del frame negli ultimi 20 secondi. L'outro di questo episodio è pulito (saluti dal minuto 1:11:30), nessun contenuto critico da coprire.
- **Misurazione**: YT Studio → Analytics → Engagement → End screens / Cards. Soglia di riferimento: CTR > 2% buono, > 4% ottimo. Se a T+30gg una card è sotto soglia, sostituiscila con uno dei due candidati in panchina.
- **Cache canale**: valida 5 giorni, prossimo refresh suggerito dal 2026-08-18. Per forzarlo, cancella `.claude/skills/youtube-cross-link/.cache/channel-videos.json`.
