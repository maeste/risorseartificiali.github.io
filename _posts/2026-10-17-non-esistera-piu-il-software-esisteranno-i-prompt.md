---
title: "Non esisterà più il software: esisteranno i prompt"
date: 2026-10-17
layout: episode
author_profile: true

episode_number: 76
episode_type: numerato
youtube_id: 1iG4T-AEMSA
description: >-
  Anthropic smantella Git e riscrive il versioning per i suoi agenti. Reverse Engineer Anything, gadget AI di Meta e Amazon, e la tesi: restano solo i prompt.
spotify_episode_id: 2T1IqGIJfUk14UrsWHBb5Y
# apple_episode_url: da aggiungere post-publish Apple (T+4-24h)
duration: PT1H8M

header:
  og_image: /assets/images/episodes/ep76.png

categories:
  - Puntate
tags:
  - AI Engineering
  - coding agents
  - prompt engineering
  - spec-driven development
  - Claude Code
  - Gemini
---

## **[00:00] Gemini 4, gadget AI e i rallentamenti**

**Stefano**

> Ciao a tutti, oggi altra puntata di Risorse Artificiali e parliamo di tutti i rallentamenti che ci sono stati. Quindi è uscito Gemini 4 Argon, anche a noi, e l'abbiamo potuto provare. È uscito Step 5 in preview, che è un modello open weight cinese. E poi cos'altro? Beh, e poi Meta che esce con Wonder e Wonderful. Quindi stanno rallentando tutti sull'uscita dei modelli, come abbiamo detto qualche settimana fa. E poi, no, comunque è una puntata di servizio anche perché così Paolo non pensa ai suoi guai e lo teniamo distratto pensando all'intelligenza artificiale, ma con le cose che piacciono a te. Ma hai visto che bello che Meta è uscito con i suoi gadget? L'hai vista quella cosa lì, che sono usciti con gli SDK per farsi le cosine in casa? Raccontaci dai, l'hai visto? C'hai giocato?

**Paolo Antinori**

> No, stavo sperando questa settimana che l'AI ci rubasse il lavoro, ma non me lo ruba mai il suo lavoro l'AI.

**Alessio**

> Nel senso che passeresti un po' di cose da fare, dici.

**Paolo Antinori**

> No, cioè sì, non lo so... un po' di persone a cui prestare attenzione li passerei. Allora, qual è, roba lì? Cioè del Tamagotchi stiamo parlando? Un'altra volta. Peraltro non ne ho trovato un altro, il Tamagotchi: ho trovato quello di mia figlia, questa settimana. C'è il mio e quello di mia figlia. Sì, non lo so, c'è il Tamagotchi parlante sopra che ho tirato fuori l'altro giorno.

**Stefano**

> Stiamo parlando di nuovo del Tamagotchi, ho trovato quello rosa, ma non possiamo rifare la copertina col Tamagotchi. Tra l'altro non è piaciuta la copertina con il Tamagotchi, ve lo dico intanto così invitiamo tutti a metterci i stellini, campanellini e commenti dappertutto, perché a Spotify non è piaciuta, non si sa bene perché. È piaciuta a YouTube, molto meno a Spotify, che ci ha pubblicato molto meno dal solito, infatti abbiamo meno ascolti dal solito. Cattivi quelli di Spotify, non gli piace il Tamagotchi: perché sono troppo giovani, perché non sanno cos'è, perché i fondatori di Spotify sono troppo giovani probabilmente. Va bene, dai, ti scuso, ti ho interrotto l'altra volta.

## **[02:24] Meta SDK: l'AI arriva su ESP32**

**Paolo Antinori**

> Allora, è una giornata difficile oggi. No, allora, onestamente non ne so granché perché non riesco a prendere seriamente questa faccenda. Di cosa stiamo parlando? Stiamo parlando che Meta ha deciso... ha probabilmente avuto una buona idea, devo dir la verità. L'ho sentito in un altro podcast e mi hanno fatto un pochettino cambiare la mia opinione, ovvero partendo dal presupposto della classica statistica, quella che dice quanti... la piramide inversa di Karpathy, chiamata così in un post che ha fatto recentemente, in cui fa vedere il numero di utilizzatori: persone che sanno che esiste la parola AI, e c'è un numero; poi persone che l'hanno mai usata; persone che la usano professionalmente; fino ad arrivare giù alle persone che hanno accesso ai modelli che vedremo più avanti, cioè proprio bleeding edge.

> E di questa statistica, ovviamente, potete immaginarlo, i numeri si dimezano: quelli che la usano per lavoro sono molto meno di quelli che pensate, così come sono molto meno quelli che l'hanno mai toccata, mia madre della situazione o l'utente medio. L'unico numero che mi è rimasto impresso, devo dire la verità, è quello delle persone che toccano i modelli bleeding edge. Ed è stata data una stima di 5000... umani.

> Che mi è sembrato molto piccolo come numero, tant'è che mi chiedo se a Karpathy qualcuno non gli abbia detto alcune informazioni, perché è vero, non c'è tantissima gente che lavora in questo spazio, ma tra i lab americani ufficiali e tutto ciò che probabilmente sta succedendo in Cina e chissà negli altri posti dove non ci hanno detto che sta succedendo, secondo me c'è qualche numero in più. Quindi non ho nessun motivo, ovviamente, per giustificare i miei numeri, sto sperando di azzeccare come un qualunque allenatore, ma ho la sensazione che 5000 sia un numero ridotto. Ad ogni modo, perché l'ho presa così larga? Perché da quelle osservazioni di Karpathy c'è un ragionamento interessante che io e Stefano, essendo immersi in questa cosa fino alle ginocchia, magari non vediamo più, ovvero l'AI percepita dall'uomo medio, dal mondo esterno.

**Stefano**

> È...

**Paolo Antinori**

> ...e l'AI percepita dall'uomo medio e il mondo esterno difficilmente passerà per Lince, per Claude Code, per un terminale di questo tipo. Magari non passa neanche per l'app web di Gemini: deve passare per qualcosa di più accattivante, qualcosa di più naturale, qualcosa che nessuno si è accorto che serva lì. E qualcuno ha osservato, come orientamento di Meta ma non solo loro, che i gadgettini stile Tamagotchi, metterti la faccettina kawaii sul gadget, potrebbe essere la maniera per interessare l'utente distratto a tutta la faccenda AI. Facevo fatica, un po', ad accettare questa cosa inizialmente, ma è verosimile, è possibile che questo effetto di cavallo di Troia che passa dal consumatore funzioni. Io avevo scommesso sul fatto che Apple ce l'avrebbe fatto succedere, ma Apple non ha dimostrato concreto interesse a farlo, loro per tutti quanti noi. E quindi qualcun altro ci sta provando. Diversamente, Meta ha messo fuori, per agganciarsi al loro framework, per usare i loro modelli, i loro servizi e per fargli fare la faccina carina sul desktop, l'ESP32 col monitor LCD che ti guardi da lì. Perlomeno io la racconto così questa storia. Tu come la raccontaresti? O che cosa mi sono perso?

**Stefano**

> Allora, io so che ha attirato la mia attenzione da nerd prima che da consumatore, perché ho già tirato fuori tre ESP32 che erano lì a fare niente, pronti a metterci la roba di Meta e a vedere se riesco ad utilizzarla. Poi non avrò mai il tempo di farlo, perché io vorrei fare 1500 cose, c'ho due robot di là che mi aspettano le mie attenzioni e che non gli do mai. E tante altre cose.

**Paolo Antinori**

> Scusami, a tal proposito, un Hermes che muove le braccia? Non ce l'hai ancora?

**Stefano**

