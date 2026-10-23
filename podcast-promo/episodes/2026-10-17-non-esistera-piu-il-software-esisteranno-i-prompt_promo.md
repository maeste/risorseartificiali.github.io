# Promo — Non esisterà più il software: esisteranno i prompt

> File consolidato con TUTTI i deliverable del drop nuovo episodio.
> Generato da `podcast-promo` v4.8 il 2026-10-16.
> Identifier campaign: `ep76_drop`

---

## Cheat sheet

| Campo | Valore |
|-------|--------|
| Titolo | Non esisterà più il software: esisteranno i prompt |
| Format | numerato |
| Episode number | 76 |
| Drop date | 2026-10-17 13:00 Europe/Rome |
| YouTube ID | `1iG4T-AEMSA` → https://www.youtube.com/watch?v=1iG4T-AEMSA |
| Spotify Episode ID | `2T1IqGIJfUk14UrsWHBb5Y` → https://open.spotify.com/episode/2T1IqGIJfUk14UrsWHBb5Y |
| Apple URL | `null` (da aggiungere post-publish Apple RSS, T+4-24h) |
| Thumbnail path | `/assets/images/episodes/ep76.png` |
| Jekyll post path | `_posts/2026-10-17-non-esistera-piu-il-software-esisteranno-i-prompt.md` |

---

# 1. Titolo

```
Non esisterà più il software: esisteranno i prompt
```

50 caratteri. Angolo: hook contrarian (la tesi estremizzata da Stefano a 47:00).

# 2. Frasi in sovraimpressione (overlay video)

## 2.1 Frasi brevi (max 10 parole) — 7

```
[12:00] "questa roba consuma la batteria in una follia" (8 parole)
[25:00] "dover pagare per regalarti pure i miei dati" (8 parole)
[31:10] "produciamo dati per le macchine" (5 parole)
[38:15] "non serve neanche più un Linus Torvalds" (7 parole)
[44:30] "tutto il loro codice è scritto dagli agenti" (8 parole)
[47:00] "non esisterà più il software, esisteranno i prompt" (8 parole)
[55:30] "i miei risultati non sono stati entusiasmanti" (7 parole)
```

## 2.2 Frasi lunghe (max 20 parole) — 3

```
[01:07] "stavo sperando questa settimana che l'AI ci rubasse il lavoro, ma non me lo ruba mai il suo lavoro l'AI" (20 parole)
[28:10] "Abbiamo finito i dati reali e quindi dobbiamo creare un universo fittizio ma non artificiale, praticamente concreto, reale" (18 parole)
[1:02:00] "oggi i migliori modelli fanno molto meglio di lui che ha un appassionato evoluto di modellazione 3D" (17 parole)
```

Nota: timestamp ±15s, frasi verbatim dal transcript (overlay combacia con l'audio).
Correzioni ASR applicate: "Linux Torvalds" → "Linus Torvalds".

# 3. Brief thumbnail + prompt image pronto

## Brief

- Episodio: 76 (numerato). Titolo: "Non esisterà più il software: esisteranno i prompt"
- Hook 3 parole: `ESISTERANNO I PROMPT` (20 char)
- Tono emozionale: deciso / sfidante (predizione contrarian)
- Background: fucsia saturo `#FF006E` (ultimi drop: rosso `#E63946` ep75, giallo `#FFC700` ep74, verde `#39FF14` ep73)
- Composizione: host primo piano 55% frame lato destro, crop dal petto, testo a sinistra
- Testo: bianco, outline nero 4px, bold condensed (Anton/Bebas Neue style), ~40% frame width
- File output: `/assets/images/episodes/ep76.png`, 1280x720 minimo (16:9)
- Reference photo: allegare SEMPRE foto reale dell'host (source of truth, nessuna
  descrizione fisica nel prompt) nello stesso turn del prompt

## Prompt ChatGPT Image 2 (con face reference)

