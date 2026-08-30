---
title: "Open weight con l'asterisco: cosa Qwen non ha rilasciato"
date: 2026-08-15
layout: episode
author_profile: true

episode_number: 67
episode_type: numerato
youtube_id: Fv1Uf-TksLM
description: >-
  Qwen rilascia i pesi di 3.8 senza Max, senza vision e col contesto tagliato. Video open weight, watermark su Claude e agenti che iniziano ad avere una personalità.
spotify_episode_id: 5r7HVXxocIGv9lDezyvvZE
# apple_episode_url: da aggiungere post-publish Apple (T+4-24h)
duration: PT1H12M

header:
  og_image: /assets/images/episodes/ep67.png

categories:
  - Puntate
tags:
  - open weight
  - Qwen
  - Kimi K3
  - inferenza locale
  - continual learning
  - watermark
  - AI Act
  - generazione video
---

## **[00:00] Sondaggio ascoltatori e Qwen 3.8 senza Max**

**Stefano**

> Ciao a tutti e ben tornati. Oggi parliamo di un sacco di cose, tra cui modelli aperti, weight, non open weight, open weight un pezzetto, open weight tutto, americani, cinesi, asterischi. È un panorama interessante di quello che sta succedendo intorno alle cose di cui parliamo sempre. E soprattutto: Paolo, ben tornato dalle tue vacanze.

**Alessio**

> Con l'asterisco.

**Stefano**

> Abbiamo fatto un sondaggio, se le puntate sono meglio con o senza Paolo. Sta vincendo il senza Paolo, sappilo. No, abbiamo fatto davvero un sondaggio senza dire niente a nessuno, e ben sette ascoltatori se ne sono accorti. Adesso lo diciamo anche agli altri, sia su YouTube che su Spotify: l'abbiamo messo lì la volta scorsa.

> Ho provato a chiedere anche se sono meglio le puntate con ospite o meglio le interviste. Al momento vince 6 a 1 le puntate con ospite. Diteci la vostra, che se dobbiamo invitare le persone invece che fargli l'intervista non lo facciamo, insomma, non è che ci cambia molto. Lo sbattimento di trovare qualcuno che abbia voglia di cagarci c'è lo stesso, quindi non è un problema. No, scherzo.

> Ringraziamo ancora Alessandro, che è venuto l'altra volta da noi, e con lui abbiamo parlato anche di open weight e di come i modelli cinesi abbiano accelerato. Dicevamo proprio in quella puntata lì che sarebbero usciti a breve i pesi di Qwen 3.8 Max. In realtà, correggimi Alessio se sbaglio, non sono usciti i pesi di Qwen 3.8 Max: sono usciti i pesi di Qwen 3.8 castrato e basta, senza Max. E cambia non pochissimo. Anzi, qualcuno nella community, a distanza di tipo undici ore da quando è stato pubblicato...

**Alessio**

> Qui è un 3.8 senza Max, diciamo.

**Stefano**

> ...già stava facendo il diavolo a quattro dicendo che insomma non si fa così, siete dei traditori, eccetera. Quelle cose gentili tipiche delle nostre community. Però hanno fatto una cosa un po' particolare, effettivamente.

**Alessio**

> Intanto scusa se ti interrompo, facciamo la tara anche sulla questione di principio, perché ricordiamo che per eseguire in locale Qwen 3.8 Max o non Max, quantizzato a 8 bit, ci vogliono più di 2 TB e mezzo di RAM. Quindi...

**Stefano**

> 2,4, l'ho letto, se ricordo bene. E chi non li ha in casa oggi? Chi oggi non ha in casa quei 10 Mac Studio da 512 gigabyte, messi lì collegati con la fibra? Chi non li ha?

**Paolo**

> Secondo me non state pensando alla reale opportunità: tra un po', quando andremo a fare la spesa all'Esselunga, con 200 miliardi di bollini e comunque poco meno del prezzo totale, potrai comprare della RAM, se vorrai.

**Stefano**

> Sì, se ci fosse la RAM in giro. Al momento non la compra nessuno neanche volendo spendere i soldi.

**Alessio**

> Volendo aprire la borsa. Comunque, a parte tutto questo, per dire che sì, la community si sta alimentando di questa roba. Adesso vi spieghiamo bene, però bisogna capire davvero quanto sia fondata la lamentela.

**Stefano**

> Allora, per farlo girare in locale sono d'accordo, non ha senso. Però per fare inferenza open di un modello grande, tipo quelli che vanno su OpenRouter piuttosto che su Ollama Cloud, c'è Kimi K3, che ha rilasciato i pesi due settimane fa, tre settimane fa, una roba così, ed è disponibile su tutti questi servizi.

**Alessio**

> Sì, meno di un mese fa.

**Stefano**

> È disponibile su tutti questi servizi ed è disponibile in maniera completa. Per Qwen 3.8 queste inferenze non saranno paragonabili all'inferenza nativa di Alibaba. Quindi è un modello open per metà, se vogliamo essere onesti. Ma cosa hanno tolto? Cioè, non hanno tolto proprio bruscolini: hanno tolto tutta la parte di vision e di vision reasoning.

> Quindi non è un modello multimodale, è un modello text only, prima cosa. E sapete bene che per arrivare all'intelligenza, quella vera, bisogna avere la parte di vision, perché altrimenti si perde un grosso pezzo di questa cosa qua.

**Alessio**

> E poi c'è anche una limitazione sul contesto, se ho capito bene.

**Stefano**

> E poi c'è la limitazione sul contesto. Non è chiarissima, quella lì, perché loro scrivono solo che il contesto da un milione è una funzione Max. Però io non ho capito, devo dire che è uscito undici ore fa, l'ho letto poco.

**Alessio**

> Il contesto da un milione di token è una funzione Max.

**Stefano**

> Non sono riuscito a capire qual è invece il contesto che danno con questa versione. Immagino siano 256k o giù di lì, insomma. Quindi niente vision, niente contesto da un milione. Restano...

**Alessio**

> 256k o giù di lì. Del resto non abbiamo potuto provarlo per capire davvero.

## **[06:08] Kimi K3, Muse Glimmer e il workhorse Nemotron**

**Stefano**

> No, esatto, direi di no. Invece, facendo il confronto, Kimi aveva rilasciato tutto. Kimi K3, che è di dimensioni simili, perché il numero di parametri è più o meno lo stesso. Adesso io non ho guardato quanta RAM ci vuole, ma siamo lì.

**Alessio**

> Ci siamo, forse anche un pochino di più, così a memoria.

**Stefano**

> Forse deve essere 3 tera, se ricordo bene. Quindi comunque non una cosa che ti fai girare sul mio portatile di quattro anni fa, su cui gira Hermes. Però, guardando invece all'inferenza, c'è già chi fa inferenza di Kimi K3, e questa è un po' la grande differenza.

**Alessio**

> Ma vediamo cosa succede a brevissimo, nel senso che l'altra promessa di quelli di Qwen è che a distanza di un giorno, due giorni, brevissima distanza dal rilascio dei pesi del modello da 2,4 tera eccetera, avrebbero rilasciato un Qwen 3.8 da 27 billion dense. Vediamo intanto se lo fanno per davvero.

> E poi quanto sarà la limitazione sul contesto? Perché lì, se lo rilasciano con un milione di contesto di quelle dimensioni, è la cosa ideale per lo sviluppo, adesso, per davvero, su hardware che la gente ha. Mi viene in mente DGX Spark: a un milione di contesto diventerebbe la killer application per il software development. Vediamo.

**Stefano**

> Certo, interessante. Sì, c'è tutto un trend lì attorno. Sono state rilasciate due cose interessanti in quel senso lì. Una da parte di Meta. Meta è tornata: sapete che io non ne ho detto benissimo di Meta negli ultimi mesi.

> Diciamo che l'avevano un po' abbandonato, il discorso dei modelli open. All'inizio andavano bene, i primi lì, ma poi non tanto. Adesso invece questa nuova serie, la serie Muse, sembra andare molto bene, e hanno rilasciato open la versione da 30 billion, quindi che può girare sull'hardware che nominavi tu.

