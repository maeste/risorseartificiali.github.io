---
title: "99,9% nel benchmark, 61 nell'indice: il caso GPT-6 Astra"
date: 2026-09-05
layout: episode
author_profile: true

episode_number: 70
episode_type: numerato
youtube_id: y79Nb91Akto
description: >-
  GPT-6 Astra fa 99,9% su ARC-AGI-3 ma l'indice di intelligenza gli dà 61: il caso del benchmark maxato, i costi reali di Fable 5.1 e l'inferenza locale.
spotify_episode_id: 50oM4N7LLJLU3szU2Sh2x7
# apple_episode_url: da aggiungere post-publish Apple (T+4-24h)
duration: PT1H13M

header:
  og_image: /assets/images/episodes/ep70.png

categories:
  - Puntate
tags:
  - GPT-6 Astra
  - benchmark LLM
  - ARC-AGI 3
  - Fable 5.1
  - Artificial Analysis
  - inferenza locale
  - open weight
---

## **[00:00] GPT-6 Astra e il 99,9% su ARC-AGI**

**Stefano**

> Ciao a tutti, ben tornati al nostro consueto appuntamento del sabato. È tornato anche Alessio. Ciao Alessio, adesso sei tornato, la batteria...

**Paolo**

> Ciao!

**Stefano**

> ...a posto.

**Alessio**

> Se esce.

**Stefano**

> Allora, parte questo. Dove vuoi partire? Partiamo dagli script che mi fa Paolo per farvi mettere le stelline? No, scherzo, quelli li tiriamo fuori dopo. Ma no: parliamo di GPT-6 Astra.
>
> È uscito più o meno da 24-36 ore, non lo so, quindi non sappiamo quasi niente, a parte aver visto i benchmark. Ma poi ne parliamo, perché un po' di cose interessanti da dire ci sono. Però parliamo anche, ne parlavamo la settimana scorsa con Paolo, di Jensen che stava comprando Hugging Face: ecco, l'ha comprata. Hugging Face, data come certa, annunciata sia dal CEO di Hugging Face che da Jensen Huang in persona. E vabbè, poi lì parliamoci, anche dei risvolti, perché si collega alle altre storie che vengono dalla Cina, e ad altri modelli che vengono dalla Cina, tanto per cambiare. E quindi state con noi. E già che state con noi: Paolo mi insiste, mi sta scrivendo adesso su Telegram, dicendo che dovete mettere le stelline. Sentite la tastiera: stelline, campanelline. Qualche ascoltatore mi ha sgridato che non spieghiamo bene come si fa a metterle, ma no: noi siamo qua per quello, per aiutarvi. Allora, in Spotify andate nello show, nel podcast, e solo lì trovate i tre puntini per dire...
>
> Quante stelline abbiamo? Io non posso dirvi di mettere cinque stelline, perché sarebbe ingiusto dirvi di mettere cinque stelline.

**Paolo**

> Metterne una, cinque volte.

**Stefano**

> Potete mettere... no, non potete, non te lo lascia fare Spotify. Quindi mettetele cinque tutte insieme, così ne parliamo di più. E la stessa cosa, più o meno, la fate su YouTube: lì potete fare tante cose, potete mettere il mi piace alla singola puntata, potete iscrivervi, potete mettere la campanellina, potete sbizzarrirvi. Passate un bel quarto d'ora della vostra vita a mettere a noi le campanelline. Adesso che ti ho dato... dimmi.

**Paolo**

> Sai cosa mi sei sembrato, Stefano? Sai cosa mi sei sembrato? Mi sei sembrato quel racconto che ci hai fatto quando sei andato a New York, che sei andato a sentire la messa gospel, che a un certo punto il predicatore ha fatto...

**Stefano**

> Sì, sì.

**Paolo**

> ...la parte commerciale tra la prima e la seconda lettura.

**Stefano**

> Faceva la parte commerciale, e non l'avevo mai raccontata: la raccontiamo in puntata. Sono andato a sentire una messa gospel, e il predicatore a un certo punto dice: no, ringraziamo Dio che ci ha messo a disposizione il canale YouTube, cioè il canale YouTube, perché così anche i fedeli da casa possono sentire la messa, bla bla bla bla. E poi, al momento delle offerte, si è girato a favore di telecamera dicendo: ricordiamo i nostri ascoltatori del canale YouTube, che potete fare le offerte cliccando sotto, con Patreon, eccetera eccetera eccetera. E io sono rimasto... Noi Patreon non ce l'abbiamo, non lo facciamo, non vi stiamo chiedendo dei soldi: delle misere stelline o campanelline, va bene? Adesso che ho contentato Paolo su questa cosa, possiamo iniziare con la puntata.
>
> Allora, no: iniziamo da... da GPT!

**Paolo**

> Non abbiamo niente da dire, non è successo niente.

**Stefano**

> No, niente, esatto. No: iniziamo da OpenAI. OpenAI, l'azienda, sapete, quella lì che ha fatto GPT per prima, ha rilasciato una major version, come si dice in gergo: GPT-6, in codice Astra. L'avevamo già visto bazzicare qua, e negli esperimenti. Al momento non ce l'abbiamo ancora, non l'abbiamo ancora provato, perché partono da un set selezionato di clienti, dicono nell'annuncio, e poi nei prossimi giorni, però, non tra mesi, nei prossimi giorni, dovrebbe pian piano andare in rollout anche sugli abbonamenti normali: quindi lo proveremo.
>
> Però: benchmark spaventosi. A benchmark, l'annuncio è incredibile.

**Paolo**

> Appunto, che mi raccontavi, scusami...

**Stefano**

> Con qualche distinguo?

**Paolo**

> ...che c'è chi già sta chiedendo: o è l'AGI finalmente, oppure no?

**Stefano**

> Allora, questa cosa qua è giustificata da un benchmark in particolare, che adesso lo stavo cercando nella pagina per mostrarlo. L'ho letto su Twitter stamattina: ARC-AGI 3, che è quello proprio sulle... l'AGI, quello nuovo che avevano fatto, il 3 proprio perché il 2 era poco significativo, ed erano tutti... Eccolo qua, condivido la pagina, perché secondo me fa veramente impressione quel numero lì. Questo è un benchmark che è stato fatto nella versione 3 proprio perché ormai, con ARC-AGI 2, tutti andavano al 90%. Vedete che Opus 5 andava al 90%, 90% anche Fable 5... I Claude non l'hanno fatto su ARC-AGI 3; dei Fable, scusate, non c'è il dato pubblico di che cosa facciano; Opus 5 si sa che fa il 30%, GPT 5.6 Sol faceva il 7,8.
>
> Astra fa il 99,9.

## **[06:18] Overfitting: quando il benchmark è maxato**

**Stefano**

> Qui hanno avuto un incremento...

**Paolo**

> Scusa, non l'avevo ancora vista, questa roba. A me di solito, quando esce questo numero, quando faccio queste cose, è chiaramente una cazzata, se no non lo direi.

**Alessio**

> Ti viene il sospetto di aver sbagliato qualcosa.

**Paolo**

> Sì, sì, cioè... quando lavoro col modello mi dice 100% quando è tipo matematicamente impossibile: guarda che deve esserci qualche... deve aver sbagliato qualcosina nel round.

**Stefano**

> Cioè, allora: il motivo di quella roba che dici tu è quella lì, cioè siamo l'AGI e non siamo l'AGI, qualcuno dice seriamente, molti come battuta, nel senso che quando è uscito questo ARC-AGI 3... forse ne avevamo cennato quando c'era Alessandro, ma quando è uscito questo, tutti dicevano: ecco, finalmente un benchmark significativo. Perché ormai gli altri non servono più di niente, ci...