```
Create a YouTube thumbnail image, 16:9 aspect ratio, photorealistic style,
1280x720 minimum, suitable for a feed at 246x138 pixels.

Use the attached reference photo of the subject as the basis for the portrait.
Maintain the exact facial features, hair, complexion, and identifiable
likeness with high fidelity. Do NOT alter, idealize, beautify, or stylize the
face. Keep the resemblance as close as possible to the reference photo.

Place the subject in a close-up portrait on the right side of the frame,
occupying about 55% of the composition, cropped from the chest up, slight
3/4 profile angle toward the text.

Expression: decisive and defiant, steady confident gaze into the camera,
subtle contrarian half-smile. Not stiff corporate, not posed-for-LinkedIn:
natural focused intensity, like he just made a bold prediction he is sure
about.

Background: solid saturated fuchsia (#FF006E), no elements, no gradient,
uniform.

Lighting: dramatic key light from the left, shallow depth of field, subject
in focus, background perfectly smooth, 85mm portrait lens feel.

Include the text "ESISTERANNO I PROMPT" rendered prominently in the image as
bold condensed sans-serif ultra-heavy weight (Anton / Impact / Bebas Neue
style), white with a 4px black outline, positioned on the left side
vertically centered, filling approximately 40% of the frame width. The text
must be perfectly legible, crisp, integrated as part of the composition, not
as watermark, every letter rendered correctly.

Style: high-contrast YouTube thumbnail aesthetic, attention-grabbing in
the feed.

Avoid: circular portrait frames, dark blue cosmic backgrounds, multiple
faces, stiff corporate poses, garbled text, obituary aesthetic, altering
or beautifying the subject's facial features beyond what the reference
photo shows.
```

## Fallback post-production (se il testo esce sporco)

1. Rigenera senza il blocco "Include the text..."
2. Aggiungi il testo a mano in Canva / Figma / Photopea: `ESISTERANNO I PROMPT`,
   font Anton o Bebas Neue, bianco, outline nero 4px, lato sinistro centrato
   verticalmente, ~40% frame width
3. Export PNG 1280x720

## Checklist verifica pre-upload

- [ ] Testo leggibile a 246x138px (preview feed YT Studio)
- [ ] Volto copre almeno il 40% del frame
- [ ] Zero ritratti circolari, zero fondo blu scuro, zero numero episodio
- [ ] Ogni lettera del testo corretta
- [ ] Safe area bottom-right 20% libera (badge durata YT)
- [ ] File in `/assets/images/episodes/ep76.png`, 1280x720 minimo

# 4. Chapters YouTube

```
00:00 Gemini 4, gadget AI e i rallentamenti
02:24 Meta SDK: l'AI arriva su ESP32
10:34 Batteria, sensori e privacy dei gadget
15:57 Amazon Frontier: gadget e abbonamento
22:08 Il vero business: i dati per il training
28:00 World model, Rick and Morty e Matrix
32:40 Reverse Engineer Anything: i cloni via AI
41:44 Anthropic smantella Git: ecco Xeon
45:45 Solo prompt: la fine del software?
52:30 Benchmark skateboard: Step 5 e Wonder
58:47 Gemini 4 Argon: coding, consumer e 3D
```

11 chapter, precisione ±15s.

# 5. Descrizioni YouTube + Spotify + Tag YouTube

## 5.1 Descrizione YouTube