> Si chiama Muse Glimmer, e loro lo pensano proprio per lo sviluppo locale, ce l'hanno detto chiaramente. Infatti hanno rilasciato anche MuseCode, l'harness per fare coding, e pare che abbia ottime performance.

> E accanto, quelli di Nvidia. Non è tanto nota questa cosa: Nvidia non fa soltanto hardware, ha una divisione modelli, diciamo research, che fa i modelli Nemotron. E ne hanno rilasciato uno mixture of experts da 32 billion totali e 3 billion attivi.

**Alessio**

> Anche tipo Nemo, Nemotron e quelle cose lì. Sì, è tipo il Qwen3 30B-A3B come dimensioni.

**Stefano**

> Sì, deve essere un taglio simile, un milione di contesto. E nell'annuncio, la cosa che a me ha colpito, lo annunciano come subagent workhorse. Paolo, la usavi tu la parola workhorse in una delle ultime puntate, pare. Quindi ci ascoltano.

**Paolo**

> Sì, e poi mi è venuta in mente che probabilmente la traduzione italiana più utile sarebbe stata mulo, o muletto: qualcosa che va e non si ferma mai.

**Stefano**

> Il muletto, esatto. Il muletto, bravo. È per dire che, insomma, Jensen ci ascolta.

**Alessio**

> Perché un cavallo di battaglia è un'altra roba.

**Paolo**

> Nemotron ce l'abbiamo su AntiVocale da un po' di tempo, ed è uno dei pochi che fa lo streaming dei messaggi, se vi interessa.

## **[11:20] Intelligenza ibrida: DGX Spark, RTX e Apple Silicon**

**Stefano**

> È vero. E però hanno scritto questa cosa qua, appunto, subagent workhorse. Una delle cose che mi porto a casa di questa settimana, delle varie discussioni che ci sono tra laboratori e community, è questa: solo centralizzato, o stiamo andando verso un'intelligenza più ibrida? Ibrida nel senso di locale e remoto.

> Nvidia chiaramente spinge in questa direzione, per vari motivi, perché a un certo punto, quando avrà saturato il mercato business, vorrà vendere al mercato consumer, immagino. Non a caso a giorni, credo, perché è annunciato per il primo settembre, esce il primo DGX Spark.

> Che, per chi non se lo ricordasse, è una macchina dedicata, tutta con processori Nvidia, per fare inferenza. Anzi, per fare più training che inferenza, perché entriamo in un dettaglio tecnico che al momento ve lo risparmiamo, sulla memory bandwidth eccetera. Però è una macchina che fa anche...

**Alessio**

> Beh, ma fa anche bella inferenza, mettiamola così, perché il prefill è buono, quindi...

**Stefano**

> Si fa anche una bella inferenza locale, perché ha la memoria condivisa, un po' come la macchina di Alessio che è invece nel mondo AMD, questa nel mondo Nvidia. Ma allora, hanno annunciato un paio di mesi fa, insieme a Microsoft, che usciranno invece portatili e macchine desktop, anche, credo, denominate RTX Spark.

> Perché con i loro processori hanno memoria condivisa, un po' come l'architettura Metal di Apple. Perché questa cosa è importante? Perché la memoria condivisa costa parecchio meno della memoria dedicata via RAM delle schede video, o GPU in generale, e questo dovrebbe portare delle macchine a un prezzo accessibile, perché è alto ma accessibile, sul desktop di tutti, in grado di far girare modelli locali. E poi più concorrenza c'è, meglio è.

**Alessio**

> E ti posiziona nella stessa fetta di mercato di Mac, sostanzialmente.

**Stefano**

> Di Apple, esatto. Più concorrenza c'è, meglio è: al momento gli unici che fanno una macchina non dedicata che può fare quella roba lì a memoria condivisa sono quelli di Apple Silicon. L'architettura è Apple Silicon. E infatti, se andate su X, tutti quelli che fanno inferenza locale stanno usando Apple Silicon. Qualcuno poi ha anche, o in alternativa, il DGX Spark.

> Però la macchina che usi sia per l'utilizzo normale che per fare inferenza, oggi, è Apple Silicon. RTX Spark vorrebbe fare concorrenza. Magari, tra l'altro, chi ci ascolta, non so se sempre ma spesso: magari qualche volta invitiamo Ivan Fioravanti in puntata, che su X, per chi lo segue, probabilmente in tanti, visto che ha migliaia e migliaia di follower, praticamente sta passando...

**Alessio**

> Che ha un Mac Studio da 512 GB, giusto? Due Mac Studio.

**Stefano**

> Due, due Mac Studio da 512, un DGX Spark e un altro po' di roba così, perché lui sta investendo tempo, energie e denaro su questa cosa, perché ci crede molto. Ed è probabilmente una delle persone con cui parlare di questo argomento qua, dell'inferenza locale.

**Paolo**

> Leggevo un post suo su LinkedIn in questi giorni, che aveva contribuito al progetto di Sanfilippo, su qualcosa legato alle performance.

**Stefano**

> Diciamo che lui è un ampio utilizzatore di quel progetto, non solo di quello.

**Paolo**

> Ci aveva buttato un più 10 per cento, sì sì. Ero in giro, non ho potuto leggere.

**Stefano**

> Sì, lui è molto concentrato su quello. E vabbè, Ivan lo possiamo invitare quando vogliamo.

**Alessio**

> In realtà non è l'unico, ci sono un paio di personaggi, tra l'altro tutti italiani, coinvolti in questo discorso del progetto di Sanfilippo. Anche Donato Capitella, mi sembra si chiami.

**Stefano**

> Sì, esatto, però lui non lo conosco direttamente, Ivan sì. Quindi se interessa mettete un commento, diteci "invitate Ivan" e noi invitiamo Ivan. Quindi no, torniamo indietro un secondo: modelli open con l'asterisco.

**Alessio**

> Torniamo ai modelli open con l'asterisco.

## **[16:14] Minimax H3 e le licenze per regione**

**Stefano**

> Allora, sì, Nemotron l'abbiamo detto, Muse Glimmer l'abbiamo detto, poi sui modelli Muse torniamo perché ci sono un paio di cose interessanti. Oltre alla serie open, sono usciti modelli open per fare video, che mi sembra una novità quasi assoluta. Eravamo fermi a modelli open per fare immagini.

**Alessio**

> In realtà ne abbiamo parlato un po' l'altro giro, parlando di Minimax H3.

**Stefano**

> Quando c'era Alessandro, dici, sì.

**Alessio**

> Sì, sì. Magari mi confondo io. Comunque Minimax H3 è uscito, hanno rilasciato open, la community in fermento. Magari apriamo qualcosa da far vedere.

> In realtà io l'ho provato, Minimax H3, sulla mia macchina e funziona, è fighissimo. Non ho ancora provato il reference to video, ho provato solo text to video e image to video, quindi multimodale fino a un certo punto. L'ho provato ed è ancora un attimo acerbo, mettiamola così, per il supporto a ROCm, quindi AMD. Però funziona, onestamente.

**Stefano**

> Ma davvero tu l'hai provato sulla tua macchina? Sì, adesso mi ricordo che abbiamo fatto vedere questi video l'altra volta, hai ragione tu. Tanto li faccio rivedere comunque.

**Alessio**

> Eh già. E forse adesso che mi ci fai pensare, citavo il fatto che la policy di utilizzo è quantomeno diversa dal solito, nel senso che dice: potete utilizzarlo sostanzialmente per quello che volete, fino a un utilizzo commerciale, con una certa soglia di fatturato, a meno che non siate in una di queste nazioni. Le nazioni in cui non si può usare sono tutte quelle europee, gli Stati Uniti e l'Inghilterra. Quindi, sostanzialmente, il mondo occidentale.

> Poi però, e questa è la parte ufficiale che peraltro è stata ampiamente criticata anche dai loro concorrenti, di cui parliamo tra un attimo, poi però tu ti leggi bene fino alla fine tutte le istruzioni e scopri che se firmi digitalmente un'aggiunta alla policy, sostanzialmente puoi continuare a utilizzarlo anche in Europa, negli Stati Uniti eccetera: semplicemente dichiari che oltre alla licenza normale andrai a rispettare tutto ciò che viene aggiunto dalle politiche locali, quindi AI Act europeo eccetera.