> Un Hermes che muove le braccia, no. Ma ho visto un granchio che salta, che si può stampare in 3D, che sto facendo fatica tantissimo a non comprare. No, però, ha attirato la mia attenzione perché pur avendo fatto diventare i loro modelli non più open, come era la generazione di là, comunque continuano ad essere l'unica azienda americana di frontiera, insieme a Google, diciamo, che strizza l'occhio un po' all'open source. Escono con questo SDK per fare hardware open source e quindi creare cose che... Guarda, io ti dico la mia interpretazione personale, poi ci sta tutto quello che hai detto tu di Apple. A me quelli che più hanno deluso in questa ondata, almeno di AI, è stata Amazon. Perché con l'installato di Alexa che aveva sui... in tutte le case del mondo, più o meno, perché si parla di quasi un milione di... scusate, quasi un miliardo di Alexa installati in giro per il mondo. E sono usciti con Alexa Plus: subito mi ha proposto di installarlo, io subito ho installato ed è solo più lenta. Cioè nel senso, fa quello di prima ma più lenta: parla un po' meglio, va bene, però capisce un po' tutt'oggi comunque. E poter fare il gazzettino con la faccina, non faccina, ma è interessante ad esempio che usino i microfoni dell'ESP32, quelle double... che ne hanno due tipo i telefonini, eccetera, eccetera. Può essere una cosa interessante in divenire per fare open hardware e nel fare open hardware portare l'AI davvero un po' sulla scrivania dei consumatori. Poi quell'altro trend dei consumatori, secondo me, sono i vari bot che ci sono in giro: Grok bot a cui hanno dato molta spinta, adesso c'è quello di Muse, di Meta, e i dots di OpenAI, di cui abbiamo parlato in un'altra puntata. Quelli di OpenAI forse strizzano un po' di più l'occhio all'enterprise, ma adesso anche Gemini è arrivato con il suo Gemini Agent, oltre al modello di cui parliamo dopo. Non mi ricordo se l'abbiamo nominato la puntata scorsa, forse è arrivato Gemini Agent che fa quello che fanno gli altri dentro il workspace di Google. E quindi quella roba lì sta succedendo: come vedo usare Hermes, mia figlia e tu probabilmente, tua moglie, Paolo, sappiamo che quella lì forse sarà la cosa che ha presa, se arriva sul telefonino fatta bene. Può darsi che sia almeno a livello software quella lì. Se poi ci attacchi il gadgettino hardware può anche darsi che abbia più presa. Poi non so se voi avete altre opinioni, poi io ho un'opinione strettamente tecnica su quello.

**Alessio**

> Io... a me è venuto un dubbio, onestamente, quando ho visto l'SDK per questa cosa qua. Non è che in realtà non sanno veramente tanto tanto cosa farci con il grande pubblico e allora dicono: va bene, guarda, questo è il modo per utilizzarla, vediamo se ne esce qualche idea particolarmente interessante.

## **[10:34] Batteria, sensori e privacy dei gadget**

**Stefano**

> Sì, può essere, indubbiamente c'è quella componente lì. L'SDK, lo dico per gli ascoltatori, intanto è ESP32 che abbiamo già nominato 15 volte perché a me e Paolo piacciono molto quei chip lì, ma anche il Raspberry: tutti i Pi dallo Zero in su lo portano e quindi comunque si apre una serie di sviluppi interessanti. Poi l'aspetto più strettamente tecnico che nominavo prima è proprio questa cosa qua dell'avere... perché non il telefonino? Io mi sono chiesto tantissimo questa cosa: il telefonino sì, lo abbiamo tutti in tasca, e perché questi SDK non stanno uscendo soprattutto per Android? Lo stesso Google è un po' restio nell'uscita per Android. E alla fine la risposta che mi sono dato è che il tipo di spinta, giusta o sbagliata che sia, di successo o non di successo che possa essere, è di dispositivi always on, che ascoltano sempre, che sono sempre pronti a reagire. Questa roba consuma la batteria in una follia e i telefonini ad oggi non ce la fanno. Tant'è che spingono su ESP32 e Raspberry, che sono cose attaccate a spina. Mediamente poi ci puoi attaccare il power bank, ma...

**Paolo Antinori**

> Io non è che non sono d'accordo, ma ho delle interpretazioni diverse, nel senso: non sono sicuro di chi abbia ragione tra me e te, adesso te le illustro. La prima è: che cosa rappresenta un ESP32 per Meta? Un po' maligna questa mia interpretazione però: rappresenta una finestra nei cazzi tuoi di dove l'hai deployato, quell'oggetto lì. Me gli hanno fatto un pochettino... le storie per gli occhiali hanno messo questa settimana che registravano anche quando non dovevano registrare, un po' di cose così. Adesso stanno facendo finta di fare la roba giusta, ovvero: che la spegniamo con la roba, adesso che ci avete beccato, va bene, e allora vi regaliamo questa cosa che potete tenere attiva sempre. Un ESP32 costa 3 dollari, quindi l'idea è che ce l'avrete tutti e noi saremo ovunque grazie a questa cosa. È un po' l'obiettivo di Meta: abilitare sul pianeta sensori e cose che potrebbe avere un fine. Sto speculando, non lo so, però... ciao, no.

**Alessio**

> Io pensavo, da una cosa tangente a quello che dici tu: il campo di Android, in generale dei sistemi operativi per i cellulari, ormai è super regolamentato, ci sono un sacco di controlli, verifiche, eccetera. Quindi andare lì dentro ti espone a tutta una serie di verifiche e richiede una certa maturità e stabilità nel tempo del software che fai, eccetera. Magari questo è un modo per essere più liberi, per deployare subito qualcosa, tornare indietro, cancellarlo, dimenticarsi dei permessi che avresti dovuto chiedere e in realtà non hai chiesto, come dici tu?

**Stefano**

> Sono entrambe osservazioni azzeccate e di sicuro ci sono all'interno della sfaccettatura. Per rispondere alle preoccupazioni di Paolo e di chi l'ha ascoltato, diciamo anche che però con l'ESP32 potete fare anche il gadget per Hermes, tutto locale, tutto simpatico, tutto bravino, tutto bellino, ed essere voi al posto di Meta a fare i danni verso i vostri parenti, amici e chiunque lo comprerà.

**Paolo Antinori**

> Peraltro, scusami, una curiosità super nerd sugli ESP32: qualcuno infinitamente più nerd di noi ha fatto reverse engineering della scheda e delle capacità del processore e ha scoperto che c'era la possibilità di utilizzare uno dei componenti in una maniera non dichiarata dall'API, e quindi può essere utilizzato come trasmettitore radio su una frequenza ulteriormente diversa. Che non è un buco di sicurezza: proprio una capacità latente, diciamo, che era lì e nessuno l'aveva mai toccata, qualcuno l'ha reversata e adesso c'è una seconda ondata di utilizzo di ESP32 a fare cose in più che nessuno sapeva che si potevano fare. È una cosa di questa settimana. Scusami, volevo dirti un'altra cosa, sempre per rimanere in argomento e eventualmente vedere se ti faccio cambiare idea sulla tua posizione: stavi dicendo che ti aveva deluso... perché ti aspettavi l'Amazon Prime dell'AI e non è mai successo. In realtà ieri o il giorno prima hanno rilasciato i loro gadget AI. In questa settimana Amazon ha rilasciato un sacco di roba.

**Paolo Antinori**

> Sì, hanno rilasciato un sacco di roba: i nuovi Kindle, i nuovi Kindle Fire, i nuovi... non mi ricordo, qualcos'altro.

**Stefano**

> Sono perso.

**Paolo Antinori**

> E nella scaletta l'ho aggiunto io ieri sera. Nessuno la guarda.