```
Anthropic ha smantellato Git e riscritto il versioning per i suoi agenti. E se il prossimo passo fosse smettere di scrivere software?

In questa puntata parliamo dei segnali che arrivano da tutti i fronti: Anthropic ha sostituito Git con Xeon perché tutto il loro codice è scritto dagli agenti, il repo Reverse Engineer Anything ha fatto 30 mila stelle in una settimana promettendo di clonare Photoshop e Office, e la tesi più estrema gira già nei lab: non esisterà più il software, esisteranno i prompt.

Poi gadget: Meta esce con gli SDK per portare i suoi modelli su ESP32 e Raspberry, Amazon risponde con Frontier e un braccialetto a 12 dollari al mese, e Stefano spiega perché per le big tech il valore non è l'abbonamento: sono i dati di voce e video per trainare modelli e robot.

Chiudiamo con i modelli usciti questa settimana: Gemini 4 Argon, ottimo nei benchmark ma più consumer che developer, Step 5 Preview open weight e la rassegna skateboard sul nostro benchmark visuale.

Capitoli:
00:00 Gemini 4, gadget AI e i rallentamenti
02:24 Meta SDK: l'AI arriva su ESP32
10:34 Batteria, sensori e privacy dei gadget
15:57 Amazon Frontier: gadget e abbonamento
22:08 Il vero business: i dati per il training
28:00 World model, Rick and Morty e Matrix
32:40 Reverse Engineer Anything: i cloni via AI
41:44 Anthropic smantella Git: ecco Xeon
45:45 Solo prompt: la fine del software?
52:30 Benchmark skateboard: Step 5 e Wonder
58:47 Gemini 4 Argon: coding, consumer e 3D

Ascolta l'episodio anche su Spotify:
https://open.spotify.com/episode/2T1IqGIJfUk14UrsWHBb5Y?utm_source=youtube&utm_medium=description&utm_campaign=ep76_drop

Sito, post e materiali:
https://risorseartificiali.com/?utm_source=youtube&utm_medium=description&utm_campaign=ep76_drop

Iscriviti al canale: il prossimo episodio arriva ogni sabato alle 13:00.

#76
```

Primi 125 char (snippet YT feed/search): "Anthropic ha smantellato Git e riscritto il versioning per i suoi agenti. E se il prossimo passo fosse smettere di scrivere"

Lunghezza totale: ~245 parole.

## 5.2 Descrizione Spotify

```
E se il software finisse e restassero solo i prompt? Gli agenti scrivono tutto il codice di Anthropic, finché Git non basta più.

In puntata: il repo Reverse Engineer Anything fa 30 mila stelle in una settimana e promette di clonare Photoshop e Office. Meta apre i suoi modelli agli SDK per ESP32 e Raspberry, Amazon risponde con i gadget Frontier e un abbonamento a 12 dollari al mese. E la tesi più estrema: con modelli così efficienti, il software come artefatto potrebbe sparire, restano i prompt. Chiudiamo con le uscite della settimana, da Gemini 4 Argon a Step 5 Preview, e il solito benchmark skateboard con Stefano, Paolo e Alessio.

Segui il canale per non perdere il prossimo episodio: AI engineering in italiano, ogni settimana.

Guarda l'episodio anche su YouTube:
https://www.youtube.com/watch?v=1iG4T-AEMSA&utm_source=spotify&utm_medium=description&utm_campaign=ep76_drop

#76
```

Primi 100 char (snippet Spotify): "E se il software finisse e restassero solo i prompt? Gli agenti scrivono tutto il codice di Anthropic,"

Lunghezza totale: ~160 parole. No timestamp/capitoli.

## 5.3 Tag YouTube custom

```
intelligenza artificiale, AI, podcast tech italia, ai engineering italia, agenti AI, coding agent, programmazione con l'AI, il futuro del software, prompt engineering, solo prompt niente software, reverse engineer anything, claude code, anthropic, git versionamento, gemini 4 argon, step 5 modello cinese, esp32, meta ai gadget, amazon frontier, llm in produzione
```

20 tag: 3 generici, 6 long-tail, mix ~50% IT / ~50% EN.

# 6. YouTube Shorts script + Spotify Clip spec

## 6.1 YouTube Shorts script

Segmento: `46:30-47:30` circa. Motivo: la tesi che dà il titolo all'episodio, voce sola di Stefano, claim contro-intuitivo che regge da solo.

Script:
- Hook 0-3s: "Non esisterà più il software: esisteranno soltanto i prompt."
- Corpo 3-40s: i modelli stanno diventando così efficienti che dato il prompt generano l'applicazione in pochi secondi. Per le cose piccole, che oggi sono la maggioranza, conservare il codice su Git perde significato: quello che conta è il risultato descritto, non l'artefatto.
- Cliffhanger 40-50s: "E se il punto non è il codice ma la specifica, che fine fa il vostro repository?"
- CTA 50-60s: "Episodio completo sul canale, link nel primo commento."