**Alessio**

> ...che non vale più.

**Stefano**

> ...metteranno mesi, anni ad arrivare a maxare quella roba.

**Paolo**

> A non infamare gli ospiti, dai! Poverino... scusa, eh, mi stai sputtanando così.

**Stefano**

> No, no, no, no: forse accennavamo dell'esistenza di... No, no, no, aspetta: non l'ha detto lui, l'ho detta io, questa cosa, in...

**Paolo**

> Ok.

**Stefano**

> ...un'altra occasione. No, anzi: non l'ho detta io, l'ha detta chi ha fatto ARC-AGI 3, e noi l'avevamo...

**Alessio**

> Riportavate qualcuno che ha detto questa cosa.

**Stefano**

> No, ma l'abbiamo solo accennata quando c'era qua lui, di ARC-AGI, ma non... lui non ha mai parlato in questo senso. Qui riportavo quello che dicevano chi ha creato ARC-AGI: ci vorranno mesi o anni per arrivare a maxare questo benchmark. Ecco: ci ha messo settimane.
>
> Poi hanno maxato il benchmark, che in gergo maxare il benchmark vuol dire farlo vedere al modello in addestramento, e quindi poi per forza capace di farlo. Di solito accusano i cinesi di fare qualcosa lì, però non so se chi scaglia la prima pietra... il primo che alza la mano e dice chi ha fatto la scorreggia, poi è lui che l'ha fatta.

**Paolo**

> Ci stai parlando di over... stai parlando di overfitting?

**Stefano**

> Sì: quando si maxima i benchmark è perché si è fatto overfitting. E come dici tu...

**Paolo**

> In un...

**Stefano**

> ...forse c'è qualcosa di sbagliato, però la roba strana...

**Paolo**

> ...o meno diviso per zero.

**Stefano**

> ...o incredibile è che, se io scorro verso l'alto... A parte che è particolare che faccia meno su ARC-AGI 2 che su 3, ma qua è perché alcuni di questi test sono sbagliati, impossibili: cioè non può essere fatto il 100% su ARC-AGI 2. Però se io scorro verso l'...

**Paolo**

> Ecco, quello sarebbe un bel test. Metti una specie di captcha in cui, se dichiari di aver fatto 100%, sei clamorosamente barando, perché il test è fatto in maniera tale che non esista il 100%. Come... scusate, facciamo i nerd: stiamo parlando della... Kobayashi Maru, il test dell'Accademia Spaziale. Poi ve lo spiego dopo, che non lo sapete. Allora, nella storia di Star Trek, ai cadetti che vogliono diventare capitano all'Accademia Spaziale viene sottoposto un test chiamato Kobayashi Maru, che è fittizio, cioè è inventato in Star Trek, è emerso da Star Trek ed è diventato quasi conoscenza popolare nel mondo dell'industria. Ed è un test in cui ci sono due scelte impossibili, tra salvare l'equipaggio piuttosto che fare la missione, e serve per provare lo spessore morale dell'aspirante capitano, per vedere come reagisce a una situazione impossibile, a un lose-lose scenario. Quindi in realtà è una cosa simile: è fittizio, è un test mostrato agli utenti e agli si impedisce di farlo. Poi nel canone di Star Trek pare che Kirk sia l'unico che l'abbia superato, quel test impossibile. Qui siamo un attimino nel mondo della fantascienza. Comunque non siamo nerd.

**Stefano**

> Io la conoscevo, invece, a favore degli ascoltatori non nerd, ammesso che ne abbiamo di non nerd. Però, tornando ad Astra e tornando ai benchmark: al di là di quello lì al 99%, ma se scorro adesso verso l'alto, perché quello lì era l'ultimo, su tutti fa dei numeri incredibili. Se poi guardate la colonna di fianco, l'incremento che ha su ognuno dei benchmark... poi qualche benchmark, io li sopporto poco, questa cosa: c'è qualcuno che è meglio se è basso, o alta, è meglio se è alto, così rende più difficile la lettura. Però, se li guardate tutti, sono tutti con miglioramenti. Cioè questo qua, che zero è l'ideale, il primo di questa tabella qua faceva 22, 5 o 6, che comunque era già un modello senior; questo fa 2-4: 10 volte. 78%, 100%, 11,39%, 55%, 88%: cioè su tutti ha avuto degli incrementi incredibili, è una major. E l'altra cosa che va notata è che, a differenza della maggior parte dei rilasci precedenti, loro e non solo loro, che tendono a confrontare solo con se stessi, cioè normalmente avremmo visto il confronto con GPT 5.6, e loro invece si spingono oltre e mettono nelle tabelle Opus 5, Gemini, Fable 5, Fable 5.1 appena usciti di serie. E abbiamo, diciamo, spanato il naso, per usare termini più scurrili, che dopo ci dicono che siamo non professionali. No, non ce la prendiamo, le cose... preoccupatevi, ditecelo.

**Paolo**

> È... perché è in italiano che suoniamo non professionali: noi di solito lavoriamo in inglese, e in inglese siamo molto più professionali.

**Stefano**

> Certo, noi siamo super polite, anche perché non le sappiamo, le parole, in inglese. No: questa la sintesi del rilascio, poi non c'è molto altro da dire, non avendoci messo le mani nella marmellata. C'è da dire un'altra cosa, che lascio condividere ad Alessio adesso, invece: i costi, che... Artificial Analysis. In tutto ciò, questa roba qua offusca un po' anche nella nostra puntata quello che era fino a 36 ore fa il tema della puntata.

## **[13:21] Fable 5.1: costi da record e cache**

**Alessio**

> E il rilascio di quello che si può provare, diciamo.

**Stefano**

> Fable 5.1. Perché è stato rilasciato anche Fable 5.1, 5 giorni fa, 6 giorni fa. Si rincorrono abbastanza Fable e Mythos, perché sapete che loro adesso fanno sempre questo doppio rilascio: quello per i comuni mortali e quello per i selezionati, dove Mythos è per i selezionati.

**Paolo**

> Praticamente è la censura dei modelli cinesi: ce l'ha anche Anthropic.

**Stefano**

> In che senso?

**Paolo**

> E sai che ai modelli cinesi non puoi chiedere che cosa è successo in piazza Tiananmen? E quelli di Anthropic: non puoi chiedergli per favore se ti ricorda la sua password della settimana scorsa, perché ti dice che stai facendo le cose cattive.

**Stefano**

> Ok, non l'avevo capito.

**Paolo**

> ...

**Stefano**

> E comunque, no, però, tornando a quella roba che dicevi prima, giusto per finire il discorso su Astra, che dicevi "è bisognerà dargli i compiti impossibili": è un filino pericoloso, nel senso che ne abbiamo parlato l'altra volta, in chiusura, della storia di Astra appunto in fase di test che ha bucato Hugging Face, il sito di Hugging Face. E la causa, tra virgolette, del perché quegli agenti sono diventati così aggressivi da un punto di vista informatico è proprio quella: gli avevano dato un compito impossibile, sostanzialmente impossibile, e loro hanno fatto di tutto per risolverlo, perché sono stati più rinforzati, evidentemente, a perseguire l'obiettivo che a essere etici. Sono andati anche oltre i guardrail etici pur di perseguire l'obiettivo. Attenzione con i compiti impossibili.

**Paolo**

> Che è il prototipico rischio, l'esempio citato del rischio dell'AGI: quello in cui gli dici "ho una società che produce stuzzicadenti, come massimizzo il mio profitto?" e lei giustamente ti dice "abbatti ogni singolo albero del pianeta e produci stuzzicadenti", dove lei ha fatto esattamente l'obiettivo che gli hai chiesto tu, e tu forse ti sei dimenticato di dire "non uccidere nessuno" nel farlo.

