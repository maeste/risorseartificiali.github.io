# Promo — Bannato da GLM: hybrid routing con LiteLLM

> File consolidato con TUTTI i deliverable del drop nuovo episodio.
> Generato da `podcast-promo` v4.8 il 2026-08-21.
> Identifier campaign: `ep68_drop`

---

## Cheat sheet

| Campo | Valore |
|-------|--------|
| Titolo | Bannato da GLM: hybrid routing con LiteLLM |
| Format | numerato |
| Episode number | 68 |
| Drop date | 2026-08-22 13:00 Europe/Rome |
| YouTube ID | `Y7gkGLG4LPY` → https://www.youtube.com/watch?v=Y7gkGLG4LPY |
| Spotify Episode ID | `45PF4g7gH6tHATi1SCm0u2` → https://open.spotify.com/episode/45PF4g7gH6tHATi1SCm0u2 |
| Apple URL | `null` (da aggiungere post-publish Apple RSS, T+4-24h) |
| Thumbnail path | `/assets/images/episodes/ep68.png` |
| Jekyll post path | `_posts/2026-08-22-bannato-da-glm-hybrid-routing-con-litellm.md` |
| Durata | 1:12:44 (PT1H12M) |
| Host | Stefano, Paolo Antinori (Alessio Soldano assente, in vacanza) |

---

# 1. Titolo

```
Bannato da GLM: hybrid routing con LiteLLM
```

42 caratteri. Angolo: hook contrarian sulla storia che apre e regge l'episodio. Keyword tech (`GLM`, `LiteLLM`) entro i primi 42 char, curiosity gap alto, zero `#N`.

---

# 2. Frasi in sovraimpressione (overlay video)

Citazioni verbatim dal transcript, ripulite solo da intercalari e false partenze. Precisione timestamp ±15s.

## 2.1 Frasi brevi (max 10 parole) — 7

```
[06:01] "Stripe mette sul piatto 7 miliardi di dollari per OpenRouter"   (10 parole)
[08:20] "Questa piccola iniziativa mi ha fatto bannare da GLM"           (9 parole)
[16:30] "Usate Lince e vi passa paura"                                   (6 parole)
[25:30] "Tenetelo low o medium thinking effort, perché high fa schifo"   (10 parole)
[31:45] "Adesso fumi, poi mi dai la validazione"                         (7 parole)
[1:00:10] "Soltanto l'1% dei modelli è sopra i 70 billion"               (9 parole)
[1:11:10] "Imparare a fare un po' anche il Product Manager"              (9 parole)
```

Perché queste: [06:01] è il numero che apre l'episodio, [08:20] innesca la storia che dà il titolo, [16:30] è la tesi di Stefano su sandbox contro validatori, [25:30] è il consiglio operativo secco su Qwen 3.8, [31:45] è GLM 5.3 che traduce "smoke test" con "fumi", [1:00:10] è il dato contro-intuitivo del report Hugging Face, [1:11:10] è la skill meno attesa nella lista di Andrew Ng.

## 2.2 Frasi lunghe (max 20 parole) — 3

```
[15:50] "Trova il brivido nell'aggiornare il firmware di un hardware che potrebbe non accendersi mai più"    (15 parole)
[24:30] "È la prima volta che si vede un modello capace di fare coding a livello veramente buono"            (17 parole)
[1:10:40] "Sapere usare i coding agent oggi è come andare al lavoro negli anni 90 e usare solo vi"           (18 parole)
```

Nota: timestamp ±15s, frasi verbatim dal transcript (l'overlay combacia con l'audio). La frase a [1:10:40] è la ripulitura di un segmento ASR sporco ("le idee" = IDE): parole e senso sono quelli pronunciati.

---

# 3. Brief thumbnail + prompt image pronto

## Brief