Testo overlay (viewer mute):
1. "IL SOFTWARE SCOMPARE?"
2. "RESTANO SOLO I PROMPT"
3. "CODICE SU GIT? FORSE NO"
4. "EPISODIO COMPLETO NEL CANALE"

Descrizione Short:

```
La tesi più estrema sul futuro del software: modelli così efficienti che l'artefatto da conservare non è più il codice. Episodio completo: https://www.youtube.com/watch?v=1iG4T-AEMSA&utm_source=youtube_short&utm_medium=description&utm_campaign=ep76_drop
```

Pinned comment:

```
Episodio completo qui: https://www.youtube.com/watch?v=1iG4T-AEMSA&utm_source=youtube_short&utm_medium=pinned&utm_campaign=ep76_drop
```

Publishing: Lun 09:00 Europe/Rome (lunedì 19/10/2026, gap 2gg dal drop). Schedulabile in anticipo: YT genera l'URL all'upload, il deep-link funziona prima del go-live.

## 6.2 Spotify Clip spec

- Segmento: `24:15-25:45` (90s). Relazione con lo Short: complementare (lo Short copre la tesi prompt-only, la Clip la tesi dati dei gadget).
- Motivo: claim forte, self-contained, voce sola di Stefano, zero cross-talk.
- Trascrizione segmento: "raccogliere i dati di come voi vi muovete e di come è il mondo attorno a voi per trainare i robot. Quei dati lì e quelle telecamere sempre accese sono interessanti per quello più che per la privacy. Il video serve a trainare robot, la voce serve a trainare modelli di linguaggio. E quindi la cosa che a me fa girare le scatole è dover pagare per regalarti pure i miei dati, capito? Se non c'è modo di scaricarli, no grazie."
- Overlay Spotify: "PAGHI PER REGALARE I TUOI DATI" (6 parole)
- Titolo Clip (44/50 char): "Il vero business dei gadget AI: i tuoi dati"

Publishing: STESSO MOMENTO del drop (zero gap). Spotify Clips va al discovery feed dei non-follower.

# 7. Post LinkedIn (host)

```
Anthropic ha smantellato Git. Internamente hanno riscritto il versioning da zero (lo chiamano Xeon) perché gli agenti generano più codice di quanto un clone distribuito riesca a reggere.

Nel frattempo su GitHub un repo che promette di clonare Photoshop e Office a partire da una collezione di skill e MCP server ha fatto 30 mila stelle in una settimana. Si chiama, sentenziosamente, Reverse Engineer Anything.

Ma il pezzo forte ce l'abbiamo detto a voce: se i modelli diventano abbastanza efficienti da rigenerare l'applicazione dal prompt in pochi secondi, l'artefatto da conservare non è più il codice. È il prompt. O, in chiave spec-driven, la specifica.

Che fine fa allora il vostro repository? Ne parliamo nell'episodio 76, insieme ai gadget AI di Meta e Amazon (spoiler: il prodotto vero sei tu che parli), al benchmark skateboard su Step 5 e Wonder e a Gemini 4 Argon.

https://www.youtube.com/watch?v=1iG4T-AEMSA&utm_source=linkedin&utm_medium=post&utm_campaign=ep76_drop

#AIEngineering #CodingAgents #AIagents #SoftwareDevelopment #PromptEngineering
```

Publishing hint: Mar 14:00 Europe/Rome (martedì 20/10/2026, +3gg dal drop, peak audience italiano).

# 8. Sezione newsletter codiceartificiale

Modalità: `bullet` (39 parole, link escluso). Da inserire nell'intro della prossima edizione regolare.

```markdown
- Sabato è uscito "Non esisterà più il software: esisteranno i prompt": Anthropic smantella Git per i suoi agenti, Reverse Engineer Anything fa 30 mila stelle in una settimana e i gadget AI di Meta e Amazon registrano tutto. Ascolta: https://www.youtube.com/watch?v=1iG4T-AEMSA&utm_source=codiceartificiale&utm_medium=newsletter&utm_campaign=ep76_drop
```