**Alessio**

> Io ho guardato la scaletta tre minuti prima dell'inizio della puntata e quindi l'ho visto. Non so chi è peggio.

**Stefano**

> Io l'ho guardata e non l'ho vista. L'ho guardata anch'io tre minuti prima della...

**Paolo Antinori**

> Ho persino litigato col bot che ignorava la mia richiesta di censire il link, non l'hai visto. Comunque, sì.

**Alessio**

> Diceva: è troppo tardi per raggiungere la roba.

## **[15:57] Amazon Frontier: gadget e abbonamento**

**Paolo Antinori**

> Hanno rilasciato due gadget che nell'idea sono dei gadget always on, guarda caso una delle cose che citavi tu prima, per registrare voce e per fare trascrizione di note per conto tuo, quindi un assistente vocale passivo. Nell'utopia di quelli che uno se lo porta sempre con sé e lui sa sempre cosa è successo e gli puoi chiedere le cose in due formati diversi.

**Alessio**

> E sono quelli che uno lo può attaccare dietro al telefono?

**Paolo Antinori**

> Sì sì esatto. Uno si chiama Frontier, l'altro si chiama... B. In due formati diversi: quello Frontier, mi sembra, è un braccialettino tipo Fitbit, tipo performance monitor, ancora più fine: sembra un braccialetto per bambini, devo dire. A dire la verità non ho guardato a livello tecnico se presuppone che ci sia un telefono a distanza, immagino di sì, però... io non lo so, magari ritrasmette su Wi-Fi qualche cosa, e vanta credo due settimane di batteria o qualcosa del genere.

> E poi invece hanno copiato l'idea che si era già vista nascere nel mondo Apple con il loro MagSafe: dei gadget che si appiccicano sul retro del telefono. Questa stagione o la stagione scorsa è stato particolarmente popolare un piccolo lettore e-ink, come una specie di piccolo Kindle, che si appiccica dietro, cinese, open source, costa 50 dollari quindi affordabile, che appunto attacchi lì per fare... in più. Loro hanno copiato il modello: quindi c'è questa specie di schedina, sembra una batteria esterna, grosso poco più di una carta di credito, che fa lo stesso mestiere, sta appiccicata al telefono e monitora le cose. Quel discorso che dicevi tu, telefono sì, telefono no, la batteria: ufficialmente è un gadget con una batteria indipendente, quindi lo devi caricare indipendentemente dal resto, ma una delle due proposte è proprio di effettivamente schiaffarlo attaccato al telefono. Non lontano da quello che stavamo speculando prima.

**Stefano**

> Sì, è una cosa che si era già vista da un gadget di terza parte.

**Paolo Antinori**

> Era quello arancione che appena era uscito tutti lo volevano e poi erano rimasti delusi. Ti ricordi? No. Non era un Rabbit?

**Stefano**

> No, no, no, non il Rabbit. No, proprio una cosa da appiccicare dietro il telefono che promette di registrare sia le telefonate che la voce ambientale e di fare esattamente quelle cose lì. E la stessa cosa, anche quella del braccialetto, esistono due cose: una che ha annunciato Apple, che semplicemente usa l'Apple Watch per fare quella roba lì.

**Paolo Antinori**

> Uhm.

**Stefano**

> E l'altra è un gadget da attaccare all'interno del braccialetto di Apple Watch o di altri watch, cioè nella parte sotto, diciamo: se tu hai sul polso, nella parte sotto il polso, nella parte interna del braccio, metti questa cosa qua per registrare le cose. Sì, ho capito. E i gadget sono comunque interessanti secondo me. Io mi aspettavo qualcosa su Alexa che invece non è mai arrivato, perché avranno tanto installato...

**Paolo Antinori**

> La cosa curiosa, è... o curiosa o meglio, per me è stata curiosa visto che presto attenzione a queste faccende, è il modello di business di questi gadget di Amazon. I gadget costano poco, ma non pochissimo, meno di 100 dollari a prezzo pieno, saranno sempre in offerta come le classiche cose che Amazon vuole venderci, quindi non è tanto quello il punto. Quanto più il fatto che nel loro modello free hai accesso ai tuoi dati e ai tuoi recording fino a due settimane di tempo. Quindi la promessa di una memoria infinita in realtà è finita a due settimane. Se vuoi avere accesso alla memoria completa e l'integrazione con Alexa Plus e l'integrazione con Gmail e l'integrazione con un sacco di altre robe devi dargli 12 dollari al mese per il resto della tua vita. Non lo so, io sono perplesso sul fatto che l'idea di fare un altro nuovo abbonamento per una funzionalità di questo tipo sia qualcosa che attiri le persone. Poi ovviamente...

**Stefano**

> Sì.

**Paolo Antinori**

> ...tutto ciò dà fastidio all'inizio, diventa abitudine e quindi magari ci marciano su questa cosa. Però per una cosa di cui non sono sicuro che qualcuno l'abbia chiesta, non sono sicuro se si sfonderà.

**Stefano**

> Allora, quella lì è una cosa che tutti... Allora, diciamo, i laboratori di frontiera promuovono da tempo, ed è quella di avere una memoria digitale: sentire tutto quello che ti succede attorno, sentire e vedere, nell'idea degli occhiali, tutto quello che ti succede attorno e farne una memoria digitale che poi tu possa interrogare con embeddings, piuttosto che direttamente con LLM e così via. Allora io penso che sia abbastanza interessante come concetto, anche piuttosto difficile da realizzare nella sua forma completa, ma interessante molto. Vedere tutto quello che ti passa sullo schermo, per esempio, dai tuoi dispositivi, insieme a quello che senti attorno, mettere insieme i pezzi. Cioè, è una cosa che sul medio-lungo periodo potrebbe essere interessante, alla faccia della privacy, ovviamente.

**Paolo Antinori**

> Visione personale.

## **[22:08] Il vero business: i dati per il training**

**Stefano**

> È una cosa così. Però... non so, il fatto è che sono tanti, tanti dati. Sono tanti dati che hanno un valore grossissimo per chi li registra. E Amazon prova ad inserirsi in questo mercato, perché attenzione: tutti questi dispositivi, Meta, Amazon, eccetera, al di là di quello che eventualmente vi fanno pagare, il valore vero non è quello lì. Il valore è nei dati che raccolgono, perché dati per fare training dei modelli non ce n'è più in giro, di testuali, cioè abbiamo usato tutto quello che c'era. E ormai, nell'ultimo anno, leggevo una statistica... e c'è anche un paper su questo, che tra l'altro hanno discusso a Paper We Love, che è una community milanese gestita tra l'altro da due nostri ex colleghi, uno dei quali è anche stato qua in intervista, Daniele Zonca... può essere non pericoloso ma poco efficace trainare i modelli con dati generati dai modelli. E ormai c'è una statistica che nell'ultimo anno gran parte del testo generato che si trova su internet sia generato... ho letto statistiche oltre l'80%, e secondo me sono pure basse. Per cui il codice generato, testo generato, con cosa li trainiamo sti modelli? Con la voce, con il video che ci attorno. Poi sono anche dati diversi, perché la voce diventa transcript e diventa testo e quindi lo usi di nuovo per trainare modelli diciamo di linguaggio. Ma nel momento in cui comincia a raccogliere il video... facevamo vedere tante puntate fa, ormai, c'era, girava su Twitter... avevo visto io su Twitter, non è che girava tanto, di un modello in grado di modellare i movimenti delle mani. E facevamo vedere questo video con i classici puntini, come se fossi un robot, di come si muovono le tue mani, di queste mani che lavavano i piatti, facevano altro. E come dissi allora, agli occhiali a quello servono, alle big tech. Cioè, raccogliere i dati di come voi vi muovete e di come è il mondo attorno a voi per trainare i robot. Cioè, non ci vuole un genio a capirlo, che quei dati lì e quelle telecamere sempre accese sono interessanti per quello più che per la privacy e per altre cose che... che poi, una cosa che non si dice mai: andare a violare la privacy con un volume di dati così alto è costoso, e quindi non gli interessa. Gli interessa il dato grezzo perché gli serve per fare altro. E il video serve a trainare robot evidentemente, la voce serve a trainare modelli di linguaggio. E quindi la cosa che a me fa girare le scatole è dover pagare per regalarti pure i miei dati, capito? Se me li tengo due settimane e io con uno scritto ogni 13 giorni posso scaricarli e averli da un'altra parte, potrei anche comprarlo il dispositivo. Dico, se non c'è modo di scaricarli, no grazie, trovo un'alternativa, che ce ne sono mille: mi faccio l'ESP32 che mi registra tutto sul disco, proprio, o lo registro direttamente da uno dei miei dispositivi, computer o altro, perché poi in realtà i dati sono più ricchi della sua voce, quelli che interessano per fare la memoria.