**Stefano**

> Sì, poi c'è da dire una cosa sull'AI Act, tra l'altro, da tenere a mente.

**Alessio**

> Va bene, quindi il rilascio comunque è open, tant'è che, ribadisco, io l'ho provato sulla mia macchina e non ho neanche usato la versione ufficiale rilasciata da quelli di Minimax, ma la quantizzazione fatta dal team di ComfyUI per farla andare un attimo più velocemente su ComfyUI. Esistono anche già le versioni GGUF, quindi ampiamente open weight, e c'è tutto, onestamente.

## **[19:48] LTX 2.5, auto duration e i LoRA**

**Stefano**

> Invece è uscito l'altro, vero? Perché questo effettivamente l'abbiamo già fatto vedere. Faccio vedere l'altro.

**Alessio**

> È uscito LTX 2.5, che è l'evoluzione del 2.2, 2.3, mi sembra esistessero già come altre versioni. Sì, faceva video, assolutamente, è un modello di generazione video. È uscito, e adesso questo io non l'ho provato, onestamente non ho ancora avuto tempo.

**Stefano**

> Facevano video anche quelli o facevano immagini? Ah, ok.

**Alessio**

> Da quello che si vede sul sito, sembrerebbe essere anche meglio di Minimax H3. Ci sono alcuni filmati, se scendi un pochino. A me ha colpito... vai bene ancora un po'. Sono veramente belli. Ecco, qui questo della moto secondo me è degno di nota. Ed è ancora più degno di nota, a sinistra, se scendi dove dice auto duration. No, no, sempre lì.

**Stefano**

> Quello della rana a me piaceva. Questo?

**Alessio**

> Questo rende bene l'idea, adesso appena lo carica. A sinistra l'LTX 2.3, e come si comportano buona parte degli altri modelli di generazione video. A destra il 2.5. Sembra una stupidata, ma la differenza è che a sinistra tu decidi la durata del filmato, tu descrivi l'azione che verrà compiuta nel filmato, e ne segue che la velocità a cui scorre il filmato è funzione di quanto tu gli hai detto che deve durare, no? A destra c'è l'auto duration, quindi nota la fisica del salto del tuffatore, in questo caso: va alla velocità giusta.

**Stefano**

> A parte che quello di sinistra diventa una sirena quando entra, però questo è un altro discorso.

**Alessio**

> Però questo aggiunge un realismo incredibile. E se vi è capitato di vedere filmati generati palesemente dall'AI in giro su TikTok, su Instagram eccetera, per quanto mi riguarda quello era uno dei campanelli d'allarme nel dire: sì, sto vedendo qualcosa di generato. Cade un altro dei modi facili per trovare cose fatte dall'AI.

> Comunque, questo per dire che è molto promettente, io ancora lo devo provare onestamente. Però la cosa che colpisce, e qui torniamo al discorso dell'open weight con l'asterisco, è che se scendi ancora un pochino sulla pagina, loro hanno palesemente rilasciato in risposta a Minimax H3, che ha fatto il boom nella community, e hanno fatto vedere questa bellissima tabella comparativa in cui sostanzialmente dicono: no, noi siamo più bravi, perché il nostro è open weight per davvero, non ha le limitazioni sulla region.

> Sì, va bene, bravi, però non era così drammatica come la dipingono la questione con Minimax, come vi dicevo. Il branding obbligatorio, francamente, io non me l'ero perso, e comunque credo che alla community importi poco di dover nominare ufficialmente che hanno usato Minimax H3 per fare un filmato. Quando mai.

> Il tuning, onestamente, qui è da vedere, da capire, anche perché nel momento in cui viene rilasciato open, e questo impatta anche sul punto dopo, il range di GPU, nel momento in cui è open, quello che ha fatto fino a quel punto chi ha rilasciato conta, ma conta anche quello che si può fare dopo. Cosa può fare la community?

> Perché sul range di GPU, onestamente, già ci siamo su Minimax, tant'è che anche sul mio acerbo AMD con ROCm ancora in nightly l'hanno fatto e sta migliorando ogni giorno, c'è qualcosa di nuovo. Vero, probabilmente la versione disponibile il giorno 1 con il tool disponibile il giorno 1 era meno completa di quanto c'è per LTX, però... E anche minimo di RAM 16 giga: ho visto filmati di gente che fa girare Minimax H3 con 12 giga, per cui non è vero.

> Quindi, assolutamente, è battaglia per accaparrarsi la community. E questo io lo vedo ancora di più se scendi ancora un pochino dopo, quando fanno vedere i LoRA. Perché cosa è successo? Rilascio nella community...

**Stefano**

> Allora, marketing!

**Alessio**

> La gente è impazzita a farsi i propri LoRA, le proprie personalizzazioni eccetera su Minimax H3, perché finalmente è disponibile qualcosa open weight multimodale, di generazione video multimodale. Ed è lì che si gioca la popolarità. E allora vedi che loro ci tengono a far vedere quanti LoRA già esistono per LTX 2.5, e sembra che la mossa sia stata di far sì che buona parte dei LoRA fatti per le versioni precedenti funzionino ancora con la versione nuova, e stanno spingendo su questo, chiaramente. Però bene comunque che sia un rilascio open, sì, assolutamente.

## **[25:25] Attention quadratica e vision language nei prompt video**

**Stefano**

> Però belli, belli, belli. Io non mi ci sono mai messo, come sapete sono più orientato a tre tipi di modelli, diciamo LLM classici. Però adesso che questi girerebbero sui miei 16 giga di VRAM, un weekend mi ci metto.

**Alessio**

> Sì, sì. Chiaramente è sempre questione delle dimensioni del filmato che vuoi generare, di quanto lungo lo vuoi fare, perché questa è una cosa su cui avevo riflettuto fino a un certo punto, in passato. Nel senso che la lunghezza del filmato non è, intuitivamente, solo qualcosa che ti allunga la generazione in modo proporzionale alla lunghezza. C'è un filmato da 5 secondi, uno da 10: non ci vuole il doppio del tempo a fare quello da 10 rispetto a quello da 5, ci vuole molto di più del doppio, perché per come funziona l'attention, che non ha una complessità lineare ma è quadratica, sostanzialmente, a meno di ottimizzazioni tipo sparse attention, più aumenti la lunghezza del filmato più cresce la complessità, quindi più ci vuole a generarlo e più memoria serve, ovviamente.

**Stefano**

> Adesso, anche per far capire a chi magari ci segue da un po', è la stessa cosa della dimensione del contesto, no? Cioè, è come la dimensione del contesto nei large language model: più lo allunghi, più deve andare indietro, più usa RAM, più diventa lento e così via.

**Alessio**

> Esattamente quello, esattamente quello, sì.

**Stefano**

> Poi... no, c'era da dire quella roba lì. Scusa, finisci.

**Alessio**

> Un'altra cosa che mi è venuta in mente. Prima si parlava del fatto che Qwen 3.8 non ha rilasciato i pesi della parte vision language. Un altro aspetto su cui riflettevo in questi giorni è che i modelli vision language diventano ancora più importanti proprio per questo discorso dei modelli omnimodali di generazione video. Perché sta diventando molto difficile scrivere dei prompt per generare filmati belli. Tu gli puoi dare l'immagine in input, ma devi spiegare bene cosa vuoi ottenere. Tant'è che i vari Minimax, ma credo anche questi di LTX, nel rilascio open hanno rilasciato anche delle skill per scrivere i prompt.

> Però la skill cosa fa? Guarda l'immagine che ti abbiamo dato e, a partire da quella, genera il filmato eccetera. Per guardare l'immagine ti serve un modello vision language, tant'è che di base i workflow rilasciati per Minimax H3 usano un Qwen3 32 billion vision language. Quindi ti serve un modello bravo a capire l'immagine. Se tu non ce l'hai questo modello bravo, anche il risultato che ottieni nella generazione video ne risente.

**Stefano**

> Certo, certo, makes sense.

**Alessio**