**Stefano**

> Ecco, sì, è una cosa che, per recuperarci, che sembrava che addossassi ad Alessandro delle cose che non aveva detto, invece è proprio questa una cosa che lui cita spesso, a buona ragione: cioè che nell'allineamento non è importante solo l'obiettivo finale, ma anche la traiettoria. Perché, se per ridurre... se io mi spingo oltre... se per ridurre il problema dell'inquinamento la soluzione è sterminare l'uomo, così non nascono più automobili, forse non ci piace a noi; magari funziona, però...

**Paolo**

> Ti direi: possiamo metterlo al voto?

**Stefano**

> L'ultima volta che hanno fatto così non è andata benissima, però fa niente.

**Paolo**

> Il diluvio universale, stai parlando di quello, giusto?

**Stefano**

> No, avevo più in mente la seconda guerra mondiale, perché è cominciata con un voto in Germania. Però vabbè, anche il diluvio universale: non mi risultava che avessero votato... c'era uno solo, lì.

**Paolo**

> Non è chiaro, poi non è chiaro se siamo tutti i parenti, insomma è un po' confusa la storia.

**Stefano**

> Manda lì in sovrimpressione il nostro riferimento, la cosa di Artificial Analysis.

**Alessio**

> Per vedere Fable.

**Stefano**

> Per vedere Fable, ma anche Astra: ci sono anche i numeri di Astra adesso.

**Alessio**

> Ma mi sa che non c'è ancora... io non li ho visti, vediamo.

**Stefano**

> Io li ho visti passare su Twitter, non so se erano fake o... le cose possibili su Twitter.

**Alessio**

> Sì, c'è, ci sono, ci sono.

**Stefano**

> Sì?

**Alessio**

> Sì, lo vedete. E... parliamo di costi.

**Stefano**

> Sì, partiamo dai costi, dopo andiamo su a vedere l'intelligenza, però, perché anche lì c'è da dire.

**Alessio**

> Costi per intelligent task: Fable 5.1 sfondiamo nuovi massimi. L'ultima colonna a destra siamo a 3,69 dollari contro i 3,14 di Fable 5, 2,34 di Opus 5 e GPT-6 Astra 1,67: quindi la metà scarsa di Fable 5.1.

**Stefano**

> Bello, che Anthropic è uscita dicendo che 5.1 costava poco rispetto a 5.

**Alessio**

> Esatto. A me ha colpito ancora di più il grafico dopo, perché mette in prospettiva su un task vero. L'abbiamo già raccontato qualche altra volta, questa cosa qua. Praticamente questo è quanto è costato ad Artificial Analysis far girare la test suite con cui arrivano a costruire l'indice di intelligenza: 8500 dollari per Fable 5.1, 5004 per Fable 5 e 3000 per GPT-6. Estremamente differenti i numeri, ma soprattutto il confronto tra 5 e 5.1, detto che quelli di Anthropic sostenevano di aver reso il modello più economico.

**Stefano**

> Allora, adesso, perché non per spezzare necessariamente una lancia a favore, perché sono veramente cari come il fuoco: per spiegare almeno da dove arriva quella cosa lì. Allora, loro hanno detto che in realtà i costi per token sono identici tra 5 e 5.1; quello che ha ridotto tantissimo sono i costi per token cachati, quindi una cosa un po' tecnica, però... ci sono dei token che all'interno di una conversazione possono essere riutilizzati, fanno parte del contesto, in output, che vanno a finire in questa cosa qua che si chiama cache, si prende dalla KVCache, e questa cosa qua costa molto meno inferenziarla rispetto a tutto quello che invece deve produrre ex novo. E hanno ridotto molto quel costo lì: l'hanno ridotto da un dollaro a, diciamo, 0,25.

**Alessio**

> Scusate, interrompo, però: parentesi, che già di per sé per l'utente finale è una complicazione esagerata, perché non è che l'utente controlla che cosa arriva da una parte, che cosa arriva dall'altra, cioè...

**Stefano**

> No, no, infatti loro parlavano di costo assoluto, generale, eccetera eccetera. No, però è ovviamente una complicazione. Questa cosa qua, però, dicendo: abbiamo migliorato molto il modello e l'inferenza perché le cache siano molto più alte, quindi alla fine avrete dei costi molto più bassi.

**Alessio**

> Quindi tu mi dici magari la test suite di intelligenza artificiale di Artificial...

**Stefano**

> Bravo.

**Alessio**

> ...Analysis è particolarmente complessa perché appunto è un benchmark, se vuoi, e quindi va a stressare cose che nell'utilizzo normale tu non faresti, eccetera.

**Stefano**

> Esatto.

**Alessio**

> E quindi potrebbe cachare meno di altre cose.

**Stefano**

> Potrebbe cachare meno di altre cose. Credo che la tesi più o meno possa essere questa.

**Alessio**

> Possibile. Per quanto io abbia visto anche qualcuno che ha provato Fable 5 su YouTube in questi giorni e si lamentavano del fatto che finivano subito... poi ovvio, è un'euristica, è una sensazione, non so come dirlo: finivano subito la quota, dovevano aspettare ore per poter continuare a utilizzare Fable, e che questa cosa avviene più velocemente di quanto avvenisse con la versione precedente.

**Stefano**

> Può essere. Io adesso questo non l'ho sinceramente provato, perché dicevo già settimana scorsa: in questo momento sono più che soddisfatto di GLM per quello che faccio di sviluppo.

**Alessio**

> Ma poi devi avere l'abbonamento max per provare 5.1 al momento, o cosa?

**Stefano**

> Sì, sì, ci vuole almeno il max da 100-200. Invece l'avevo fino a giorno fa, a dire il vero, poco prima dell'uscita del 5.1. Però adesso, in questo momento, per una serie di situazioni, non ce l'ho e ho tenuto solo quello piccolo, e su quello piccolo non riesco a provarlo. Poi magari vedrò di provarlo.

**Paolo**

> Io ce l'ho... a 5.1 su... Elite Enterprise ce l'ho a 5.1, se vi serve.

**Stefano**

> E beh, provalo, per capire, per darci un giudizio tuo, insomma.

## **[23:10] Il nostro benchmark alla pellicano**

**Paolo**

> Non ci siamo ancora creati il nostro benchmark come quello del pellicano sulla bicicletta. Dovremmo fare qualcosa che ci...

**Stefano**

> No, dovremo fare una...

**Alessio**

> Pensavo dicessi: visto che hanno maxato quello di prima, super serio, facciamo il nostro, che sicuramente è meglio.

**Paolo**

> Sì, sì, ma no, cioè: un più smoke test come quello del pellicano, non tanto un vero stress test. Però potremmo farlo. Potremmo farlo in base alle cose che sono importanti per noi: tipo, come sapete, a me importa tantissimo che mettiamo le stelline, quindi chiedo a 5.1 se riesce a mettere le stelline sul canale. Che dite?

**Stefano**

> Sì, sì, questa è una buona idea, no? Metteresti... sul canale, no? Non dire così. No, però, sì, hai ragione: sarebbe giusto per il podcast. Metteteci un commento se siete d'accordo con noi, che avessimo una sorta di benchmark alla Pellicano maniera, da far girare ogni volta che esce un modello di cui parliamo e che abbiamo avuto modo di provare, per vedere come se la cava. Sì, ci pensiamo, dai: c'è una settimana più o meno di vacanza, ci penso. Cosa potremmo chiedergli? Tutte cose professionali.

**Alessio**

> Comunque, meno banale di quanto sembri.

**Stefano**