**Alessio**

> O aspetto che qualcuno me lo faccia sul telefono, eccetera.

**Stefano**

> Sì, poi aggiungo anche un altro interesse che c'è per registrare quei dati, libri... che ce lo scriva qualcuno nei commenti dicendo: ve lo state dimenticando? No, semplicemente non l'avevamo detto. E ovviamente con gli embedding, i modelli di embedding come quelli di cui parlavamo l'ultima volta, tipo Gemma 2 Embedding che fa audio, video e testo proiettati nello stesso spazio, chiaramente è facilissimo: se ho tutto quello che stai dicendo in quel momento o in generale nella giornata, cogli embedding e andare a trovare in uno spazio dove ho proiettato delle pubblicità la pubblicità perfetta per quello di cui, per quello che ti interessa. Per cui credo che i due principali interessi da parte di Amazon e chi altro raccoglie queste cose sono quelli: dati in generale e dati per trainare modelli e dati per farti pubblicità. Guarda caso Meta e Amazon non sono gli ultimi dal punto di vista pubblicitario.

## **[28:00] World model, Rick and Morty e Matrix**

**Paolo Antinori**

> Mi hai fatto venire in mente uno scenario da puntata di Black Mirror o Rick and Morty. Voi guardate Rick and Morty o parlo da solo se vi dico questa cosa?

**Stefano**

> Sì sì, vai vai, e sì.

**Paolo Antinori**

> Sai che c'è la puntata in cui l'astronave di Rick smette di funzionare perché c'è la batteria a terra e lui, per fixarla, si scopre che fondamentalmente nella sua batteria c'è un micro universo di persone, di una società, un pianeta che vive soltanto per produrre energia e quella energia è la batteria della macchina di Rick. E poi, in stile Inception, si scopre che in quell'universo c'è un ulteriore altro sottouniverso della batteria per quell'altro...

**Stefano**

> Esatto, sì.

**Paolo Antinori**

> E la critica è fatta che tutte quelle persone servono solo per lavorare la batteria della macchina. Bisognerà applicare questa cosa alle generazioni dei dati: abbiamo finito i dati reali e quindi dobbiamo creare un universo fittizio, ma non artificiale, praticamente concreto, reale, in cui loro producono dati e i dati che noi succhiamo li usiamo per fare training.

**Stefano**

> E i world model, e applicare i world model al gaming vanno in quella direzione lì. Cioè genera un mondo virtuale dentro cui ti muovi felice con i tuoi occhiali smart, visore, quelli che ha lanciato Meta di recente. Non abbiamo parlato di quelli. Quelli sembrano una figata, un regalo di Natale.

**Paolo Antinori**

> A proposito di regali di Natale e di muoversi nel mondo: Tommy, nostro ospite e amico, che ha una versione vecchia degli occhiali di Meta... no, del visore di Meta, che io ci avrei sputato sopra e dopo che l'ho provato ho capito che c'ha un perché, si è comprato un tapirulan da scrivania, da veri nerd, che piuttosto che uscire a fare una passeggiata cammina sopra. E l'altro giorno, tutto contento, mi ha detto: ho avuto un'idea geniale, ho chiesto all'AI di crearmi un'idea per un progetto per unire il visore e il tapirulan. E quindi sappiate che da Tommy ci aspetteremo un world model per due oggetti superflui che lui ha in casa.

**Stefano**

> Interessante... No, tornando un secondo su quello di cui non abbiamo parlato: allora, il visore di Meta Quest, ma anche quello di Apple, è sto barracca che ti metti davanti alla faccia, pesante, insomma, che dopo un po' da fastidio: figata, ma dopo un po' da fastidio. Invece Meta, all'ultimo Connect, ha lanciato gli occhiali nuovi: sono gli occhiali visore, però non occhiali trasparenti, ma sono occhiali chiusi che indossi però come occhiali, che pesano 180 grammi se ricordo bene, e porti come occhiali veri e propri, e fa il mestiere del visore. Però sono occhiali chiusi, e al posto del visore vedi attraverso come con il Quest perché ha le telecamere e ti ricrea la trasparenza, diciamo, però fa tutte quelle cose tipo il monitor 6000 pollici dentro, muovi, queste cose qui un po' da Minority Report e simili. Che poi, intanto che siamo in tema di film, cartoni animati eccetera, io pensavo l'altro giorno: ma 1999, ma quanto cacchio è attuale oggi Matrix?

> No, Matrix...

**Paolo Antinori**

> Mi viene in mente la Matrix, ok.

**Stefano**

> È il primo. Cioè non siamo ancora... speriamo di non arriverci mai al...

**Paolo Antinori**

> Cioè è attuale perché Keanu Reeves ha ancora lo stesso aspetto e per questo è attuale.

**Stefano**

> Sì, anche quello si chiama patto col demonio, ma è diverso.

**Paolo Antinori**

> Ok.

**Stefano**

> No, no, vedi, è attuale perché, lascia stare che non produciamo energia ma produciamo dati per le macchine e questa cosa qua. Cioè, quando l'abbiamo vista nel '99 pensavamo alla fantascienza, così mai realizzabile, che una macchina creasse un mondo dentro cui ti muovi. In realtà i world model sono la versione super primordiale di quella roba lì e noi stiamo fornendo i dati alle macchine. Abbastanza attuale secondo me, lo trovo attuale dal punto di vista così della fantascienza. Poi attuale dal punto di vista dei tempi cinematografici? No, è stato il mio film preferito, l'ho fatto rivedere a mia figlia e lei chiaramente mi comunicava lentezza mentre lo vedeva.

**Alessio**

> Che stava vomitando.

**Stefano**

> No, vomitando no, perché a lei piace il genere, mi comunicava lentezza e devo dire che sono d'accordo con le... cioè, prima mezz'ora non succede niente in quel film. Abituati come siamo oggi ai ritmi di Inception o altro, prima mezz'ora succede poco o niente. Vabbè, stiamo divagando, dopo ci dicono che facciamo delle chiacchiere inutili, che i podcast non sono troppo lunghi. Torniamo in scaletta e Reverse Engineer Anything, se stiamo su quell'argomento...

## **[32:40] Reverse Engineer Anything: i cloni via AI**

**Paolo Antinori**

> Mmm.

**Stefano**

> ...dell'hardware e sappiamo di guardare nella direzione giusta quando parliamo con Paolo.

**Paolo Antinori**