> E nell'eseguire la skill, per dire: io ho scaricato una skill per farmi fare un bel prompt. Faccio per eseguirla in locale, ho detto vabbè, facciamo che ho GLM 5.2 a cui do un tot di euro al mese, uso quello. Peccato che non è vision language. Quindi uso un modello locale. Alla fine, per fortuna, avevo in locale un 4.5 vision language, e ha più o meno funzionato. Però se avessi avuto un modello più bello utilizzabile in locale, non sarebbe stata male.

**Stefano**

> GLM è più piccolo degli altri, perché è meno di un trilione, ma è solo text. Solo text fa il suo, ma gli manca tutto quel pezzo lì, che poi è più o meno quello che sarà Qwen. Al di là della polemica, però, diventa interessante vedere...

**Alessio**

> Sì, dico che non è una cosa così nuova.

**Stefano**

> No, diventa però interessante vedere un modello da 2,4 trilioni come performa solo text, e quindi coding, in ultima analisi, per me. Per cui comunque io sono curioso di provarlo, se qualcuno me lo rende disponibile, perché Qwen ha un modello di business fatto ancora solo sulle API con i crediti eccetera. Non ho voglia di mettermi a comprare crediti. Allora, in teoria per provare andrebbe anche meglio, perché compri i tuoi 10 dollari e quando sono finiti sono finiti e basta.

**Alessio**

> Fai la prova, è finito e amen.

**Stefano**

> Vediamo se approda su Ollama, visto che qualche soldino, pochi, ma qualcuno lo do, magari. Però il Kimi K3 è talmente grande che su Ollama è approdato, ma è fuori dall'abbonamento.

## **[30:00] Watermark su Claude e AI Act**

**Stefano**

> No, però dicevamo una cosa su cui volevo la vostra opinione, invece. Non so se avete letto, ma Anthropic ha annunciato che metterà il watermark su tutti i testi generati da Claude. Polemica infinita...

**Alessio**

> Poi probabilmente già lo fanno, tra l'altro.

**Stefano**

> Siete l'uomo nero, brucerete all'inferno, tutte queste cose qua tipiche di X, diciamo. Il giorno dopo OpenAI ha detto: anche noi, ce n'eravamo dimenticati di dirvelo, ma lo facciamo anche noi.

> E poi Anthropic spiega che lo fanno perché l'AI Act obbliga a farlo, quindi per poter continuare a vendere in Europa dobbiamo adeguarci a questa cosa. Già che ci siamo lo facciamo per tutto il mondo, però la base per cui questa cosa è stata sviluppata è aderire all'AI Act.

**Alessio**

> Io ho sempre supposto che Gemini l'avesse sempre fatto, perché è una cosa che possono fare in modo trasparente senza dirtelo, per cui non vedo il problema.

**Stefano**

> Probabilmente sì, perché erano già avanti su queste cose. Il watermark sul testo? Sì. Voi avete un'opinione su questa cosa? Io non ne ho una forte.

**Alessio**

> Sì, che è giusto che lo facciano. Tra l'altro, finché non rilasciano, e non è detto che lo rilasceranno mai, il sistema per andare effettivamente a controllare dov'è il watermark, cioè è come se non ci fosse. Se pensi al discorso del watermark sulle immagini di Gemini, tu vedi la parte grafica, il simbolino tipo rombo in basso nelle immagini, ma quello è un di cui, tant'è che lo puoi anche togliere. Ma il watermark vero è dentro nell'immagine, proprio in come sono fatti i colori, i pixel eccetera, quindi quello non lo togli. Potresti riuscire a romperlo, ma è difficile, devi fare tante trasformazioni sull'immagine, tant'è che la vai a rovinare. Similarmente nel testo.

> E non hanno mai rilasciato pubblicamente, disponibile a tutti, il software per andare a leggere il watermark. È qualcosa che si tengono loro, che evidentemente utilizzano se le autorità gli chiedono qualcosa. Io ancora devo vederlo, il software per andare a leggere il watermark. È simile nel testo. Magari spieghiamo come funziona il watermark nel testo, molto ad altissimo livello, perché non sono pratico abbastanza per spiegarlo bene.

> Il discorso è che ogni volta che l'LLM sceglie il prossimo token da utilizzare nella risposta fa delle valutazioni statistiche legate a come è configurato eccetera, deve scegliere un certo token. La scelta che rispetta tutta la configurazione eccetera ha comunque un minimo di discrezionalità nel modo con cui viene fatta. Andando a modificare come viene fatta questa scelta, preferendo un token piuttosto che un altro, che magari normalmente non ti vanno davvero a cambiare la qualità del testo che ti genera, si è in grado di lasciare una traccia nel testo, intesa come: statisticamente è stato sempre scelto un certo tipo di token, è stato preferito un token piuttosto che un altro. E questo, a posteriori, con il software giusto, puoi andare a vedere se effettivamente c'era stato questo condizionamento nella scelta dei token.

> Però se tu non sai qual è il modo con cui hanno influenzato il testo, non lo potrai mai trovare.

> Fino a oggi la ricerca, cioè tuttora oggi, i software che vanno a capire se un testo è generato dall'intelligenza artificiale non si basano su quello: si basano su una serie di indicazioni, sui modi con cui sono costruite le frasi piuttosto che i termini utilizzati eccetera, che sono cose un po' più ad alto livello, che comunque si possono continuare a fare. Alcuni LLM possono cercare di evitare, di evadere questo tipo di analisi. Ma il watermark è una roba ancora più a basso livello, e per trovarlo serve la ricerca specifica per quel watermark, e finché questa non viene rilasciata hai voglia a fare reverse engineering.

**Stefano**

> Sì, sì, è chiaro.

## **[35:37] Reverse engineering del watermark e Musk**

**Paolo**

> Beh allora, in realtà stamattina c'era già in giro un progetto su GitHub che faceva il reverse engineering di questa cosa, e quindi come fare cleanup di questi watermarking vari. Quindi è solo il solito gioco del gatto col topo, tendenzialmente.

**Stefano**

> L'ho visto anch'io.

**Alessio**

> Sì, l'inseguimento.

**Paolo**

> La mia aspettativa è che ci si arriverà, e si arriverà probabilmente a un risultato per cui hai un indeterminismo tale, un 50 per cento, per cui tu puoi dire "sì, può essere stato fatto da lei oppure no", e quindi quanto è utile questa informazione? E quindi vince poi il popolo che non vuole essere tracciato.

> Io devo dire la verità, dal punto di vista nerd hacker sono affascinato da questa cosa sin dalla primissima volta che avevo sentito questo approccio. Non so se l'avete sentita anche voi questa storia, ma l'evidenza più famosa di un approccio di come identificare la sorgente di un'informazione dal testo era stata applicata da Elon Musk, che ricordiamolo, Elon è uno dei cattivi di Batman. Uno dei problemi che aveva era che qualcuno leakava le informazioni private delle loro mail e dovevano scoprire chi era stato, ed era qualcuno di alto livello, perché erano mail a livello di executive e cose di questo tipo, eppure c'era qualcuno che le faceva scappare.

> Cosa hanno fatto allora? Qualcuno gli ha detto: sai che cosa possiamo fare? Se noi prendiamo il tuo messaggio, che tu mandi uguale a tutti quanti, e aggiungiamo una serie pseudo random di spazi tra una parola e l'altra, in maniera tale che questa sequenza di spazi extra che noi aggiungiamo ce l'abbia una email ma non ce l'abbiano le altre, noi siamo in grado direttamente di mappare quel testo alla sorgente. Se qualcuno non ripulisce il testo e lo copia tale e quale, riesci a rimappare. Che è una cosa molto...

**Alessio**

> Sì, o se metti dentro dei caratteri non visualizzabili.

**Paolo**

> Sì, sì, sì. Però diciamo che anche solo se te la giocassi con le informazioni che avrebbe a disposizione anche un bambino, di per sé ci arriviamo tutti: se ci ha 90 spazi alla fine è l'utente 90, se ce ne ha 91 è l'utente 91. Da lì a renderla più complicata... E quindi ho detto: wow, questa roba è geniale, malvagia, basterebbe uno script per Gmail probabilmente per farlo in automatico e ce l'hai sempre, non ti ricordi neanche di averlo, lo usi solo se ti serve.

