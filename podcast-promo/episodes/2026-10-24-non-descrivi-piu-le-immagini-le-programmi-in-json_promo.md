# Promo — Non descrivi più le immagini: le programmi in JSON

> File consolidato con TUTTI i deliverable del drop nuovo episodio.
> Generato da `podcast-promo` v4.8 il 2026-10-23.
> Identifier campaign: `ep77_drop`

---

## Cheat sheet

| Campo              | Valore                                                                             |
| ------------------ | ---------------------------------------------------------------------------------- |
| Titolo             | Non descrivi più le immagini: le programmi in JSON                                 |
| Format             | numerato                                                                           |
| Episode number     | 77                                                                                 |
| Drop date          | 2026-10-24 13:00 Europe/Rome                                                       |
| YouTube ID         | `rzXCmvk89qo` → https://www.youtube.com/watch?v=rzXCmvk89qo                        |
| Spotify Episode ID | `5tT49Yk79ttvVon3tQoz8z` → https://open.spotify.com/episode/5tT49Yk79ttvVon3tQoz8z |
| Apple URL          | `null` (da aggiungere post-publish Apple RSS, T+4-24h)                             |
| Thumbnail path     | `/assets/images/episodes/ep77.png`                                                 |
| Jekyll post path   | `_posts/2026-10-24-non-descrivi-piu-le-immagini-le-programmi-in-json.md`           |

---

# 1. Titolo

```
Non descrivi più le immagini: le programmi in JSON
```

50 char. Variante A (claim contro-intuitivo sul prompting strutturato), scelta tra 3 proposte.

# 2. Frasi in sovraimpressione (overlay video)

## 2.1 Frasi brevi (max 10 parole) — 7

```
[14:45] "è il primo diffusion model che proviamo con questo benchmark" (10 parole)
[21:55] "punta sul discorso dei prompt strutturati in formato VGL" (9 parole)
[26:40] "noi abbiamo provato solo modelli testuali puri" (7 parole)
[49:33] "se qualcosa è importante ed urgente, fallo" (7 parole)
[51:20] "io quelle verdi non le guardo neanche" (7 parole)
[52:35] "Assolutamente guidata da Token Infinity" (5 parole)
[1:04:45] "il programmatore sta diventando un manager di agenti" (8 parole)
```

## 2.2 Frasi lunghe (max 20 parole) — 3

```
[28:00] "le applicazioni web dei grandi vendor di modelli sono un harness" (11 parole)
[41:05] "è il primo modello open generato sia nel disegno dell'architettura del modello che nel training da un'altra AI" (18 parole)
[1:01:20] "Generano troppo codice oggi gli agenti e ci deve essere un modo per mantenere il controllo" (16 parole)
```