> Non è un buon argomento per rimanere... esatto, però non è un buon argomento per non divagare: Reverse Engineer Anything, perché apre la porta di copiare qualunque cosa. Però ti dico la verità, volevo trascinarlo nella conversazione prima, quando ho trascinato Amazon, perché si collegava a qualcosa che avevi detto tu precedentemente. Avevi posto un po' di enfasi su come Meta e pochi altri siano quelli che si stiano muovendo nello spazio dell'open source e ci stiano rilasciando delle cose. E io volevo ribatterti: ma guarda, la comunità pare che non abbia più bisogno che ci open source-ino le cose, perché ce le open source-iamo da soli.

**Alessio**

> Fa da sé.

**Paolo Antinori**

> Quindi di cosa stiamo parlando? Stiamo parlando di Reverse Engineer Anything: è il trend repo su GitHub del mese di questa settimana, che ha fatto 30 mila... in una settimana, che offre qualcosa di affascinante, interessante e banalissimo dall'altro lato. Praticamente una collezione di skill e MCP server per prendere un prodotto software già esistente, puntarci la tua AI e farti... vedi quello? Rifammelo con il codice scritto da zero, anche se tu non sai niente di quella cosa lì. Come lo fa, a mio avviso, è relativamente poco interessante, perché è una collezione di tool pre-esistenti che chi fa il nostro mestiere, in una maniera o nell'altra, li ha usati. Io di sicuro ho fatto il reverse engineering di classi Java compilate perché mi interessava sapere che cosa c'era dentro, il kernel Linux e altre librerie che sono lì da sempre e molti non lo sanno, ma le lanci e vedi tutto quello che succede, quindi non era impossibile.

**Alessio**

> Sì, diciamo che devi essere un attimo pratico.

**Paolo Antinori**

> Devi essere, sì sì, devi essere pratico. Però appunto cose che chi era nel mestiere davvero e non per finta ha sempre fatto. Tant'è che io... ma adesso chiedo, sono curioso di sapere se voi avete la stessa esperienza: ma già mi era capitato di chiedere all'AI, senza Reverse Engineer Anything: per favore prendi quel jar che è una libreria Java, guardaci dentro, dimmi che cosa c'è.

**Stefano**

> Sì, sì.

**Paolo Antinori**

> Quindi avevamo già fatto reverse engineer, non anything, ma l'unica cosa che ci serviva a noi. Quindi anche lì è interessante, però questi l'hanno pacchettizzato bene: quindi a livello di developer experience l'hanno reso facile, c'hanno dei prompt, hanno fatto una libreria larga, sono andati a cercare tutti i tool, quelli che anche io ancora oggi non so che esistono, li hanno messi lì. E quindi se adesso tu vai da lui e gli dici: senti, sai che cosa vorrei? Un clone di Photoshop, lo fai. E l'hanno fatto. Parallelamente a Reverse Engineer Anything, questa settimana è stato trendy uno sviluppatore che ha mostrato il suo clone open source di tutta la suite di Adobe, e non so se è sempre lui o qualcun altro anche di quella di Microsoft Office. Quindi c'è il clone di... scritto in Rust, di tutte queste cose qua. Praticamente non ci si può più difendere oramai. Così un po' come forse...

**Alessio**

> Per la felicità dei legali comunque, perché poi dopo...

**Paolo Antinori**

> Sì, però lì sarà complicata la faccenda a mio avviso, perché ovviamente puoi copiare...

**Alessio**

> Punto per quello dico...

**Paolo Antinori**

> Sì, sì, però puoi copiare fino a un certo punto. Ma avevo imparato la lezione di quando Anthropic aveva open-sourcato per mezza giornata il codice di Claude Code e avevamo tutti quanti imparato che se tu portavi quel codice dal linguaggio originale a un altro linguaggio eri protetto, perché non era più la stessa cosa. E quindi boh, secondo me è una zona molto grigia lì. Tant'è che qualcuno... curiosamente questa roba è diventata così mainstream che il mio capo l'ha citata ieri durante la sua call, chiedendoci: avete visto sta roba? Ormai se facciamo software dobbiamo stare attenti che chiunque ci copi la roba. Quindi, piccola curiosità di lavoro: l'osservazione uscita in quella conversazione è che forse, più ancora che il codice e le idee algoritmiche, magari adesso si andranno ad aggrappare sui brevetti e sulla proprietà intellettuale dei pattern visuali. Non so se lo sapete, ma alcune cose...

**Alessio**

> Più lì volevo arrivare.

**Paolo Antinori**

> Sì, alcune cose sono brevettate, le più famose sono quelle di iPhone peraltro, che Android non poteva copiare, poi col tempo...

**Stefano**

> Sì.

**Paolo Antinori**

> Hanno...

**Stefano**

> Sì, sì, sì.

**Paolo Antinori**

> Chiuso un occhio anche due. Però appunto ci si deve chiedere se qualcuno che copia, che ne so, l'interfaccia di Excel... magari l'interfaccia di Excel o di Lotus prima di lui era brevettata da qualcuno e non si poteva farlo uguale, e tu la fai uguale e problemi tuoi. Poi quello di Office è un esempio strano perché OpenOffice e LibreOffice esistono da sempre, la suite di Adobe esisteva come skin su altri prodotti open source, quindi...

**Alessio**

> Sì, mettendo insieme tanta altra roba è qualcosa di simile, però...

**Paolo Antinori**

> Sì, però la morale, a mio avviso, di questa storia è quella fascia di popolazione tecnica ma non così tanto, quindi quelli che il computer lo usano ma non lo fanno per mestiere, come potremmo essere noi: prima magari pensava e diceva: mi riscrivo il mio clone di sta roba, lo chiedo all'AI di farlo. Adesso non deve essere neanche così vaga l'idea: vai lì, installi quella libreria di prompt e di skill, dici: sai quel progetto lì, me lo rifai per favore. E la gente lo rifarà in continuazione. Come si fa a tenere... Cioè, allora, tutto diventerà open source. Questa era una tesi che c'era già prima ancora delle AI, l'ho sentito all'università dal mio professore, che diceva che perenne, che tende a infinito, ogni progetto diventerà open source. Vero. Il problema è adesso non serve neanche più un Linus Torvalds senza una fidanzata che te lo scriva. E quindi è un nuovo mondo. Se avete una buona idea...

**Stefano**

> E allora, ma si aprono tante...

**Alessio**

> Dipende davvero cos'è open source, però attenzione.

**Paolo Antinori**

> Dici cosa intendi.

**Stefano**

> No, cosa intendi?

**Alessio**

> No, cioè va bene open source, però non con tutta la community attorno, eccetera, perché poi hai 2000 cloni, ognuno per i fatti suoi.

**Stefano**

> Sì, quello è un rischio, è anche un talk che avevamo più o meno preparato e che poi non abbiamo fatto a Everfest.

**Alessio**

> Forse faremo.

**Stefano**

> Magari faremo.

**Paolo Antinori**

> Non avete la community attorno.

**Stefano**

> Non ci hanno scelto... ci hanno scelto poi, ci sono sbagliato, ci hanno scelto un altro e abbiamo fatto un altro, comunque divertente, simpatico, sugli standard negli agenti, nel senso un po' più di nicchia se vogliamo.

**Stefano**

