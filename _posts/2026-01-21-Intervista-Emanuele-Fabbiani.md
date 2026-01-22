---
title: "Intervista a Emanuele Fabbiani: ricerca e startup AI; allucinazioni ed explainability degli LLM"
categories:
  - Interviste
tags:

  - AI
  - LLM
  - Ricerca
layout: single
author_profile: true
---


{% include video id="vdXPo2tkmqs" provider="youtube" %}

👉 [Ascolta su Spotify](https://open.spotify.com/show/16dTKEEtKkIzhr1JJNMmSF?si=900902f2dca8442e)<br/>
👉 [Guarda su YouTube](https://www.youtube.com/channel/UCYQgzIby7QHkXBonTWk-2Fg)<br/>
👉 [Segui su LinkedIn](https://www.linkedin.com/company/risorseartificiali)<br/>

## Introduzione

**Stefano Maestri**

> Ciao a tutte e tutti e bentornati alle nostre interviste. Siamo qui con un gradito ospite. Io al solito non lo presento, non vi dico chi è, l'avrete già letto, ma fa nulla. Gli faccio la domanda rompighiaccio di rito che è: "Qual è il tuo gioco o giocattolo preferito oggi o quando eri bambino?" Mi piace molto questa cosa di capire con cosa giocavate o giocate.

**Emanuele Fabbiani**

> Ciao Stefano, grazie mille per l'invito. Guarda, sarò banale e tradizionale, ma il mio giocattolo preferito quando ero piccolo era un trenino. Era un trenino elettrico con cui ho giocato per anni. Davvero mi divertivo un sacco a vederlo passare sulle rotaie.

**Stefano Maestri**

> Bello, interessante. Allora, il nostro ospite è Emanuele Fabbiani e intanto benvenuto Lele. A te la parola per raccontarci in due minuti chi sei e quali sono le tue esperienze nel mondo tech o delle IA. Il nostro è un podcast sulle IA, ma insomma ci allarghiamo anche molto su altro.

## Il percorso di Emanuele Fabbiani

**Emanuele Fabbiani**

> Allora, founder di Extreme e Ready, due aziende fondate rispettivamente nel 2018 e 2024 e nel settembre 2025 acquisite entrambe al 100% da TeamSystem. In Extreme ero Head of AI e per alcuni anni sono stato CEO; in Ready ero CEO e Head of AI dall'inizio. Sono un ricercatore nel campo dell'intelligenza artificiale, ho conseguito il dottorato dall'Università di Pavia, sono stato per alcuni mesi in visiting all'EPFL di Losanna e attualmente insegno il corso di Intelligenza Artificiale alla Cattolica di Milano nella magistrale di Management e Innovazione. Di professione sono un ingegnere, laurea in Ingegneria dell'Automazione all'Università di Pavia e da lì in poi mi sono sempre divertito a programmare, prima nell'ambito di quella che si chiamava Data Science e adesso nel campo delle IA.

**Stefano Maestri**

> Quindi ti definisci un ingegnere del software o un ingegnere AI? Sono curioso se fai questa distinzione.

**Emanuele Fabbiani**

> Non credo che ci sia questa distinzione, nel senso che alla fine tutto quello che si fa con i dati, con i modelli, è software. Ci sono poche organizzazioni al mondo in cui si può fare ricerca esclusivamente sulla teoria. Sicuramente quelle in cui ho lavorato io non sono tra queste e quindi gioco forza, chi fa AI deve scrivere software e deve farlo nel modo migliore possibile.

**Stefano Maestri**

> Certo. Per i nostri ascoltatori, ci racconti anche che cosa facevano e fanno in realtà? Al di là dell'acquisizione, immagino che abbiate conservato una vostra identità, Extreme e Ready.

**Emanuele Fabbiani**

> Sì, Ready è un software di copywriting prevalentemente per grandi aziende. Adesso con TeamSystem lo adatteremo anche per piccole medie imprese. Serviva per scrivere comunicazioni verso la clientela in modo tale che fossero allineate a una brand persona. Ovviamente tutte le comunicazioni vengono generate da IA generativa. La sfida è stata quella di spingere i modelli a produrre contenuto con un certo tono di voce, seguendo certe regole stilistiche e così via. Extreme è sempre stata prevalentemente una società di consulenza. Noi realizzavamo prodotti digitali e soluzioni di IA per scaleup e grandi aziende. Con TeamSystem, nei prossimi anni ci concentreremo di più sul realizzare prodotti a marchio nostro, a marchio Extreme o TeamSystem, che porteremo sul mercato con il target di TeamSystem, quindi piccole medie imprese e professionisti.

## Ricerca vs startup: una falsa dicotomia

**Stefano Maestri**

> Bene, grazie. Allora partiamo un po' dall'inizio. Ci hai detto che Extreme è stata fondata nel 2018. Nello stesso anno tu sei anche un candidato PhD per andare a fare il ricercatore in un posto importante, l'EPFL. Sei stato in qualche modo a un bivio? Hai dovuto scegliere o sei riuscito a conciliare bene le due cose? Com'è andato quel momento? È stato difficile per te dover scegliere?

**Emanuele Fabbiani**

> No, perché non ho scelto. Ho scelto di non scegliere. Devo dire, con il senno di poi è stato un errore, è una cosa che non rifarei e che non consiglio a nessuno, perché cercare di intraprendere contemporaneamente due strade così impegnative significa non poter percorrere in modo ottimale nessuna delle due. Io mi sono ritrovato nei tre anni di dottorato costantemente a dover scegliere se dedicare il mio tempo all'azienda o alla ricerca, e sceglievo costantemente l'azienda. Quindi ho la consapevolezza di non aver espresso durante il dottorato tutto quello che sarebbe stato possibile esprimere da parte mia. Di contro, sono due percorsi che danno molto in termini di apprendimento, di esperienze e di competenze, quindi averli potuti provare tutti e due sicuramente lascia il segno. Io ho scelto prima di fondare l'azienda e poi di iniziare il dottorato. Dopo aver scelto con quelli che all'epoca erano quattro amici, che poi sarebbero diventati i soci di molti anni, di aprire Extreme, è emersa in università la possibilità di candidarsi al dottorato all'Università di Pavia. L'EPFL è arrivato dopo. Ho detto: "perché no?". Il mio supervisor, il professor Giuseppe De Nicolao, docente di fama internazionale e persona estremamente brillante e gentile, mi ha spinto a non rinunciare. Il problema è che il tempo è limitato, le energie mentali sono limitate e quindi, torno a dire, aver cercato di fare tutto ha implicato fare tutto male. Se qualcuno è in dubbio se provare a fare sia dottorato che esperienza in azienda, il mio consiglio è: non riuscite a farle tutte e due, sceglietene una.

## Accademia e industria: contaminazione necessaria

**Stefano Maestri**

> Ok, però mi piace guardare i bicchieri mezzi pieni. Cos'è che invece è stato vincente di farli tutti e due? Sei riuscito a portare in azienda alcune delle ricerche o c'è qualcosa del bagaglio di ricercatore che è stato decisivo per l'azienda, o viceversa?

**Emanuele Fabbiani**

> Sì e sì. Do forse l'istantanea più strana: quella del portare in università l'esperienza dell'azienda. Quando sono andato a Losanna, all'EPFL, nessuno usava Python nel laboratorio in cui sono approdato. Non era ancora il 2025, era il 2021, però Python era già egemone nell'industria e nessuno si sarebbe sognato di usare nient'altro per l'analisi dei dati. In quel laboratorio usavano tutti Matlab. Vedere qualcuno che arrivava da fuori e mostrava un linguaggio di programmazione strano, con i notebook... Al laboratorio dell'EPFL non avevano mai visto i Jupyter Notebook. Nel seminario introduttivo, quando mostravo i grafici interattivi su Jupyter Lab, mi chiedevano tutti cosa fosse. Oggi nessuno usa più Matlab in quel laboratorio, solo Python e Jupyter Lab, se non addirittura Marimo. Alcune cose che sono standard nell'industria, nell'accademia non sono ancora arrivate, e viceversa. Dal dottorato in poi, in Extreme ogni progetto di Data Science o AI iniziava con una o due settimane di studio della letteratura. Questa è una cosa che molte aziende non fanno. Spesso inizi un progetto e fai come hai fatto quello precedente. Ma ogni campo ha le sue pratiche consolidate da esperti di settore; partire dallo stato dell'arte ha molto più valore. In accademia nessuno scrive un paper solo per dire "ho provato questo e ha funzionato", deve esserci un contributo alla conoscenza dell'umanità. Nell'industria basta risolvere un problema. Contaminare questi due mondi porta assolutamente valore.

## Nascita di Extreme e dinamiche di gruppo

**Stefano Maestri**

> Sono molto convinto anch'io di questo. Raccontami al volo: hai fatto questa azienda con altri quattro amici conosciuti all'università. Com'è stato l'inizio? Fare il kickoff di un'azienda in Italia? Io l'ho fatto alla fine degli anni '90, era un momento simile a questo, l'altro grande ramp tecnologico legato a internet. Per me fu emozionante, ero al secondo anno di università e lavoravo con soci più grandi di me. Siamo cresciuti tantissimo lavorando con grandi aziende come Mediaset o Cerved. Ho imparato molto, anche dal fallimento dei singoli progetti. Ma raccontami di te.

**Emanuele Fabbiani**

> La storia è simile. Noi siamo partiti appena finita l'università, alcuni non erano ancora laureati. Le cinque persone che hanno fondato Extreme si sono conosciute tutte all'Università di Pavia. Quattro su cinque arrivavano dallo stesso corso di laurea ed "Extreme" era il nome del nostro gruppo nel corso di Fondamenti di Informatica 2. Abbiamo veramente poca fantasia, siamo ingegneri! Essere in cinque, tutti ingegneri con lo stesso background, ha pro e contro. In cinque anni non ricordo una volta in cui abbiamo davvero litigato; divergenze di opinione sì, ma sempre con toni tranquilli. Di contro: chi vende? Chi fa marketing? Chi si occupa delle persone? Noi volevamo solo programmare. Pensavamo che lavorando bene i servizi si sarebbero venduti da soli. Non è affatto così. È qualcosa che impari col tempo, specialmente se passi da una struttura grande dove queste funzioni sono gestite da altri a una realtà di cinque persone dove devi fare tutto tu.

## L’acquisizione da parte di TeamSystem

**Stefano Maestri**

> Arriviamo al fast forward: settembre 2025, TeamSystem vi acquisisce. Avete fatto la exit, siete arrivati. Ma immagino che essendo una vostra creatura ci sia stato qualche sentimento contrastante. L'hai visto come un successo o c'è stato un momento di "accettazione" nel dover vedere le cose da un punto di vista diverso?

**Emanuele Fabbiani**

> In realtà, per me questa transizione non ha avuto risvolti emotivi negativi. È stata una questione di prendere la decisione giusta. A metà del 2024 avevamo due scelte: crescere molto e velocemente o farci acquisire. Eravamo nati come un gruppo di amici, ma cominciavamo ad avere clienti importanti e collaboratori che volevano crescere in carriera e responsabilità. Eravamo troppo grandi per fare la startup e troppo piccoli per competere con le grandi aziende di consulenza. Rimanere nel limbo è pericoloso perché rischi di perdere le persone migliori. Potevamo continuare a spingere, ma avrebbe significato portarsi in casa molta complessità gestionale (vendita, marketing, HR, finanza) che Extreme non aveva mai avuto in modo strutturato. Oppure potevamo entrare in un progetto più grande di cui condividiamo i valori. Non ho mai avuto dubbi. Extreme è nata con l'ambizione di fare l'azienda di prodotto, ma facevamo consulenza per pagare gli stipendi. Abbiamo lanciato prodotti nel 2018, 2020 e 2022. Alcuni sono finiti al "cimitero", altri tre li abbiamo portati in TeamSystem. Entrare in un'azienda che fa prodotti era il modo di chiudere il cerchio. Non è una semplice exit, è un'altra tappa in un'organizzazione diversa. Prima eravamo veloci, agili, "poveri ma belli". Adesso abbiamo le risorse di un'organizzazione supportata da fondi internazionali, ma dobbiamo sottostare a regole e processi che a volte sono frustranti, come la privacy policy che non puoi più far scrivere a Gemini alle 9 di sera per deployare subito. È un processo di apprendimento.

## Explainability nei Large Language Models

**Stefano Maestri**

> Ti riporto al mondo tecnico. Uno dei tuoi talk più apprezzati è "Inside the Mind of an LLM". Per me l'explainability — capire cosa succede dentro un modello — è la "Next Big Thing". Nel mondo enterprise è fondamentale: una banca deve poter giustificare perché ha negato un mutuo. Al momento non abbiamo lo stesso livello di comprensione delle tecnologie deterministiche. Raccontaci cosa c'è dentro la mente di un Large Language Model.

**Emanuele Fabbiani**

> Magari lo sapessi davvero! Se avessi la risposta saremmo alla cerimonia del Nobel. Ad oggi, i risultati più interessanti sulla spiegabilità arrivano da Anthropic. C'è un blog chiamato "Transformer Circuits" che spiega come cercano di capire cosa succede lì dentro. Usano due strumenti principali. Il primo sono i circuiti dei Transformer: affiancano al modello originale un altro modello con gli stessi pesi, ma sostituiscono le parti non spiegabili con layer interpretabili. Effettuano un'approssimazione e cercano di capire cosa dice il modello interpretabile. Le parti difficili da spiegare sono i layer fully connected (densi), che sono le versioni più primitive del deep learning. Mentre l'attenzione è una media pesata facilmente spiegabile, per i layer densi non abbiamo ancora metodi di explainability efficaci, quindi nei Transformer Circuits vengono rimpiazzati da funzioni matematiche più semplici. Il secondo strumento è la monosemanticità. Tra uno strato e l'altro passano vettori densi: liste di 3.000 o 5.000 numeri reali che per noi non significano nulla. Monosemanticità significa cercare di associare questi numeri a concetti umani — capelli, auto, affetto, amore — trasformandoli in "interruttori" 1-0 legati a un'area semantica precisa. Così possiamo guardare un vettore e dire: "Ok, il modello sta parlando dell'affetto tra uomo e donna".

## Significato, non significante

**Stefano Maestri**

> È super interessante. Mi collego a un altro pezzetto di un tuo talk dove citavi un paper che guardava i modelli Llama per vedere come cambiano le lingue nei vari strati. Sembra che i modelli ragionino per significato e non per significante. Il concetto di "amore" o "sasso" esiste al di là della lingua. Sbaglio o è così?

**Emanuele Fabbiani**

> Il paper si intitola "Do Lamas Work in English" e arriva dal laboratorio del professor Robert West all'EPFL. Usa una tecnica chiamata "Logit Lens" per mettere delle sonde all'interno degli strati intermedi del modello. Normalmente applichiamo il tokenizer e l'embedder solo all'inizio e alla fine perché il modello è addestrato così. Ma i ricercatori volevano vedere cosa succedeva nel mezzo. Hanno scoperto che nei modelli Llama 2, anche se chiedi di tradurre dal francese allo spagnolo, negli strati intermedi si passa per l'inglese. Probabilmente perché il dataset di addestramento è composto all'85% da inglese, quindi il modello ha imparato una rappresentazione interna dei concetti vicina a quella lingua. Nel 2025 sono usciti studi che parlano di una "Geometria Universale degli Embedding". Embedding che rappresentano la stessa cosa in modelli diversi possono essere trasformati gli uni negli altri con funzioni matematiche deterministiche. Questo suggerisce che i modelli costruiscano una rappresentazione universale dei concetti, quasi come l'iperuranio di Platone. Il sasso è un sasso per me e per un cinese; l'oggetto esiste in sé. È vero che la lingua influenza la percezione — pensiamo agli eschimesi che hanno decine di parole per la neve — ma un modello esposto a più lingue potrebbe riuscire a esprimere concetti specifici di una cultura anche in altre lingue tramite perifrasi.

## Allucinazioni nei modelli AI

**Stefano Maestri**

> Nel 2025 la parola dell'anno per Webster è stata "AI Slop", ma in Italia la parola più usata è "allucinazione". Da dove vengono le allucinazioni? Ha senso parlarne?

**Emanuele Fabbiani**

> Io avrei detto "Vibe Coding" come parola dell'anno! Comunque, il termine "allucinazione" è pericoloso, così come "reasoning" o "thinking", perché antropomorfizza i modelli. Un modello è addestrato per comporre il completamento più probabile. Nessuno garantisce che il completamento più probabile sia quello vero nel mondo reale. Le allucinazioni sono semplicemente il modello che fa quello per cui è addestrato. Uno studio di OpenAI spiega che spesso i modelli allucinano perché vengono premiati per caratteristiche della risposta diverse dalla veridicità. Inoltre, il training set contiene tutto ciò che si trova su internet: post di Reddit, risposte sbagliate su Stack Overflow, pagine Wikipedia poco attendibili. I modelli danno sempre una risposta perché non sono penalizzati se dicono una cosa falsa rispetto a quando dicono "non lo so". È come un esame a crocette: se togli il punteggio negativo per l'errore, allo studente conviene sempre tirare a indovinare. Oggi però abbiamo metodi per mitigare il fenomeno: i modelli di reasoning fanno fact-checking interno e strumenti come Gemini o Claude usano il "grounding" per cercare fonti in tempo reale su internet. Rispetto a GPT-3, le percentuali di allucinazione si sono ridotte di un ordine di grandezza.

## Scaling law e limiti economici

**Stefano Maestri**

> Veniamo alla "Scaling Law": più dati e più potenza di calcolo uguale modelli migliori. Siamo ancora fermi alla teoria base di Amodei o dobbiamo guardare a qualcosa di diverso oggi?

**Emanuele Fabbiani**

> Stiamo scalando in entrambi i modi. Le Scaling Law del pre-training sono ancora valide, ma diventano estremamente costose. Invece, sulle Scaling Law del post-training (il reasoning) non abbiamo ancora capito i limiti. Ci si può spingere molto in là, specialmente sui task verificabili deterministicamente come il codice o la matematica. Lì puoi fare post-training con Reinforcement Learning su scale enormi. Una terza via che si inizia a teorizzare è quella "post Legge di Moore": visto che non possiamo più rimpicciolire i transistor all'infinito, aumentiamo i core e usiamo agenti distribuiti o copie del modello che lavorano insieme per mettere insieme i risultati. Questa è una frontiera ancora da esplorare.

## Vibe Coding e sviluppo software assistito

**Stefano Maestri**

> Parliamo di Vibe Coding, la tua parola dell'anno. A fine 2024 non avrei scommesso che il codice sarebbe stata la prima applicazione di così largo impatto. Qual è il tuo rapporto con il coding assistito?

**Emanuele Fabbiani**

> Per me Vibe Coding e AI Assisted Coding sono due cose diverse. Vibe Coding significa non leggere il codice: interagisci solo in linguaggio naturale (italiano o inglese). È quello che fai con Lovable o Replit. Assisted Coding significa invece rivedere il codice riga per riga, controllando stile e design pattern. In Extreme, il Vibe Coding è prezioso per la prototipazione. Se non sai se un'idea piacerà al cliente, la realizzi in un giorno. Non importa se il codice è scritto male o immanutenibile, tanto lo butterai via, ma hai qualcosa di tangibile da mostrare. Prima servivano mockup su Figma o documenti di specifica lunghissimi. L'Assisted Development serve invece per il codice di produzione, che deve ancora essere comprensibile per gli esseri umani. Tuttavia, la qualità del codice scritto dalle macchine è migliorata in modo assurdo in meno di un anno. L'idea di costruire un prodotto dalla nascita alla messa sul mercato senza leggere una riga di codice non è più folle.

## Revisione del codice e AI

**Stefano Maestri**

> Oggi forse è presto per non rileggere nulla, ma usare tool come Cursor o Claude Code per guidare il processo task per task è già realtà. Esiste anche la code review assistita: un'IA che rivede quello che un'altra IA ha scritto.

**Emanuele Fabbiani**

> Sì, e trova cose che un essere umano a volte manca. Scrivere software era una competenza elitaria e impegnativa. Un domani non lontano sarà molto più semplice, economico e veloce. È il passaggio dal lavoro a mano alla macchina a vapore. Si aprirà il mercato del "disposable software": app create per una singola conferenza o un foglio Excel sostituito da un piccolo software dedicato creato da un non-programmatore. La fotocamera nel telefonino non ha rimosso i fotografi professionisti, ma ha permesso a tutti di scattare foto, democratizzando la fotografia. Lo stesso accadrà con il software.

## Ecosistema AI in Italia

**Stefano Maestri**

> Com'è l'ecosistema AI italiano? Tu hai iniziato nel 2018, quando si chiamava ancora Machine Learning. Ti sei sentito un pesciolino smarrito o l'Italia ha qualcosa da dire?

**Emanuele Fabbiani**

> L'ecosistema in Italia purtroppo non favorisce chi fa azienda. Extreme non è mai stata una startup in senso stretto, avevamo un business model tradizionale che ha sempre funzionato. Ready invece era una startup, un prodotto che prima non esisteva. È difficile fare impresa qui perché perdi tempo con cose che non danno valore: commercialista, consulente del lavoro, certificazioni, burocrazia. A San Francisco trovi ovunque qualcuno che ti spiega come aprire un'azienda; per parlare con un investitore ti servono due introduzioni e alla terza sei seduto al tavolo. In Italia fai una fatica incredibile. Il mercato della consulenza è dominato dai grandi system integrator come Reply o Accenture, ma le grandi aziende faticano a fidarsi delle realtà piccole. Affidarsi ai grandi nomi in un mercato che corre così veloce è rischioso: l'AI non è un mercato per pachidermi. Solo Anthropic nel 2025 ha fatto quattro rilasci fondamentali. Ci sono però eccezioni positive come Data Pizza, che ha superato la diffidenza con marketing e formazione, e una nuova generazione di startup di prodotto molto interessanti: Let’s Room, Pillar, Intella, Zefi AI.

## Consigli per chi vuole fare startup

**Stefano Maestri**

> Cosa diciamo a un ragazzo che si affaccia oggi al mondo del lavoro? Che scelte deve fare?

**Emanuele Fabbiani**

> Sull'università: fate qualcosa che vi piaccia, perché tra cinque anni il mondo sarà completamente diverso. Il dottorato è una strada interessante; in Italia i dottorandi sono pochi e seguiti molto bene da professori eccellenti, anche se si è sottopagati. Se non piace la ricerca, ci sono tre vie. La grande azienda: ottima per il work-life balance, stabilità e crescita lineare. La startup: per prendersi responsabilità da subito e vedere come si costruisce qualcosa da zero. Infine, fondare la propria azienda: è la "via del dolore". Significa lavorare tantissimo, mangiare nervoso e prendersi ogni problema sulle spalle. Ma se le cose vanno bene, vanno molto bene. Il mio consiglio è: guardatevi allo specchio. Se amate il caos e le responsabilità, fate una startup. Se volete tranquillità e crescita prevedibile, andate in una grande azienda. Non forzatevi a essere ciò che non siete.

## Il futuro dell’intelligenza artificiale

**Stefano Maestri**

> Se fossi al banco del Blackjack, su cosa scommetteresti come "Next Big Thing"? Dove saremo tra cinque anni?

**Emanuele Fabbiani**

> A medio termine, diciamo 3-5 anni: Space Economy e IA nella robotica (AI for Hardware). Ma nei prossimi mesi l'impatto maggiore arriverà dalle organizzazioni che capiranno come usare davvero l'IA. Oggi la tecnologia è molto più avanti della sua applicazione pratica. Il blocco della produttività è organizzativo: le aziende devono smettere di bannare ChatGPT e imparare a integrare questi strumenti nei flussi di lavoro. Man mano che l'ecosistema costruirà gli strumenti giusti intorno ai modelli base, avremo guadagni di produttività enormi.

**Stefano Maestri**

> Concordo. Io vedo l'economia degli agenti o "Internet of Agents" a medio termine, e la robotica e Space Economy a lungo termine. È bello vedere che la fantascienza classica di Asimov si sta realizzando sotto i nostri occhi. Ti ringrazio tantissimo per essere stato con noi, Lele. È stata un'intervista verticale che il nostro pubblico nerd apprezzerà sicuramente.

**Emanuele Fabbiani**

> Grazie mille a te, Stefano. A presto!