| Campo | Valore |
|-------|--------|
| Hook (3 parole) | `BANNATO DA GLM` — split due righe: "BANNATO DA" sopra, "GLM" sotto più grande |
| Tono emozionale | Compiaciuto / divertito (mezzo sorriso di chi se l'è cercata e ci si è pure divertito) |
| Background | `#FF006E` fucsia pieno saturo — irriverente / contro-corrente / umorismo |
| Testo | Bianco con outline nero 4px, left side, ~40% larghezza frame |
| Soggetto | 1 host in primo piano, 45% del frame, lato destro. Protagonista della storia = Paolo (se preferisci Stefano, allega la sua foto: il prompt non cambia) |
| File output | `/assets/images/episodes/ep68.png` — 1280×720 minimo, 1920×1080 ideale (16:9) |

Scelta colore: ultimi drop rosso (08-15), verde (08-08), giallo (08-01), fucsia (07-25). Il fucsia differenzia il feed rispetto agli ultimi tre ed è coerente col tono irriverente della storia del ban. L'arancione resta riservato alle interviste.

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

Expression: amused and self-satisfied, a crooked half-smile, eyebrows slightly
raised, direct eye contact with the camera, the look of someone who broke
something on purpose and enjoyed it. Not laughing out loud, not stiff
corporate, not posed-for-LinkedIn.

Background: solid saturated magenta pink (#FF006E), no elements, no gradient,
uniform.

Lighting: dramatic key light from the upper right, shallow depth of field,
subject in focus, background perfectly smooth, 85mm portrait lens feel.

Include the text "BANNATO DA GLM" rendered prominently in the image as bold
condensed sans-serif ultra-heavy weight (Anton / Impact / Bebas Neue style),
white with a 4px black outline, positioned on the left side vertically
centered, split on two lines: first line "BANNATO DA", second line "GLM"
noticeably bigger. The text fills approximately 40% of the frame width. The
text must be perfectly legible, crisp, integrated as part of the composition,
not as watermark, every letter rendered correctly.

Style: high-contrast YouTube thumbnail aesthetic, attention-grabbing in the
feed.

Avoid: circular portrait frames, dark blue cosmic backgrounds, multiple faces,
stiff corporate poses, garbled text, obituary aesthetic, altering or
beautifying the subject's facial features beyond what the reference photo
shows.
```

## Fallback post-production e verifica pre-upload

Se dopo 3-4 tentativi il testo esce sporco: rigenera togliendo il blocco `Include the text...`, poi aggiungi in Canva / Figma / Photopea il testo "BANNATO DA GLM" in Bebas Neue / Anton / Impact, bianco con outline nero 4px, left side verticalmente centrato, due righe con "GLM" più grande, ~40% della larghezza frame. Esporta PNG 1280×720 (o 1920×1080).

- [ ] Test leggibilità a 246×138px (preview YT Studio)
- [ ] Volto copre almeno il 40% del frame
- [ ] Zero ritratti circolari
- [ ] Zero fondo blu scuro
- [ ] Zero numero episodio visibile
- [ ] Ogni lettera del testo è corretta (attenzione a "GLM")
- [ ] Safe area bottom-right 20% libera
- [ ] File salvato in `/assets/images/episodes/ep68.png`
- [ ] Dimensioni 1280×720 minimo (16:9)

---

# 4. Chapters YouTube

```
00:00 Stripe compra OpenRouter per 7 miliardi
02:59 A2A, AP2 e il routing dei pagamenti
08:18 LiteLLM: i modelli locali in un pool
13:20 Bannato da GLM: il classifier locale
16:22 Sandbox invece di validatori, e i cyborg
19:55 Qwen 3.8 27B: coding su 16 giga
26:01 GLM 5.3 e il dubbio su Ollama
32:20 Parlare ai modelli in italiano: latent space
39:23 Wait What, Grill with Docs e handoff
46:15 Report Hugging Face sui modelli open
50:54 Attention non è adoption: download contro like
56:26 Kimi K3, licenze e modelli sopra 70B
1:02:00 Light Learner e il jailbreak del taccuino
1:06:30 Andrew Ng: le 4 skill dell'AI engineer
```

14 capitoli, intervalli 3-7 minuti, precisione ±15s. Gli shift sono ancorati ai cambi di tema: 08:18 apre il racconto del ban, 19:55 il passaggio da Gemma a Qwen, 32:20 la domanda dell'amico Riccardo sull'italiano, 46:15 la condivisione schermo dell'articolo Hugging Face, 1:06:30 la chiusura su Andrew Ng.

---

# 5. Descrizioni YouTube + Spotify + Tag YouTube

## 5.1 Descrizione YouTube

```
Bannato da GLM per aver messo LiteLLM davanti a Claude Code. Paolo racconta tutto: il pool di modelli, il middleware locale, il classifier dell'automode spostato su Gemma per non bruciare la quota del modello principale. Poi il fallback verso il cloud rigira le chiamate già modificate, GLM le legge come traffico di un harness non supportato, e parte il ban. Con mail di supplica annessa.

Prima di quella storia, Stripe che compra OpenRouter per 7 miliardi di dollari. La lettura di Paolo è che il routing sia una posizione da API Gateway: chi smista il traffico degli agenti può vendere servizi premium sul volume, esattamente come Stripe ha fatto con i pagamenti. Da lì i protocolli di pagamento tra agenti, AP2 sopra A2A, e lo scenario in cui a produrre reddito sono gli agenti stessi.

Poi i modelli. Qwen 3.8 27B denso è la prima volta che un modello locale su 16-24 giga di VRAM regge un coding agent vero e non solo il completamento: onniscienza peggiore del 3.6, capacità agentiche molto migliori, e il consiglio di tenerlo su low o medium thinking effort. GLM 5.3 guadagna 6-7 punti di intelligenza generale su Artificial Analysis, l'inferenza di Z.ai è diventata veloce, e resta il dubbio su cosa faccia girare davvero Ollama quando le risposte non combaciano.

Nella seconda parte: perché parlare ai modelli in italiano non spreca i token che pensi, il trick di chiedere l'output in inglese B2 o C1, le skill Wait What e handoff, il report di Hugging Face sullo stato dei modelli open (attention e adoption non sono la stessa cosa, solo l'1% sta sopra i 70 billion), Light Learner, il jailbreak del taccuino, e le quattro skill dell'AI engineer secondo Andrew Ng.

CAPITOLI
00:00 Stripe compra OpenRouter per 7 miliardi
02:59 A2A, AP2 e il routing dei pagamenti
08:18 LiteLLM: i modelli locali in un pool
13:20 Bannato da GLM: il classifier locale
16:22 Sandbox invece di validatori, e i cyborg
19:55 Qwen 3.8 27B: coding su 16 giga
26:01 GLM 5.3 e il dubbio su Ollama
32:20 Parlare ai modelli in italiano: latent space
39:23 Wait What, Grill with Docs e handoff
46:15 Report Hugging Face sui modelli open
50:54 Attention non è adoption: download contro like
56:26 Kimi K3, licenze e modelli sopra 70B
1:02:00 Light Learner e il jailbreak del taccuino
1:06:30 Andrew Ng: le 4 skill dell'AI engineer

Ascolta su Spotify: https://open.spotify.com/episode/45PF4g7gH6tHATi1SCm0u2?utm_source=youtube&utm_medium=description&utm_campaign=ep68_drop
Tutti gli episodi e le trascrizioni: https://risorseartificiali.com/?utm_source=youtube&utm_medium=description&utm_campaign=ep68_drop
LinkedIn: https://www.linkedin.com/company/risorseartificiali

Se la puntata ti è servita iscriviti al canale. E se avete voglia di precisare la spiegazione sul latent space, i commenti sono lì apposta.

Risorse Artificiali, AI Engineering in italiano. Puntata #68
```

Lunghezza corpo: 287 parole (capitoli e link esclusi).

Primi 125 char (snippet YT feed/search):
`Bannato da GLM per aver messo LiteLLM davanti a Claude Code. Paolo racconta tutto: il pool di modelli, il middleware locale, `

## 5.2 Descrizione Spotify

Niente timestamp, niente capitoli: Spotify li ignora nella descrizione.

```
Bannato da GLM per aver messo LiteLLM davanti a Claude Code. Paolo racconta l'hybrid routing: un pool di modelli dietro un middleware locale, il classifier dell'automode spostato su Gemma per non bruciare la quota del modello principale, e il fallback verso il cloud che rigira le chiamate già modificate. GLM le legge come traffico di un harness non supportato e arriva il ban, con mail di supplica annessa.

Prima di quella storia parliamo di Stripe che compra OpenRouter per 7 miliardi: il routing come posizione da API Gateway, i protocolli di pagamento tra agenti, lo scenario in cui a produrre reddito sono gli agenti stessi.

Poi i modelli. Qwen 3.8 27B denso è la prima volta che un modello locale su una macchina normale regge un coding agent vero e non solo il completamento, a patto di tenerlo su low o medium thinking effort. GLM 5.3 guadagna 6-7 punti di intelligenza generale, l'inferenza di Z.ai è diventata veloce, e resta il dubbio su cosa faccia girare davvero Ollama.

Nella seconda metà: perché parlare ai modelli in italiano non spreca i token che pensi, le skill Wait What e handoff, il report di Hugging Face sullo stato dei modelli open, il jailbreak del taccuino e le quattro skill dell'AI engineer secondo Andrew Ng.

Se ti va, segui il podcast: esce ogni sabato.

Puntata #68
```

Lunghezza: 223 parole.

Primi 100 char (snippet Spotify):
`Bannato da GLM per aver messo LiteLLM davanti a Claude Code. Paolo racconta l'hybrid routing: un poo`

## 5.3 Tag YouTube custom

Pronti da incollare in YouTube Studio → Dettagli → Tag (20 tag):

```
hybrid routing, LiteLLM, GLM 5.3, Qwen 3.8, modelli locali, inferenza locale, Claude Code, coding agent, AI engineering italia, podcast tech italia, intelligenza artificiale, OpenRouter, Stripe OpenRouter, modelli open weight, Hugging Face, modelli cinesi, Ollama, latent space, agenti AI, Andrew Ng
```

Termini pescati dall'episodio: LiteLLM, GLM 5.2 / 5.3, Qwen 3.8 27B, Qwen 3.8 Max, Gemma, MTP, automode di Claude Code, Lince, OpenRouter, Stripe, A2A, AP2, Z.ai, Ollama, Kimi K3, Hugging Face, Mistral, Nemotron, Super Whisper, Light Learner, Andrew Ng, latent space, tokenizer.

---

# 6. YouTube Shorts script + Spotify Clip spec

## 6.1 YouTube Shorts script (≈58s)

Segmento scelto: il climax della storia del ban. È l'unico punto in cui una catena tecnica precisa (classifier locale → chiamate HTTP modificate → fallback cloud → firma non riconosciuta) si chiude con una conseguenza netta in meno di un minuto. Regge standalone, senza il contesto precedente.

Montaggio da 3 tagli, voce singola (Paolo), zero cross-talk:

| Beat | Timestamp | Contenuto |
|------|-----------|-----------|
| Hook 0-10s | `08:18-08:32` | "Ho iniziato a fare routing anche io di modelli, nel mio piccolo, in locale. E questa piccola iniziativa mi ha fatto bannare da GLM" |
| Corpo 10-40s | `14:02-14:55` | Il fallback sul cloud, le chiamate HTTP modificate per farle capire a Gemma, il reinoltro delle modificate invece delle originali |
| Cliffhanger 40-52s | `14:55-15:20` | "GLM ha riconosciuto le mie chiamate come traffico nocivo di qualcuno che sta usando un harness non supportato" |
| CTA 52-58s | — | Card finale: "Puntata completa sul canale. Link nel primo commento" |

Testo overlay mute-friendly (grande, per chi guarda senza audio):

```
1. HO INIZIATO A FARE ROUTING DEI MODELLI IN LOCALE
2. IL CLASSIFIER SU GEMMA, LE CHIAMATE MODIFICATE
3. GLM LE HA LETTE COME TRAFFICO NOCIVO
4. BANNATO. CON MAIL DI SUPPLICA
```

Descrizione Shorts:

```
Hybrid routing con LiteLLM, il classifier dell'automode spostato su Gemma in locale, e un ban da GLM per harness non supportato. Come ci si arriva.

Puntata completa: https://www.youtube.com/watch?v=Y7gkGLG4LPY&utm_source=youtube_short&utm_medium=description&utm_campaign=ep68_drop

#AIEngineering #LiteLLM #ClaudeCode
```

Pinned comment:

```
Puntata intera qui, con il resto: Stripe che compra OpenRouter per 7 miliardi, Qwen 3.8 che fa coding vero su 16 giga, e il report di Hugging Face sui modelli open.
https://www.youtube.com/watch?v=Y7gkGLG4LPY&utm_source=youtube_short&utm_medium=pinned&utm_campaign=ep68_drop
```

**Publishing: sabato 2026-08-22, 13:30-14:00 Europe/Rome** (gap 30-60 min dal long-form). Schedula venerdì T-1.

Razionale: feed Shorts e long-form sono separati su YouTube, non c'è cannibalizzazione, e il drop-day sync amplifica il momentum cross-piattaforma del primo giorno. I 5 Shorts Lun-Ven derivati da puntate passate restano pipeline separata, questa skill non li tocca.

## 6.2 Spotify Clip spec (≈85s)

| Campo | Valore |
|-------|--------|
| Timestamp | `24:05 → 25:30` (≈85s) |
| Relazione con lo Short YT | **Complementare**. Lo Short prende la storia (il ban), il Clip prende il claim tecnico utile (Qwen 3.8 in locale). Zero overlap, due bacini di discovery diversi |
| Voce | Stefano, monologo continuo, nessuna interruzione |
| Titolo Clip | `Coding vero su 16 giga di VRAM` (29 char) |

Trascrizione del segmento (ripulita dall'ASR: "DGX Spark", "distinguo"):

```
Il 3.8 fa un utilizzo molto efficace, perché dal punto di vista delle capacità
tutti quanti dicono che è la prima volta che si vede un modello in grado di
girare su una macchina normale. Non la DGX Spark, o la macchina di Alessio, o
un Mac Studio da 512 giga: una macchina normale, perché entra anche in 16 giga
di VRAM, sicuro in 24. E quindi un Mac normale ce la fa a farlo girare. È la
prima volta che si vede un modello capace di fare coding a livello veramente
buono. C'è chi dice che lo usa per i coding agent, proprio agent, non del
semplice completamento, con grandi risultati. Con qualche distinguo, ovviamente.
E i distinguo sono soprattutto due: la velocità, ci arriva ma abbiate pazienza,
utilizza un sacco di token, anche se chi se ne frega tanto lo inferenzi in
locale. E l'altra cosa che dicono tutti: tenetelo low o medium thinking effort,
perché high fa schifo. Genera talmente tanti token per fare high effort che
diventa inutilizzabile.
```

Testo overlay Spotify:

```
LA PRIMA VOLTA SU UNA MACCHINA NORMALE
LOW O MEDIUM, MAI HIGH EFFORT
```

**Publishing: STESSO MOMENTO del drop** (sabato 22/08 13:00). Zero gap: i Clip vanno al discovery feed dei non-follower, gli episodi alla Library dei follower.

---

# 7. Post LinkedIn (host)

```
C'è un momento preciso in cui smetti di essere l'utente di un modello e diventi un integratore: quando finisci la quota nella finestra delle cinque ore e invece di aspettare ti metti a costruire.

Paolo ci è arrivato così a LiteLLM. Un pool di modelli dietro un middleware locale, le regole di routing in configurazione, il classifier dell'automode di Claude Code spostato su una Gemma locale per non bruciare la quota del modello principale sulle approvazioni dei comandi. Funziona, tranne quando non funziona: per far digerire le chiamate a Gemma le ha dovute modificare, e quando è scattato il fallback verso il cloud sono partite quelle modificate. GLM le ha lette come traffico di un harness non supportato e lo ha bannato. Mail di supplica, spiegone di risposta, e adesso le stesse cose fatte per bene.

La parte interessante non è il ban. È che qui il costo di sbagliare è basso e il ritorno in comprensione è alto: alla fine sai davvero com'è fatto il traffico che il tuo agente manda in giro, e quella conoscenza non te la toglie nessuno.

Nella puntata c'è anche Stripe che compra OpenRouter per 7 miliardi, Qwen 3.8 27B che regge un coding agent su 16 giga di VRAM, e il report di Hugging Face che ricorda che solo l'1% dei modelli open sta sopra i 70 billion.

https://www.youtube.com/watch?v=Y7gkGLG4LPY&utm_source=linkedin&utm_medium=post&utm_campaign=ep68_drop

#AIEngineering #LiteLLM #ClaudeCode #LLM
```

229 parole.

**Publishing hint: martedì 2026-08-25, 14:00 Europe/Rome** (+3 giorni dal drop, peak audience italiano, cavalca la long-tail del weekend). Spotify nel primo commento.

---

# 8. Sezione newsletter codiceartificiale

Modalità: `bullet` (30-50 parole). Da inserire **nell'intro** della prossima edizione.

```markdown
- Sabato è uscito "Bannato da GLM: hybrid routing con LiteLLM", dove Paolo racconta come si finisce bannati mettendo un classifier locale davanti a Claude Code, e perché Qwen 3.8 è il primo modello che fa coding vero su 16 giga di VRAM.
  https://www.youtube.com/watch?v=Y7gkGLG4LPY&utm_source=codiceartificiale&utm_medium=newsletter&utm_campaign=ep68_drop
```

44 parole.

**Publishing**: nella prossima edizione regolare di `codiceartificiale`, nessun orario forzato, nessuna sincronizzazione col drop.

---

# 9. Guest Launch Kit

Sezione omessa — non applicabile a episodi numerati.

---

# 10. Checklist Publishing

Drop: **sabato 2026-08-22, 13:00 Europe/Rome**.

## PRE-DROP (venerdì 21/08 → sabato mattina)

- [ ] Genera la thumbnail dal prompt del cap. 3 (ChatGPT Image 2 + foto reference di Paolo), salva in `/assets/images/episodes/ep68.png`, 1280×720 minimo
- [ ] Verifica thumbnail a 246×138px, controlla che "BANNATO DA GLM" sia renderizzato lettera per lettera
- [ ] Monta le 10 frasi in sovraimpressione (cap. 2) nel video, ognuna intorno al suo timestamp (±15s)
- [ ] `git add` post Jekyll + promo file + `assets/images/episodes/ep68.png`, commit e push
- [ ] YouTube Studio: titolo (cap. 1), descrizione (cap. 5.1), tag (cap. 5.3), capitoli (cap. 4), thumbnail
- [ ] YouTube Studio: verifica che i capitoli vengano riconosciuti nella preview della descrizione
- [ ] YouTube Studio: visibilità **Programmato sabato 22/08 13:00 Europe/Rome**
- [ ] Spotify for Creators: descrizione (cap. 5.2), publish programmato sabato 22/08 13:00
- [ ] Spotify for Creators: prepara il Clip `24:05 → 25:30` con overlay (cap. 6.2)
- [ ] Edita lo Short dai 3 tagli del cap. 6.1 e schedulalo per sabato 22/08 13:30

## DROP (sabato 22/08 13:00)

- [ ] YouTube long-form pubblica automatico
- [ ] Spotify episodio pubblica automatico
- [ ] Spotify Clip: pubblica **subito**, zero gap
- [ ] 13:30-14:00 → Short pubblica, metti il pinned comment (cap. 6.1)
- [ ] Verifica rendering thumbnail nel feed e CTR nei primi 30 minuti

## POST-DROP

- [ ] Martedì 25/08 14:00 → post LinkedIn (cap. 7), link Spotify nel primo commento
- [ ] `codiceartificiale`: inserisci il bullet (cap. 8) nella prossima edizione regolare
- [ ] T+4-24h → recupera `apple_episode_url` dall'RSS Apple e scommenta il campo nel frontmatter

## MONITORING

- [ ] Venerdì 29/08 (T+7): CTR YT, retention curve sui capitoli, Spotify plays vs media ultimi 5 numerati
- [ ] Domenica 21/09 (T+30): engagement cumulato, eventuale YT Studio Test & Compare con thumbnail alternativa (variante gialla, hook "16 GIGA DI VRAM")

---

# 11. Link rapidi

- YT Studio deep-link al video: https://studio.youtube.com/video/Y7gkGLG4LPY/edit
- Video pubblico: https://www.youtube.com/watch?v=Y7gkGLG4LPY
- Spotify episodio: https://open.spotify.com/episode/45PF4g7gH6tHATi1SCm0u2
- Spotify for Creators: https://creators.spotify.com
- Jekyll post path: `_posts/2026-08-22-bannato-da-glm-hybrid-routing-con-litellm.md`
- Thumbnail path: `/assets/images/episodes/ep68.png`
- LinkedIn company: https://www.linkedin.com/company/risorseartificiali
- Substack codiceartificiale: https://codiceartificiale.substack.com

---

# 12. Note operative

- **Apple URL**: il frontmatter Jekyll ha `# apple_episode_url:` commentato. Quando Apple Podcasts auto-pubblica via RSS (T+4-24h dal drop), estrai l'URL e decommenta il campo con un micro-commit separato.
- **Preservazione engagement history**: NON re-uploadare video/audio dopo il drop. Per correzioni di titolo/descrizione usa edit in-place su YT Studio e Spotify for Creators, così preservi le metriche accumulate.
- **UTM campaign**: tutti i link di questo file usano `ep68_drop`. Non modificarlo nelle pubblicazioni, altrimenti perdi l'attribuzione cross-piattaforma.
- **Frasi overlay**: le frasi del cap. 2 sono verbatim e ancorate al minuto. In montaggio sovrapponi ogni frase intorno al timestamp indicato (±15s), così l'overlay combacia con ciò che si sente.
- **Alessio assente**: la puntata è a due voci (Stefano + Paolo). Nel post Jekyll compaiono solo questi due speaker.
- **Michael Di Prisco**: a 28:30 Stefano lo invita ufficialmente in puntata. Se accetta, è un lead già caldo per un'intervista, e in quel caso il flusso è `podcast-promo` con format `intervista`.
- **Thumbnail iteration**: se dopo 48h il CTR YT è sotto target, usa YT Studio Test & Compare con una thumbnail alternativa (rigenera il prompt del cap. 3 variando palette ed espressione: giallo `#FFC700` + hook "16 GIGA DI VRAM").
- **Rilancio futuro**: se a T+90gg l'episodio sottoperforma, considera una nuova thumbnail per numerati via `thumbnail-gen` v1.1.

---

# 13. End screen + YT Cards (suggerito da youtube-cross-link v1.2)

<!-- Generato da .claude/skills/youtube-cross-link v1.2 il 2026-08-21.
     Cache canale: .claude/skills/youtube-cross-link/.cache/channel-videos.json
     (refreshata il 2026-08-21, 85 video).
     Episodio target: Y7gkGLG4LPY | "Bannato da GLM: hybrid routing con LiteLLM" | drop 2026-08-22.
     Candidati validi dopo filtro data/self: 46 | pre-screened: 15 | selezione: 1 end screen + 5 cards.
     Numero capitolo derivato automaticamente (max header # del promo file = 12, quindi 13).
     VIEWS REALI: fetch per-video su tutti gli 85 video del canale (yt-dlp --print,
     ~2 min). max_views canale = 758 (ep51 "Un AI agent in casa"). Lo score usa
     tutti e tre i termini, views_log incluso. -->

## End screen — 1 video (layout: Subscribe + Video)

| Campo | Valore |
|---|---|
| Titolo target | Quali skills usiamo davvero per i nostri agenti |
| YT ID | `YW4gIaVKIxM` |
| Durata | 61:26 |
| Views (al 2026-08-21) | 338 |
| Pubblicato | 2026-07-25 (ep 64) |
| URL | https://www.youtube.com/watch?v=YW4gIaVKIxM |

**Razionale**: al min 39:23 di questo episodio Paolo racconta Wait What e Stefano risponde citando Grill with Docs e handoff, ma il tema resta un accenno di sette minuti. Ep64 è la puntata speciale che quei due strumenti li nomina nei titoli dei capitoli ("Interview Me, Grill Me e doubt-driven", "Handoff, Hunk e tool CLI per agenti") e ci costruisce sopra la tesi "le skill non si scrivono, si distillano". End screen ideale: dà la visione completa di un tema che qui viene toccato di striscio, invece di ripetere quello che il viewer ha appena sentito.

Score finale 0.912, il più alto del set: semantic 0.93 (callback per nome su due skill), recency 0.899, views_log 0.878 (338 view, quarto video più visto del canale). Batte ep67 di 0.002, un margine dentro il rumore della stima semantica: il tiebreaker documentato è il view count, e ep64 vince 338 contro 205. Ep67 resta comunque in selezione come Card 2.

**Setup in YT Studio** (~90s):

1. YT Studio → Content → seleziona il video corrente → Editor → End screen
2. Aggiungi elemento → Subscribe (canale Risorse Artificiali, già di default)
3. Aggiungi elemento → Video → Specific video → incolla `https://www.youtube.com/watch?v=YW4gIaVKIxM`
4. Layout: pre-set "Subscribe + 1 video". Posiziona negli ultimi 20 secondi (da `1:12:24` a fine)
5. Save

---

## YT Cards — 5 cards a timestamp specifici del video corrente

### Card 1 — Mostra al min `10:30`

| Campo | Valore |
|---|---|
| Linka video | Inferenza europea e zero log \| Eugenio Petullà (Regolo.ai) |
| YT ID target | `gjQOF7CEZQE` |
| URL | https://www.youtube.com/watch?v=gjQOF7CEZQE |
| Tema della card | Routing tra modelli, ibrido locale-cloud |
| Custom message | `Routing e small model` |
| Teaser text | `Scegliere il modello giusto` |
| Score / views | 0.835 / 150 |

**Razionale**: al min 10:30 Paolo spiega cosa fa davvero LiteLLM come middleware e perché ha senso mandare le richieste facili su un modello locale. Nell'intervista a Eugenio Petullà i capitoli "Routing e brick: il modello giusto" e "GLM, Qwen, Gemma e i small model" affrontano la stessa scelta dal lato di chi l'inferenza la vende, e "Zero data retention: i tuoi dati su OpenAI" copre la seconda motivazione dell'hybrid routing citata qui, quella sulle informazioni che non vuoi far uscire. Unica intervista in selezione.

---

### Card 2 — Mostra al min `21:30`

| Campo | Valore |
|---|---|
| Linka video | Open weight con l'asterisco: cosa Qwen non ha rilasciato |
| YT ID target | `Fv1Uf-TksLM` |
| URL | https://www.youtube.com/watch?v=Fv1Uf-TksLM |
| Tema della card | Qwen 3.8, cosa è stato rilasciato e cosa no |
| Custom message | `Cosa manca in Qwen 3.8` |
| Teaser text | `Open weight con l'asterisco` |
| Score / views | 0.910 / 205 |

**Razionale**: al min 21:30 Stefano sta spiegando che il 27 billion denso è arrivato e la community comincia a provarlo, ma non dice qui cosa Qwen abbia tenuto per sé. Ep67, la settimana scorsa, apre esattamente su quello ("Sondaggio ascoltatori e Qwen 3.8 senza Max"): niente variante Max, niente vision, contesto tagliato. È il pezzo di contesto che manca al viewer proprio in quel punto. Score 0.910, il secondo del set.

---

### Card 3 — Mostra al min `28:00`

| Campo | Valore |
|---|---|
| Linka video | Dal leak di Claude Code a Lince e antivocale |
| YT ID target | `9t03EZBL34A` |
| URL | https://www.youtube.com/watch?v=9t03EZBL34A |
| Tema della card | Stesso modello, provider diversi, risultati diversi |
| Custom message | `Perché Ollama risponde peggio` |
| Teaser text | `Stesso modello, provider diversi` |
| Score / views | 0.778 / 130 |

**Razionale**: al min 28:00 Stefano dice che le stesse domande fatte a Z.ai e a Ollama con lo stesso modello danno risposte diverse, e sospetta la quantizzazione. Ep46 ha due capitoli consecutivi che sono la risposta a quel sospetto: "Modelli GLM 5 di ZAI: quando la quantizzazione aggressiva rompe tutto" e "Stesso modello, provider diversi, risultati diversi". È il callback più preciso dell'intero set (semantic 0.88), penalizzato solo dalla recency (4,6 mesi).

---

### Card 4 — Mostra al min `34:00`

| Campo | Valore |
|---|---|
| Linka video | L'AGI è un asintoto: perché non serve la perfezione |
| YT ID target | `ay18maVnX_k` |
| URL | https://www.youtube.com/watch?v=ay18maVnX_k |
| Tema della card | Promptare in italiano, studio Anthropic sulle lingue |
| Custom message | `Lo studio sulle lingue` |
| Teaser text | `Promptare in italiano` |
| Score / views | 0.895 / 276 |

**Razionale**: al min 34:00 Stefano cita "uno studio di Anthropic, vecchiotto anche quello" per spiegare perché la lingua nativa dà un vantaggio di espressività nonostante il costo in token, ma non lo linka. Ep65 ha un capitolo intero su quello studio ("Promptare in italiano: lo studio Anthropic sulle lingue"). La card arriva nel momento in cui il viewer si sta chiedendo dove trovare la fonte. Terzo score del set (0.895).

---

### Card 5 — Mostra al min `57:30`

| Campo | Valore |
|---|---|
| Linka video | Open weight americano e Kimi K3: cambio di scena |
| YT ID target | `6Q_EmEDixY8` |
| URL | https://www.youtube.com/watch?v=6Q_EmEDixY8 |
| Tema della card | Kimi K3, open weight americano, licenze |
| Custom message | `Kimi K3 in classifica` |
| Teaser text | `Il gap si chiude` |
| Score / views | 0.812 / 392 |

**Razionale**: al min 57:30 si parla di Kimi K3 provato poco per mancanza di token decenti, dei modelli open americani tutti piccoli e delle licenze non commerciali che iniziano a comparire anche in Cina. Ep63 è la puntata che ha inquadrato entrambi i lati ("Kimi K3: i cinesi chiudono il gap", "Terzo al mondo", "Thinking Machine Lab: l'open weight di Murati", "Inklings: open weight americano"). È anche il video più visto della selezione (392, secondo del canale a pari merito con ep55).

---

## Setup in YT Studio (cards, ~5 min)

1. YT Studio → Content → video corrente → Editor → Cards
2. Per ogni card: Aggiungi card → Tipo "Video" → incolla l'URL → imposta "Show card at" al timestamp indicato → compila Custom message e Teaser text dalla tabella
3. Aggiungi tutte e 5 in una sessione, poi Save una sola volta
4. Verifica: riproduci il video ai 5 timestamp, controlla che il teaser appaia per ~5 secondi in alto a destra

## Distribuzione timestamp lungo l'episodio (durata 1:12:44)

| Card | Timestamp | Posizione relativa | Gap dalla precedente | Capitolo agganciato |
|---|---|---|---|---|
| Card 1 | 10:30 | 14% | — | 08:18 LiteLLM: i modelli locali in un pool |
| Card 2 | 21:30 | 30% | 11:00 | 19:55 Qwen 3.8 27B: coding su 16 giga |
| Card 3 | 28:00 | 38% | 6:30 | 26:01 GLM 5.3 e il dubbio su Ollama |
| Card 4 | 34:00 | 47% | 6:00 | 32:20 Parlare ai modelli in italiano |
| Card 5 | 57:30 | 79% | 23:30 | 56:26 Kimi K3, licenze e modelli sopra 70B |

Nessun cluster: gap minimo 6 minuti, ben oltre la soglia dei 90 secondi. Copertura early (Card 1 al 14%), metà (Card 3 e 4 tra 38% e 47%), finale (Card 5 al 79%, prima dell'end screen a 1:12:24).

## Score breakdown (trasparenza algoritmo)

Pesi: semantic 0.55, recency 0.25 (half-life 6 mesi), views_log 0.20 normalizzato su `max_views = 758`.

| # | Video | Score | Semantic | Recency | Views (log) | Views | Esito |
|---|---|---|---|---|---|---|---|
| 1 | ep64 Quali skills usiamo davvero | 0.912 | 0.93 | 0.899 | 0.878 | 338 | **end screen** |
| 2 | ep67 Open weight con l'asterisco | 0.910 | 0.92 | 0.974 | 0.803 | 205 | Card 2 |
| 3 | ep65 L'AGI è un asintoto | 0.895 | 0.90 | 0.923 | 0.848 | 276 | Card 4 |
| 4 | Petullà Inferenza europea e zero log | 0.835 | 0.85 | 0.866 | 0.757 | 150 | Card 1 |
| 5 | ep63 Open weight americano e Kimi K3 | 0.812 | 0.75 | 0.876 | 0.901 | 392 | Card 5 |
| 6 | ep66 L'AI fa 10 scoperte matematiche | 0.783 | 0.68 | 0.948 | 0.861 | 300 | scartato: tema inglese B1/B2 ridondante con ep65 |
| 7 | ep46 Leak Claude Code, Lince, antivocale | 0.778 | 0.88 | 0.588 | 0.735 | 130 | Card 3 |
| 8 | Stagi Context engineering per agenti | 0.761 | 0.72 | 0.758 | 0.878 | 337 | scartato: ibrido local-cloud ridondante con Petullà |
| 9 | ep61 Fable, GPT 5.6 e modelli cinesi | 0.761 | 0.70 | 0.853 | 0.814 | 220 | scartato: modelli cinesi ridondante con ep63 |
| 10 | ep55 Workflow dinamici | 0.708 | 0.62 | 0.747 | 0.901 | 392 | scartato: sandbox e harness, tema minore qui |
| 11 | ep20 Intelligenza ibrida (Stefano Gatti) | 0.675 | 0.85 | 0.307 | 0.653 | 75 | scartato: vedi nota AP2 |
| 12 | ep50 L'AI che non dorme | 0.664 | 0.60 | 0.654 | 0.853 | 285 | scartato: Z.ai post-mortem coperto meglio da ep46 |
| 13 | ep29 L'AI che cambia tutto | 0.661 | 0.78 | 0.364 | 0.706 | 107 | scartato: OpenRouter, ma doppia penalità recency e views |
| 14 | Basso Licenze AI a tutti in azienda | 0.658 | 0.55 | 0.799 | 0.780 | 176 | scartato: connessione generica su skill |
| 15 | ep49 I guardrail sono una tassa | 0.595 | 0.50 | 0.637 | 0.803 | 205 | scartato: jailbreak solo tangenziale |

## Note operative

- **Views reali, non stimate**: questa selezione usa il view count effettivo di tutti gli 85 video del canale, recuperato con un fetch per-video (`yt-dlp --print`, circa 2 minuti). La cache `--flat-playlist` non restituisce `view_count`, quindi una run che si limita alla cache azzera il termine da 0.20 e cambia l'esito: senza views, ep67 risultava end screen ed ep20 entrava in selezione. Con le views, ep64 passa in testa ed ep63 sale al quinto posto.
- **Mix format**: 4 numerati + 1 intervista (Petullà). Il pool tematicamente affine è quasi tutto numerato: le interviste del canale toccano routing e modelli locali solo di striscio, con l'eccezione di Petullà e Stagi, che coprono però lo stesso tema.
- **Diversità temporale**: 4 candidati sotto le 6 settimane + 1 medio-recente (ep46, aprile). Il set è più recente della distribuzione ideale. Non è un bias dell'algoritmo: gli episodi vecchi tematicamente affini (ep20 con 75 view, ep29 con 107) prendono una doppia penalità su recency e views perché hanno davvero meno pull.
- **Tema AP2 scoperto**: il cap. 02:59 (A2A, AP2 e il routing dei pagamenti) resta senza card. Il candidato naturale è ep20 (`WGCzRbjULPA`), che ha il capitolo "Il protocollo AP2 di Google e la fiducia agli agenti" più uno su X402 ed ERC 8004: semantic 0.85, ma 75 view e 10 mesi lo fermano a 0.675. Se preferisci coprire l'apertura, agganciala al min `04:30` al posto della Card 3, che è la più sacrificabile per score.
- **Misurazione**: YT Studio → Analytics → Engagement → End screens / Cards. Soglia di riferimento: CTR > 2% buono, > 4% ottimo. Su un canale con 200-400 view per episodio aspettati numeri assoluti piccoli: guarda il CTR, non i click. Se a T+30gg sei sotto soglia, re-invoca `youtube-cross-link` per una nuova selezione.
- **Cache canale**: refreshata il 2026-08-21 (85 video). Prossimo refresh suggerito: 2026-08-26. Il fetch delle views non viene messo in cache: è una raccolta on-demand, va rifatta a ogni run che la richiede.