> È rischioso dal punto di vista dell'open source, ma come la intendiamo questa cosa? Perché in realtà i mille cloni non sono la stessa cosa del progetto unico, perché non c'è condivisione di conoscenze e di idee più che di codice. Resto sul fatto che gli artefatti, che poi è un po' quello che dico sempre del codice: cioè il punto non è il codice, il punto è il PRD, oggi lo chiamiamo così, è l'idea del software, è l'essere builder più che l'essere sviluppatori. Ma d'altro canto, però, se non c'è condivisione non c'è cross-contaminazione tra le persone e i progetti diventano tanti cloni ma difficilmente cresceranno. Poi ci sarà quello che cresce un po' più degli altri. E l'altro rischio è che nessuno di questi progetti venga mantenuto. Cioè io mi accorgo banalmente con i nostri progetti: prendi il solito Lince che cito sempre, ho 7000 idee per migliorarlo, probabilmente un paio valide che andrebbero fatte, e non ho il tempo di farle, soprattutto non ho il tempo di socializzarle. Per cui: fa le stesse cose che fa Herdra? Sì, tendenzialmente sì. Herdra ha più persone dedicate ai social? Sì, io no. E Herdra fa milioni di stelline, e il nostro e i mille altri uguali, ce ne saranno... non so. Questo continuare a clonare senza condividere potrebbe arrivare ad un punto di rottura per cui bisogna provare a tornare indietro in un altro modo, a condividere in un altro modo. Non lo so, sinceramente non ho sviluppato un'opinione vera.

## **[41:44] Anthropic smantella Git: ecco Xeon**

**Paolo Antinori**

> Ho due commenti su questa cosa. Il primo: tra poco celebreremo probabilmente il funerale di AntiVocale, perché ho scoperto che nella versione beta di WhatsApp stanno portando la funzionalità di trascrizione in italiano direttamente. Quindi per il mercato italiano non servirà più, più o meno. Ed era una scusa per dire questa cosa, ma è legata a quello che stavi dicendo, nel senso: clonare, prendere ispirazione a destra e a sinistra va da sé. Cioè, noi abbiamo fatto un software che risolveva un problema finché il problema non c'era. Se il problema andrà via verrà assorbito e quindi magari non avrà più senso questa cosa.

> Il secondo commento su facciamo community, non facciamo community, facciamo open source si lega a un'altra interessante news di questa settimana che non so se avete visto, in cui Anthropic ha annunciato che hanno smantellato Git internamente e hanno iniziato ad utilizzare un software al loro interno per il versioning che si chiama Xeon, scritto Xeon. Ho letto un pochettino di cose sull'argomento per capire se fosse super interessante oppure no, perché ovviamente Anthropic te la vende come l'abbiano inventata solo loro. Fun fact: ci sono dei paper di Microsoft, di Meta e di Google in cui tutti quanti loro hanno fatto la stessa identica cosa, perché Git, per come è pensato, non scala bene: è pensato per darti un clone totale offline, tutto quanto, e quando fai alti volumi non ti va bene. Questa cosa già si sapeva un pochettino, questa cosa qui da Anthropic è più enfatizzata che mai, perché hanno dei numeri spaventosi, visto che tutto il loro codice è scritto dagli agenti, e quindi avevano esasperato ulteriormente ciò che gli altri shop avevano sperimentato su grosso bacino umano, loro su un grosso bacino artificiale, quindi non reggeva più questa cosa. E quindi si sono riscritti il software. Il software non è così interessante da parlarne, nel senso che fondamentalmente dicono: può essere meno distribuito di quanto non sia Git, perché non ha quel problema, facciamo più client-server, diventa più veloce, bla bla bla. Comunque hanno fatto un'altra variante che avevano comunque già fatto anche altri big, quindi anche qui scoperta dell'acqua calda. La cosa interessante a mio avviso di tutta questa storia è questa finale qua: qualcuno ha chiesto ad Anthropic: bello, quindi adesso ce lo mettete open source? E loro hanno detto no. E facendo come no? No, cioè nel senso: noi non riteniamo che la nostra soluzione sia significativa da essere open source e mantenerla. Quello che ci auguriamo invece è che, con i dettagli della soluzione che abbiamo messo fuori, e peraltro se non sbaglio oggi è attesa la versione estesa della documentazione, qualcuno prenda questa idea e la utilizzi per importare il concetto dentro Git stesso. Quindi loro si auspicano un'estensione di Git che vada ad includere queste funzionalità e che non necessiti della loro implementazione. Che da un lato è una mezza storia di pigrizia: hanno detto: no, non lo scriviamo noi il codice, ve lo scrivete voi. Grazie. Dall'altro è una volontà di...

**Alessio**

> Perché i nostri agenti non sanno bene gli internals di Git, quindi li facciamo fare a qualcun altro.

**Paolo Antinori**

> No, non so, da un lato l'ho interpretata così, dicendo... no, no, cioè: noi ce l'abbiamo la soluzione, ma trovatevelo voi, fatti vostri. Ma dall'altro lato è più incoraggiare a... Sì. Tutto vero, tutto vero.

**Stefano**

> E usate token, grazie, già che ci siete, scrivetela con degli agenti usando token.

**Paolo Antinori**

> Ma l'altra è anche cercare di dire: sentite, siete già tutti d'accordo a farlo così? Continuate a farlo così, migliorate quello che avete. E quindi questa doppia relazione con l'open source da parte di Anthropic.

## **[45:45] Solo prompt: la fine del software?**

**Stefano**

> Che poi è direzione, per i più nerd, è poi la direzione di Mercurial, che ha sempre detto che Git è troppo centralizzato, bisogna farla più distribuita, che poi è quella che usa Meta, credo, una versione modificata di Mercurial.

**Paolo Antinori**

> Sì, sì.

**Stefano**

> Però poi, più in generale, è quello lì il trend del farsi software: risolvere il proprio caso specifico e poi non lo so, sì, diventerà tutto open source da un lato, diventerà tutto estremamente verticale dall'altro. Forse con N che tende a infinito non esiste più, qualcuno lo dice: Karpathy mi pare l'avesse detto, e anche qualcuno di Gemini, non so se un altro, che dicono: si arriverà ad un punto in cui i modelli sono così efficienti e così efficaci nel fare software che non esisterà più il software, esisteranno i prompt. Io: questo problema, fammi una cosa che me lo risolva, ora. Che va tutto nella direzione di app, UI, MCP apps, quelle cose lì che portano l'applicazione dentro ai modelli. OpenAI al DevDay hanno annunciato questa cosa, "intelligent UI", che è quella roba qui MCP apps, più o meno. Argon, che è il nuovo... così parliamo anche dei modelli, è il nuovo modello di Gemini, fa esattamente la stessa cosa: l'ho provato un po' in questi giorni che c'è nel mio abbonamento Gemini, nella versione web, quando tu arrivi ad una certa complessità di discorso, anziché darti la risposta testuale ti genera una mini app in line con cui tu puoi giocare per cambiare parametri e capire meglio il concetto. È un po' il trend su cui si sta andando, per spiegare le cose. Io immagino che con N che tende a infinito questa cosa si portata all'estremo, per cui: ho questo problema, ti do il prompt, dammi una cosa che me lo risolva. A quel punto i sorgenti non... torniamo al discorso già fatto altre volte: l'artefatto codice diventa addirittura meno interessante o non più significativo da conservare sul Git di turno. E ti sto estremizzando.

**Paolo Antinori**

> Sembra che stai parlando del computer di bordo di Star Trek dell'Enterprise che ti genera l'universo.

**Stefano**

> Ma sì, sì, ovviamente sto estremizzando, sto portando all'estremo il concetto, però almeno per cose piccole, non dico per la suite di Adobe che magari migliora nel tempo, ma per cose piccole, che oggi se ne vedono tante in giro, di cose piccole che risolvono il problema specifico... forse non esisterà neanche più l'artefatto conservato, ma esisterà soltanto il prompt. Posso immaginare.

**Paolo Antinori**