> Quindi tanto di cappello, ok? Elon si circonda di persone di dubbia eticità. E quindi era affascinante questa cosa, e ho detto: vabbè dai, me la tengo in tasca questa soluzione, prima o poi mi tornerà comoda. Adesso Anthropic c'è arrivata alla stessa faccenda, più complicata per come la dicevi tu, ovvero l'algoritmo di mappatura non è a posteriori sul testo ma è a priori sulla generazione. E quindi c'è appunto della statistica, c'è questo seeding, la pseudo casualità di cui parlavi tu prima. Già che è pseudo, tanto il seed lo scelgo io da dove voglio partire, e quindi mi viene più facile.

> E quindi, ok, rispetto per questa cosa. E se tutto sommato il problema è dire "è fatto dall'AI o non è fatto dall'AI", booleano di questo tipo, sono anche d'accordo, può essere utile. Il problema è la storia di Elon: se riusciamo a mappare AI o non AI, mail di Paolo, mail di Alessio e mail di Stefano, lì diventa un attimino un'invasione della privacy un pochettino più invadente, che mi fa dire che poi arriva chi non vorresti che venga a casa tua e ti dice "senti, hai scritto davvero tu questa cosa?". E fondamentalmente stai firmando digitalmente della roba senza consapevolezza.

**Alessio**

> E ti dirò, in realtà, ok, va bene, forse ho opinioni forti in questo caso: il fatto di firmare quello che scrivi, di per sé, è parte di come usciamo da questo discorso del "tutto può essere generato, tutto può essere fake" eccetera. Per cui nel momento in cui c'è una tracciabilità tra quello che scrivo io e l'output, tutto sommato non dico che ben venga, ma ci serve questa cosa, sì.

## **[40:28] Detector che sbagliano: Substack e Reddit**

**Stefano**

> Beh, però se è volontaria sì, se è volontaria sono d'accordo. E lo puoi già fare oggi: puoi firmarlo digitalmente il documento, garantire che l'hai scritto tu, e poi mi fido o non mi fido, questo è un altro discorso, però dare la garanzia è possibile. Peraltro, i sistemi attuali che cercano di capire se hai usato l'AI o no funzionano un po' a muzzo, perché...

> Sapete che io ho una newsletter su Substack, che adesso ha inserito quella cosa lì: quando tu pubblichi ti dice "sappi che questa cosa, secondo questo parametro, sembra generata con l'AI", generata al 50, generata al 100, generata solo revisionata eccetera. Non ci azzecca mai, nel senso che io so come l'ho scritta. Mi capita di fare cose un po' più generate, cose in cui l'AI la uso solo per dettare, uso Whisper: tipo l'ultima, che secondo me, se la legge un umano, il primo deep dive è talmente confuso, nel senso che torno sugli stessi argomenti più di una volta, che sembrerà scritta dall'AI, proprio da un'AI scarsa. Eppure Substack mi ha detto: questo è completamente generato dall'AI.

**Paolo**

> Ho anche io una storia in tal senso, che spero apprezzerete. Qualche tempo fa stavo cercando come pubblicizzare AntiVocale sui canali giusti, e mi hanno detto: potresti pubblicare su Reddit, in questi canali qua in cui si parla di queste cose. Ho postato, va bene. Siccome era il post introduttivo dell'app, l'ho fatto generare all'AI e poi ci ho messo un paragrafo singolo dicendo "se volete contribuire, ben venga". Ho postato sul gruppo FOSS Android, credo che fosse, su Reddit, in cui qualcuno ha apprezzato, qualcuno si è lamentato che non avevo messo i permessi giusti, per l'amor del cielo, ci aveva anche ragione, ho fixato delle cose, non era che non fosse FOSS: era che la matrice dei permessi dichiarati per l'installazione dell'app non corrispondeva alle vere necessità dell'app. O addirittura poi uno si è impuntato dicendo "ma tu devi scaricare i modelli da internet, quindi non è davvero offline la tua app". Ho capito, sì, vero, comunque...

**Alessio**

> Se ce l'hai già per i fatti tuoi.

**Paolo**

> Sì, sì, però di questo dobbiamo metterci a parlare. Ad ogni modo, mi hanno fatto un po' le pulci su sta roba, e niente, la conversazione è andata avanti, saranno stati una decina di messaggi, ho detto: dai, buono, qualcuno ha preso interesse. Dopo una settimana è arrivato un messaggio di qualche bot del canale che diceva: questo post che hai pubblicato l'hai generato con l'AI, viva le nostre regole, basta, ti abbiamo bannato l'account sul canale. E quindi mi hanno cancellato il post e bannato l'account su un canale in cui c'erano state dieci risposte in cui poi io avevo chiaramente risposto da umano, tutto lì.

> E sono rimasto un po' perplesso. Poi colpa mia, se vuoi, che non ho controllato questa roba, però ci stavo dicendo "guardate che c'è questa nuova app, se volete scaricatela, sennò fatti vostri", in un canale di pubblicità. E niente, quindi andata così, sono stato beccato.

> Sì, sì. E peraltro, giusto perché poi ho saltato una settimana: l'app è anche su F-Droid adesso, se mai interessi a qualcuno questa cosa, sempre se fate parte di quella popolazione qui che ha un controllo totale sulla supply chain. F-Droid, per chi non lo sa, è un canale di distribuzione alternativo al marketplace di Google, che ha dei requisiti particolari, che vuole che il software installato sia open source, che non abbia tracking di nessun tipo, tant'è che effettivamente la versione di F-Droid non ha una cosa che noi abbiamo nella versione di marketplace, in cui c'è il report automatico dei bug sulle infrastrutture di Google, che in termini di privacy è assolutamente una cosa rispettosa per chi interessa sta roba. Da parte mia era comodo, che se ti crasha il software mi arriva la notifica e non me la devi mandare tu, così capisco come mai è crashato e te lo fixo, però...

> Al di là di questo, volevo solo raccontare un'ultima parte della vicenda, che è stata una via crucis riuscire a pubblicare su F-Droid, perché ci ho messo tre settimane a fare la reproducible build che loro imponevano che facessi. Cioè, terribile. Soprattutto per il nostro software, che builda da librerie native e non era tutto Java. Terribile. Comunque, se vi interessa, lo trovate anche su F-Droid.

## **[44:14] Grok 4.6 e le PR su Hermes**

**Stefano**

> Ok, grazie. Allora, prima hai detto una roba, Paolo, che mi ha aperto un cassetto della memoria, diciamo. Avremo anche tanto altro ancora da dire, e li nominiamo solo per quelli che poi si lamentano che avremmo detto delle cose e poi non le diciamo. Sono uscite un sacco di cose open e non open, sia modelli che harness.

> In particolare cito al volo, e poi dopo vado sul cassetto della memoria, Grok 4.6, che allo stesso prezzo fa tanto meglio di 4.5 e fa meglio quasi di tutti a benchmark. Poi io, con il cattivo di Batman, faccio fatica a usarlo, anche solo a provarlo. Però Grok sta facendo grossi passi avanti come modello, e hanno rilasciato anche un Grok bot, concorrente diretto di Hermes e OpenClaw. Se devo fargli una critica, sono un tanto in rincorsa: cioè, idee nuove non ne ho ancora viste dal mondo Grok.

**Paolo**

> Scusami, visto che parli di bot, visto che ce la stiamo un pochettino menando: stamattina mi hanno mergiato due PR su Hermes. Quindi se qualcuno di voi usa Hermes, sappiate che la feature che abbiamo contribuito noi è quella per cui, se volete usare le interazioni veloci nella chat di Telegram, tipo thumbs up, thumbs down e quelle cose lì, adesso Hermes ha il supporto ufficiale.

> I ragazzi di Hermes sono stati molto bravi, perché hanno chiaramente una CI che fa... loro hanno tantissime PR, cioè non dico che è il Linux kernel, ma hanno tantissimo contributo. Quindi hanno tantissimi cicli automatici di auto-revisione, che sono utili, cioè è AI che parla con AI, ma è ragionata, e controllano in particolare se ci sono le stesse PR aperte sulla stessa tematica, perché a loro capita davvero tanto spesso che ci sia poco coordinamento, e quindi hanno implementato il loro coordinamento a questo livello, a livello di CI, ed è molto affascinante anche vederlo.