Publishing: nella prossima edizione regolare di codiceartificiale (no orario forzato).

# 9. Guest Launch Kit (solo se intervista)

Sezione omessa: non applicabile a episodi numerati.

# 10. Checklist Publishing

Drop: sabato 17/10/2026, 13:00 Europe/Rome.

## PRE-DROP (T-3gg → T-1gg)

- [ ] Generare la thumbnail dal prompt del cap. 3 (ChatGPT Image 2 + foto reference host) e salvarla in `/assets/images/episodes/ep76.png`
- [ ] Montare le frasi in sovraimpressione nel video (cap. 2, timestamp ±15s)
- [ ] Commit + push: post Jekyll + thumbnail + file promo consolidato
- [ ] YouTube Studio: titolo (cap. 1), descrizione (5.1), tag (5.3), chapter (cap. 4), thumbnail + visibilità "Programmato" sabato 13:00
- [ ] Spotify for Creators: metadati + descrizione (5.2) + publish programmato + prepara la Clip (6.2)
- [ ] codiceartificiale: inserire il bullet (cap. 8) nella prossima edizione regolare della newsletter
- [ ] YouTube Shorts: editare lo Short (6.1) + schedulare lunedì 19/10 ore 09:00

## DROP (sabato 17/10/2026, 13:00)

- [ ] YouTube long-form: pubblicazione automatica
- [ ] Spotify: pubblicazione automatica
- [ ] Spotify Clip: pubblica SUBITO dopo il drop (zero gap)
- [ ] Verifica thumbnail rendering + CTR primi 30 min

## POST-DROP

- [ ] Lunedì 19/10 ore 09:00: YT Short va live
- [ ] Martedì 20/10 ore 14:00: post LinkedIn (cap. 7)
- [ ] codiceartificiale: sezione nell'edizione più vicina
- [ ] T+4-24h: Apple URL retrofit nel post Jekyll (campo commentato nel frontmatter)

## MONITORING

- [ ] T+7gg: CTR YT, retention, Spotify plays vs storico
- [ ] T+30gg: engagement cumulato, eventuale YT Studio Test & Compare con thumbnail alternativa

## Link di pubblicazione

- YT Studio: https://studio.youtube.com
- Spotify for Creators: https://creators.spotify.com
- Substack dashboard: https://substack.com
- LinkedIn company: https://www.linkedin.com/company/risorseartificiali

# 11. Link rapidi

- YT Studio deep-link al video: https://studio.youtube.com/video/1iG4T-AEMSA/edit
- Spotify for Creators: https://creators.spotify.com
- Jekyll post path: `_posts/2026-10-17-non-esistera-piu-il-software-esisteranno-i-prompt.md`
- Thumbnail path: `/assets/images/episodes/ep76.png`
- LinkedIn company: https://www.linkedin.com/company/risorseartificiali
- Substack codiceartificiale: https://codiceartificiale.substack.com

# 12. Note operative

- **Apple URL**: il frontmatter Jekyll ha `# apple_episode_url:` commentato.
  Quando Apple Podcasts auto-pubblica via RSS (T+4-24h dal drop), estrai l'URL
  e decommenta il campo con un micro-commit separato.
- **Preservazione engagement history**: NON re-uploadare video/audio dopo
  il drop. Per correzioni di titolo/descrizione usa edit in-place su YT Studio
  e Spotify Creators per preservare le metriche accumulate.
- **UTM campaign**: tutti i link in questo file usano `ep76_drop` come
  campaign. Non modificarlo nelle pubblicazioni (altrimenti perdi attribution
  cross-piattaforma).
- **Frasi overlay**: le frasi del cap. 2 sono verbatim e ancorate al minuto.
  In fase di montaggio sovrapponi ogni frase intorno al timestamp indicato
  (±15s), cosi' l'overlay combacia con cio' che si sente.