> Beh, io sono vicino a questa tematica per le cose che seguo per lavoro e quindi ho avuto queste conversazioni, prendendola da un punto di vista vicino ma non esattamente identico, che è quello dello spec-driven development: di scrivere software in funzione delle specifiche formali. Nel caso dello spec-driven, quindi, non lo so, c'è un'interfaccia, un form, qualunque cosa rappresenti un'interfaccia statica con le informazioni lì. Di solito sono così statiche che la maniera per comunicare e interagire con esse, quindi crearci del software attorno che posso scrivere e leggerle, è sempre quella e quindi viene facilmente generato tutto quel codice per interagire con quell'elemento. Tant'è che ho avuto conversazioni che parlavano proprio di questo, che dicevano: ma se il codice lo generiamo, dobbiamo versionarlo o invece l'unica cosa che dobbiamo versionare è la specifica? Perché abbiamo una garanzia che c'è uno a uno tra l'input e l'output di questa cosa. E quello che stai dicendo tu è simile, se non che include il...

**Stefano**

> Sì.

**Paolo Antinori**

> ...concetto di prompt anziché della spec, e magari non tocca direttamente il concetto intrinseco di variabilità, aleatorietà di come un modello ti dia due risposte diverse a fronte della stessa identica richiesta.

**Stefano**

> Sì, esatto. Infatti è un po' portato all'estremo, e quando, come dicevo prima, diventeranno efficienti... la sufficienza, per cui dato il prompt in pochi secondi c'è l'app, ed efficacia sufficiente per riprodurre il risultato desiderato. Magari in modo diverso, ma il risultato finale è il desiderato, descritto: la migliore interpretazione di quelle che si chiamano intention da parte del...

**Paolo Antinori**

> Quindi stai per dirmi che sei tentato...

**Stefano**

> Vuoi.

**Paolo Antinori**

> ...di dare una seconda chance al benchmark dei modelli di California Games che abbiamo, per vedere se una seconda richiesta possa venire meglio della prima?

**Stefano**

> Allora, io in realtà l'ho provata questa cosa di fare più richieste: mediamente su quella richiesta lì non cambia tantissimo il risultato, dettagli nell'SVG, ma bene o male rigenerano la stessa cosa, bella o schifosa. A questo proposito parliamo dei modelli che sono usciti.

**Alessio**

> Che comunque è anche una questione di temperature.

## **[52:30] Benchmark skateboard: Step 5 e Wonder**

**Stefano**

> Ok, sì, no, a parità di configurazione. Io faccio girare le cose, lo dico anche per gli ascoltatori: quando faccio girare la cosa dello skateboard, sui modelli distribuiti da OpenRouter, lo faccio volutamente lasciando tutto a default. Quindi il modo in cui il fornitore del servizio ha deciso di fornire quel servizio: mediamente con thinking effort a medium e con temperatura 0.7, ho visto, mediamente, poi qualcuno mette 0.8, qualcuno mette effort high. Però io non vado a toccare i default per scelta, perché...

**Alessio**

> Manca...

**Stefano**

> ...poi non c'è un match preciso: cambia il modello, l'effort non ha sempre la stessa scala. Bene o male tutti hanno low, medium, high, ma a volte ci sono cose sopra ad high. E quindi cambia la scala: cosa vuol dire x-high su Opus, che GLM non ce l'ha? Allora sto al default che hanno scelto i fornitori e basta.

**Alessio**

> Sì, l'altra piccola digressione: se usi i modelli locali, direi, vai a vedere le guide di Unsloth su come servire i modelli locali, quelli più famosi: loro addirittura ti consigliano dei setup differenti di temperature, di top-k, eccetera, a seconda del tipo di task che vuoi servire. Cioè, se ti serve per fare coding, se ti serve per fare chat. E quindi magari la scelta che ha fatto il provider nel caso del modello servito in cloud è pensata per un determinato tipo di utilizzo, e comunque fa tuning sul tipo di modello specifico. Magari lo stesso valore di temperature per un modello non va bene per un altro.

**Stefano**

> No, esatto, esatto. Quindi alla fine io mi affido ai default per fare un confronto che non può mai essere paritetico, ma che sia almeno accettabile. Perché sennò se mi metto a giocare con tutti i parametri, a parte che spendo tutto lo stipendio perché devo fare dieci le richieste per ogni modello, e poi lascio il tempo che trovo, bisogna diventare esperti di ogni modello per andare a trovare le configurazioni ideali, ma non è questo lo scopo di questo diciamo benchmark, prova visuale, che abbiamo provato a fare.

**Alessio**

> Detto questo, però, il fatto che ci sia più o meno convergenza secondo me è positivo, perché vuol dire che i risultati che otteniamo non sono così completamente...

**Stefano**

> No...

**Alessio**

> ...casuali.

**Stefano**

> Certo, certo, quello sicuramente. Modelli 3 non ne abbiamo nominati all'inizio, manteniamo le promesse, anche se siamo alla fine e siamo diventati lunghi, purtroppo: avete cambiato canale? Ma tre modelli sono usciti. Step 5 Preview, modello cinese, 600... 670 billion... aiutami Alessio, magari apro le cose sulle caratteristiche dei modelli open weight che dicono fare molto bene nel coding, da benchmark, eccetera, eccetera. I miei risultati non sono stati entusiasmanti, spoiler, comincio a condividere. Allora questo qua è Step 5 constraint: non è esattamente quello che gli ho chiesto.

**Alessio**

> No, un panettone, no?

**Paolo Antinori**

> Molto natalizio!

**Stefano**

> Questo qua è Step 5 minimal. L'SVG è anche corretto...

**Paolo Antinori**

> Proprio minimal.

**Stefano**

> ...però minimal.

**Paolo Antinori**

> Prova di zoomare.

**Stefano**

> Invece è uscito Wonder, e Wonderful. Wonderful però non è disponibile su OpenRouter, è disponibile solo Wonder normale. E allora ho provato Wonder, che è quello di Meta, che non fa un brutto lavoro. La fisica no, nel senso che rallenta quando deve staccarsi da terra, per quel poco che so io non funziona così la fisica. Però almeno c'è un halfpipe e c'è uno skateboarder. Il Wonder minimal, a parte che c'è un errore però alla fine riesce a fare il rendering, è quasi meglio di quello dell'altro, secondo me.

**Alessio**

> Ma lo sappiamo che il minimal è realtà più facile del constraint, perché lascia più libertà di...

**Stefano**

> E però di solito i modelli di frontiera, quelli tipo... così fanno meglio sul constraint, soprattutto per la fisica, perché hanno più spiegazioni per la fisica. Minimal di Gemini...

**Alessio**

> E beh.

**Stefano**

> ...che gli si stacca la testa, eccetera, però lo sfondo è bello. E constraint ha delle strane idee di quello che può fare uno skateboarder, nel senso che magari uno bravo bravo ce la fa a quella cosa lì, sembra assai difficile. Tanto che mi sono chiesto se il nostro benchmark è troppo cattivo, nel senso che forse è molto difficile per i modelli attuali, cioè... che hanno fatto un lavoro fatto veramente bene sono solo Astra e Fable. Però guardando avanti ci arriveremo.

> E poi sono usciti comunque questi modelli: è il primo modello che Meta ha presentato come modello di frontiera, benchmark importanti, comunque non a livello di Astra e Fable nominati prima, ma comunque benchmark importanti, costi più bassi, ed è la base di tutte le cose che abbiamo raccontato prima dei vari agenti news che loro hanno lanciato, e saranno la base dei gadget che Paolo farà con l'ESP32.

**Alessio**

> Benchmark non a livello di Fable, ma comunque una progressione abbastanza...

**Stefano**

> Comunque è ottima, no no no, ottima.

**Alessio**

> ...non indifferente secondo dove erano sei mesi fa.