> Suggeriscono le cose: alcune PR me le hanno accettate, altre non me le hanno accettate perché qualcun altro ne aveva fatta una prima molto simile, e la mia AI non si era neanche accorta che ce n'erano altre simili. Quindi c'è tutto questo aspetto. E poi l'ultima curiosità, che è fresca di stamattina, non l'avevo vista: nel mergiare la PR hanno anche fatto un post automatico in cui hanno pubblicato una infographic del contributo che noi abbiamo fatto. Quindi c'è un'immaginetta che ti dice...

**Stefano**

> L'hanno fatto su X, vero?

**Paolo**

> Direttamente su GitHub, l'ho notato io.

**Stefano**

> Perché poi arriverà anche su X quell'infografica lì.

**Paolo**

> Non so quanto mi piacesse, devo dire la verità, in termini di valore aggiunto, ma ho apprezzato il meccanismo di provare a trasferire informazioni in un medium diverso, laddove ce n'è troppa qua in giro. E una cosa simile mi è capitata quando avevo contribuito a Open Design. Open Design? Boh, quel clone di Claw Design per fare grafica locale. E anche lì mi hanno accettato una cosina, e anche loro hanno postato una sorta di diploma, tipo quelli automatici generati quando fai corsi online, che ti ringraziano. Che mi ha fatto sorridere, lì, perché ho detto: è una roba assolutamente gratuita, non me ne frega niente a me, ma magari a qualcuno interessa. Però se sei un software che fa il verso a Photoshop, alle cose di grafica, ci sta che devi far vedere che riesci ad automatizzare i tuoi workflow e generare immagini on the fly. Su chi ti aiuta, aveva il suo valore.

**Alessio**

> Investiamoli questi due token per generare un'immagine inutile, del resto.

**Paolo**

> Quello è discutibile, però...

**Stefano**

> Beh, però se ce l'hai in locale ci sono casi in cui ha un suo senso. Io sono abbastanza visuale come persona, sto usando molto la generazione di cose Mermaid o HTML per capire meglio e approfondire.

**Alessio**

> No, ma intendiamoci: per fare l'infografica che ti spiega cos'è la PR eccetera, d'accordissimo, no? Io dicevo sul diploma, "bravo, hai fatto questa PR" eccetera.

**Stefano**

> Ah no, il diploma, ok.

**Paolo**

> Era più una versione achievement unlocked, stile gamification dell'Xbox, e ti diceva "hai contribuito a questa cosa, sei nel top 5 per cento dei contributori, bla bla bla", una roba di questo tipo. Che, appunto, ribadisco, è una cavolata e non me ne frega niente a me, ma mi chiedo: se un ragazzo delle superiori che contribuisce si vanta di sta roba, la mette sul suo profilo, aiuta. Quindi la cito perché non mi stupirei...

**Alessio**

> Sì, diciamo che lo motiva al contributo successivo.

**Paolo**

> Sì, la cito perché non mi stupirei se diventerà un trend, in questa sua versione o in qualche versione magari un po' più pratica di questo tipo.

## **[49:07] MuseSpark 1.2, continual learning e memorie condivise**

**Stefano**

> Sì sì, sono d'accordo. Magari la roba di LinkedIn eccetera, sì, perché no. Finisco così sulle news volanti: oltre a Grok bot, Muse, MuseSpark, quindi mondo Meta. Sono usciti con, vabbè, l'abbiamo detto prima, con il modello piccolo, Glimmer, 30 billion, gira in locale eccetera. Ma è anche interessante l'uscita, ormai un paio di settimane fa, di MuseSpark 1.2, che è il loro modello grande invece di coding, perché sono usciti in parallelo con l'harness, che si chiama MuseCode. Ma la cosa figa è stata che hanno fatto il training insieme.

> Cioè, usando l'harness stesso per fare la fase di reinforcement learning post training di MuseSpark. E questa cosa qui, che ci aggancia anche al mio cassetto mentale di prima, va nella direzione dei modelli e degli harness che auto-evolvono, e evolvono insieme.

**Paolo**

> Speravo che mi facessi un altro riferimento storico, dell'invenzione del linguaggio C e di Unix, che sono stati inventati a braccetto, uno per fare l'altro.

**Stefano**

> Anche. Uno per fare l'altro, esatto. L'idea è un po' quella lì. Il discorso è un discorso che ho affrontato, che tanti stanno affrontando in realtà in questo periodo, io per primo in newsletter ne ho già parlato più di una volta: il trend del continual learning, praticamente, cioè l'apprendimento continuo.

> L'apprendimento continuo che non si fa più solo sui modelli. Noi abbiamo detto un anno fa, un anno e mezzo fa si diceva "quando arriveremo all'apprendimento continuo", ma fare il training dei modelli è complicato, anche solo rilasciare i pesi: servono un mare di dati per trainarli, e quindi lo fai una volta ogni sei mesi, poi ormai siamo arrivati a ogni tre, ma ogni tot mesi aggiorni il modello con la nuova conoscenza, e non è la stessa cosa. Anche il reinforcement learning è complicato, richiede tempo, richiede verificabilità eccetera.

> Poi sono arrivati harness, loop, workflow, chiamateli come volete, che adesso va di moda chiamarli workflow non sapendo che cos'è un workflow. Però i loop in particolare, con i cicli di auto-verifica e quella roba lì, non solo hanno dato un boost notevole allo sviluppo software, ma stanno dando idee, idee tante, di auto-improvement dell'harness prima di tutto, ma volendo poi anche dei modelli. Perché nel momento in cui tu hai dei cicli di verifica stretti che fai nel loop di sviluppo, o non di sviluppo, nel loop dell'agente, quindi anche Hermes eccetera... già Hermes è il primo esempio che migliora le sue skill continuamente, ha una memoria. Poi anche Claude adesso ha memoria.

> Ci sono memorie esterne. Ad esempio, io sto valutando di usarle in molti agenti. Uso Open Viking, ne parlavamo, non so se qua, solo io e Paolo, su Hermes come memoria multilivello. Sto pensando di usarla anche negli agenti di coding, in modo che condividano conoscenza tra loro: un Open Viking solo, tanti agenti. Tanti progetti, tanti agenti. È una roba che stavo ragionando l'altra sera con il mio agente preferito.

**Paolo**

> Non è così esotica questa cosa, se la trasponi nel mondo di Hermes: l'idea di Hermes è che in realtà hai l'agente di coding solo, a cui chiedi le cose, e quindi lì non avresti una necessità di una memoria condivisa, perché è l'istanza dell'agente condivisa e che quindi sa tutto.

**Stefano**

> No, no, non è esotica. No, la mia idea è quella: io uso diversi modelli o diversi progetti, ma mi sono reso conto sempre di più che gli agenti stessi, o io, impariamo a fare cose in un certo modo, e mi piacerebbe salvarle e non dovermi occupare io di ricordarmi come gli ho dato i prompt.

**Alessio**

> Sì, magari qualcosa che fai con uno...

**Stefano**

> Piuttosto che il singolo agente nel singolo progetto ha la skill specifica, o si ricorda dalle sessioni precedenti, perché questa cosa il Claude di turno la fa, ma sulle sessioni del progetto. Mi piacerebbe condividere un po' di più. Ma questo è un altro discorso.

**Paolo**

> Anche io lo sto facendo a mano, questa cosa. Ho un coding agent che mi fa da babysitter di tutti gli altri: gli dico "senti, propagami questo Claude Code in tutti e tre i computer che uso e i quattro agenti che uso", così sono allineati. Però è un po' fragile, diciamo.

**Stefano**

> Sì, stavo cercando di capire se si può avere una cosa del genere. Beh, sono ancora nella fase di studio, ma vedremo. Vai!

## **[54:37] Sviluppo artigianale e agenti con personalità**

**Paolo**

> Posso distrarti per l'ultimo pensiero? Quando hai raccontato questa cosa mi hai fatto venire in mente una riflessione più filosofica, ampia: nonostante ci stiamo staccando dallo sviluppo di codice a mano come facevamo prima, quindi l'umano è meno direttamente il creatore della faccenda, siamo forse facendo un passo più vicino a rendere lo sviluppo software un'attività artigianale, meno industriale.