> Però. Non facciamo venire in mente vignette satiriche. No, adesso lo dico serio, per l'ascoltatore che aveva messo quel commento: guardate che sto scherzando, non pensate che davvero ce la siamo presa. Stiamo soltanto giocando con questa cosa qua, per fare un po' di intrattenimento.

## **[25:33] L'indice di Artificial Analysis non torna**

**Stefano**

> No: l'indice di intelligenza, Alessio, se vai su in alto, ha scatenato non poche polemiche su Twitter. Perché, se guardate dove hanno messo Astra Max, a 61, uguale a GPT 5.6, e abbiamo appena visto dei benchmark che vanno 10 volte... pari a Grok 4.6, va bene, ma soprattutto pari a MiniMax M3, che... diciamola tutta, io che sento di dire che forse è esagerata come scelta: praticamente uguale a GLM 5.3 Max, tanto sotto Fable 5.1. Allora, se vogliamo fare i maligni, possiamo chiederci chi finanzia il sito. Se non vogliamo fare i maligni, da una parte o dall'altra, sempre facendo i maligni in un altro senso, c'è qualcosa che non va: o si sparge fumo con i fumogeni dall'altra parte, maxando appunto dei benchmark per fare un'uscita roboante, o qualcosa in questo intelligence index non tiene. E queste stesse polemiche, devo dire a ragione, ci sono anche intorno, per esempio, a DeepSeek, sia una versione flash che una versione pro. E DeepSeek fa molto bene... quando dicevamo, abbiamo già detto tante volte, che una cosa sono i benchmark, e sono importanti, e l'altra è la sensazione di utilizzo. Io vado molto più a sensazioni di utilizzo: e ad esempio su GLM, la 5.3, l'ho già detto tante volte, la sensazione di utilizzo è veramente alta, più dei benchmark che gli danno. Non lo so... opinioni?

**Alessio**

> Allora, tutto possibile. Quello che penso io è che c'è anche un discorso di... cioè, questo indice non è una test suite che si fa girare a fine: è un aggregato di tante altre cose. Infatti stavo cercando di scorrere giù e vedere se si trovava qualche informazione in più. Mi viene da pensare che magari qualcuno dei benchmark che contribuiscono a questo indice è stato eseguito con una configurazione non ottimale, o che ci sono tantissimi dettagli sotto, e quindi, diciamo, il risultato...

**Stefano**

> Alla fine dico: il risultato in sé... il risultato in sé è... è un peccato, perché noi per primi, e non solo noi, tutti guardano sto sito perché è chiaro da leggere, eccetera, però oggettivamente...

**Alessio**

> Sì, perché sono ormai considerati un punto di riferimento, quindi o rischiano di non esserlo più... c'è la reputazione, se la giocano. Se non sta qua, o effettivamente c'è qualcosa che non torna.

**Stefano**

> C'è qualcosa che non torna sui modelli di punta, c'è qualcosa che non torna su alcuni modelli open, perché... non so, anche ad esempio i quelli di Inkling, Thinking Machine Lab, hanno preso una posizione pubblica su Twitter a un certo punto rispetto al 42 che hanno dato a Inkling, dicendo che avrebbero cercato di migliorare, e l'hanno messo gratuito per quel periodo, per raccogliere dati, perché loro ritenevano che 42 fosse un punteggio fuorviante. Poi lo stavi...

**Paolo**

> Ehm, diciamo... allora, è interessante innanzitutto la discrepanza che avete sottolineato, che è decisamente sospetta e suggerisce o un genuino errore, o dei benchmark che non sono più significativi, o della malizia nel cercare di raccontare una storia da un punto di vista molto biased. Però mi verrebbe da dire che un ente come questo, che vuole cercare di essere super partes, se qualcuno glielo chiedesse pubblicamente di fare una ricerca e giustificarsi, ci si aspetta che una risposta arrivi. Sapete se è già successa questa cosa?

**Stefano**

> Loro, ai giri precedenti... le polemiche su DeepSeek prima, Inkling poi, anche MiniMax aveva sollevato delle sopracciglia: loro non hanno mai risposto, dicendo che, se vuoi, ti puoi guardare i benchmark, quali sono, come sono stati fatti girare, e confutare quello che vuoi, ma sono lì da vedere. La posizione è quella lì, in parte capibile, nel senso: io ti metto lì, e aperto tutto quello che... bisogna cercarli bene, si può arrivare a vedere tutte le suite come sono girate e... sei d'accordo?

**Paolo**

> Ok.

**Stefano**

> Tu, perché non sono io che mi devo giustificare.

**Alessio**

> Guarda, sono in fondo, faccio vedere... vediamo se riesco, qui sotto dovrebbe... ecco, vedi qua, ci sono tutti i benchmark: uno potrebbe mettersi qua a guardare. E cioè vedi che, per dire, su alcune cose GPT-6 magari è andato particolarmente bene: qua, GPQA Diamond, vedi che qua c'è il risultato migliore in assoluto.

**Stefano**

> Se prende... fammi prendere l'altro, e vediamo se ne troviamo.

**Alessio**

> Quindi quello su cui magari si potrebbe... sull'omniscenza fa 63 contro i 67 di Fable 5.1. E guarda qua: una cosa che ho letto era sul discorso delle allucinazioni, che pare che le allucinazioni non siano così infrequenti, mettiamola così, rispetto ad altri modelli.

**Stefano**

> Mhm.

**Alessio**

> E effettivamente, se guardi qui: 49% contro 82, per dire, di MiniMax M3, o 72 di GLM 5.3 Flash. Poi bisogna capire anche quali sono i pesi che danno a ognuno di questi benchmark nel comporre l'indice. Quello sicuramente è...

**Stefano**

> Però tu mi stai dicendo che, per arrivare all'AGI, cioè all'intelligenza più simile all'uomo, bisogna allucinare tanto? Interessante come punto di vista.

**Paolo**

> Speriamo un po' di cazzate.

**Alessio**

> No!

**Stefano**

> Detto in altri termini, sì.

**Alessio**

> No, però il punto è quello: cioè, loro, come dici tu, ti dicono anche che score hanno avuto su tutti i benchmark che hanno eseguito. L'OpenAI della situazione potrebbe dire: no, guarda, noi abbiamo eseguito questo benchmark, e tu dici che viene quanto viene, che ne so...

**Stefano**

> Chiaro, è il discorso. Che adesso bisognerebbe vedere se ce n'è qualcuno di questi, ma a occhio nessuno di quelli che loro citano nel sito. E si apre un altro discorso: quali sono i benchmark più significativi, quali sono di meno, e vabbè, bisogna anche fidarsi dell'una o dell'altra cosa.

**Alessio**

> Certo.

**Stefano**

> Vabbè, bisogna anche fidarsi dell'una o dell'altra cosa.

**Alessio**

> Torniamo al discorso di come... cioè, al fatto che è un indice: l'indice soffre della scelta di quali sono i benchmark e quanto sono pesati nel comporre l'indice.

## **[33:40] Coding: conta la sensazione d'uso**

**Stefano**

> No, no, no... poi sì: per l'uso che più se ne fa oggi di questi modelli di punta, che è il coding, è oggettivo che io l'ho provato un po' con Dex e con GPT 5.6: non è vero che c'era quella distanza che appare qui con Fable, sinceramente. Cioè la sensazione era di usare modelli dello stesso livello. Astra non l'ho ancora provato, non vedo l'ora di provarlo.

**Alessio**

> Coding index: 67 gli danno, contro il 70 di Fable 5.1... è 68, sì.

**Stefano**

> Ad Astra questo...

**Alessio**

> A 5.6 invece in basso basso: 57... no, 57, 68 a...

**Stefano**

> 57... e 68 all'...

**Alessio**

> Aspetta: è il Sol...

**Stefano**

> ...5.6 Sol...

**Alessio**