**Stefano**

> Beh certo, sì. Niente da dire: con il nuovo laboratorio che loro chiamano Superintelligence sta dando i suoi risultati. Invece, per quanto riguarda Argon, è il Gemini 4 che tanto si è aspettato. Allora... beh, abbiamo visto il risultato, non è entusiasmante, però anche i benchmark sono notevoli, sia per il coding che per tutto il resto. È il tentativo di Google di rientrare nella corsa al coding. Ma Google guarda sempre al consumer, dal mio punto di vista, tant'è che anche la modalità vocale è molto molto migliorata, molto bella la modalità vocale adesso.

## **[58:47] Gemini 4 Argon: coding, consumer e 3D**

**Paolo Antinori**

> Come prima... non dico che non hai ragione, ma ti voglio dare un punto di vista diverso, per poi pensare insieme a quale sia la risposta. Ho guardato un video ufficiale di Google che presentava Argon e avevano uno shrine di 10 progetti per dire come usarlo, per menarsela: dai, vediamo cosa hanno fatto. Non so se l'avete visto anche voi. Curioso perché il tema era praticamente uno solo in tutto il video, ed era su come Argon fosse molto bravo a disegnare e a fare modellazione 3D di oggetti. Praticamente tutti i 10 progetti erano quasi tutti la stessa cosa, con quello più carino, curioso se volete, che era che gli si può chiedere di fare dei modelli 3D per la stampante 3D, e quindi tu a tutti gli effetti puoi realizzare degli oggetti chiedendo al modello. Però erano tutti... tantissimo incentrati su quella cosa lì, e mi sembrava o una bizzarra scelta di marketing per dire: vi dobbiamo convincere di questa cosa e quindi continuiamo a bombardarvi, o non faceva altre cose degne di nota, mi sembra strano. Oppure c'è una qualche strategia a medio-lungo termine che io non ho ancora decifrato. Ma mi ha colpito tantissimo, come ci dicessero che Argon era bravo a fare quello e... ti cazzi, come al solito.

**Stefano**

> Allora, io credo che il punto sia che un po' tutti i modelli stanno spingendo sul discorso del 3D. Da Sol in avanti, direi, è diventato un trend far vedere le modellazioni 3D come la cosa più complessa che i modelli sanno fare. Parlavo, tra l'altro, con un ragazzo di uno dei meetup a cui partecipo a Milano, Socratic AI: era nella fattispecie questo meetup, che peraltro consiglio a chi è a Milano di darci un'occhiata perché è un bel evento, sempre... che è esperto per passione, diciamo, di modellazione 3D e fa AI engineer in una startup milanese, quindi capisce di entrambi gli aspetti. E lui mi diceva che oggi i migliori modelli fanno molto meglio di lui, che ha un appassionato evoluto di modellazione 3D, ma evoluto al punto da farsi cose... cioè mi ha fatto vedere alcune cose che aveva fatto lui a mano, assolutamente di dettaglio, minimo, aveva modellato un motore, nello specifico, per cui... C'è sicuramente questo trend dei modelli che fanno 3D, secondo me anche che fanno vedere quello, perché è una cosa che la maggior parte delle persone, a parte questo qua, non sa fare. Cioè: mi metti davanti una cosa che fa modellazione 3D e ti dico: bravo, bello questo software, preferivo scrivere a codice. Ed è una cosa impressionante, cioè un po' se vuoi lo skateboarder on steroid: far vedere una cosa che visualmente colpisce tantissimo. Perché vedere questo... c'è un video dell'ultimo Opus 5.5 che è bravissimo a fare le modellazioni 3D di un motore di un aereo disegnato, che poi lo scompone in tutte le parti, lo ruota, eccetera, eccetera, che è oggettivamente impressionante. Io credo che sia più il trend di farlo vedere come il compito difficilissimo, che non: è più bravo degli altri. Cioè: è bravo a fare solo quello? Vogliono far vedere che sono più bravi degli altri. Siccome su X è pieno di sti video in 3D...

**Paolo Antinori**

> Magari un insieme delle due cose, nel senso: mi stupiva solo che appunto fosse monotematica, il carosello, ecco quello mi ha fatto strano. Poi...

**Stefano**

> No, no, quello sì, quello sì.

**Paolo Antinori**

> ...abitando noi nella Pianura Padana, in realtà, ma c'è parte delle industrie che danno prodotto interno lordo che sono basate su modellazione e robe di questo tipo, quindi in realtà è anche applicabile qua.

**Stefano**

> Sì.

**Paolo Antinori**

> Cioè non è una roba da buttare via. Non capisco se Google sta cercando di essere appealing per la piccola-media impresa o che cosa.

**Stefano**

> Può essere anche quello, ovviamente. E poi da lì passa anche la modellazione per i mondi, che dicevamo prima: world model, eccetera, eccetera. Quindi comunque ha una sua nicchia di applicabilità. Io invece l'ho provato con le cose che ti presentano internamente, quella prova: Gemini, fai questa cosa, e tu clicchi e lui c'ha già il prompt. C'era un meal planner che devo dire che mi ha abbastanza colpito: genera quella cosa che dicevo prima, la mini app che tu utilizzi al volo, e... fatta bene, bella, niente da dire.

**Paolo Antinori**

> Io ho girato agli amici l'esempio che diceva: ti facciamo vedere come fare all'uncinetto una borsa.

**Stefano**

> Sì, era l'altro esempio, però non sono in grado di capire se sei giusto o sbagliato, quindi non l'ho aperto. E poi, altro? No beh, io l'ho usato per fare brainstorming, brainstorming su un'idea di progetti e cose così. Ed esperienza simile a quella che ho avuto con Astra o Fable: cioè profondità di ragionamento, di cose che io non avevo pensato, ben supportate dai fatti, ben supportata dalla ricerca: sono andato a cercare loro, santo cielo, su internet. Però, un modello di frontiera, magari sul coding se guardo i benchmark gli altri sono ancora pezzo meglio, però forse non è neanche quella cosa lì che loro vogliono fare. L'hanno subito integrato in Gemini Live, che è quella cosa, ricordiamo agli ascoltatori, in cui tu punti sul telefono con la telecamera, parli, e rispetto a quello che dici, quello che lui vede dalla telecamera, eccetera, ti dà indicazioni. Nella fattispecie l'ho provato per montare una cosa sulla bicicletta, che io non so fare, e mi ha aiutato molto, provato per vero. E quindi, cioè, loro puntano secondo me al consumer: Gemini Live è chiaramente un esperimento fatto per poi mettere sugli occhiali, perché è esattamente quella roba lì. Io penso che puntino più a quel mercato lì che non al mercato degli sviluppatori. Cioè, loro il codice interessa, come dicevo prima, non per l'artefatto finale, ma per essere in grado di generare l'artefatto finale, inteso come applicazione e non come codice in sé. Quindi che il codice sia bello, brutto, positivo, negativo, li interessa fino a un certo punto.

**Paolo Antinori**

> Dobbiamo chiudere perché Alessio è scappato.

**Stefano**

> Alessio è scappato... perché siamo andati troppo lunghi? Forse. È che ci mettono i commenti dicendo che siamo troppo lunghi, potrebbe benissimo essere lui. Va bene, salutiamo.

**Paolo Antinori**

> Ce l'ho mai pensato, è facile che sia lui, sì...

**Stefano**

> Tutti, ringraziamo tutti: mettete stelline, campanelline, tantissimi commenti, diffondete a parenti e amici, diffondete sui social, fate tutto quello che volete di noi e soprattutto di Alessio che non c'è più. Ciao a tutti.

**Paolo Antinori**

> Ciao.