- **Thumbnail iteration**: se dopo 48h il CTR YT e' sotto target, usa YT
  Studio Test & Compare per A/B test con una thumbnail alternativa (rigenera
  il prompt del cap. 3 variando palette/espressione).
- **Rilancio futuro**: se a T+90gg l'episodio sottoperforma, considera nuova
  thumbnail via `thumbnail-gen` v1.1.
- **Workflow tip**: la thumbnail e' al cap. 3 (early nel flusso). Lancia in
  parallelo ChatGPT Image 2 (con foto reference) mentre la skill prosegue,
  cosi' hai gia' la thumbnail pronta quando devi caricarla in YT Studio.

---

# 13. End screen + YT Cards (suggerito da youtube-cross-link v1.2)

<!-- Generato da .claude/skills/youtube-cross-link v1.2 il 2026-10-16.
     Cache canale: .claude/skills/youtube-cross-link/.cache/channel-videos.json (timestamp 2026-10-16).
     Episodio target: 1iG4T-AEMSA | "Non esisterà più il software: esisteranno i prompt" | drop 2026-10-17.
     Candidati pre-screened: 15 (su 33 validi) | Selezione finale: 1 end screen + 5 cards.
     Numero capitolo 13 derivato automaticamente (max header # del promo file + 1).
     NB: view_count non disponibile dalla cache flat-playlist yt-dlp -> score
     su semantic (0.55) + recency (0.25), views_log = 0 per tutti. -->

## End screen — 1 video (layout: Subscribe + Video)

| Campo | Valore |
|---|---|
| Titolo target | L'AGI personale è già in vendita: Muse, Dots e Grokbot (ep 74) |
| YT ID | LkyUYux9AWE |
| Durata | 72:40 |
| Views (al 2026-10-16) | N/D (cache flat-playlist) |
| Pubblicato | 2026-10-03 |
| URL | https://www.youtube.com/watch?v=LkyUYux9AWE |

**Razionale** (perche' questo video, in 3-5 righe):

L'episodio 76 discute i gadget AI di Meta citando esplicitamente i modelli
visti "in un'altra puntata" ("adesso c'e' quello di Muse, di Meta, e i dots
di OpenAI, abbiamo parlato in un'altra puntata", ~09:30): quella puntata e'
l'ep 74. Il suo capitolo 08:39 "Il Tamagotchi di Meta e gli occhiali audio"
e il capitolo 15:54 "Dots e il problema del go-to-market" danno la visione
completa del tema gadget AI che qui tocca di striscio in apertura. Score
recency 0.95 (2 settimane), semantic 0.92 (callback diretto per nome dei
prodotti), il punteggio piu' alto del pool. Come end screen offre il
continuamento naturale al viewer che ha appena visto la puntata.

**Setup in YT Studio** (operativo, ~90s):

1. YT Studio → Content → seleziona video corrente → Editor → End screen
2. Aggiungi elemento → Subscribe (canale Risorse Artificiali, gia' selezionato di default)
3. Aggiungi elemento → Video → Specific video → incolla URL sopra
4. Layout: pre-set "Subscribe + 1 video" (template B). Posiziona end screen negli ultimi 20 secondi del video corrente (timestamp consigliato: durata totale - 0:20 → fine).
5. Save.

---

## YT Cards — 5 cards a timestamp specifici del video corrente

Le YT Cards si configurano in YT Studio → Editor video → Cards. Ogni card mostra un teaser nell'angolo superiore destro per 5-10 secondi al timestamp impostato, poi resta cliccabile come icona "i" fino a fine video.

### Card 1 — Mostra al min `06:46` del video corrente

| Campo | Valore |
|---|---|
| Linka video | Un AI agent in casa: ecco cosa fa Hermes (ep 51) |
| YT ID target | uqL22MeZFKI |
| URL | https://www.youtube.com/watch?v=uqL22MeZFKI |
| Tema della card | Agenti AI personali su hardware |
| Custom message (opzionale) | Hermes, l'agente in casa |
| Teaser text (opzionale) | Il tuo agente personale |

**Razionale**:

Al min `06:46` Paolo chiede a Stefano "un Hermes che muove le braccia? Non
ce l'hai ancora?" e a 09:30 cita Hermes come esempio di agente che "forse
sara' la cosa che ha presa": la puntata 51 e' tutta sul setup quotidiano di
Hermes Agent in casa (cap 1:01:30). Card di callback per nome su un tema
che qui e' solo battuta.

---

### Card 2 — Mostra al min `26:15`

| Campo | Valore |
|---|---|
| Linka video | Sign in with OpenAI: l'abbonamento diventa un portafoglio (ep 75) |
| YT ID target | QaeBULeqFH8 |
| URL | https://www.youtube.com/watch?v=QaeBULeqFH8 |
| Tema della card | Embedding multimodali su device |
| Custom message (opzionale) | Embedding Gemma su device |
| Teaser text (opzionale) | Vettori multimodali |

**Razionale**:

Al min `26:15` Stefano spiega come con gli embedding si proiettano audio,
video e testo nello stesso spazio e cita "i modelli di embedding come quelli
di cui parlavamo l'ultima volta, tipo Gemma 2 Embedding": il riferimento e'
il capitolo 54:18 "Embedding Gemma: vettori multimodali su device" dell'ep
75, uscito la settimana scorsa. Aggancio diretto al capitolo citato.

---

### Card 3 — Mostra al min `28:30`

| Campo | Valore |
|---|---|
| Linka video | Physical AI: VLA contro World Model (ep 58) |
| YT ID target | 8Dlsukidue4 |
| URL | https://www.youtube.com/watch?v=8Dlsukidue4 |
| Tema della card | World model e dati per robot |
| Custom message (opzionale) | World model vs VLA |
| Teaser text (opzionale) | Dati per i robot |

**Razionale**:

Al min `28:30` Stefano dice che "i world model sono la versione super
primordiale" di Matrix e che "noi stiamo fornendo i dati alle macchine":
l'ep 58 approfondisce esattamente quel tema (cap 03:00 "VLA contro World
Model e il problema dei dati", cap 10:36 sui dati di Tesla e Waymo per il
training dei robot). Complemento tecnico alla tesi dati della puntata.

---

### Card 4 — Mostra al min `45:45`

| Campo | Valore |
|---|---|
| Linka video | L'AI un anno dopo (ep 52) |
| YT ID target | O6GRm6llGl0 |
| URL | https://www.youtube.com/watch?v=O6GRm6llGl0 |
| Tema della card | Fine dell'epoca delle app |
| Custom message (opzionale) | Nessun software difendibile |
| Teaser text (opzionale) | La fine delle app |

**Razionale**:

Al min `45:45` arriva la tesi del titolo ("non esistera' piu' il software,
esisteranno i prompt"): l'ep 52 la aveva anticipata nel capitolo 43:30
"Fine dell'epoca delle app: nessun software e' difendibile" e nel cap 23:00
sullo spec-driven dev, che Paolo cita in questa puntata. Miglior score
semantico del pool (0.85) sulla tesi centrale.

---

### Card 5 — Mostra al min `52:30`

| Campo | Valore |
|---|---|
| Linka video | Ave Claude, morituri te salutant (ep 72) |
| YT ID target | IpxZ7u5Z1GQ |
| URL | https://www.youtube.com/watch?v=IpxZ7u5Z1GQ |
| Tema della card | Benchmark skateboard: constraint vs minimal |
| Custom message (opzionale) | Il benchmark skateboard |
| Teaser text (opzionale) | Constraint vs minimal |

**Razionale**:

Al min `52:30` Stefano mostra i risultati di Step 5 e Wonder sul benchmark
skateboard discutendo constraint contro minimal: l'ep 72 dedica due capitoli
al tema (38:04 "Dal pellicano allo skateboard: il benchmark RA" e 44:11
"Constrained vs unconstrained: i modelli al test"). Card per chi vuole la
storia completa del benchmark citato.

---

## Setup in YT Studio (cards, operativo ~5min)

1. YT Studio → Content → video corrente → Editor → Cards
2. Per ogni card sopra:
   a. Click "Aggiungi card" → Tipo "Video" → Cerca o incolla URL del video target
   b. Imposta "Show card at" al timestamp indicato (`06:46`, `26:15`, `28:30`, `45:45`, `52:30`)
   c. (Opzionale) Compila Custom message + Teaser text dai campi della tabella
3. Suggerimento: aggiungi tutte e 5 in una sessione, poi click Save una sola volta a fine.
4. Verifica: riproduci il video corrente, scorri ai timestamp delle card, controlla che il teaser appaia per ~5 secondi nell'angolo superiore destro.

## Distribuzione timestamp lungo l'episodio

| Card | Timestamp video corrente | Posizione relativa |
|---|---|---|
| Card 1 | 06:46 | 10% (primi 15-20%) |
| Card 2 | 26:15 | 39% |
| Card 3 | 28:30 | 42% (meta') |
| Card 4 | 45:45 | 67% |
| Card 5 | 52:30 | 77% (verso la fine, prima dell'end screen) |

<!-- Distribuzione: una card nei primi 15-20% (early hook), una a meta', una verso fine prima dell'end screen.
     Vincolo: nessun cluster (>= 90 secondi tra card consecutive): gap minimo 135s (card 2 -> 3).
     Episodio ~68 min, nessuna compressione necessaria. -->

## Score breakdown (trasparenza algoritmo)

| Video | Score finale | Semantic | Recency | Views (log) | Note |
|---|---|---|---|---|---|
| ep74 L'AGI personale è già in vendita | 0.74 | 0.92 | 0.95 | 0.00 | end screen: callback Muse/Dots |
| ep75 Sign in with OpenAI | 0.66 | 0.75 | 0.97 | 0.00 | tema: embedding multimodali |
| ep72 Ave Claude, morituri te salutant | 0.62 | 0.72 | 0.90 | 0.00 | tema: benchmark skateboard |
| ep52 L'AI un anno dopo | 0.61 | 0.85 | 0.56 | 0.00 | tema: fine delle app |
| ep58 Physical AI: VLA contro World Model | 0.60 | 0.80 | 0.65 | 0.00 | tema: world model e dati robot |
| ep51 Un AI agent in casa: Hermes | 0.49 | 0.65 | 0.54 | 0.00 | tema: agenti personali |

<!-- Pesi: semantic 0.55, recency 0.25 (decay esponenziale half-life 6 mesi), views log-normalizzata 0.20.
     Views_log = 0 per tutti (cache flat-playlist senza view_count): score reale su semantic + recency.
     Recency = exp(-ln(2) * months_since_upload / 6), drop date 2026-10-17 come riferimento.
     Mix format: tutte numerate. Le interviste nel pool scoreggiano sotto (0.37-0.55)
     e duplicano temi gia' coperti, quindi escluse a parita' di vincolo "match alto su temi differenti". -->

## Note operative

- **Cards visibili sia su mobile che desktop**: il teaser appare per pochi secondi al timestamp impostato, poi resta come icona "i" cliccabile fino a fine video. Funzionano in tutti i player YT.
- **End screen e ultimi secondi**: occupa parte del frame negli ultimi 5-20 secondi. Suggerimento: lascia 15-20 secondi finali con outro pulito (no contenuto critico sovrapposto).
- **Misurazione**: YT Studio → Analytics → Engagement → "End screens" e "Cards" mostra impression e click-through rate per ogni elemento. Soglia di riferimento: CTR card > 2% = buono, > 4% = ottimo.
- **Refresh cache canale**: cache valida 7 giorni (refreshata oggi 2026-10-16, 93 video). Per forzare refresh manuale: cancella `.claude/skills/youtube-cross-link/.cache/channel-videos.json` e re-invoca la skill.
- **Re-invocazione**: se rinnovi la selezione (es. perche' un video target ha avuto picco di views inatteso), re-invoca la skill: sovrascrive questo capitolo # 13 dopo conferma.