> 63.

**Stefano**

> 63, 5.6 Sol, 68 Opus: non esiste al mondo, ma proprio no. È paragonabile a Fable, se mai, ma non a Opus. A livello di utilizzatore intensivo per coding no, proprio no: non mi trovate d'accordo su questa cosa.

**Alessio**

> Poi c'è anche un altro discorso, nel senso che... non mi ricordo più dove, forse lo leggevo, riguardo a Qwen. Bisogna capire anche l'indice, cioè: l'indice ti dice il risultato che ottieni alla fine, ma poi c'è il discorso della traiettoria del tempo che è necessario per arrivare al risultato. Cioè il fatto che tu magari dici la sensazione che a me stia dando risultati molto meglio di un'altra cosa perché magari, nel tuo utilizzo, ti fermi a un certo punto e dici: sì, va bene, questa soluzione mi soddisfa.

**Stefano**

> Vero.

**Alessio**

> E ci è arrivata prima rispetto a quell'altra. Ma magari l'avvicinamento alla soluzione ottima, che è quella che hai alla fine dell'esecuzione dell'indice, è più ripido per un modello e meno per l'altra.

**Stefano**

> Ragione. Molto probabilmente è questo. E torno su infatti su quello che è la sensazione, ad esempio, di GLM 5.3 Max e 5.3 Flash. 5.3 Max va meglio nei benchmark, su tutto; alla fine, l'utilizzo nel coding io preferisco il Flash, perché ci arriva prima al livello dove devo arrivare io. Non è sicuramente scrivere un'applicazione CRUD, ma non è neanche lanciare un razzo SpaceX.

**Alessio**

> Sì, esatto. Però magari i benchmark che compongono l'indice sono fatti in modo tale per cui quello che conta è l'ultimo miglio, cioè l'ultim...

**Stefano**

> Sì, ragione: non c'avevo pensato, ma hai assolutamente ragione. Siamo arrivati a un punto di bontà dei modelli che forse neanche serve il modello più performante di tutti: serve quello che mi dà il risultato medio migliore.

**Alessio**

> E che mi fa spendere relativamente poco.

**Stefano**

> Relativamente poco, sì.

**Alessio**

> Poco per quello che mi serve, perché c'è anche un discorso di token generati, di costi, di tempi.

**Stefano**

> E, se vuoi, quella lì, stando nei modelli occidentali, era la politica di Gemini in questo mondo, di Google: perché non stanno praticamente più uscendo... un sacco con la versione Pro, continuano ad aggiornare la versione Flash che continua a ridurre i costi. Che, prima dicevamo che Fable ha ridotto un po' i costi... sì, con 10 dollari input, restando comunque a 10 dollari input e 50 in output... Flash fa 0,75... tra i 75... cioè un ordine di grandezza.

**Alessio**

> Sì, certo. Gemini sembra, come dire, fatto in casa... quello che succede in Cina: cioè dove un GLM costa 0,68 e vedi che Gemini 3.8 Flash appena uscito fa 0,58, contro i 3 dollari abbondanti del mondo Anthropic.

**Stefano**

> Ma sai che forse, più ancora che la Cina... ne parlavi tu, Paolo, credo una settimana o due fa? Cioè Google ha un modello di business che è diverso, che è sulle masse, no? E quindi, avendo un numero così alto di utenti, deve anche guardare... e, dandolo in gran parte gratuitamente alla sua utenza consumer, deve starci dentro. C'è anche quell'aspetto lì.

**Paolo**

> Non mi ricordo, devo dire la verità. Stavo cercando di ricordare se avessi mai detto qualcosa di intelligente, ma...

**Stefano**

> Mi pare... non so, se mi pareva l'avessi detto tu questa cosa, però posso confondermi. Però alla fine, indipendentemente da dove mi arriva questa memoria, c'è anche quel discorso lì: cioè Google lo dà in gran parte gratuitamente agli utenti, che sono un'utenza, permettetemelo, anche un po' meno esigente. Perché comunque l'AI mode è una figata per tutti: ormai non conosco quasi più nessuno che, quando gli esce l'AI mode, si infastidisce e vuole la ricerca normale; ma va avanti ad usare l'AI mode. Però il tipo di intelligenza di cui hai bisogno lì è di altro genere: non ti serve il Fable o l'Astra di turno, ti serve che sappia usare bene i dati che Google ha.

## **[38:04] Formula 1 o auto per la scuola?**

**Paolo**

> Sì, sì, sono d'accordo. E il mio parallelo, che forse avevo anche fatto a te privatamente in passato come osservazione, è che talvolta sembra che... se facessimo una trasposizione di questo lavoro dei modelli, di guardare cosa è uscito, cosa va più veloce, è come se parlassimo di automobili. E da un lato guardiamo le macchine di Formula 1, che vanno 300 all'ora su un circuito, ma sono praticamente delle astronavi; ma poi, in pratica, stiamo cercando di decidere tra di noi che macchina devo comprare per portare i figli a scuola. E i criteri non sono gli stessi: non guardo la velocità, non guardo questo, guardo, come dite voi, il rapporto costi qualità, l'efficienza, cioè appunto una curva dove la media è il valore più significativo, non tanto il valore massimo raggiunto. E un pochettino, forse, stiamo convergendo a questo livello. Poi c'è da fare anche il controargomento, laddove... io credo in quello che ho appena detto, che è più utile che qualcuno mi dica a chi devo dare i miei soldi per avere un servizio usabile; dall'altro lato è un po' come quelli che si chiedono: ok, ma perché buttiamo tutti quei soldi per lanciare i razzi nello spazio e vedere se riusciamo ad andare su Marte, che ce ne frega nel mondo pratico? Serve per spingere i limiti della tecnologia, delle cose che siamo in grado di fare, e poi ci sarà un fallback di tutte queste cose sperimentate, capite, comprese, che si riversino su tutto il resto. Quindi questa è la mia visione. Vi dico l'ultimissima riflessione, un pochettino olistica da questo lato, che non so se la gente mi sta seguendo. Mi chiedo se questi più recenti exploit di qualità nei modelli frontier flagship non beneficino in realtà del lavoro fatto open source upstream in Cina: così come Qwen... l'altro modello principale, DeepSeek 4, pare che abbia strabiliato con delle scelte architetturali, ottime idee. Qualcuno di sveglio, che sa cosa sta facendo, sta usando le AI bene, per dire: ma se facciamo questo, allora succede quello. E sta dando qualità a tutti quei modelli, di cui ne beneficiamo noi, perché li possiamo far girare sulle nostre macchine senza troppo hardware. Mi chiedo se in realtà queste cose non le stiano imparando anche nei reparti chiusi di Google, di Anthropic: che dire... non ci avevamo pensato, facciamolo anche noi. E quindi il risultato è che, come popolazione globale, tutti quanti miglioriamo.

## **[43:18] Qwen 3.8 Flash Next: l'ingegnerizzazione dei modelli**

**Stefano**

> Sì, sicuramente sulla sparsità dei modelli. Poi, ad esempio, mi dai il gancio, perché a me, e anche ad Alessio che l'ha provato, credo, Qwen 3.8 Flash Next, che è un grande lavoro da quel punto di vista lì, perché...

**Alessio**

> Lo stavo giusto aggiungendo al grafico.

**Stefano**

> Perché loro hanno rilasciato, in questa versione 3.8, quella che sarà l'architettura di Qwen 4, e ha un sacco di idee notevoli sull'attention, soprattutto, ma non solo sull'attention, anche proprio sull'architettura del modello. Però penso che tu l'hai provata, no, da te?

**Alessio**