> In quanto questa cosa che hai appena detto tu, ovvero la maniera in cui sviluppo io, Paolo, è diversa da quella con cui sviluppa Stefano: io ho la mia serie di tecniche, di tool, la temperatura che voglio, questa cosa qua. Immaginate che siete un panettiere: io lo metto fuori dalla finestra al sole, io lo metto all'ombra, io ci metto il sale, io ci metto un'altra cosa. Ognuno ha il suo segreto, più o meno tutti sappiamo quali possono essere le combinazioni perché studiamo su internet come si fa, ma poi rimane che a me piace questo, a te piace quello, e fai un mix and match totale della faccenda, come un vero artigiano.

**Stefano**

> È così tanto diverso dai plugin di VS Code o JetBrains che io usavo e tu no?

**Paolo**

> Secondo me è più granulare adesso, ed essendo più granulare si fa un po' fatica. Prima erano una collezione di plugin che erano gli stessi miei e i tuoi. Qua invece c'è proprio la parola chiave che funziona nel mio prompt, perché io ci sono arrivato, perché è l'unica che mi ricordo, come quando con Alexa non riesci a farlo andare tranne che con quella parola, e accetti il fatto che vada con quella parola. E quindi tu hai il tuo e io ho il mio, e la varianza tra me e te, solo per come iniziamo ogni frase, ci porta risultati diversi.

**Stefano**

> Ok. Sì, ti seguo, ti seguo, ti seguo su questo, ci ho quadrato.

> Sì, il livello di partnership, lasciamo usare questo termine, che hai con il tuo agente è diverso, perché tu sei diverso da me. L'agente magari è lo stesso, ma è diverso da me. E proprio lì andiamo, proprio lì andiamo in realtà. C'è questo bel post di Dwarkesh Patel, quello che fa normalmente le interviste ma che ogni tanto fa anche qualche post suo, sia su Substack che poi come video, 8 minuti che io consiglio a tutti di ascoltare, perché fa una bellissima sintesi di questa roba sul self improvement dell'agente. L'agente è sempre harness più modello, quindi il self improvement dell'agente e le conseguenze che questa cosa in qualche modo può avere.

> Una di queste è proprio quella che stavamo dicendo noi adesso. Cioè, gli agenti oggi sono tutti uguali, siamo noi diversi come li usiamo. Ma se si spinge molto il self improvement, tanto che il ciclo di miglioramento è molto più stretto, molto più vicino all'utente, a un certo punto vedremo, già lo stiamo vedendo, con le memorie condivise, le cose che nominavo prima. Pensiamo a Hermes: Hermes è il miglior esempio su questo secondo me. Il tuo Hermes è diverso dal mio Hermes. E probabilmente, se ci scambiassimo i telefoni o gli account, e io utilizzassi il tuo Hermes e tu utilizzassi il mio, avremmo risultati diversi, non ci troveremmo. Perché cominciano ad avere, la dico grossa così, possiamo farci un reel...

**Alessio**

> Personalità diverse.

**Stefano**

> Gli agenti cominciano ad avere una personalità diversa, e questo è dovuto al fatto che hanno memorizzato modi diversi di comportarsi che noi gli abbiamo insegnato. Così ci facciamo una risata su questa frase e otteniamo un sacco di gente incazzata.

## **[58:32] Hermes in vacanza: mappa interattiva e spese**

**Paolo**

> Scusami, a proposito di Hermes, a proposito di diversi e cose, mi hai fatto venire in mente una storia che forse può essere divertente raccontare, della settimana di Ferragosto. La settimana scorsa non c'ero perché ero in vacanza, ero a Vienna. Non mi ricordo se l'avevo anticipata, ma ho fatto la mia prima vacanza AI-organized quest'estate.

> Ho deployato un agente Hermes che ho invitato in una chat di Telegram in condivisione con mia moglie, e l'abbiamo utilizzato per fare la pianificazione della vacanza: quindi andare a scoprire che cosa fare, come passare le giornate e tutte queste cose qua. Che, se detta così, suona una cosa molto niente di nuovo, diciamo: molti magari in passato hanno fatto una cosa simile con dei file Excel, dei Sheet e cose così, per tenersi traccia di dove andare e quando.

> Assume una dimensione un po' diversa se lo fai nella versione AI, perché tu puoi fare proprio questa profilazione che dici tu. Quindi noi all'agente abbiamo detto: siamo in quattro, ci piacciono queste cose, mia moglie è vegetariana, io no, abbiamo due bambine, una di 10 e una di 4 anni, non usiamo il passeggino. Lui ha tenuto insieme tutti questi pezzi e ha pian pianino tenuto conto di questi input per fare la proposta delle cose che gli abbiamo chiesto. Quindi ha funzionato molto bene.

> In particolare il fatto di poter accedere... talvolta gli giravamo dei link, che ne so, di cose di Instagram o di YouTube, e gli dicevamo "senti, c'è della roba che sembra interessante, processala tu, estrai i riferimenti e tienine traccia". L'ha fatto quasi sempre molto bene. Ci siamo resi conto che una cosa comoda poteva essere generare una mappa interattiva della nostra vacanza, che era in una sola città, quindi tutto sommato ci stava, con i vari punti di interesse. Ci ha creato un'app HTML in automatico.

> Ci siamo resi conto che scaricarla tutte le volte sul telefono per visualizzarla non era tanto comodo, quindi gliel'abbiamo fatta pubblicare su GitHub, quindi c'è su GitHub Pages la mappa cliccabile, c'è l'integrazione con la posizione corrente, perché le prime volte avevamo la mappa ma non avevamo la posizione e ci rendevamo conto che non era molto comodo. Abbiamo messo quella, filtri e robe varie. E l'abbiamo anche utilizzato per tenere traccia delle spese. Non è la fine del mondo, ma anziché dire "mi devo ricordare che abbiamo speso di qua e di là", visto che adesso costa lo sforzo mentale di un semplice messaggino, dicendogli "senti, guarda che ho speso 50 centesimi per farla, la pipì", per dirvi, perché a Vienna si paga 50 centesimi per farla, è un'informazione normalmente inutile, non te ne frega niente, ma adesso che non ti costa niente dirtelo in questa maniera, glielo dici, e quindi facilmente poi alla fine hai un prospetto che ti dice cosa hai speso sul cibo, sui giochi, su questo, su quell'altro. E niente, è stato estremamente comodo.

> C'è chi può prendere in giro, alcuni amici mi hanno preso in giro dicendo "è una roba troppo organizzata, non fa per me". Sono d'accordo, non voglio dire quello, anche per me è un extra. Ma la comodità di avere le robe lì e dirgli "senti, devo prendere i würstel qui nel würstelstand di Vienna e per me sono tutti uguali, quali devo prendere?", e lui mi dice "questo va bene per le bambine perché non ha le spezie e quello no", è stato molto comodo. Stessa cosa che, se vuoi, potevi fare con un Gemini qualunque, un ChatGPT, ma qui hai un contesto condiviso con un'altra persona, con anche la possibilità di tracciare su file tutte le cose che vuoi che lui si ricordi.

> E soprattutto: eravamo in giro quando gli abbiamo detto "senti, vogliamo che la mappa interattiva abbia più feature, che mi tracci la posizione". Quindi tu dal tuo treno, o dalla cuccetta del treno, gli dici "senti, voglio sta roba", senza un computer davanti a cui metterti, lui ti genera software consumabile in viaggio e te lo deploya in un server cloud che è sempre lì. Questo è stato decisamente comodo ed eye-opening per questo genere di funzionalità.

**Stefano**

> Sì, è un po' quello che avevo fatto io, ancora meglio perché nel frattempo è passato del tempo e le cose migliorano. A New York ho fatto una cosa simile. Io la mappa interattiva gliel'avevo fatta fare direttamente su Gemini e su Google Maps, gli avevo fatto creare i punti di interesse su Google Maps. Così, intanto, visto che stiamo parlando di come lo usiamo, per dare anche qualche spunto agli ascoltatori: io per fare le app interattive ultimamente le faccio fare in locale sulla sua macchina, e gli ho messo Tailscale sia a lui che sul mio telefono, così siamo in VPN e vedo direttamente sulla sua macchina senza dover coinvolgere GitHub. Semplicemente perché è un pochino più reliable: delle volte deployare su GitHub eccetera sbaglia, e se sei da remoto fai più fatica. Quello funziona sempre, si genera il suo HTML.

