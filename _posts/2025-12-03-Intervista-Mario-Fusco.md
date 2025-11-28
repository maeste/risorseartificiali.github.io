---
title: "Intervista a Mario Fusco: sviluppo software nell’era dell’Intelligenza Artificiale"
categories:
  - Interviste
tags:

  - AI
  - Java
  - Agenti
layout: single
author_profile: true
---


{% include video id="annKzlWVKmM" provider="youtube" %}

👉 [Ascolta su Spotify](https://open.spotify.com/show/16dTKEEtKkIzhr1JJNMmSF?si=900902f2dca8442e)<br/>
👉 [Guarda su YouTube](https://www.youtube.com/channel/UCYQgzIby7QHkXBonTWk-2Fg)<br/>
👉 [Segui su LinkedIn](https://www.linkedin.com/company/risorseartificiali)<br/>

## Into.... (00:00)

## [01:32] INTRODUZIONE E PASSIONE PER LA TECNOLOGIA

**Stefano Maestri**
> Ciao a tutti e tutte, bentornati al nostro appuntamento con le interviste che non chiamiamo interviste artificiali, anche se "Risorse Artificiali" è il podcast, perché ci piace sottolineare che sono interviste super umane. Come al solito, anche se avete letto chi è nel titolo, avete visto la foto e probabilmente l'avete già riconosciuto, io non vi dico subito il nome dell'ospite. Ma prima gli faccio la prima domanda che è sempre quella che a me piace di più ed è: "Qual è o qual era il tuo gioco o giocattolo preferito quando eri bambino o adesso?".

**Mario Fusco**
> Allora, se rispondo a questa domanda sembro monotematico, nel senso che sviluppo software da quando ero veramente bambino e probabilmente il mio primo giocattolo preferito è stato proprio il mio primo computer. Mi rendo conto che rispondere in questo modo sembra un po' da persona, diciamo, fissata su una sola cosa, però... ti do il contesto esatto. Il contesto è che in realtà il motivo per cui mi sono appassionato a questo campo e faccio questo lavoro è che mio papà aveva un negozio di informatica nel nostro paese d'origine a Mondragone nei primissimi anni '80. Già quello era un po' un outlier per l'epoca. Il mio primo computer nel 1980, avevo 6 anni, è stato lo Spectrum ZX80. Non so se qualcuno l'ha mai visto...

**Stefano Maestri**
> Io sì, perché avevo la tua età più o meno.

**Mario Fusco**
> Era un affarino grande così, bianco e nero coi tasti blu e su ogni tasto, oltre alla lettera, c'era anche una keyword del Basic. Quindi praticamente con un tasto funzione più la lettera lui ti scriveva la keyword del linguaggio Basic, quindi insomma appunto era fatto per iniziare a programmare in Basic. All'epoca non aveva nessun supporto di memoria, quindi lo accendevi, scrivevi un po' di codice, lo facevi girare, quando lo spegnevi non c'era più niente, ricominciavi da capo. Però, appunto, sto parlando del 1980.

---

## [04:09] CHI È MARIO

**Stefano Maestri**
> Allora va bene, ci ha già dato anche un altro indizio: Mondragone, l'età e via. Anche se non l'avete letto nel titolo, avete capito che con noi oggi c'è Mario Fusco. Qua di solito io mi fermo e dico introduciti da solo durante le interviste, ma prima di farlo e siccome so che Mario è modesto, dico io due parole. Mario, possiamo definirlo facile facile, uno degli sviluppatori più famosi del mondo. Lui non si sarebbe definito così, ma lo definisco così io: uno speaker seriale, non è un frequent speaker, è uno speaker seriale, nel senso che dovete stare attenti che non venga a farvi un talk a casa vostra. Ma da sempre si occupa di sistemi enterprise, abbiamo lavorato insieme per tanti anni e stiamo ancora lavorando insieme. E quindi qui sì, dai, facci tu un'introduzione: da dove arriva tutta questa tua passione per il mondo Enterprise ed in particolare Java?
>
> Perché un'altra cosa che non ho detto, Mario è Java Champion, ha scritto libri su Java, ha fatto numerosi talk, come dicevo prima, ma soprattutto ha contribuito a tantissimi progetti open source che sono diventati di uso comune. Partendo da altri, probabilmente più piccoli che io non ricordo, ma forse il più grande che ricordo per primo è Drools, quindi un sistema di regole. Se vogliamo l'intelligenza artificiale prima dell'intelligenza artificiale generativa, quella che...

**Mario Fusco**
> ...quella che viene chiamata Good Old Fashioned Artificial Intelligence.

**Stefano Maestri**
> Esatto. E insomma, e qui arriva invece oggi uno dei principali contributor di LangChain4j e di Quarkus ed in particolare di tutto lo sviluppo ad agenti AI all'interno di LangChain4j. Quindi ti lascio introdurre, ma tienimi a mente questa domanda: Com'è che sei partito da un sistema di regole e sei arrivato ad agenti AI? Com'è che ci sei arrivato?

**Mario Fusco**
> Sono entrato in Red Hat quasi 15 anni fa e quando sono entrato in realtà sapevo relativamente poco di rule system. Ne avevo implementato uno giocattolo in Scala, ma più che altro per sperimentare col DSL di Scala che non perché ero bene a conoscenza degli algoritmi interni di un Rule Engine. Ma insomma partendo da lì poi mi sono unito al team che sviluppava Drools all'epoca e ho continuato a contribuire a quel progetto fino a diventare il project lead.
>
> Mi sono appassionato a quella tecnologia, agli algoritmi interni che sono alcuni belli complessi, insomma, per cercare di fare le cose in modo più ottimizzato possibile. Perché lì, appunto, la sfida è cercare di applicare in maniera efficiente migliaia di regole su migliaia di oggetti con delle join anche abbastanza complicate, regole anche temporali eccetera e farlo in maniera efficiente. Quella è la sfida, diciamo, algoritmica più impegnativa e divertente.
>
> E quindi sì, ho lavorato la maggior parte degli anni che ho speso in Red Hat, li ho spesi lavorando su questa tecnologia. Ultimamente ho iniziato un po' a guardarmi in giro e come diceva Stefano mi sono anche iniziato ad appassionare alla nuova AI, perché quella basata sui motori di regole di cui parlavo prima viene appunto chiamata in letteratura Good Old Fashioned Artificial Intelligence (o GOFAI, se volete cercare l'acronimo).
>
> Però appunto ho cercato anche poi molto di recente, diciamo nell'ultimo anno, di guardarmi un po' in giro e ovviamente in giro è impossibile non sbattere contro la nuova intelligenza artificiale, quella generativa, e quindi ho iniziato a collaborare al progetto LangChain4j, come diceva Stefano. Ho scritto il modulo nuovo di agenti che è la cosa su cui sto ancora lavorando in questi giorni.
>
> Quindi diciamo sono passato dalla vecchia intelligenza artificiale alla nuova. Credo che le due cose non siano... che non sia completamente vero che la nuova sostituisce e rende inutile la vecchia, ma credo che in realtà siano due tecnologie complementari per tanti motivi. E quindi uno dei miei sforzi che sto cercando di fare in questi ultimi mesi, in quest'ultimo periodo, è dimostrare questa complementarietà e cercare di fare funzionare insieme queste due tecnologie.

---

## [10:11] IL TALK DROOLS VS GENAI

**Stefano Maestri**
> Infatti tu l'anno scorso, correggimi se sbaglio, mi pare fosse l'anno scorso, hai anche fatto un talk, o più di uno, su questa cosa qua, sulla complementarietà.

**Mario Fusco**
> Sì, il talk era partito semplicemente da una notizia che avevo letto online da qualche parte. Non so se vi ricordate, ma insomma quello che era successo l'anno scorso è che Air Canada aveva avuto un problema con uno dei suoi chatbot, nel senso che questo chatbot chattando con un utente aveva avuto un'allucinazione suggerendo all'utente che avesse il diritto ad un rimborso che in realtà apparentemente non aveva. Il problema è che il chatbot ha detto che questo rimborso era dovuto e l'utente ha preso gli screenshot della sua conversazione col chatbot, è andato in tribunale, ha chiesto il rimborso e la Corte ha imposto ad Air Canada di dare quel rimborso, anche se appunto non era probabilmente dovuto.
>
> Ovviamente il giorno dopo quel chatbot era offline. E il problema è che appunto aveva allucinato su una regola di business di Air Canada e loro si erano un po' troppo fidati.
>
> Sto anche parlando di forse un anno e mezzo fa, credo che nel frattempo le cose siano cambiate un po', le tecnologie attorno siano cambiate un po', però appunto il mio punto all'epoca che credo sia valido ancora adesso è che se hai le tue regole di business codificate, di sicuro le regole per decidere quando un utente ha diritto a un rimborso sono regole di business che Air Canada e qualsiasi altro vettore ha ben codificate, anche perché deve adeguarsi probabilmente alle leggi nazionali ed internazionali. Non è niente che si possono troppo inventare nemmeno loro.
>
> E appunto se queste regole sono ben codificate, sono chiare e trasparenti, non c'è nessun motivo per cui debba affidarmi a un'intelligenza artificiale generativa per interpretarle a modo suo e generare risposte che potrebbero essere non corrette.
>
> Ma la mia idea era che in quel caso voglio usare l'intelligenza generativa per avere una conversazione molto umana, user friendly con gli utenti, ma allo stesso tempo voglio che quando c'è da applicare delle regole di business che sono chiare e inequivocabili, a quel punto voglio farlo con un software totalmente predicibile come un motore di regole in questo caso, che è un ottimo fit per interpretare quelle regole. Ed era questo l'esempietto da cui sono partito.

**Stefano Maestri**
> Che se vuoi ha proprio tutto un filone di pensiero che sta prendendo forma e gambe, se mi consenti, nell'ultimo periodo, da MCP (o Model Context Protocol) se lo vogliamo dire all'inglese in poi, in cui qualcuno, oserei anche tanti, cominciano a dire che in fondo, una delle grandi forze della generativa è proprio la capacità di fare una user interface conversazionale come nuova modalità di user interface. Poi quando devi fare le cose vere gli attacchi sotto dei tool e quindi un rule engine può essere un tool alla fine, puoi esporlo come MCP immagino...

**Mario Fusco**
> Assolutamente sì. Infatti nell'esempietto che avevo fatto all'epoca — all'epoca MCP non esisteva nemmeno — Drools girava come un tool. Non girava su un server remoto MCP, girava in locale ma per il resto girava esattamente come un tool. Quindi era l'intelligenza artificiale che a un certo punto capiva che non doveva calcolarsi il rimborso da sola, inventarselo, ma utilizzare il motore di regole per calcolarlo. Questo motore di regole era wrappato in un tool e l'intelligenza artificiale chiamava il tool per calcolare il rimborso. Era esattamente la stessa cosa con la possibilità in più adesso che questo tool potrebbe essere installato remotamente e servito via MCP.

**Stefano Maestri**
> Certo, sì, sì, però il senso è quello, cioè dare dei tool che facciano cose deterministiche su un'interfaccia utente che può anche essere indeterministica.

---

## [16:00] I LINGUAGGI DI PROGRAMMAZIONE DINAMICI UN VECCHIO NEMICO

**Stefano Maestri**
> Allora, su questa cosa qui, uscendo un attimino da quello che stiamo dicendo, mi stimoli una mezza provocazione che voglio farti e vedere come ti... Tu scrivi, anzi "pinni" nel tuo profilo X: *"Programming languages don't differ much in what they make possible, but in the kind of mistakes that they make possible"*. Per gli utenti che non masticano l'inglese, che fanno fatica con la mia pronuncia italiana: I linguaggi di programmazione non sono molto diversi per quello che possono fare, ma per gli errori che rendono possibili.
>
> Allora la provocazione che ti faccio è: la possiamo estendere quella cosa qui anche all'AI? Fa quello che potremmo fare con un linguaggio di programmazione? Fa di più, fa di meno, rende possibili più o meno errori?

**Mario Fusco**
> Allora, giusto per essere chiari, il contesto di quella frase che è un bel po' vecchia — e quando l'ho scritta non c'era ancora la Generative AI come la conosciamo adesso — era su un'altra mia vecchia fissazione. Nel senso che a me non piacciono i linguaggi di programmazione dinamici, perché appunto consentono di fare errori che normalmente non sarebbero nemmeno possibili con un linguaggio staticamente tipizzato. Quindi il contesto di quella frase è quello lì, era un modo per promuovere l'utilizzo di linguaggi staticamente tipizzati.
>
> Per tornare alla tua domanda: sì, lo scenario ovviamente è totalmente cambiato. E forse guarda, adesso che ci sto pensando pure qua il fatto di avere un linguaggio staticamente tipizzato magari aiuta pure quando vogliamo fare il cosiddetto "Vibe Coding". Nel senso che questi strumenti iniziano a funzionare parecchio bene, però è inevitabile che errori ne facciano. Certi errori che fanno: se stai generando Java, te ne accorgi subito, semplicemente perché Java non compilerebbe proprio. Se stai generando un linguaggio dinamico, probabilmente te ne accorgi solo al runtime che è stato commesso un errore. Quindi, nel contesto del Vibe Coding spero che avere linguaggi con un sistema di tipi più forte possa essere più di aiuto.
>
> Poi c'è tutto il filone di discussione sul Vibe Coding che io ho iniziato ad usare e funziona, certe volte, sorprendentemente bene. Veramente resto sorpreso, quasi salto dalla sedia dal codice che vedo generare ultimamente. Ciò nonostante, errori ne fa ovviamente. Dopo che il codice è stato generato, un paio di martellate qualche volta bisogna dargliele. E, appunto, magari se si usa un linguaggio statico forse è più facile.

---

## [19:37] AI ASSISTED CODING

**Stefano Maestri**
> Infatti io spezzo una lancia e torno su un tema che tocchiamo spesso — io personalmente tocco spesso in podcast e poi anche in newsletter — a me non piace tantissimo il termine "Vibe Coding" applicato alle... passa a me il termine... alle cose serie. Cioè io preferisco chiamarlo "AI Assisted Coding", perché il Vibe Coding nella mia testa è: gli do l'istruzione e speriamo che vada tutto bene o poco più. Mentre invece quando fai del software di livello enterprise e quant'altro, insomma, devi essere guidato. Questa generazione di codici, un po' quello che dicevi tu, delle martellate.
>
> Però, visto che tocchi il Vibe Coding, ti faccio una domanda che in qualche forma faccio un po' a tutti quelli che masticano di programmazione. E tu sei più che "masticare". Ma allora, io penso spesso che all'inizio c'erano le schede perforate per programmare...

**Mario Fusco**
> C'era ancora qualcuno a casa di schede Hollerit, sono le schede Hollerit della tesi di laurea di mio padre...

**Stefano Maestri**
> Ok, ok. E che manco avevi la tastiera quasi, no? Cioè erano delle tastiere speciali per fare i buchi e così. Poi siamo passati all'Assembler dove dovevi sapere qual era il registro dove mettere le cose nella memoria eccetera. Da lì i primi linguaggi di astrazione più alta, Fortran, Pascal eccetera...

**Mario Fusco**
> Sì, sì, esatto.

**Stefano Maestri**
> Poi il linguaggio di programmazione ad oggetti e poi se vuoi i functional programming che sono comunque un'astrazione ancora maggiore. E allora la domanda sorge spontanea: è il linguaggio naturale il prossimo livello di astrazione? Stiamo sempre più andando in quella direzione lì in cui descriviamo il problema e dobbiamo sapere quello che facciamo e leggere quello che genera. Ma boh! Cioè, la vedi questa progressione anche tu o sono io che mi faccio le fantasie?

**Mario Fusco**
> Allora, la vedo ma c'è un grosso ponte tra tutte le cose che hai detto prima e l'ultima che hai detto che deve essere in qualche modo attraversato. Nel senso che tutte le cose che hai menzionato, dalle schede Hollerit fino ai linguaggi di programmazione di altissimo livello funzionale eccetera, sono linguaggi formali non ambigui. Questo è il fatto. Mentre il linguaggio naturale non è un linguaggio formale, non è un linguaggio di programmazione per il semplice fatto che i linguaggi di programmazione sono non naturali e quindi intrinsecamente non ambigui, devono essere non ambigui.
>
> Di ambiguità nei linguaggi naturali ce ne sono fin troppe. Pensa all'uso dei pronomi per esempio: disambiguare un pronome non è banale. Errori se ne possono fare, incomprensioni ce ne possono essere. Ecco, questo in un linguaggio di programmazione a qualsiasi livello sia, dalle schede Hollerit fino all'Haskell, non è possibile. Quindi la differenza grossa che vedo è questa.
>
> E l'altra cosa, collegata a questo, c'è una vignetta carina dei disegnatori francesi — non so se l'avete mai vista — dove c'è il CTO probabilmente che dice a uno dei programmatori: "In futuro non ci sarà più bisogno del tuo lavoro, scriverò al computer in maniera assolutamente dettagliata e specifica quello che voglio ottenere e lui me lo farà ottenere". E il programmatore gli dice: "Lo sai come si chiama scrivere tutto in maniera dettagliata, precisa e non ambigua? Programmare".
>
> E quindi sì, ce lo vedo che il linguaggio naturale sarà il prossimo linguaggio di riprogrammazione. C'era un post su X proprio ieri mi sa, di uno dei principali creatori dei modelli di Anthropic, che diceva che nel futuro — lui diceva tra 6 mesi, forse è un po' ottimista — però in futuro non controlleremo più il codice generato, così come adesso quando compiliamo Java non andiamo a controllare il bytecode generato.
>
> Mi sembra che ci può essere un fondo di verità, però appunto da prendere un po' con le pinze. A parte la timeline molto aggressiva che non voglio nemmeno discutere, perché poi fare previsioni su queste robe ho imparato che non è il caso di farlo perché è facile sbagliare di ordini di grandezza, sia in positivo che negativi.
>
> A parte questo ci vedo l'analogia: nessuno che compila Java va a leggersi poi il bytecode che è generato, si fida che il bytecode è stato generato giusto. Ci vedo l'analogia. Io credo che in futuro, anche se questi strumenti funzioneranno sempre meglio — e già ripeto, adesso funzionano in modo sorprendentemente buono — ma un'occhiata a quello che generano gliela do e penso di dargliela anche in futuro. Questo è il discorso. Ma proprio per il motivo che ti dicevo: la traduzione da Java a bytecode è assolutamente deterministica. Certo ci può essere un bug nel compilatore, prima o poi qualcuno lo troverà e qualcun altro lo fisserà, però è totalmente deterministica. La stessa cosa non si può dire con il Vibe Coding.

**Stefano Maestri**
> No, esatto, questo è il punto, l'indeterminismo che va gestito.

---

## [27:00] È PIÙ IMPORTANTE SAPER LEGGERE CHE SCRIVERE IL CODICE

**Stefano Maestri**
> Però su questa roba qui che hai appena detto, mi viene un'altra di domanda provocazione. Ma quindi stai dicendo, tra le righe, che sempre di più diventa importante saper leggere, valutare e correggere il codice più ancora che scriverlo da zero?

**Mario Fusco**
> Allora, questo io penso che sia stato sempre così. Adesso ovviamente c'è un...

**Stefano Maestri**
> Interessante. Questo che sia sempre stato così spiegamelo perché mi piace.

**Mario Fusco**
> Per chi fa il programmatore lo sa: io il 5% del mio tempo lo passo a scrivere codice e l'altro 95% a leggerlo. Non solo il mio, ma quello degli altri. Soprattutto se si lavora in un progetto open source e così. Quando si fa la review di una pull request devi leggere il codice del committer che sta suggerendo la modifica, capire quello che quel codice vuole fare, capire se ci sono margini di miglioramento, cercare di suggerirli in maniera quanto più non ambigua possibile e non è sempre facile.
>
> Quindi io anche da prima di leggere il codice generato dalle AI, credo che una grossissima fetta del mio tempo lavorativo sia speso molto di più leggendo codice mio e degli altri che non scrivendone di nuovo. È chiaro che l'introduzione del Vibe Coding non fa altro che aumentare questa percentuale. Tutto qua.

**Stefano Maestri**
> Perché il committer...

**Mario Fusco**
> Esatto, solo per quello. Il committer non è un essere umano o è parzialmente un essere umano e parzialmente una macchina ad aver generato quel codice. Dal punto di vista mio che devo leggerlo e capirlo probabilmente non cambia nemmeno così tanto, anche perché dicevo prima che certe volte il codice che genera l'AI mi fa saltare sulla sedia.
>
> Scusami se divago un attimo, ma quello che mi sorprende di più è che quello che mi capita, per esempio, è che scrivo la signature di un metodo e se ho dato un nome al metodo ragionevole e i nomi degli argomenti sono ragionevoli, quello che mi fa l'AI è generarmi completamente il body di quel metodo. Io lo guardo, quasi sempre corretto, me lo tiro dentro. Non l'ho scritto io, non avrei saputo scriverlo ma di sicuro ho risparmiato tempo facendolo scrivere dall'AI.
>
> Quello che volevo dire è che la cosa che ho notato e che mi ha sorpreso di più ultimamente è che non solo l'AI genera quel metodo, ma lo stile in cui è scritto quel metodo è molto vicino al mio stile di programmazione. Scrivere software mi rendo conto che per chi non lo fa di mestiere non è facile da capire, ma c'è uno stile di scrivere software che è molto personale.

**Stefano Maestri**
> Ogni scrittore ha la sua penna alla fine...

**Mario Fusco**
> Esatto. Se io leggo una storia di Stephen King solo dallo stile so che l'ha scritta Stephen King. E la stessa cosa succede per il software. E quello che fa l'AI che mi sorprende è non solo scrivere il body di quel metodo, ma scriverlo in maniera molto simile a come l'avrei scritto io, col mio stesso stile di programmazione, perché lui sta nel contesto di tutto il resto del codice che ho scritto e aggiunge il suo pezzo utilizzando lo stesso stile.
>
> Quindi perché sto dicendo questo? Perché quando poi mi capita di leggere il codice degli altri, se è stato generato in questo modo, a quel punto è quasi veramente indistinguibile capire qual è la parte che ha scritto l'essere umano e qual è la parte che ha scritto l'intelligenza artificiale. Non ha manco senso porsi la domanda a quel punto lì. Devo fare la review, leggo il codice e nemmeno mi accorgo se quel codice è stato scritto da una macchina o da un essere umano. Faccio la review e basta.

**Stefano Maestri**
> Una cosa che io ho visto succedere — stiamo facendo con il mio team — è che quando arrivano pull request esterne fatte da altri e sono chiaramente fatte con l'AI come tutte, essendo che partono con il contesto dal nostro progetto, è paradossale ma sono più simili a come l'avremmo scritto noi di come l'avrebbe fatto un contributor qualunque. Quindi è anche quasi più facile fare la review perché ti ci trovi di più, cioè seguono il tuo di stile. Se tu sei il main contributor del progetto, bene o male quello che genererà assomiglierà più a quello che scrivi tu che a quello che scrive Tizio Caio.

**Mario Fusco**
> È vero, è vero, sì. Non ci avevo pensato in questi termini, però è vero.

**Stefano Maestri**
> E quindi quando hai i contributori esterni sporadici si allineano di più, il che non è male per chi deve mantenere il progetto alla fine. Sarei curioso ma è una cosa che a te capita poco o mai probabilmente, perché tu giustamente hai detto lavori su un progetto, si prende il tuo stile eccetera. Sarei curioso di chiederti invece su un progetto Greenfield, quindi che parte da zero, scritto con l'AI, un giudizio sullo stile dell'AI. Però probabilmente non ti è mai capitato in questi ultimi mesi.

**Mario Fusco**
> Allora, onestamente no. Nel senso che ancora non ho fatto quel passo in più di farmi startuppare il progetto dall'AI o farmelo scrivere da zero dall'AI.

**Stefano Maestri**
> Sai, progetto che parte da zero, non conosce ancora il tuo stile. Ero curioso, siccome so che Mario scrive molto bene, permettimi, hai uno stile marcato nello scrivere il codice. Come dicevi prima Stephen King, cioè, di nuovo, chi non è nel nostro mondo fa fatica a capire questa cosa, sembriamo matti a fare questo discorso, probabilmente la maggior parte. Però se io leggo un pezzo di codice che ha scritto Mario, vi giuro che sono in grado di dire l'ha scritto Mario piuttosto che l'ha scritto un altro nostro collega. Mi incuriosiva un tuo giudizio su stili diversi ma chiaramente non hai avuto occasioni.

**Mario Fusco**
> No, la verità è sì, ma più che altro il modo con cui uso questo strumento è ancora quello che ti dicevo: lo uso come aiuto interno nell'IDE. Mentre scrivo codice mi dà un pezzettino di autocompletamento, ma non sono mai andato allo step successivo di dire "anche all'interno di un progetto non greenfield devo implementare questa feature, implementamela tu e poi dopo la metto a posto io se serve". Insomma su questo passo devo ammettere che ancora non l'ho fatto. Cerco sempre di dare io la forma iniziale alla cosa che sto facendo e poi mi faccio aiutare, ma più che altro per risparmiare tempo, per generare i dettagli implementativi. La forma cerco sempre di tenerla io. Potrei provare a fare questo passo successivo, ancora non l'ho fatto quindi non ho tanto feedback da darti su questo.

---

## [35:30] AI NELL'ENTERPRISE... MEGLIO JAVA

**Stefano Maestri**
> No, torniamo invece ad un altro tema che hai toccato prima e che ci porta a... secondo me significativa. Hai parlato prima di linguaggi dinamici versus linguaggi statici, quindi Java, eccetera, e cito una cosa che c'era nelle tue slide di uno degli ultimi talk tuoi che ho sentito in cui chiedevi: *"Do you really want to do transaction, security, scalability in Python?"*. Cioè volete fare le cose complicate, enterprise, veramente in Python? Il non detto di questa frase, ma che c'è poi in tutte le slide, è una... quello che io ho chiamato una difesa pragmatica di Java anche nel mondo dell'AI. Carta bianca per spiegarci perché, come, dove.

**Mario Fusco**
> Sì, allora pure qui magari vale la pena di dare un po' più di contesto. Il mio punto è che questi nuovi sistemi che usano le AI generative hanno poco senso, a meno che non sto facendo chatbot di ChatGPT o di qualche altro provider simile. Ma se lo voglio inserire in un contesto più ampio di un'applicazione Enterprise — che appunto come dicevi prima magari usa qualche tool MCP per leggere e scrivere dal database o per fare altre operazioni o per mandare email — se voglio integrare questi sistemi con un software Enterprise, ancora adesso e per un motivo valido io credo che la stragrande maggioranza di questi tipi di software girano in un modo o nell'altro sulla Java Virtual Machine. Magari adesso non sono scritti tutti in Java. Kotlin vedo che sta prendendo sempre più piede (prima c'era Scala che adesso mi sembra che sia un po' più messo da parte ultimamente, ma magari mi sbaglio). Però insomma la stragrande maggioranza di questi software usati dalle aziende sono scritti in Java o in linguaggi che girano sulla Java Virtual Machine.
>
> E il mio punto era che voglio integrare questa nuova tecnologia con tutta la code base che ho già e per farlo perché non farlo ancora in Java, insomma? È la cosa più semplice.
>
> L'altra cosa che mi rendo conto potrebbe essere più discutibile, però... essendo *strongly opinionated* come al solito su tante cose, inquadriamo pure questo: ho l'impressione che certe nuove tecnologie in questo campo arrivano più dal campo dei Data Scientist e quindi più dal campo del tipico programmatore Python, piuttosto che dal campo Enterprise e quindi dal campo del tipico programmatore Java. Mi rendo conto che già dicendo questo sto facendo una grossa generalizzazione. Ho l'impressione che alcune di quelle cose risentono del fatto che arrivano dal mondo dei data scientist.
>
> Lo stesso MCP di cui parlavi prima, che è stato pensato da quel mondo lì: però quando è iniziato, quando è stato pensato non c'era — correggimi se sbaglio — dentro nessun concetto di authorization per chiamare un certo tool, di sicurezza. Perché? Perché tutti quei concetti vivono, sono scontati nel mondo enterprise. Io non inizierei mai a scrivere un nuovo pezzo di software che gira su un server remoto ed è supposto di essere chiamato da altri servizi esterni senza pensare: "Ok, questo affare gira su un server remoto, come faccio ad autenticare gli utenti? A capire che livelli di autorizzazione hanno? Come faccio a implementare la sicurezza, la transazionalità se serve?".
>
> Sono le prime domande che un ingegnere che lavora nel mondo dell'enterprise si fa. Una persona che lavora più sulla generazione dei modelli, sulla parte matematica, sulla parte algoritmica e basta, queste domande all'inizio non se le fa. E il risultato mi pare evidente insomma: e adesso stiamo combattendo per far rientrare dalla finestra queste cose che servono pure su un server MCP. Ce le stiamo costruendo sopra, attorno, ma MCP non è stato pensato con quelle esigenze di appunto... perché secondo me viene da un mondo dove il mindset delle persone che ci lavorano dentro è un po' diverso.

**Stefano Maestri**
> Sì, sì, proprio un problema di mindset che tu tra l'altro condensavi bene, se ricordo bene, in quel talk che citavo. Poi tutti questi talk, lo dico per chi ci ascolta: mettiamo tutti i link in descrizione, potete andare ad ascoltarveli perché sono tutti disponibili su YouTube. Quelli di cui stiamo parlando sono quelli più recenti che Mario ha fatto al Devoxx, grande conferenza Java in Belgio. E magari se vi va di andare ad ascoltarli, almeno avete tutto il contesto, perché chiaramente qui distiliamo qualche concetto, ma magari ci perdiamo dei pezzi di contesto, anche se Mario è bravo a riportarceli.
>
> Però tornando a quello che dicevi, il mindset... che un conto è fare l'esperimento, il proof of concept eccetera, e un conto poi è farci girare il sistema di Air Canada che non deve dare indietro soldi a caso o peggio, o cose anche più mission critical di un sistema che dà indietro un biglietto.

---

## [41:13] L'INFERENZA DEI MODELLI IN JAVA

**Stefano Maestri**
> Allora, però su questa cosa qui, perché allora in questo mondo sono visti vari esperimenti — anche tu in passato ne hai fatti credo — di vari punti dove integrare diciamo gli LLM o comunque le AI. E adesso sei molto concentrato — e poi ci arriviamo, ne parliamo più diffusamente — su quello che è diciamo la parte agentica, quindi il mettere un po' insieme i due mondi se mi consenti.
>
> Però in passato hai sperimentato anche fare inferenza di modelli dentro a Java, giusto? Rispetto agli esperimenti che hai fatto, vedi ancora che ci sia uno spazio per questa cosa qui? Come sono andati gli esperimenti? Son curioso perché poi non ne abbiamo mai più parlato neanche noi.

**Mario Fusco**
> Hai ragione. Allora, il passo successivo che ho provato a fare un po' di tempo fa è che il software che utilizzo e che sviluppo tipicamente si connette a dei server esterni dove girano i modelli che io utilizzo. Questi server esterni possono essere di terze parti (esempio OpenAI GPT, Anthropic, Gemini ecc.) o l'altra cosa molto tipica che succede, o che almeno io ho provato a fare diverse volte, è che mi piace avere dei modelli anche ovviamente più piccoli di quelli che nominavo, ma che mi girano in locale.
>
> Tipicamente questi modelli, un modo molto comodo per farli servire in locale è usando Ollama, ma pure lì quando girano in locale girano su questo server Ollama e quello che fai con Ollama è comunque interfacciarti via HTTP. Stai comunque facendo una chiamata HTTP, la stai facendo sulla tua macchina locale non andando su un server remoto, ma stai comunque andando via HTTP.
>
> L'idea era invece quella di avere tutto nello stesso processo, nella stessa Java Virtual Machine, incluso l'inferenza dei modelli. Quindi c'ho il mio server Quarkus che parte e dentro c'è un pezzo che non fa affidamento su nessun altro servizio esterno, ma anche l'inferenza del modello gira all'interno di quel processo.
>
> I primi esperimenti che ho fatto su questa idea usano e usavano una libreria molto carina, molto fatta bene che si chiama Jlama. Jlama appunto è basata sulla nuova Vector API per utilizzare appunto la capacità dei processori nuovi di fare calcoli vettoriali. Però il limite di quella tecnologia è che ancora non riesce a fare uso invece delle GPU e quindi, come puoi capire, ci sono limiti nella dimensione dei modelli che puoi usare. Se inizi a usare modelli relativamente grossi, non potendo utilizzare una GPU, diventa esasperantemente lento, insomma diventa non più utilizzabile.
>
> Un'altra possibilità, un'altra tecnologia invece molto interessante sulla stessa idea, ma che stavolta riesce anche ad utilizzare le GPU, è TornadoVM, su quella sto sperimentando in questi giorni. Con TornadoVM riesci ad ottenere lo stesso risultato che dicevo prima, ovvero avere l'inference che gira direttamente sulla Virtual Machine, e TornadoVM — che è una tecnologia che viene sviluppata principalmente all'Università di Manchester — riesce anche a fare uso della GPU.
>
> I motivi per fare questa cosa qua, cioè perché dovrei far girare l'inferenza in locale sulla Java Virtual Machine invece che fare affidamento su un servizio esterno? Ce ne sono un po', secondo me, tutti abbastanza discutibili. Eppure qua questo è un moving target, quindi le cose che dico probabilmente erano più vere 6 mesi fa o un anno fa rispetto ad adesso e probabilmente non so se saranno vere ancora in futuro.
>
> Ma insomma è più facile di sicuro in fase prototipale, in fase di testing pure, avere tutto incluso nello stesso processo. Tiro su una sola cosa, gira quella, gira tutto lì dentro e quindi è molto più facile se non altro in campo prototipale, di sviluppo e di testing.
>
> Altre cose potrebbero riguardare probabilmente la sicurezza, nel senso che invece di girare su un servizio esterno l'inferenza mi gira in locale e quindi ho tutto sullo stesso processo, non sto andando su un servizio esterno e non sto mandando cose in giro, anche informazioni in giro che potrebbero essere sensibili per il business e quindi questo è un altro possibile vantaggio.
>
> Poi, ripeto, questi strumenti devono essere pure, diciamo, efficienti dal punto di vista computazionale e adesso ancora in Java non è così banale arrivare a quel punto lì.

**Stefano Maestri**
> Ok.

**Mario Fusco**
> E quindi la situazione è questa, è una possibilità molto interessante. Ci vedo delle... dei vantaggi. Per adesso ancora diciamo che certi vantaggi superano i possibili vantaggi, ecco.

---

## [49:52] LANGCHAIN4J E GLI AGENTI IN JAVA

**Stefano Maestri**
> Prima di muoverci sul prossimo argomento che come dicevo sono gli agenti e che sono molto interessanti, ma forse di nuovo qua potrebbe esserci un problema di mindset perché manutenere ed efficientare l'inferenza di un modello ha bisogno di un mindset completamente diverso da quello dal programmatore, più da amministratore di sistema. Quindi per la produzione potrebbe essere complicato, però capisco tutti gli altri esempi che hai fatto di test, prototipizzazione eccetera.
>
> Ma parliamo di agenti che è il tuo focus principale. Di agenti in Java, agenti scritti all'interno della libreria che si chiama LangChain4j, da non confondere con LangChain e basta, nel senso che "4j" perché è per Java, ma ci sono anche differenze filosofiche rispetto a LangChain. Non è un porting di LangChain su Java, questo ci tengo a sottolinearlo.
>
> E poi c'è tutto il lavoro che hai fatto sugli agenti che mi interessa molto perché, guarda, io parto solo con un'altra tua citazione di una cosa che dici da qualche parte, forse in un articolo...

**Mario Fusco**
> Sì, un articolo che ho scritto un paio di settimane fa.

**Stefano Maestri**
> ...che dici che *one size doesn't fit all*, cioè non c'è una taglia che va bene per tutto per gli agenti e parlavi di pattern eccetera. Raccontaci un po' sta cosa, dai.

**Mario Fusco**
> Sì. Allora, prima faccio, se mi consenti, una piccola premessa su LangChain4j come nome, perché ho notato pure partecipando a qualche conferenza in giro che c'è un po' di misunderstanding e devo ammettere che col senno di poi credo che la scelta del nome sia stata un po' sfortunata. Nel senso che quando è partito il progetto appunto c'era LangChain in Python e l'idea è: "Ok questa cosa si può fare in Python, perché non farla pure in Java?". Faccio LangChain4j, ovvero il LangChain for J che è scritto in Java che gira sulla Java Virtual Machine, e l'idea del nome ovviamente è partita da lì.
>
> Poi però quello che è successo è che è stata solo l'idea, è stato solo il punto di partenza, ma poi le due tecnologie hanno preso strade completamente diverse. Uno dettate ovviamente dal linguaggio utilizzato, certe cose che si possono fare in Python in Java non si possono fare e viceversa, i costrutti idiomatici di un linguaggio sono totalmente differenti dall'altro, quindi per forza di cose le due tecnologie hanno preso strade diverse. Ma poi hanno preso strade diverse anche dal punto di vista proprio di disponibilità di features, consentimi anche dal punto di vista forse filosofico o di idea generale di come vengono sviluppate.
>
> Quindi appunto c'è rimasto attaccato questo nome LangChain4j. Però chi lo usa deve essere cosciente che è una cosa totalmente scorrelata da LangChain in Python e per quello che posso vedere ultimamente è molto più ricco di feature LangChain4j che non la libreria Python. Quindi veramente le due cose sono indipendenti.
>
> Fatta questa doverosa premessa, come dicevi, ho iniziato a guardare un po' questo mondo degli agenti. Per me il trigger, uno dei trigger delle motivazioni principali che mi hanno spinto a lavorarci su, è anche collegata al fatto che dicevo prima che spesso mi piace usare dei modelli relativamente piccoli per cui posso far girare l'inferenza in locale dentro alla stessa Java Virtual Machine, ma più solitamente usando Ollama ultimamente a dire la verità.
>
> Ma insomma di usare modelli in locale, e quindi usandoli in locale devono essere necessariamente non enormi come quelli che usate quando vi connettete a servizi remoti. E quindi avendo questi modelli più piccoli, però chiaramente le capacità di generalizzazione di questi modelli più piccoli sono un po' più limitate e quindi quello che più tipicamente succede è che abbiamo dei modelli piccoli, magari specializzati su a fare una certa cosa, a soddisfare un certo bisogno.
>
> E però a quel punto, invece di usare un modello solo enorme, generico, ne uso un certo numero di modelli più piccolini e poi però ho il problema di farli cooperare, di metterli insieme, di farli lavorare come se fossero un unico grosso modello con vantaggio che sono molto più piccoli e quindi possono girare sulla mia macchina. Non spendo soldi per pagare le API di chat GPT o comunque insomma sono molto più economici in generale, insomma, che è un altro vantaggio.
>
> Quindi l'idea è che invece di avere un modello enorme unico, ne ho *n* più piccolini e poi ho il problema di farli cooperare. L'idea degli agenti è nata da questa situazione. In realtà, poi guardandoci bene mi sono reso conto che le cose funzionano meglio sia usando modelli grossi che modelli piccoli, nel senso che ragionare ad agenti, ragionare a task ti costringe comunque a suddividere il problema in sottoparti. E facendo questa suddivisione, suddividendo il problema in parti più piccoli, aiuti l'LLM, aiuti l'AI generativa a svolgere queste parti più piccole in maniera più corretta a prescindere se stai usando un modello grosso o un modello piccolo.
>
> Quindi questo è un altro vantaggio di passare a questa architettura d'agenti. Come dicevo, passare a questo modello d'agente però pone dei problemi che ho cercato di e sto cercando di codificare e risolvere in questo nuovo modulo di LangChain4j che si chiama LangChain4j Agentic. L'idea, appunto, è che questi agenti dovendo cooperare per l'esecuzione di un macrotask, devono in qualche modo parlarsi fra di loro, condividere lo stato, condividere il contesto che in certi casi è ancora più complicato ma anche importante. E quindi se date uno sguardo a questa libreria di cui vi sto parlando, su cui sto lavorando, vedrete che ci sono dei costrutti che vanno in questa direzione.

---

## [58:25] AGENTI E FUNCTIONAL PROGRAMMING: UN PARALLELO

**Stefano Maestri**
> Quindi mi interessa molto questa cosa che hai detto. Mi metto un attimo nei panni o nelle scarpe, per dirlo all'inglese, del tuo utilizzatore, cioè quello che arriva, si prende Langchain4j agenti che comincia a sviluppare. Hai sottolineato bene che è un cambio di nuovo di mindset, di modo di lavorare.
>
> Vista anche la tua esperienze precedenti, LambdaJ e poi tutta la parte functional programming eccetera, ci vedi dei paralleli nel pensare ad agenti e nel pensare per funzioni o sono fuori strada?

**Mario Fusco**
> No, ci sono sicuramente dei paralleli, insomma. Il parallelo interessante è quello che a cui accennavo prima, insomma, la programmazione funzionale e questo paradigmi ad agenti sono guidati dalla stessa idea di base che poi per dirla chiaramente è il *Divide et Impera*, insomma. Invece di descrivere un task enorme, la prima cosa che faccio è lo suddivido in sottotask più piccoli e poi dopo cerco di risolvere questi problemi più piccoli e più maneggiabili in maniera uno per uno, insomma, e poi di mettere le cose insieme.
>
> Questo è quello che si fa in programmazione funzionale. Quando si dice che una funzione deve avere un solo compito, deve essere lunga idealmente due tre righe di codice, non di più e quindi e poi quello che ti dà la programmazione funzionale sono le primitive per comporre le funzioni, quindi per fare il MAP, il flat map e tutte quelle parolacce di programmazione funzionale. Quello che vogliamo dare con questo modulo ad agenti è esattamente lo stesso, avere la consentimi componibilità di questi agenti di modo da farli da da avere dei degli agenti molto specializzati per fare certe cose e poi la possibilità di metterli insieme. Il parallelo quindi su questo ce lo vedo di sicuro.
>
> Quello su cui poi queste cose divergono invece è quello che raccontavo prima che è la parte di non determinismo, quello parzialmente resta e c'è poco da fare lì. Per esempio, il cambio di mindset che è richiesto in questo caso ed è una cosa su cui mi scontro giorno per giorno è: come faccio a testare una cosa che non è deterministica? E ed è quello forse il cambio di paradigma più grosso che personalmente ho visto, ma che vedo anche in altri, quando si passa verso questi software basati sulle AI generativa, il testing è un problema grosso.
>
> Giusto per raccontarne una, mentre lavoravo al mio modulo ad agenti ho mandato una pull request. Questa pull request rompeva un test che però era in un'area totalmente indipendente. Era evidente che il test che si rompeva era totalmente scorrelato dal lavoro che avevo fatto e questo test in realtà quello che faceva era mandare a un LLM l'immagine di un gatto e nell'asserzione del test c'era scritto che la domanda all'LLM era "cosa vedi in questa immagine?" e l'asserzione era che la risposta doveva contenere la parola *Cat*. Il test falliva perché a un certo punto l'LLM si è messe a rispondere: "I see an animal with a feline appearance" che ovviamente la parola *cat* non ce l'ha e quindi il test falliva per quello. E lì il problema è quello lì insomma che bisogna cambiare il mindset: dire questo LLM deve rispondere con una frase che contiene la parola gatto, altrimenti il test è fallito e purtroppo non è più...

**Stefano Maestri**
> Eh no, certo. Cioè proprio perché si ha a che fare con un sistema statistico e quindi anche i test devono essere di tipo statistico alla fine o se preferisci, nel tuo esempio, siccome hai a che fare con un sistema da linguaggio naturale, i test devono guardare il linguaggio naturale, quindi vabbè gli embedding eccetera eccetera.

---

## [01:03:31] LA COMMUNITY E IL SERIAL SPEAKER

**Stefano Maestri**
> Allora, devo dire che ci dicono spesso, cioè no, spesso qualche commento che riceviamo nelle puntate normali è: "bello, interessante, a volte siete troppo nerd". Diciamo che oggi ci abbiamo dato su questa cosa qua e ci siamo.

**Mario Fusco**
> Ma io ne sono felicissimo, io sono il paladino del nerdismo di questo podcast, quindi va bene.

**Stefano Maestri**
> Diciamo che l'argomento ci guida in quella direzione lì. Ma io adesso provo a portarci fuori un secondo e nel portarti fuori ti chiedo la parte della community. Allora, nel senso che adesso lasciamoci un attimo alle spalle tutto quello che è AI... Dicevo all'inizio che tu sei uno speaker seriale, come mi piace definirti, ma non solo quello, ovviamente. Paladino dell'Open Source, lavorato in Red Hat per anni, ma comunque assolutamente convinto allora e ora della bontà e credo tu non abbia cambiato idea ieri, almeno della bontà del paradigma open source.
>
> E intanto, però, mentre chiacchieramo, io voglio far vedere ai nostri ascoltatori che magari non hanno avuto modo prima e Mario, come appare oggi, non è... è un po' meno personaggio. Ma Mario io l'ho conosciuto così, esattamente come nella foto tutta a destra dello schermo che sto condividendo...
>
> E tanto che sei dentro le community, racconto anche che il cambio da lì a qui alla versione è successo su un palco di una conferenza, quella che nominavamo prima Devoxx l'anno scorso. Quindi la domanda, raccontaci del taglio di capelli che è sempre divertente, ma al di là di quello la domanda vera mia è: cosa vuol dire per te la community e quanto ti dà il passami il termine "restituire" tutto quello che comunque dalla community prendiamo? Perché io sono molto convinto di questa cosa: noi siamo dentro queste community open source e prendiamo tanto dalle community e credo che le conferenze, i blog, i podcast siano un modo per restituire, ma questo è la mia personale opinione. Non so se tu la vedi diversamente la community in generale.

**Mario Fusco**
> Più che restituire, userei la parola condividere che è appunto un dare avere bidirezionale. Ecco, condividere conoscenza, questa è la è il punto di forza delle community.
>
> Vabbè, il taglio di capelli è successo in un ambito community, ma semplicemente perché è nata la cosa come uno scherzo e poi l'abbiamo portata avanti, io e il mio amico Stephan che organizza la Devoxx Belgium.

**Stefano Maestri**
> No, però diciamo almeno questa cosa perché è stato divertente. Io purtroppo non c'ero quell'anno, ma mi è stato raccontato da colleghi...

**Mario Fusco**
> Sì, c'è il video su YouTube pure di quello.

**Stefano Maestri**
> Quello che mi hanno raccontato che è stato fatto durante il Keynote, quindi uno dei talk più importanti di ogni conferenza e il bello è che tutti guardavano Mario invece di che Keynote...

**Mario Fusco**
> Sì, c'era il Keynote di Brian Goetz che parlava delle nuove feature di Java che peraltro molto bello e importante, Brian Goetz ovviamente chiunque è nel mondo Java non può non conoscerlo, ma nel frattempo mi stavo tagliando i capelli. E lui, insomma, era un po' non so se era disturbato, insomma, era divertito pure lui, distratto anche un po'. E poi dopo subito dopo la Keynote invece su quel palco lì c'è stato il talk successivo era di Gavin King che è un altro nostro amico, il creatore di Hibernate e c'erano ste masse di capelli che ancora rotolavano sul palco mentre lui parlava e quello pure era strano da vedere.
>
> Invece parlavamo della community: come diceva Stefano, a me piace parlare in pubblico, uno appunto per la parte puramente sociale della cosa e ma il vantaggio principale che ci vedo è appunto la condivisione, come dicevo. Io, come Stefano, come tanti dei nostri colleghi, lavoriamo da casa, lavoriamo da remoto e quindi stando nella tua stanzetta davanti al PC, certe volte facciamo le cose nella nostra torre d'avorio e abbiamo poco confronto con poi chi i software che scriviamo dovrà utilizzarli. Invece il confronto è fondamentale perché altrimenti perdo 6 mesi a fare una cosa di cui non importa poco agli altri e non è troppo produttivo, troppo bello. La parte bella di scrivere software è poi vedere che questo software, questo lavoro che hai fatto viene utilizzato da altri, no? E per essere utilizzato da altri deve essere apprezzato e per arrivare lì devi capire gli altri di cosa hanno bisogno e per capirlo ci devi parlare, non c'è niente da fare.
>
> Quindi la parte di community, la parte delle conferenze è importante per quello. Vado alle conferenze, presento i lavori, le cose su cui di volta in volta lavoro e poi mi confronto con le persone e la parte più importante per me non è il talk in sé, ma quello che succede immediatamente dopo, ovvero chiacchierare con chi il talk c'era, che va bene, ti fanno i complimenti, ti danno la pacca sulla spalla e quello fa sempre piacere, ma poi ti danno anche del feedback, ti dicono qual è la cosa di cui hanno bisogno e che al momento non c'è, che ti manca e semplicemente non c'è non perché era difficile da implementare, molto spesso mi capita, ma semplicemente perché non avevo pensato che potesse essere una cosa utile. Tutto qua.

**Stefano Maestri**
> E se non te lo dicono... i feedback sono fondamentali.

**Mario Fusco**
> Quindi la community è importante per quello. Io ho iniziato a parlare in pubblico nel piccolino del Java User Group di Milano che abbiamo messo su oramai 24 anni fa. E lì ho capito che l'importanza di parlare in pubblico... non nascondo che mi piace, insomma, che mi piace condividere quello che faccio, mi piace stare sotto i riflettori, stare on stage, però poi la cosa importante è quella che dicevo prima e quello che succede subito dopo il talk sono le domande, i confronti, i feedback che si ricevono eccetera eccetera.
>
> Eppure, ecco, l'altra cosa anche importante è che quando tu usi il mio software programmi contro la mia API, tu vedi il risultato finale, stai usando quel software così come è in quel momento. Però durante i miei talk quello che cerco di raccontare è non solo come le cose funzionano, ma come ho fatto ad... tanti dei miei talk sono più sul viaggio che non sulla destinazione finale. Come ho fatto ad arrivare lì? Perché quella cosa è scritta in quel modo lì? Perché quella feature è implementata? Perché quel metodo c'è quei tre argomenti e non altri due?
>
> Dare una spiegazione delle motivazioni che mi hanno spinto a fare le cose in un certo modo e questo e diciamo fa capire davvero alle persone il tipo di lavoro che hai fatto, come funzionano le cose e perché funzionano in quel modo lì, che è un altro feedback, è un altro momento di condivisione importante.

**Stefano Maestri**
> Guarda, però hai citato il JUG Milano, che 24 anni di community locale è assolutamente interessante. Io ne approfitto per, diciamo, spezzare una lancia anche per quelli che ci ascoltano e che magari non hanno la tua o la mia — perché anch'io non mi nascondo voglia di stare sotto riflettori — ma partecipare, venire ad ascoltare Mario al JUG Milano piuttosto che da un'altra parte nelle community locali senza scomodare la grande conferenza... la community locale è lì per tutti. E anche solo partecipare, ascoltare Mario che vi racconta perché ha messo quella variabile nel metodo e poi di condividere con lui e con le altre persone che sono lì è qualcosa che dà molto sicuramente e fa crescere molto.
>
> Io adesso sto pensando a chi magari ha un po' meno esperienza di noi. Vorrei dire più giovane di noi, ma non lo dico perché poi sembriamo vecchi, però diciamo chi ha un po' meno esperienza di noi, magari il confronto può essere quel momento di crescita, anche se per noi è il momento del feedback oggi più che altro, ma è sempre di crescita anche per noi, assolutamente in un altro senso, ma anche per lo Junior di turno può essere un momento di crescita, quindi davvero partecipate alle community locali e non.

---

## [01:15:45] CONTRIBUIRE AI PROGETTI OPEN SOURCE

**Stefano Maestri**
> Ma qua altra domanda per te, quella lì è la community di persona e invece la community quella su GitHub. Cioè se facessi la domanda che mi è stata fatta da uno Junior a me e io non sapevo rispondere: "Ma come faccio a passare da 10 a 100 contributor?" Tu ce l'hai una risposta a quella domanda qua? Come faccio?

**Mario Fusco**
> Nel senso che tu hai il tuo progetto e vorresti invitare altre persone a fare... vorresti che fosse un po' più virale?

**Stefano Maestri**
> Sì.

**Mario Fusco**
> È una domanda difficile, a me l'hanno fatta e io giuro non è una domanda bella bella complicata. La domanda che mi sono sentito fare più spesso è: "Come faccio io a contribuire? Nessuno mi conosce. Come faccio io a contribuire a un progetto che esiste già o come faccio a far crescere una community?". Devo ammettere che andiamo sul livello di complessità ancora maggiore della cosa.

**Stefano Maestri**
> Partiamo da come si contribuisce. Su come si cresce una community possiamo farci un episodio da solo. Ma se c'è qualcuno che dice "Vabbè, tutto bello, LangChain4j mi interessa, mi interessa Java piuttosto che voglio contribuire ad un altro community che non c'entra niente". Ce li abbiamo un consiglio da dare a costui?

**Mario Fusco**
> Allora, prima di tutto, se stai se vuoi contribuire a un progetto è probabilmente perché quel progetto ti interessa o lo stai usando. Se lo stai usando potresti aver trovato delle cose che non vanno, che semplicemente, ok, hai trovato caso più classico, hai trovato un bug. Il primo modo per contribuire al progetto è segnalare il bug.
>
> Però consentimi di aprire un'altra parentesi qua: segnalare il bug in maniera ragionevole. Ecco, questa è una cosa che ci tengo a dire da contributor di progetti open source. Quando segnalate un bug, mettetevi, come dicevi tu, nelle scarpe, nei vestiti di quel di chi quel bug poi qualcosa deve farci, insomma, deve capire qual dov'è il problema e fissarlo. Se mi dai un bug report dove mi dici "Ho chiamato questo metodo e non funziona" o semplicemente mi incolli uno stack trace così e già quello è tanto che me lo stai dando e non mi dai alcuna informazione su come riprodurre il problema lato mio, non è una cosa actionable. Non so che farci. Mettiti nei miei panni. Ricevi una segnalazione del genere, come ci lavoro su.
>
> Quindi la prima cosa sì, se avete trovato un bug segnalatelo, riportatelo giusto in maniera actionable. Il passo successivo è: "Ok, ho trovato un bug, non solo lo segnalo, ma cerco di capire dentro che sto che sta succedendo e cerco di fissarlo, di mandare non solo il bug report, ma anche una fix di quel bug".
>
> Ma senza anche arrivare al bug, parliamo di un altro tallone d'achille dei progetti open source che è probabilmente la documentazione. Quello che capita certe volte e che capita pure a me che sto usando un progetto che conosco relativamente poco, devo capire come si fa una cosa e faccio fatica a trovare documentazione ragionevole. Riesco a capire mio malgrado come usare quella cosa. Ecco, un altro modo per contribuire è contribuire mandando la documentazione, scrivendo un tutorial, scrivendo un articolo che spiega come funziona una certa cosa.
>
> Quindi contribuire veramente a un ampio spettro di possibilità, appunto, ripeto, con la documentazione, con i bug report, con i fix, con le feature request. "Vorrei fare questa cosa, ma ho guardato la documentazione, ho guardato le API, non si può fare, però ne ho bisogno". E ripeto, magari come dicevo prima, quella cosa lì non c'è, ma non perché era irragionevole o complicatissima da implementare, ma semplicemente perché chi mantiene quella libreria non ci ha pensato tutto qua. Non ci ha pensato. E quindi pure lì passo uno, mando alla feature request, cerco di spiegare pure lì con un esempio actionable, con quanto più contesto è possibile quel bisogno insoddisfatto e anche lì il passo successivo può essere: "Ok, sta cosa manca, magari non solo chiedo di implementarla, ma provo a farlo io e mando Pull Request".

**Stefano Maestri**
> Faccio una battuta su questa cosa che hai detto e poi do un suggerimento a chi volesse anche contribuire. La battuta è che anche i programmatori umani hanno bisogno del contesto, non soltanto le AI. Ha appena detto Mario, dateci il contesto. Cioè il contesto è una parola mutuata dall'umanità. Davvero dateci qualche paletto e qualche contesto a cui attaccarci per risolvere i problemi.
>
> Il consiglio che do è chi vuole contribuire, una domanda che io mi sento fare spesso è: "Ok, prendo Langchain4j, non so quante migliaia o milioni di righe di codice sono, da dove comincio? Non esiste un main da dove partire, eccetera". A volte uno degli scogli è guardare sto progetto eccetera. Consiglio mio che ci sono cominciano a esserci gli strumenti anche gratuiti. Se non lo conoscete guardatevi Deep Wiki di Cognition che è un tool AI, gli date il repository GitHub e lui vi fa un report con il disegno delle classi, come navigare, quali sono i punti di ingresso, eccetera. e abbassa un po' lo scoglio dal "da dove comincio". Io lo trovo molto utile sui progetti nuovi, se volete provare.

**Mario Fusco**
> Questo lo prendo pure io come suggerimento, non lo conoscevo nemmeno io.

**Stefano Maestri**
> Ah, no, loro ce l'hanno dentro a Windsurf, fatto ancora meglio, il tool concorrente di Cursor, però c'è questa risorsa free che tu vai e te lo fai da web e comunque ti dà un bel po' di punti di ingresso e sai dove mettere le mani, secondo me sui progetti grossi è interessante.

---

## [01:22:48] BIAS E BEHAVIORAL SOFTWARE ENGINEERING

**Stefano Maestri**
> Per chiudere ti porto su un altro argomento ancora che però mi interessa molto, anche perché abbiamo detto si stati molto verticali, molto nerd, perché è la nostra passione, ma io voglio che passi anche il Mario che vede oltre la riga di codice perché c'è ed è ben presente anche nelle conferenze.
>
> Ci sono due o tre talk, ma io voglio partire o citare quantomeno l'ultimo che credo si intitolasse *Behavioral Software Engineering*, qualcosa del genere, che hai fatto di nuovo al Devoxx e spoiler farai da qualche altra parte, ma non diciamo dove, a meno che lo voglia dire tu. Ed era interessante perché affronta quelli che sono i bias che in italiano possiamo tradurre come preconcetti, delle persone applicate a quello che succede ad un ingegnere.
>
> Citavi tutta la letteratura più famosa nel campo, *Thinking, Fast and Slow*, per citare il più famoso di tutti, "Pensieri lenti e veloci" in italiano. Se non l'avete letto leggetelo questo che è bellissimo. E però ti lascio carta bianca, raccontaci tu perché ci sei arrivato lì, se c'è un perché e che cosa ti va di raccontare se devi tirare fuori due o tre cose chiave in 10 minuti.

**Mario Fusco**
> Sì. Allora, non sono arrivato lì partendo dalla programmazione, nel senso che sono arrivato lì partendo dall'economia che è un'altra cosa che non c'entra niente con la programmazione, ma che mi interessa ugualmente. E a parte i processi economici e l'economia in sé, mi interessa di capire come ragionano le persone nell'ambito economico o in generale come le persone prendono decisioni. Poi le decisioni che più la maggior parte delle decisioni più importanti che prendiamo nella nostra vita hanno comunque una componente monetaria, economica e quindi le cose sono ovviamente correlate. Quindi è più una scienza la cosiddetta economia comportamentale parte pure lì dall'economia, ma è più una scienza che studia come prendiamo le decisioni e quali sono, come dicevi tu, i bias che ci fanno certe volte prendere queste decisioni in maniera non completamente ottimale.
>
> E sono partito da lì e poi mi sono ricongiunto alla programmazione, nel senso che mi sono reso conto ed è questo il succo del talk che citava Stefano pure quello su YouTube se vi va di dargli uno sguardo. Mi sono reso conto che questi bias decisionali ovviamente non colpiscono solo in campo economico... dei preconcetti, appunto, su cui il nostro cervello lavora h24 in qualsiasi ambito e siamo fatti così perché c'è un motivo, perché c'era un vantaggio evoluzionistico a prendere decisioni in un certo modo. Adesso ovviamente il contesto in cui viviamo è totalmente diverso da quello di 10.000 anni fa quando quell'evoluzione è avvenuta, però il modo di pensare in quei termini è rimasto e questo, come dicevo, influisce tutte su tutte le nostre decisioni, sul nostro processo decisionale e ovviamente parte delle decisioni che prendiamo sono le decisioni che prendiamo in ambito lavorativo, in ambito di sviluppo software se facciamo questo lavoro.
>
> Quindi il mio sforzo in quel talk è di fare un parallelo tra come un bias, un certo bias e ne cito alcuni nel talk, influenza e può danneggiare le nostre scelte economiche, come quello stesso bias influenzare e danneggiare le nostre scelte lavorative in campo di sviluppo software.
>
> E campo pure lì... Certe volte, soprattutto per chi non fa questo mestiere, si sottovaluta la parte sociale ancora una volta dello sviluppo software. Si pensa che sviluppare software vuol dire stare davanti al computer da solo, in perfetto isolamento a vomitare codice e invece non è quasi mai così. Si interagisce con le persone. Eppure là l'interazione con le persone deve essere mediata un po' da degli atteggiamenti che superano questi bias che inevitabilmente abbiamo e insomma il talk è un po' tutto lì, quindi parlo dei bias più comuni.

**Stefano Maestri**
> Tira fuori il tuo bias, quello che ti sei sentito più addosso nello scrivere e che effetto ha fatto sul tuo modo di fare codice, se ce l'hai.

**Mario Fusco**
> Quello che probabilmente influenza di più il modo di fare codice ce ne sono un po'. Uno probabilmente è il *Temporal Discounting*, e con temporal discounting intendo il fatto che diamo più importanza alle cose, anche alle gratificazioni più e ai guadagni più immediati e i guadagni più magari più grandi, ma più distanti nel tempo, sono scontati in maniera iperboliche e quindi sembrano meno importanti dell'immediato.
>
> E questo è il motivo per cui inevitabilmente, perché succede da quando esiste il software, un motivo ci sarà, a un certo punto quel pezzo di software diventa talmente incasinato che è difficile metterci le mani dentro perché per effetto del temporal discounting perché cerchiamo di risolvere un problema nel modo più veloce possibile. Questo ci dà un reward immediato, ma non tiene conto del fatto che sto probabilmente se sto lavorando in quel modo, sto introducendo del debito tecnico e così facendo sto facendo un danno al me stesso del futuro, a chi in futuro dovrà mettere le mani là dentro, perché questo futuro, appunto, viene scontato, viene considerato in maniera meno importante del presente.
>
> Questo ci spinge a risolvere problemi col classico *name hack* che si dice nel nostro gergo da nerd. Vuol dire ho risolto il problema, ma probabilmente non si doveva risolvere così, ma ho semplicemente scelto il modo più veloce per risolvere. Questo è una grossa influenza su come sviluppiamo software e probabilmente una delle grosse differenze tra una persona che sta iniziando da poco lavoro e una persona che ha più esperienza nel farlo, insomma.
>
> Chi ha più esperienza — e questo mi capita, chi ha più esperienza e ci metto una vita a fare le cose — vedo i ragazzetti che hanno 20 anni meno di me, che ci mettono la metà del mio tempo a fare le stesse cose. Questo deriva dal fatto perché io cerco di pensare non solo alla feature nell'immediato come la voglio fare, ma anche come quelle cose poi potrebbero evolvere nel futuro, come rendere quel software più modulare, più manutenibile, più leggibile, più a prova di tempo. Ecco, e per fare questo occorre più tempo e però è tempo ben speso.

---

## [01:32:15] CONSIGLI PER GLI JUNIOR

**Stefano Maestri**
> Allora, io di solito chiudo facendo un commento del perché in tutte le interviste come era come quello che sei oggi è legato al tuo gioco giocattolo preferito, ma lì è fin troppo facile. Cioè, mi hai detto lo Spectrum è lì da vedere che è legato a tutto il tuo modo di essere e quindi questa qui la salto, cioè l'ho detta, ma è stata veramente facile, no? Poi l'altro modo è che io che comincio a diventare anziano provo a chiudere sempre pensando ai giovani, sarà che i figli crescono e comincio a pensare al futuro loro.
>
> E quindi chiedo sempre all'ospite come fa oggi un ragazzo che si avvicina e vuole diventare Mario Fusco.

**Mario Fusco**
> Eh no, vabbè, Mario Fusco, insomma... che vuole fare il nostro lavoro, dai.

**Stefano Maestri**
> Che vuole fare il nostro lavoro, vabbè, vuole diventare Stefano Maestri, se preferisce, adesso l'ho detto così, ma vuole diventare un programmatore. Vuole diventare un programmatore, eh, e magari appunto un più il più professionale possibile nel mondo enterprise, eccetera, perché il mondo è cambiato. Noi ci mettevamo con lo ZX e cominciavamo a scrivere il codice. Oggi abbiam detto prima, è più importante leggerlo che scriverlo. E quindi come si fa? Come fa uno junior a diventare senior oggi? Perché è difficile, no? Io lo sento difficile.

**Mario Fusco**
> Mi fai una domanda veramente complicata perché è difficile per me immedesimarmici, nel senso che quando ho iniziato io a programmare il contesto era ovviamente completamente diverso e ho seguito un percorso che adesso non posso più consigliare il percorso che ho fatto io, semplicemente perché quel percorso non esiste più, insomma.
>
> Il percorso era giusto per capirsi, eh all'epoca chi ha la nostra età, se lo ricorda, ci compravamo le riviste col codice scritto su sulle pagine e copiavamo quel codice dalla rivista allo schermo alla tastiera e magari saltavamo una virgola e non funzionava niente. E poi imparando, scrivendo quel codice, copiandolo dalla rivista, capivamo cosa faceva e io ho imparato da lì, insomma.
>
> E ovviamente non è una cosa che posso più che posso più suggerire ed è anche né posso più suggerire iniziate a scrivere codice così senza alcun aiuto esterno perché non è più vero, insomma, c'è l'AI che si intromette e vuole scriverlo al posto tuo e questo lo vedo onestamente un problema per chi inizia questo lavoro. Credo che essere un junior in questo periodo storico, credo che approcciarsi a questo lavoro in questo periodo storico sia tutto sommato più difficile di quanto l'abbiamo fatto noi.

**Stefano Maestri**
> Sì, è molto diverso.

**Mario Fusco**
> Perché quando l'abbiamo fatto noi eri costretto ad imparare, ad imparare nel modo più duro possibile, sbattendoci la testa quanto più forte è possibile. Adesso ci sono queste scorciatoie offerte dalla dall'AI generativa che da una parte sembra che ti mettono in grado di fare le cose in maniera più veloce, però dall'altro ti mettono in grado di farlo pure senza capire al 100% quello che stai facendo e quello non va bene.
>
> Quindi torniamo al discorso di prima. Ok, me lo faccio generare il codice, ma poi però almeno leggilo, leggilo, capisci come funziona, riga per riga, fermati, debugga, aggiungi commenti dentro quando scopri come funziona. Non accettare passivamente quello che ti genera l'AI, perché certe volte potrebbe non funzionare e quando non funziona devi sapere dove mettere le mani, insomma.

**Stefano Maestri**
> Guarda, provo a mettertela giù così, dimmi come la vedi tu. È una cosa che ho sentito, non cito da chi perché non sono certissimo di da chi l'ho sentita e l'ho un po' anche rielaborata, ma in fondo, quando eravamo primitivi, uomini primitivi, eccetera, la forma fisica era una necessità perché dovevi cacciare, così come quando facevi il contadino che dovevi usare la zappa. Sempre di più, negli ultimi anni si va in palestra per scelta, per piacere, perché ci si vuole tenere in forma.
>
> E io ai forse ai giovani di oggi che vogliono avvicinarsi ad un lavoro di cervello, qualunque esso sia, dico che l'imparare deve essere una scelta e non prendere le scorciatoie. Magari prendere le scorciatoie per fare perché io non mi metto più a zappare per terra o andare a cacciare il mammut, ma vado in palestra perché mi voglio tenere in forma, perché voglio essere in grado di portar su dalle scale senza fare fatica la spesa quando avrò 70 anni. Forse è questo cambio di mindset, di nuovo, l'abbiamo nominato tante volte oggi, che bisogna provare a fare. Così lo lasciamo con un messaggio di speranza almeno, perché sennò tu mi hai detto è difficilissimo, non fatelo, basta.

**Mario Fusco**
> No, no, no. È che questi strumenti software sono diventati l'equivalente immateriale del trattore invece della Zappa. Adesso non si usa più, si usa il trattore, quindi col trattore fai meno fatica, non eserciti più i muscoli e se non vai in palestra a 70 anni le scale non le fai più, come dicevi.

**Stefano Maestri**
> E però se non sai neanche cosa stai piantando, non sai quello che è la pianta, anche col trattore fai i disastri. Quindi l'invito è imparate comunque con che cosa avete a che fare e poi usate tutti gli strumenti che vi facilitano la vita. Sempre il cervello acceso.

**Mario Fusco**
> Bravo, bravo. È la prima cosa che non è facilissima delle volte, ma è la prima cosa da fare, accendere il cervello al mattino.

**Stefano Maestri**
> Pensiero critico, esatto. Che si sente tanto nominare, ma è assolutamente quello che ci vuole.

**Mario Fusco**
> In maniera critica, ecco, questo volevo dire.

---

## [01:38:45] CONCLUSIONI

**Stefano Maestri**
> Io ti ringrazio. Io mi sono divertito in intervista. Spero ti sia divertito anche tu. Spero si sian divertiti tutti quanti e ancora grazie. In descrizione mettiamo tutte le le cose più o meno che abbiamo nominato, link, Mario, talk e non articoli. Andate a darci un'occhiata che sono sicuramente più completi di quanto siamo riusciti a dire in un'ora e mezza. E ovviamente io la marchetta la devo fare. Iscrivetevi al canale, mettete le stelline, le campanelline, eccetera eccetera eccetera. Ciao, grazie ancora. Grazie a tutti. Ciao.

**Mario Fusco**
> Grazie a te. Grazie a tutti, ciao.