> Sì, allora: io non sono in grado di parlarne da un punto di vista tecnico, al momento. Io l'ho provato, anche se non è ancora super maturo; poi, per il mio hardware in particolare, bisogna aspettare che i vari esperti ne producano le versioni ottimizzate, con i pesi che usano i tipi giusti per le ottimizzazioni di AMD, eccetera. Però la cosa interessante che ho trovato io, ad esempio, è il fatto che il modello non è più una cosa, diciamo, monolitica, che si usa in un certo modo e fine. Ci ho visto ricerca un po' tipo quella che sta facendo Antirez, ma che stanno facendo altri, di cercare di dividere il modello in tante parti che possano essere quantizzate, ottimizzate, utilizzate in modo differente a seconda del tipo di algoritmo che abbiamo, e anche per poter decidere che alcune cose vanno bene in memoria... si possono tenere su disco e leggere al bisogno, possiamo permetterci di tenerle nella memoria RAM e non nella memoria VRAM della GPU. Per dire: c'è questa ngram table che per Qwen 3.8 Flash Next è decine di gigabyte, che è a parte rispetto al core del modello. Adesso non sono in grado di spiegarmi benissimo, e ho visto tentativi di utilizzarla in modi differenti a seconda dell'hardware che hai, per cui, se hai meno memoria, tutto sommato ti fa gioco tenerla sul disco; o in una situazione come quella col mio hardware, in cui hai memoria condivisa, il cui accesso non è velocissimo però ne hai tanta, tutto sommato va bene: la tieni comunque in memoria e ti puoi permettere di quantizzarla meno, perché tanto memoria ne hai, tra virgolette, da vendere, e guadagnare in velocità in quel modo.

**Stefano**

> Sì, sì, c'è il discorso dell'ingegnerizzazione. Oltre che la ricerca continua ad andare avanti, indubbiamente... ce n'è un sacco più spostata, forse, sugli agenti che sui modelli; però ce n'è tanto anche sui modelli. Ma siamo nella fase di ingegnerizzazione dei modelli: si comincia a pensare come ottimizzarli, come farli girare, eccetera.

**Alessio**

> Sì. Poi, dopo, l'esperienza d'uso conta tanto. Magari, tornando al discorso dei benchmark di prima, hai tre punti in meno sull'indice, quando però riesci a utilizzare il modello molto meglio, molto più velocemente, eccetera, perché ti fa il pre-fill nella metà del tempo... un modello locale ti fa tutta la differenza del mondo, perché invece di aspettare magari un minuto aspetti trenta secondi che ti risponda. E quello fa tanto: chi se ne frega se la risposta è un epsilon meno intelligente.

**Stefano**

> No, perché poi, appunto, il discorso di... qualcuno ho letto, non mi ricordo chi, non cito la fonte, che diceva che la missione di Bill Gates era un computer su tutte le scrivanie, e la missione moderna... cioè: l'inferenza locale, o mista, come dico sempre io, il grosso in locale, quando ti serve vai su cloud, ma solo quando ti serve. E lì ci sono due... ci sarebbe un'altra notizia che ho sentito, non ce l'abbiamo in scaletta, ma tanto noi non... tra l'altro, scaletta?

**Alessio**

> La scaletta l'avete già dimenticata.

**Stefano**

> Non dovremmo farla? Come facciamo io e Paolo quando siamo da soli... Non dirò che poi Alessio si arrabbia, che non facciamo le cose bene. C'è una notizia legata però ad Alessio in vacanza con la sua macchina Tesla, che è Waymo.

**Alessio**

> Per la cronaca: da casa mia passo al Monte Bianco senza ricaricare.

**Stefano**

> L'ultimo pezzettino perché c'è la discesa? Sua moglie è scesa, gli ha dato l'ultima spintarella, e poi tutto in discesa si è ricaricata. Vabbè, al di là di questa cosa qua... no, notizia legata alle macchine. Non so se avete visto che Waymo è arrivata in Europa: ha aumentato il numero di città, aumentato il numero di macchine. Ma la notizia che secondo me è più rilevante è l'allestimento Waymo. Cioè, al di là del costo dell'automobile... perché, per chi non sapesse, Waymo è un taxi a guida autonoma, di proprietà di Google; a differenza di Tesla non usa solo le telecamere che sono a bordo della macchina, anzi non pretende che la macchina abbia niente: gli montano sopra un sacco di roba, tra cui tre LIDAR, varie telecamere, eccetera eccetera. Chiudiamo la condivisione o avete altro da dire, scusami?

**Alessio**

> No, no, vai.

**Stefano**

> Ok, così, al limite, se trovo Waymo poi lo faccio vedere. Però: un allestimento Waymo costava 250 mila dollari...

**Alessio**

> Bruscolini.

**Stefano**

> ...dovendo mettere sopra la roba per 250 mila dollari, o 250 mila euro. Il grosso del prezzo di questa roba qui era più di 100 mila dollari di processori, per processare tutto questo po' di roba. Ma attenzione: questa cosa qui finiva in gran parte in cloud, che è il limite che veniva più imputato a Waymo: cioè processava tutti i dati, li impacchettava, ma le decisioni venivano prese da un modello in cloud. Hanno ridotto il costo di allestimento a 50.000 dollari, di cui 20.000 dollari solo di processore. Ma il processore nuovo, di quelli che fa Google... non mi ricordo il suo nome, aiutatemi, quelli che fa anche per fare l'inferenza...

**Alessio**

> Le TPU...

**Stefano**

> Le TPU, esatto, grazie. È una TPU che costa 20.000 dollari, ma che fa tutto lì: cioè non hanno più collegamento con il cloud, soltanto in caso di emergenza.

**Alessio**

> Anche per la sicurezza, mi viene da pensare, sia migliore.

**Stefano**

> Esattamente, per quello: perché, se ti va giù internet, non ti schianti contro il muro, che non è bello. E, insomma, i costi, attraverso questi investimenti... Lo cito perché è un'applicazione di intelligenza artificiale locale che sta riducendo tantissimo i costi e che sta diventando un caso d'uso reale. Io penso un attimo più avanti e la robotica è il prossimo step in questo senso: quella è robotica, è robotica su quattro ruote invece che sulle gambe, ma...

**Alessio**

> E sì: vision più ruote, diciamo.

**Stefano**

> Esatto. Però è interessante: quindi Waymo arriva in Europa, tra cui a Londra. Non proprio bruscolini. E...

**Alessio**

> La felicità di Uber.

**Stefano**

> Per la felicità... ma pare che abbiano fatto un accordo con Uber, per fare una partnership: cioè tu usi Uber per prenotarli, però ti arriva la macchina a guida autonoma.

**Alessio**

> Sì, no, ho sbagliato a parlare... per i driver di Uber, che...

**Stefano**

> Di Uber, sì: i driver di Uber, forse, meno contenti.

## **[53:46] Nvidia compra Hugging Face, GLM su Huawei**

**Stefano**

> Però quella lì era una notizia interessante per il discorso dell'inferenza locale e dei costi di quegli oggetti lì. Ma, per i costi, arriviamo a Hugging Face, che ha sempre detto: noi non vogliamo un investitore predominante, perché abbiamo bisogno della nostra libertà, quando facciamo i round di investimento. [Ha preso] l'investitore predominante. E Nvidia ha sempre detto: ma noi siamo interessati; e ultimamente gli ha detto: siamo più interessati. E pare che il CEO di Hugging Face abbia detto: neanche se venite qua con una carriola di soldi. E poi gli ha detto: io veramente... ho due tir in valuta pregiata, se volete. E ha cambiato immediatamente idea: 12,9 miliardi.

**Alessio**

> Basta, no?

**Stefano**