**Paolo**

> Scusami, hai parlato di sbagliare. Se volete delle storie buffe, nonostante questa sia una storia di successo e sia andata molto bene: penultimo giorno della vacanza, l'agente ancora ogni tanto sbagliava la data corretta del giorno. Mi ha fatto cascare le braccia, e gli ho detto: senti, ogni volta che mi parli di data lancia un comando Python in cui verifichi la data, perché non posso perdere tempo con te che mi dici che vado al mercato la domenica, al mercato il lunedì, perché tu hai capito il giorno sbagliato.

**Stefano**

> Sì, esatto, quelle cose lì i computer non le sbagliano.

**Alessio**

> Mi hai fatto venire in mente che una delle cose che mi fanno impazzire, con uno dei vari agenti che uso, è dirgli "va bene, quella data lì che settimana dell'anno era". Sembra una stupidata, ma rifare i conti tutte le volte...

## **[1:04:09] Se ogni installazione diverge, cosa legiferi?**

**Stefano**

> Allora, invece, tornando un secondo a quello che stavo dicendo prima dell'auto-miglioramento: c'è un altro spunto, ce ne dà tanti Dwarkesh, davvero perdeteli gli otto minuti ad ascoltarlo, o a leggerlo se non lo seguite. Dwarkesh va ascoltato a 0,8, perché parla talmente veloce che ti perdi altrimenti, oppure te lo leggi, visto che ha tutti i transcript. Lui dà una serie di spunti, però non sto ad affrontarli tutti.

> Una cosa che lega tutto e che a me ha colpito è: se andiamo verso l'apprendimento continuo, dove l'apprendimento continuo è per utente o per azienda, se vogliamo vederlo da un punto di vista enterprise, saltano un po' le cose a cui stiamo cercando di aggrapparci in qualche modo. Cioè, l'allineamento: il fatto che ne parlavamo con Alessandro la settimana scorsa, l'importanza dell'allineamento dei modelli perché non facciano cose sbagliate o non prendano un percorso sbagliato per arrivare a un risultato giusto. Però l'allineamento è fatto sui modelli, puoi farlo. Su una cosa che auto-apprende con l'utente diventa più difficile, da un lato, come dicevamo prima: gli agenti hanno una loro personalità, nel bene e nel male.

> Poi, tutta quella cosa su cui sta puntando in questo momento l'Europa e anche l'America, sia con i discorsi di Amodei che poi anche di Demis Hassabis, di recente, il fatto che serva in qualche modo legiferare eccetera eccetera. Ma che cosa legiferi? Cioè, se il modello non è più centrale, ma ogni installazione paradossalmente può prendere una deriva diversa, diventa complicato. Oltre al fatto che i dati contano ancora di più, quindi il valore del dato diventa ancora più alto.

**Paolo**

> Mi fai venire in mente quelle leggi che ci sono ma per le quali non hai una verifica applicabile reale. Tipo, in Italia è illegale che ti fai la grappa a casa. Va bene, è illegale. Conosco il 70 per cento delle persone sopra gli 80 anni che fanno la grappa in casa, l'hanno sempre fatta. "Non si può fare", "non si fa", "la faccio lo stesso sotto una certa quantità", ma sì, insomma, c'è tutto questo genere di cose. Il "non si deve" e il "non si può" cambia un po' quello, e secondo me mi ricordava quella storia lì, insomma.

**Stefano**

> Sì, in Italia è vietato bestemmiare: in pubblico è reato.

**Paolo**

> Sì sì, mettere la cintura di sicurezza sul sedile posteriore, un sacco di cose. Quindi la legge di per sé c'è, ma poi...

**Stefano**

> Adesso le macchine suonano anche sul sedile posteriore, se non vuoi diventare pazzo te la devi mettere. Sì, sì, sicuro, sicuro.

**Paolo**

> Ok. Se è software, ci sarà una maniera per aggirarla, dai.

**Alessio**

> Conosco tante persone che usano il software chiamato "metto la cintura e poi dopo mi ci siedo sopra", così.

## **[1:07:37] La fine dei modelli open? Al contrario**

**Stefano**

> Allora, lui poi arriva a una conclusione che invece io non condivido. La lasciamo lì, visto che siamo in chiusura di puntata, la mia riflessione, poi volevo però sentire anche la vostra. Lui dice: quindi potrebbe essere la fine dei modelli open, perché soltanto i grandi, grandissimi laboratori possono ottenere questo passo di continual learning, di seguire eccetera eccetera.

> Io lo vedo esattamente in modo diametralmente opposto, e penso che il modello open sia quasi inevitabile, non dico la scappatoia, quasi inevitabile per mantenere invece una sorta di autonomia. Mi piace di più la visione che suggerisce in qualche modo Nvidia, dell'agent workhorse piccolo che sta sulla tua macchina, e solo quando ti serve più intelligenza vai di là. Ed è anche più facile far evolvere continuamente un modello più piccolo, che non affidarsi al grande modello che evolve per i fatti suoi. Questa è mia personalissima visione.

**Paolo**

> Io non trovo la riflessione del tizio, Dwarkesh, particolarmente convincente, perché è come se dicesse: ok, accettiamo che la singolarità arriverà, perché se ci concentriamo sulla cosa più importante, quella cosa più importante sempre migliora, e quindi diventa asintoticamente più veloce di qualunque altra cosa, e per via di questo motivo allora non vale più la pena fare nient'altro. No, mi sembra che la realtà dimostri che le realtà possono essere vere entrambe: ci possiamo concentrare su una cosa principale, cercare di migliorarla, ma continuano a essere rilevanti anche tutte le altre. Quindi questo fa decadere la tesi, a mio avviso.

**Alessio**

> Anche perché poi comunque le applicazioni, se vuoi di business, attorno a tutte le altre cose ci sono, e quelle stesse alimentano la necessità di evoluzioni diciamo più in piccolo.

**Stefano**

> Sì, sì. Bene, dunque credo che... ce n'è una, poi chiudo, giuro, che non ho detto. Mi è arrivata una mail di Manus, stupenda. Allora, io Manus non l'ho mai pagato, ma avevo fatto l'account per provarlo. Non so se vi ricordate, Manus a un certo punto è stato acquisito da Meta, e mi è arrivata una mail dicendomi: siamo stati acquisiti da Meta, viva e viva, il tuo account viene trasferito così, senza che tu ti accorga di niente, semplicemente sarà nelle cose di Meta.

> Poi il governo cinese si è messo di traverso e ha bloccato quell'acquisizione, ne abbiamo parlato qualche mese fa. Adesso mi è arrivata un'altra mail da Manus per dirmi: non è vero, non ci hanno acquisiti, però purtroppo avevamo già trasferito tutti i dati sui server di Meta e non ce li danno indietro. Quindi per favore fatevi un backup di tutti i vostri dati, che poi tiriamo giù tutto e ritiriamo su tutto, vi manderemo un'altra mail e voi potrete rimettere i vostri dati. È stata stupenda. Con questa chiudiamo la puntata.

**Alessio**

> Gli hanno sequestrato i dati.

**Paolo**

> Meravigliosa, questa.

**Stefano**

> Grazie a tutti di averci seguito, mettete i commenti, le campanelline, ci fate sapere se volete o non volete Paolo, se volete o non volete gli ospiti in puntata e tutte queste cose che vi abbiamo chiesto. E poi abbiamo detto di Ivan: vorreste vedere Ivan invitato? Ditecelo, scrivetecelo, lo invitiamo. Non lo volete? Diteci no, Ivan lo odiamo. Noi non glielo faremo sapere, ma...

**Alessio**

> Non ci ascolterà, no?

**Stefano**

> In teoria ci ascolta, però magari è uno di quelli che mi fanno scendere la curva degli ascolti nell'ultimo minuto e mezzo, e qua non ci è arrivato. Ciao a tutti.

**Alessio**

> Ciao.

**Paolo**

> Ciao!