Nota: timestamp ±15s, frasi verbatim dal transcript (overlay combacia con l'audio). Il termine "VGL" è dal transcript auto-generato: verifica a montaggio che combaci con l'audio.

# 3. Brief thumbnail + prompt image pronto

## Brief

- **Hook**: `LE PROGRAMMI IN JSON` (4 parole, 20 char, dal claim del titolo)
- **Tono emozionale**: deciso/contrarian (sguardo fisso in camera, leggero sorriso compiaciuto)
- **Colore background**: verde `#39FF14` (novità tech/discovery; ultimi 3 drop: fucsia ep74, rosso ep75, giallo ep76)
- **Composizione**: 1 host primo piano 40%+ del frame, destra ~60%, crop dal petto in su, leggero 3/4; testo a sinistra verticalmente centrato ~40% frame width, nero bold senza outline
- **File output atteso**: `/assets/images/episodes/ep77.png` (1280×720 min, 1920×1080 ideale)

## Prompt ChatGPT Image 2 (con face reference)

Allega prima la foto reference del soggetto, poi incolla il prompt. Il volto della reference va preservato con alta fedeltà, niente idealizzazione.

```
Create a YouTube thumbnail image, 16:9 aspect ratio, photorealistic style,
1280x720 minimum, suitable for a feed at 246x138 pixels.

Use the attached reference photo of the subject as the basis for the portrait.
Maintain the exact facial features, hair, complexion, and identifiable
likeness with high fidelity. Do NOT alter, idealize, beautify, or stylize the
face. Keep the resemblance as close as possible to the reference photo.

Place the subject in a close-up portrait on the right side of the frame,
occupying about 60% of the composition, cropped from the chest up, slight
3/4 profile angle.

Expression: decisive and confident, direct gaze into the camera with a
subtle knowing smirk, the look of someone making a contrarian technical
claim. Not stiff corporate, not posed-for-LinkedIn, natural focused
intensity.

Background: solid saturated neon green (#39FF14), no elements, no gradient,
uniform.

Lighting: dramatic key light from the front-left, shallow depth of field,
subject in focus, background perfectly smooth, 85mm portrait lens feel.

Include the text "LE PROGRAMMI IN JSON" rendered prominently in the image as
bold condensed sans-serif ultra-heavy weight (Anton / Impact / Bebas Neue
style), black text with no outline on the green background, positioned on
the left side vertically centered, filling approximately 40% of the frame
width. The text must be perfectly legible, crisp, integrated as part of the
composition, not as watermark, every letter rendered correctly.

Style: high-contrast YouTube thumbnail aesthetic, attention-grabbing in
the feed.

Avoid: circular portrait frames, dark blue cosmic backgrounds, multiple
faces, stiff corporate poses, garbled text, obituary aesthetic, altering
or beautifying the subject's facial features beyond what the reference
photo shows.
```

## Fallback post-production e verifica pre-upload

Se dopo 3-4 tentativi il testo esce sporco: rigenera senza il blocco "Include the text...", poi testo manuale in Canva/Figma: `LE PROGRAMMI IN JSON`, font Bebas Neue/Anton, nero, lato sinistro centrato, ~40% frame width, export PNG 1280×720.

Checklist pre-upload:

- [ ] Leggibilità a 246×138px (preview feed YT Studio)
- [ ] Volto ≥ 40% del frame
- [ ] Zero ritratti circolari, zero fondo blu scuro, zero numero episodio
- [ ] Ogni lettera del testo corretta
- [ ] Safe area bottom-right 20% libera (badge durata YT)

# 4. Chapters YouTube

```
00:00 Apertura: modelli immagine e agenti personali
08:36 Skateboarder: i nuovi modelli e le velocità
13:31 Mercury 3: il diffusion model che scrive codice
16:40 Minimax, Quen e la scacchiera AI cinese
19:09 Fibo 2.0: prompt strutturati in JSON per le immagini
28:51 Moss Image e Flux Klein: gli open weight
38:04 I costi per immagine e Flint, il modello creato da un'AI
43:13 Accelerazione, reinforcement learning e le perdite di Anthropic
46:32 PR review: il metodo Anthropic e i semafori di Stefano
52:58 L'acquario di Sakana e le mappe di Groma
1:01:52 Diventare manager di agenti
1:06:28 Il robot di Unit 3 e i saluti
```

# 5. Descrizioni YouTube + Spotify + Tag YouTube

## 5.1 Descrizione YouTube

```
E' uscita un'ondata di modelli per la generazione immagini: prompt in JSON, diffusion che scrive codice e open weight da 8GB di VRAM. In questa puntata li proviamo tutti, benchmark skateboarder compreso.

Fibo 2.0 di Bria AI e Moss Image portano i prompt strutturati in JSON per controllare composizione e layout delle immagini. Flux Klein di Black Forest Labs porta la generazione immagini in locale con 8GB di VRAM e una licenza community nuova. Crea 3 Ultra punta tutto sull'estetica, ma costa quasi 300 dollari per mille immagini contro i 10 di Flux Klein.

Sul testo invece Mercury 3 di Inception è il primo diffusion model che proviamo con lo skateboarder: 56.000 token in meno di due minuti. E Flint di Recursive è probabilmente il primo modello open disegnato e trainato da un'altra AI.

Nella seconda parte: come Anthropic ha rifatto le PR review guardando importanza e pericolosità invece delle righe di codice, l'acquario degli agenti di Sakana, le mappe live di Groma e perché il programmatore sta diventando un manager di agenti.

Capitoli:
00:00 Apertura: modelli immagine e agenti personali
08:36 Skateboarder: i nuovi modelli e le velocità
13:31 Mercury 3: il diffusion model che scrive codice
16:40 Minimax, Quen e la scacchiera AI cinese
19:09 Fibo 2.0: prompt strutturati in JSON per le immagini
28:51 Moss Image e Flux Klein: gli open weight
38:04 I costi per immagine e Flint, il modello creato da un'AI
43:13 Accelerazione, reinforcement learning e le perdite di Anthropic
46:32 PR review: il metodo Anthropic e i semafori di Stefano
52:58 L'acquario di Sakana e le mappe di Groma
1:01:52 Diventare manager di agenti
1:06:28 Il robot di Unit 3 e i saluti

Ascolta l'episodio anche su Spotify:
https://open.spotify.com/episode/5tT49Yk79ttvVon3tQoz8z?utm_source=youtube&utm_medium=description&utm_campaign=ep77_drop

Sul sito trovi la trascrizione completa e le risorse:
https://risorseartificiali.com/?utm_source=youtube&utm_medium=description&utm_campaign=ep77_drop

Iscriviti al canale per non perdere le prossime puntate.

#77
```

Primi 125 char (snippet YT feed/search): "E' uscita un'ondata di modelli per la generazione immagini: prompt in JSON, diffusion che scrive codice e open weight da" — keyword a char ~40.

## 5.2 Descrizione Spotify

```
Modelli per la generazione immagini a frotte: prompt strutturati in JSON, Flux Klein in locale con 8GB di VRAM e il primo diffusion model che scrive codice.

In questa puntata di Risorse Artificiali Stefano, Alessio e Paolo provano le novità della settimana: Fibo 2.0 di Bria AI e Moss Image portano i prompt JSON per controllare composizione e layout, Flux Klein di Black Forest Labs fa girare la generazione immagini in locale, Crea 3 Ultra punta sull'estetica ma costa quasi 300 dollari per mille immagini. Sul testo, Mercury 3 di Inception è il primo diffusion model al banco di prova dello skateboarder, mentre Flint di Recursive è il primo modello open disegnato e trainato da un'altra AI.

Nella seconda parte: le PR review di Anthropic per importanza e non per righe di codice, l'acquario degli agenti di Sakana, le mappe live di Groma e la transizione da programmatore a manager di agenti.

La versione video dell'episodio:
https://www.youtube.com/watch?v=rzXCmvk89qo&utm_source=spotify&utm_medium=description&utm_campaign=ep77_drop

Se lavori con l'AI in produzione, questo podcast è per te: seguici per non perdere le prossime puntate.

#77
```

Primi 100 char (snippet Spotify): "Modelli per la generazione immagini a frotte: prompt strutturati in JSON, Flux Klein in locale"

## 5.3 Tag YouTube custom

```
generazione immagini ai, flux klein, black forest labs, fibo 2.0 bria, moss image, crea 3 ultra, mercury 3 inception, diffusion model, flint recursive, minimax 3.1, quen alibaba, skateboarder benchmark, prompt strutturati json, pr review anthropic, code review ai, sakana acquario agenti, modelli open weight, ai engineering italia, intelligenza artificiale, podcast tech italia
```

# 6. YouTube Shorts script + Spotify Clip spec

## 6.1 YouTube Shorts script

**Segmento: 40:45-41:40 (~55s)**, Stefano da solo. Claim più forte dell'episodio, voce sola senza cross-talk, self-contained.

Trascrizione del segmento:

> Dico una cosa che non ho detto prima quando parlavo di Flint. È rilasciato da un'azienda che si chiama Recursive, e il nome non è casuale, perché i loro modelli sono fatti da una self improvement recursive machine, è un auto research, cioè i modelli sono creati per miglioramento continuo fatto da altri modelli più piccoli o precedenti. Questo è il loro primo rilascio open con questa modalità, quindi possiamo anche dire che è il primo modello open generato sia nel disegno dell'architettura del modello che nel training da un'altra AI.

Struttura (edit del segmento, claim finale in cold-open):

- **Hook 0-3s**: "è il primo modello open generato da un'altra AI", testo overlay grande
- **Corpo 3-40s**: Recursive, self improvement recursive machine, modelli creati da modelli più piccoli o precedenti
- **Cliffhanger 40-50s**: "questo è il loro primo rilascio open con questa modalità"
- **CTA 50-60s**: end-card "Episodio completo sul canale, link in descrizione"

Overlay mute-friendly: `IL PRIMO MODELLO OPEN CREATO DA UN'AI` → `SELF-IMPROVEMENT: MODELLI CHE CREANO MODELLI` → `ARCHITETTURA E TRAINING FATTI DA UN'AI` → `EPISODIO COMPLETO SUL CANALE`

Descrizione Shorts:

```
Il primo modello open creato da un'altra AI: Flint di Recursive usa il self-improvement per disegnare architettura e training. In puntata anche Mercury 3, il diffusion model che scrive codice, e i nuovi modelli per la generazione immagini.

Episodio completo: https://www.youtube.com/watch?v=rzXCmvk89qo&utm_source=youtube_short&utm_medium=description&utm_campaign=ep77_drop
```

Pinned comment:

```
Episodio completo qui: https://www.youtube.com/watch?v=rzXCmvk89qo&utm_source=youtube_short&utm_medium=pinned&utm_campaign=ep77_drop
```

Publishing: Lun 09:00 Europe/Rome (lunedì 2026-10-26; schedulabile in anticipo).

## 6.2 Spotify Clip spec

**Segmento: 34:40-35:58 (~78s)**, Alessio da solo. **Relazione con lo Short: complementare** (Short = Flint/self-improvement su testo; Clip = immagini in locale). Claim netto di chiusura + numero concreto (8GB di VRAM), zero cross-talk.

Trascrizione del segmento:

> Il modello è carino, innanzitutto come requisiti hardware: secondo le dichiarazioni di Black Forest Labs dovrebbe andare anche con 8GB di VRAM quantizzato. Invece Flux Klein mantiene fede al fatto che si chiama Klein e va con 8 giga di VRAM. Detto questo, i risultati sono degni di nota: sull'Image Editing siamo sostanzialmente a livello di Quen Image, Fibo fa leggermente meglio ma siamo nell'ordine quasi della tolleranza sull'errore. Rimanendo sugli open weight, Flux Klein diventa il modello migliore anche qui, molto vicino a Quen Image. Siamo comunque ancora lontani dallo stato dell'arte dei modelli cloud closed, però Quen Image 2.1 non è più l'unico modello che si può usare in locale per generare immagini degni di nota, mettiamola così.

- **Testo overlay Spotify**: `Immagini AI in locale con 8GB` (6 parole)
- **Titolo Clip** (37 char): `Immagini AI in locale con 8GB di VRAM`

Publishing: STESSO MOMENTO del drop (zero gap), sabato 2026-10-24 13:00.

# 7. Post LinkedIn (host)

```
Da quando i modelli di generazione immagini accettano prompt strutturati in JSON, descrivere un'immagine è diventato programmazione: definisci soggetti, illuminazione e posizioni come campi di un oggetto, non come frasi.

Questa settimana ne è uscita un'ondata: Fibo 2.0 e Moss Image puntano tutto sui prompt strutturati, Flux Klein porta la generazione immagini in locale con 8GB di VRAM, Crea 3 Ultra insegue l'estetica a quasi 300 dollari per mille immagini. E sul testo Mercury 3 è il primo diffusion model che abbiamo messo allo skate: 56.000 token in meno di due minuti.

Nella puntata di sabato ne parliamo con i numeri davanti, insieme alle PR review "per importanza" di Anthropic e agli agenti visualizzati come pesci in un acquario.

Se ti chiedi come cambia il lavoro di chi genera immagini con l'AI, qui c'è l'episodio completo:
https://www.youtube.com/watch?v=rzXCmvk89qo&utm_source=linkedin&utm_medium=post&utm_campaign=ep77_drop

#AIEngineering #GenerazioneImmagini #DiffusionModel #PodcastTech
```

Publishing hint: Mar 14:00 Europe/Rome (martedì 2026-10-27).

# 8. Sezione newsletter codiceartificiale

Modalità `bullet` (44 parole, URL escluso). Da inserire nell'intro della prossima edizione.

```
- Sabato è uscito "Non descrivi più le immagini: le programmi in JSON": Flux Klein, Fibo 2.0 e Moss Image portano i prompt strutturati nella generazione immagini. Ascolta: https://www.youtube.com/watch?v=rzXCmvk89qo&utm_source=codiceartificiale&utm_medium=newsletter&utm_campaign=ep77_drop
- Nel frattempo Mercury 3 è il primo diffusion model che scrive codice, e l'abbiamo messo allo skate.
```

Publishing: nella prossima edizione regolare di codiceartificiale (no orario forzato).

# 9. Guest Launch Kit (solo se intervista)

Sezione omessa: non applicabile a episodi numerati.

# 10. Checklist Publishing

**PRE-DROP (venerdì 2026-10-23)**:

- [ ] Generazione thumbnail dal prompt del cap. 3 (ChatGPT Image 2 + foto reference)
- [ ] Montaggio frasi in sovraimpressione nel video (cap. 2)
- [ ] Commit + push post Jekyll + thumbnail in `/assets/images/episodes/ep77.png` + promo file
- [ ] YouTube Studio: titolo, descrizione, tag, capitoli, thumbnail, visibilità "Programmato" per sabato 13:00
- [ ] Spotify for Creators: metadati + publish programmato + prepara la Clip (cap. 6.2)
- [ ] YouTube Shorts: edita + schedula per lunedì 26, 09:00
- [ ] Configura end screen + 5 cards (cap. finale del promo file)

**DROP (sabato 2026-10-24, 13:00)**:

- [ ] YouTube long-form pubblica in automatico
- [ ] Spotify episodio pubblica in automatico
- [ ] Spotify Clip: pubblica SUBITO dopo il go-live (zero gap)
- [ ] Verifica thumbnail rendering + CTR primi 30 min

**POST-DROP**:

- [ ] Lunedì 26, 09:00: YT Short va live
- [ ] Martedì 27, 14:00: post LinkedIn host
- [ ] codiceartificiale: sezione cap. 8 nella prossima edizione regolare
- [ ] T+4-24h: retrofit Apple URL via RSS (frontmatter `apple_episode_url`)

**MONITORING**:

- [ ] T+7gg: CTR YT, retention, Spotify plays vs storico
- [ ] T+30gg: confronto engagement cumulato, eventuale Test & Compare thumbnail alternativa

Link di pubblicazione: YT Studio (https://studio.youtube.com), Spotify for Creators (https://creators.spotify.com), Substack dashboard (https://substack.com), LinkedIn company (https://www.linkedin.com/company/risorseartificiali).

# 11. Link rapidi

- YT Studio deep-link al video: https://studio.youtube.com/video/rzXCmvk89qo/edit
- Spotify for Creators: https://creators.spotify.com
- Jekyll post path: `_posts/2026-10-24-non-descrivi-piu-le-immagini-le-programmi-in-json.md`
- Thumbnail path: `/assets/images/episodes/ep77.png`
- LinkedIn company: https://www.linkedin.com/company/risorseartificiali
- Substack codiceartificiale: https://codiceartificiale.substack.com

# 12. Note operative

- **Apple URL**: il frontmatter Jekyll ha `# apple_episode_url:` commentato. Quando Apple Podcasts auto-pubblica via RSS (T+4-24h dal drop), estrai l'URL e decommenta il campo con un micro-commit separato.
- **Preservazione engagement history**: NON re-uploadare video/audio dopo il drop. Per correzioni di titolo/descrizione usa edit in-place su YT Studio e Spotify Creators per preservare le metriche accumulate.
- **UTM campaign**: tutti i link in questo file usano `ep77_drop` come campaign. Non modificarlo nelle pubblicazioni (altrimenti perdi attribution cross-piattaforma).
- **Frasi overlay**: le frasi del cap. 2 sono verbatim e ancorate al minuto. In fase di montaggio sovrapponi ogni frase intorno al timestamp indicato (±15s), così l'overlay combacia con ciò che si sente.
- **Thumbnail iteration**: se dopo 48h il CTR YT è sotto target, usa YT Studio Test & Compare per A/B test con una thumbnail alternativa (rigenera il prompt del cap. 3 variando palette/espressione).
- **Rilancio futuro**: se a T+90gg l'episodio sottoperforma, considera nuova thumbnail per numerati via `thumbnail-gen` v1.1.
- **Workflow tip**: la thumbnail è al cap. 3 (early nel flusso). Lancia in parallelo ChatGPT Image 2 (con foto reference) mentre la skill prosegue, così hai già la thumbnail pronta quando devi caricarla in YT Studio.

---

# 13. End screen + YT Cards (suggerito da youtube-cross-link v1.2)

<!-- Generato da .claude/skills/youtube-cross-link v1.2 il 2026-10-23.
     Cache canale: .claude/skills/youtube-cross-link/.cache/channel-videos.json (timestamp 2026-10-23 13:09).
     Episodio target: rzXCmvk89qo | "Non descrivi più le immagini: le programmi in JSON" | drop 2026-10-24.
     Candidati pre-screened: 15 | Selezione finale: 1 end screen + 5 cards.
     Numero capitolo 13 derivato automaticamente (max header # del promo file + 1).
     NB: view_count non disponibile dalla cache flat-playlist yt-dlp -> score
     su semantic (0.55) + recency (0.25), views_log = 0 per tutti. -->

## End screen — 1 video (layout: Subscribe + Video)

| Campo | Valore |
|---|---|
| Titolo target | Non esisterà più il software: esisteranno i prompt (ep76) |
| YT ID | 1iG4T-AEMSA |
| Durata | N/D |
| Views (al 2026-10-23 13:09) | N/D (cache flat-playlist) |
| Pubblicato | 2026-10-17 |
| URL | https://www.youtube.com/watch?v=1iG4T-AEMSA |

**Razionale** (perché questo video, in 3-5 righe):

La puntata più recente del canale (6 giorni fa) è il ponte naturale per chi finisce ep77: la tesi "restano solo i prompt" (cap 45:45) è il complemento diretto del titolo di ep77 "le programmi in JSON", e il cap 41:44 "Anthropic smantella Git: ecco Xeon" richiama esattamente la sezione PR review di ep77 (min 46:32), dove Stefano cita proprio il Git rifatto da Anthropic. C'è anche lo skateboard benchmark (cap 52:30) che chiude il cerchio con l'apertura di ep77. Score 0.67 (semantic 0.78, recency 0.97): vince per combinazione di freschezza massima e continuità tematica prompt/Anthropic.

**Setup in YT Studio** (operativo, ~90s):

1. YT Studio → Content → seleziona video corrente → Editor → End screen
2. Aggiungi elemento → Subscribe (canale Risorse Artificiali, già selezionato di default)
3. Aggiungi elemento → Video → Specific video → incolla URL sopra
4. Layout: pre-set "Subscribe + 1 video" (template B). Posiziona end screen negli ultimi 20 secondi del video corrente (timestamp consigliato: 1:10:16 → fine).
5. Save.

---

## YT Cards — 5 cards a timestamp specifici del video corrente

Le YT Cards si configurano in YT Studio → Editor video → Cards. Ogni card mostra un teaser nell'angolo superiore destro per 5-10 secondi al timestamp impostato, poi resta cliccabile come icona "i" fino a fine video.

### Card 1 — Mostra al min `08:36` del video corrente

| Campo | Valore |
|---|---|
| Linka video | Sign in with OpenAI: l'abbonamento diventa un portafoglio (ep75) |
| YT ID target | QaeBULeqFH8 |
| URL | https://www.youtube.com/watch?v=QaeBULeqFH8 |
| Tema della card | Skateboarder benchmark |
| Custom message (opzionale) | Skate test Haiku 5.5 |
| Teaser text (opzionale) | Il test dello skateboard |

**Razionale**:

Al min 08:36 di ep77 inizia il segmento skateboarder sui nuovi modelli. In ep75 al min 34:00 c'è "Haiku 5.5: il test dello skateboard": stessa prassi di benchmark, wave precedente. Il viewer che ama il format Skate trova subito l'episodio consecutivo. Score 0.65 (semantic 0.75, recency 0.94).

---

### Card 2 — Mostra al min `19:09`

| Campo | Valore |
|---|---|
| Linka video | L'AI che cambia tutto: multi-modello, immagini e video evoluti (ep29) |
| YT ID target | iNbxngud1us |
| URL | https://www.youtube.com/watch?v=iNbxngud1us |
| Tema della card | Generazione immagini |
| Custom message (opzionale) | Immagini: Flux 2 vs Z-Image |
| Teaser text (opzionale) | La generazione immagini di un anno fa |

**Razionale**:

Al min 19:09 di ep77 parte il blocco generazione immagini (Fibo 2.0, prompt strutturati). Nell'ep29 al min 35:19 c'è "Generazione Immagini: Flux 2 vs Z-Image": la generazione precedente degli stessi modelli, utile a chi vuole vedere da dove si è arrivati. Unico slot "archivio" (>12 mesi quasi esatti) a completare la diversità temporale. Score 0.44 (semantic 0.68, recency 0.26).

---

### Card 3 — Mostra al min `34:00`

| Campo | Valore |
|---|---|
| Linka video | Open weight con l'asterisco: cosa Qwen non ha rilasciato (ep67) |
| YT ID target | Fv1Uf-TksLM |
| URL | https://www.youtube.com/watch?v=Fv1Uf-TksLM |
| Tema della card | Open weight e modelli cinesi |
| Custom message (opzionale) | Open weight: il lato Qwen |
| Teaser text (opzionale) | Cosa Qwen non ha rilasciato |

**Razionale**:

Al min 34:00 di ep77 si parla di Flux Klein open weight e dei suoi 8GB di VRAM. Ep67 è l'episodio dedicato agli open weight con l'asterisco: Qwen 3.8 senza Max (cap 00:00), Minimax H3 e le licenze per regione (cap 16:14) e "La fine dei modelli open? Al contrario" (cap 1:07:37). Controcpoint tecnico al entusiasmo open weight di ep77. Score 0.59 (semantic 0.72, recency 0.77).

---

### Card 4 — Mostra al min `46:32`

| Campo | Valore |
|---|---|
| Linka video | AI code review e altri cambiamenti nei nostri workflow (ep71) |
| YT ID target | EIyz3vMiLKU |
| URL | https://www.youtube.com/watch?v=EIyz3vMiLKU |
| Tema della card | Code review |
| Custom message (opzionale) | Code review col nostro flow |
| Teaser text (opzionale) | La nostra code review con le skill |

**Razionale**:

Al min 46:32 di ep77 Stefano racconta il metodo PR review di Anthropic e la skill PR Walkthrough. Ep71 è il Q&A dedicato proprio alla code review con le skill del podcast (cap 00:00 e cap 07:54): il match tematico più diretto dell'intera selezione. Score 0.66 (semantic 0.82, recency 0.85).

---

### Card 5 — Mostra al min `1:01:52`

| Campo | Valore |
|---|---|
| Linka video | Un AI agent in casa: ecco cosa fa Hermes (ep51) |
| YT ID target | uqL22MeZFKI |
| URL | https://www.youtube.com/watch?v=uqL22MeZFKI |
| Tema della card | Agenti in produzione |
| Custom message (opzionale) | Agenti in casa: Hermes |
| Teaser text (opzionale) | Hermes Agent: setup e quotidiano |

**Razionale**:

Al min 1:01:52 Paolo racconta la sua finestra Hermes con una decina di agenti in esecuzione e la difficoltà di seguirli. Ep51 al min 1:01:30 fa il setup completo di Hermes Agent in casa e al 1:09:00 mostra l'agente proattivo con PR review: l'approfondimento naturale per chi si chiede "come si convive davvero con gli agenti". Score 0.52 (semantic 0.70, recency 0.53).

---

## Setup in YT Studio (cards, operativo ~5min)

1. YT Studio → Content → video corrente → Editor → Cards
2. Per ogni card sopra:
   a. Click "Aggiungi card" → Tipo "Video" → Cerca o incolla URL del video target
   b. Imposta "Show card at" al timestamp indicato (`08:36`, `19:09`, `34:00`, `46:32`, `1:01:52`)
   c. (Opzionale) Compila Custom message + Teaser text dai campi della tabella
3. Suggerimento: aggiungi tutte e 5 in una sessione, poi click Save una sola volta a fine.
4. Verifica: riproduci il video corrente, scorri ai timestamp delle card, controlla che il teaser appaia per ~5 secondi nell'angolo superiore destro.

## Distribuzione timestamp lungo l'episodio

| Card | Timestamp video corrente | Posizione relativa |
|---|---|---|
| Card 1 | 08:36 | 12% (early hook, inizio skateboarder) |
| Card 2 | 19:09 | 27% |
| Card 3 | 34:00 | 48% (metà) |
| Card 4 | 46:32 | 66% |
| Card 5 | 1:01:52 | 88% (verso la fine, prima dell'end screen) |

Distribuzione: nessun cluster (gap minimo 10 minuti tra card consecutive). Una card nei primi 15-20%, una a metà, una verso fine prima dell'end screen.

## Score breakdown (trasparenza algoritmo)

| Video | Score finale | Semantic | Recency | Views (log) | Note |
|---|---|---|---|---|---|
| ep76 Non esisterà più il software (1iG4T-AEMSA) | 0.67 | 0.78 | 0.97 | 0 | end screen |
| ep71 AI code review workflow (EIyz3vMiLKU) | 0.66 | 0.82 | 0.85 | 0 | tema: code review |
| ep75 Sign in with OpenAI (QaeBULeqFH8) | 0.65 | 0.75 | 0.94 | 0 | tema: skateboarder benchmark |
| ep67 Open weight con l'asterisco (Fv1Uf-TksLM) | 0.59 | 0.72 | 0.77 | 0 | tema: open weight |
| ep51 Un AI agent in casa: Hermes (uqL22MeZFKI) | 0.52 | 0.70 | 0.53 | 0 | tema: agenti in produzione |
| ep29 L'AI che cambia tutto (iNbxngud1us) | 0.44 | 0.68 | 0.26 | 0 | tema: generazione immagini, slot archivio |

Pesi: semantic 0.55, recency 0.25 (decay esponenziale half-life 6 mesi), views log-normalizzata 0.20. Con la cache flat-playlist le views non sono disponibili: views_log = 0 per tutti, lo score poggia su semantic + recency.

Scarti notevoli dal top-15: ep73 e ep72 (skateboarder, ridondanza con Card 1), ep70/ep69 (benchmark generici, semantic sotto soglia utile).

## Note operative

- **Misurazione**: YT Studio → Analytics → Engagement → "End screens" e "Cards" mostra impression e click-through rate per ogni elemento. Soglia di riferimento: CTR card > 2% = buono, > 4% = ottimo.
- **Refresh cache canale**: cache valida 5 giorni (scritta il 2026-10-23). Per forzare refresh: cancella `.claude/skills/youtube-cross-link/.cache/channel-videos.json` e re-invoca la skill.
- **Re-invocazione**: se rinnovi la selezione (es. per views inattese su un target), re-invoca la skill: troverà il capitolo # 13 e proporrà la sovrascrittura.