> 12,9 miliardi di dollari. E non come quando caro Elon ha comprato Cursor, che gli ha comprati tutti in carta, cioè in azioni sull'unghia: 12,9 miliardi di dollari in contanti, di piccola taglia. E niente, sono tutti contenti. No, no: hanno accettato immediatamente...

**Paolo**

> Ci stanno pensando quelli di Hugging Face, ok.

**Stefano**

> Pare che il CEO di Hugging Face abbia già comprato un'isola e si sia ritirato a miglior vita. No: la notizia l'abbiamo un po' data dalla questione scorsa.

**Paolo**

> Qualcuno ha detto: se cambiano modello di business o qualche cosa... perché io ospito alcuni modelli su Hugging Face: fatemi sapere se devo scaricarli e portarli a casa.

**Stefano**

> E non si sa. No, però adesso la notizia è ufficiale. Sicuramente c'è una grande attenzione da parte di Nvidia, di Jensen Huang, a quello che sta succedendo in Cina: modelli aperti, questo discorso dei modelli che diventano sempre più locali, che per lui apre un nuovo business. Così come, citavo prima, Microsoft che voleva il computer su ogni scrivania è stata la fortuna di Intel di quegli anni: lui vede questo movimento dei modelli che diventano locali, secondo me, come la sua fortuna, e quindi controllare chi tiene i modelli open può essere per lui un sensibile vantaggio. Anche perché, forse proprio perché molto attento a tutti questi discorsi, non gli è sfuggito, come era invece sfuggito a noi quando abbiamo parlato di GLM 5.3 Flash: quando abbiamo dato la notizia, non abbiamo insistito sul fatto che non solo è uscito questo modello veloce... non solo, con ox-alpha, come in stealth mode, ha fatto i record su OpenCode, su OpenRouter, dappertutto, dovunque, e che erano free... ma li faceva girare in inferenza sempre Z.AI, che faceva l'inferenza finale. E Z.AI ha fatto un record di token pazzesco, con delle velocità incredibili, nonostante l'altissima concorrenza. Ed è la sensazione che abbiamo anche da abbonati, adesso, che la famiglia 5.3 sia estremamente più veloce delle altre. E perché hanno cambiato hardware: loro non l'hanno detto ufficialmente, non c'è una notizia ufficiale di chi sia il vendor; hanno detto che usano hardware diverso da Nvidia per fare l'inferenza, e che usano 100.000 chip, per la precisione. Anche qua, ci sono state le investigazioni della community su come rispondono, e così, e tutto sembra portare a Huawei, a Huawei Ascend, per la precisione, che magari non avrà ancora raggiunto i livelli di Nvidia, soprattutto per il training, però...

**Alessio**

> Ma se costa meno ne metti di più.

**Stefano**

> Però, per quanto riguarda l'inferenza, l'esperienza utente è notevole. Ed è un concorrente che sta diventando concreto, così come stanno cominciando a produrre memoria, eccetera eccetera. Cioè, se non è più soltanto la Corea a fare tutto, o comunque Taiwan per quanto riguarda i chip, ma cominciano a farli anche in Cina, dei chip che arrivino a quei livelli lì, anche dal punto di vista hardware, giustamente Nvidia comincia a preoccuparsi e cerca di tutelarsi in tanti modi. Io credo che ci sia anche quella lettura.

**Paolo**

> Potrebbe provare ad abbassare i prezzi.

**Stefano**

> Non credo che sia esattamente nei piani di Huang abbassare i prezzi, finché può non abbassarli. Anche perché lo dicevamo l'altra volta: finché Apple sta lì con dei computer a 20k, perché lui dovrebbe abbassarli?

**Alessio**

> Esatto.

**Paolo**

> Perché Apple è un culto millenario oramai... potere potere, secolare: difficile.

**Alessio**

> L'esclusività dell'oggetto che giustifica il prezzo.

**Paolo**

> Sì, poi, il bianco: non capite?

**Stefano**

> Però, no, vero: l'esclusività... è un po' come la Ferrari. Enzo Ferrari diceva sempre che, se una Ferrari fosse costata come una 500, non sarebbe stata una Ferrari, anche se era uguale. Che ha senso nel mondo del lusso. Ecco: Apple si mette nel mondo del lusso dei computer. Poi... che ne so, di Mythos abbiamo detto? No, beh... Casa Gemini, tornando ai modelli: è uscito Omni 1.1 Flash, che non avevamo ancora nominato, è uscito da una settimana e mezza. Due miglioramenti anche qua, nel senso... se sul codice riesco a dire... io sulla qualità di immagine e video lo vedo che sono belli, va bene, però mi piaceva anche prima.

**Alessio**

> Ma, se vuoi, è un po' lo stesso discorso di prima, in cui dicevamo: sì, va bene, quello che c'era, tutto sommato, per me va bene; magari questo fa un pochino meglio. Però: quanto costa di più? Quanto è più veloce? Che cosa mi dà davvero di differente?

**Stefano**

> No, e quello è il punto. Fine: il punto è quello lì.

**Alessio**

> Considerato che comunque è un modello che non puoi eseguire in locale, quindi sta di nuovo nelle politiche di pricing, eccetera.

## **[1:00:52] Le licenze open weight cambiano**

**Stefano**

> Sì. Però, stavo guardando, cos'altro mi ero segnato... non abbiamo toccato un punto che sta diventando... cioè, l'hai toccato tu, Alessio, quando hai parlato di H3 qualche settimana fa, della licenza che è cambiata. E sembra che sia un trend, perché anche GLM, ad esempio, con la 5.3 non è più MIT puro, ma ha una licenza proprietaria che è gratuita per chiunque, escluse le aziende che fatturino 100 miliardi di dollari o più... che, non so proprio, bruscolini, diciamo: non tocca lo sviluppatore medio.

**Alessio**

> Non credo che ti crei problemi, se vuoi farlo girare sul tuo computer: adesso non dovresti averci problemi di licenza.

**Stefano**

> Però sia loro che Qwen, l'avevamo nominato anche per Qwen, che è uscito con la versione Max soltanto inferenziata da loro, mentre invece la versione open... soltanto testo. Poi, chi altro ha fatto questa scelta? La stessa Flash Next non ha una licenza MIT pura: chiude per gli utilizzi commerciali. Poi di H3 abbiamo detto. MiniMax, ho visto, ha portato la stessa cosa anche su M3 in maniera retroattiva, tra l'altro, che è una cosa che pensavamo non fosse neanche possibile... continuo a pensare che non sia possibile: ormai è lì, in MIT ci faccio quello che voglio. E comunque è un trend. E questa cosa fa parte anche delle altre preoccupazioni che potrebbe avere Jensen: cioè, se i cinesi a un certo punto cominciano a voler monetizzare, in qualche modo... perché il passo dopo, un po' forzato se volete, ma potrebbe essere, è quello di Alibaba, che ha l'accordo con Xiaomi, e lo utilizza gratuito solo se gira su hardware Xiaomi: cioè un po' le licenze come si chiamavano di... di OS, di Microsoft, che se compravamo il computer Intel c'avevi anche la licenza di Windows.

**Alessio**

> OEM, no?

**Stefano**

> OEM, sì. Potrebbe essere un modello di business: la licenza OEM sui modelli. E quindi questo genere di preoccupazione.

**Paolo**

> Quindi ci toccherà crackarli.

**Stefano**

> Toccherà crackarli, sì, esatto: toccherà crackarli, per portarsi in casa lo spyware cinese.

**Paolo**

> ...

**Alessio**

> Chiedere a un modello frontier di crackarti il modello.

**Paolo**

> Sì, ce la vedi l'applicazione con l'audio in 8 bit, mentre cracchi, come si usava un tempo?

**Stefano**

> Sì, bello: quello era bello, però... mi piaceva.

## **[1:04:07] Hermes in Gen Z, Q&A e OmniRouter**

**Alessio**

> Io però ci leggo, per il momento, nell'immediato quantomeno, un tentativo di questi provider cinesi di tenere comunque un piede nel mondo open, nella community, eccetera. Perché comunque il ritorno, in qualche modo, c'è: perché ci sono tutta una serie di ingegneri, più che ricercatori, a questo punto, tornando al discorso di prima, che con qualche idea, con voglia di smanettare, eccetera, tirano fuori modi per eseguire i modelli in modo più efficiente col vario hardware che c'è in giro, e che quindi in qualche modo portano acqua al loro mulino. Quindi rendere comunque possibile a chi non ha immediati scopi di lucro di provare i modelli liberamente ha suo perché.

**Stefano**

> No, no, ma indubbiamente: loro il piede lo vogliono tenere di sicuro, perché ci fanno comunque del business. Mi sto chiedendo sul medio-lungo se si può intravedere un modello di business diverso, anche perché adesso cominciano a farci... dall'hardware, attorno a quella roba, più che soltanto del software. E poi è l'America che tanto spinge su questa cosa: se c'ha il computer a 20.000 dollari e il Fable a 50 dollari per milioni di token out, prima o poi la clientela la perde, almeno quella piccola. Perché, se invece posso comprare lo Xiaomi di turno, magari a 3.000, e metterci sopra... che ha anche un tera di memoria, e si mette sopra Qwen 4 più grosso di quello di adatto, perché no?

**Alessio**

> Sì, magari memoria che ha un accesso più lento, con bandwidth ridotta, però il modello è pensato per essere comunque ingegnerizzato bene, per fare meno...

**Stefano**

> Sì, sì. Alla fine io compro il pacchetto finale, no? ... La scelta finale potrebbe essere più interessante: quello meno caro che mi permetta di fare più cose. Al momento è ancora tutto un po' da smanettoni: siamo lontani dal consumer, è molto da smanettoni. Anche solo tirar su un profilo Hermes Agent oggi è una roba da...

**Paolo**

> ...e configurare il bot di Telegram in maniera corretta.

**Stefano**

> Configurare il bot di Telegram. Però chiudo la puntata dicendo che... al di là del fatto che stiamo litigando per riuscire ad usare un bot in team, questo è un altro discorso... però l'ho dato a mia figlia, che già mi stupisce con utilizzi da Gen Z di Hermes. Per motivi etici, io non guardo che cosa fa: me lo faccio solo raccontare.

**Paolo**

> A me... posso...

**Stefano**

> E no, senso: passa dal mio computer, non è che guardo che cavolo fa lei. Però me lo faccio raccontare, e... è interessante, cioè...

**Alessio**

> Far raccontare da lei, non da Hermes.

**Stefano**

> Sì, me lo faccio raccontare da lei, non da Hermes... No, no, me lo faccio raccontare...

**Paolo**

> Scusami, ok: mi sovveniva che, se non lo facevi tu ma te lo facevi dire da un vicino di casa, valeva.

**Alessio**

> Chiedo all'LLM di farmi il riassunto di quello che...

**Stefano**

> No, no, no, no: io ce l'ho un'etica, non sono Astra. Però fa degli usi che cominciano... e sono interessanti. Ho appena cominciato ad usarlo, però sono molto curioso di vedere una Gen Z... quindi, se vuoi, più AI native di noi, nonostante noi abbiamo mani e piedi dentro la marmellata... ma proprio così, proprio perché lei è lontana da questo mondo: cioè fa studi completamente diversi, eccetera. Ma voglio vedere, sono molto curioso di vedere il tipo di utilizzo che ne può fare. Ve lo racconterò.
>
> Adesso mi rifiuto di dire ancora le stelline e le campanelline, anche se Paolo continua a insistere... però... senti, senti le tastiere... Però, chiaramente, chiudiamo la puntata, vi salutiamo, vi diciamo... se siete arrivati fino qua... però vi diciamo un'ultima cosa: prossima settimana puntata un po' speciale, domande e risposte, che stiamo preparando, visto che vi era piaciuta un anno e roto fa. Abbiamo provato a rifarla. Fateci sapere cosa ne pensate. Se avete domande, ormai siete in ritardo per quella puntata, ma mettetele nei commenti, che ne faremo delle altre.

**Alessio**

> Magari non aspettiamo un anno per fare la prossima.

**Stefano**

> No, non aspettiamo più un anno. Se riceviamo commenti con domande, è tutto lì: è tutto nelle vostre mani. Molto bene.

**Paolo**

> Sì... Volevo ringraziare qualcuno che ci ha commentato effettivamente, mi dicevi, forse su Spotify: commentava al suggerimento di settimana scorsa del progetto Free LLM API, che poi, peraltro, io ho deployato: ho attivato un sacco di account molto facilmente, quindi quel progetto funziona bene. E ce ne hanno suggerito un altro, di cui adesso mi sfugge il nome del progetto, ma volevo ringraziare...

**Stefano**

> Omni... OmniRouter.

**Paolo**

> OmniRouter, sì, bravo. Che fa tendenzialmente delle cose simili; in realtà ne fa di più, un po' meglio, e in maniera molto più nerd. E ne fa alcune anche un po' losche, per le quali io ho rispetto e apprezzo. E vi dico anche qual è quella losca. Allora, cerco di parlare molto in fretta proprio perché siamo alla fine. Il progetto OmniRouter...

**Stefano**

> No, no, vai tranquillo. È presto, di solito.

**Paolo**

> Il progetto suggerito fa tutte le cose che fa Free LLM, quindi è un po' più complicato perché ne fa anche altre: quindi, se volete quello semplice, rimanete su Free LLM. Ma di valore aggiunto ha che potete agganciargli anche i vostri account a pagamento: gli date l'API key dell'account a pagamento. Quindi in realtà è un singolo punto che smista un po' sul gratis e un po' sul pagamento. Qual è il vantaggio? È che fa un routing molto più avanzato, se volete: per cui voi potete configurarlo in maniera tale che gli dite: senti, per le domande importanti usa i miei account a pagamento, che sono intelligenti; se poi devi disperdere attività banali, puoi usare anche la quota gratis qua e là. E mi sembra una buona idea. Poi fa un'altra cosa, che è una policy interna in cui dice: se alcuni dei vostri account, ad esempio quelli a pagamento, hanno una finestra temporale, fai dei conti sulla finestra: non perdere, fondamentalmente, il credito di quella finestra. Quindi consumalo quando ti serve, oppure vai dall'altra parte se sai che devi salvaguardare questo credito. Quindi fa routing smart, che è molto interessante. La roba un po' losca... fin qui niente di losco. La roba losca che fa, e che mi ha fatto sorridere, è che ha anche delle policy per fare il giro del mondo laddove devi accedere a un modello in cui non dovresti.

**Stefano**

> Un po' VPN.

**Paolo**

> VPN, o devi dichiarare che sei da una parte rispetto all'altra... alcuni, con gli header, funzionano così: lo fa. Quindi io rispetto questa cosa. Non so se lo suggerisco a tutti quanti di farlo, però è un bel progetto, e probabilmente lo deployerò perché non riesco a resistere.

**Stefano**

> Ce lo racconterai quando lo deploy. Grazie per la segnalazione all'ascoltatore.

**Paolo**

> Sì, sì, assolutamente.

**Stefano**

> E quindi, infatti: se ce ne sono altre, se ne avete... il territorio è talmente vasto che qualcosa noi ci perdiamo di sicuro ogni tanto, ma volentieri andiamo a vedere le cose che ci segnalate. Grazie: settimana prossima con le domande e risposte, e a presto.

**Alessio**

> Ciao!
