---
title: "Intervista a Daniele Zonca: come portare l'AI generativa in Enterprise"
categories:
  - Interviste
tags:
  - Inferenza
  - Enterprise
  - LLM
layout: single
author_profile: true
---

{% include video id="B9qDo-BWQiA" provider="youtube" %}

👉 [Ascolta su Spotify](https://open.spotify.com/show/16dTKEEtKkIzhr1JJNMmSF?si=900902f2dca8442e)<br/>
👉 [Guarda su YouTube](https://www.youtube.com/channel/UCYQgzIby7QHkXBonTWk-2Fg)<br/>
👉 [Segui su LinkedIn](https://www.linkedin.com/company/risorseartificiali)<br/>



## **[00:00] Introduzione e Giochi dell'Infanzia**

**Stefano**

> Ciao a tutte e tutti, bentornati a Risorse Artificiali e alle interviste di Risorse Artificiali. Anche oggi abbiamo un super ospite. Come sempre io non vi dico chi è, anche se lo sapete già dal titolo e tutto quanto. Ma parto con la domanda mia di rito, che è sempre quella che uso come inizio dell'intervista e ti domando: qual è il tuo gioco preferito? Qual era il tuo gioco, giocattolo preferito da bambino? Vedi tu se oggi o ieri.

**Daniele**

> Bella domanda e dipende un po' da quale parte della, diciamo, quanto indietro vado nel tempo, perché vabbè, sicuramente palloni, macchine, robe del genere, ma uno di quelli dove ho passato tanto tempo è stato il Super Nintendo. La prima console in realtà in casa è stata il Game Boy, ma la prima su cui ci ho speso veramente tante ore è stato Super Nintendo. Oggi in realtà, vuoi per motivi di tempi, per tante cose, ho qualche console ma gioco molto meno, anzi ultimamente quasi non ho avuto tempo per giocare. Quindi oggi il giocattolo preferito probabilmente sempre la console, è che è finito il tempo più che altro per giocare. Non ho veramente tempo ultimamente.

**Stefano**

> Il tempo è sempre tiranno. Infatti Paolo, uno dei miei colleghi di podcast, mi prende in giro sul fatto che mi compro un sacco di giocattoli da nerd e poi non ho mai tempo di usarli. Che è la verità.

**Daniele**

> Ho comprato un drone tre settimane fa, devo ancora finire nella configurazione perché cerco di fare le cose per bene, quindi c'è da fare l'assicurazione, registrare, fare tutte le varie parti così e quindi appunto è ancora lì, quindi appena riesco ad avere qualche giorno un po' più tranquillo, vedo di provare.

**Stefano**

> Sì, io ho comprato, lo dico sempre, ho comprato il braccio robotico quello di Hugging Face, ma ne ho montato solo metà per adesso, lì da mesi. Ma lo farò, giuro.


## **[02:40] Il Percorso Professionale di Daniele Zonca**

**Stefano**

> Bene. Quindi un gamer, un gamer come tanti ce ne sono nel mondo dell'AI a partire da Elon Musk, che poi forse era un mito, non era vero che era un gamer, non si sa mai dov'è la verità e dov'è la leggenda con Elon Musk, ma sicuramente Demis Hassabis è stato un grande sviluppatore anche di videogame. E ti lascio spazio, introduciti. Daniele Zonca, io dico soltanto questo, dicci chi sei e che cosa fai.

**Daniele**

> Allora, lavoro per Red Hat ormai da quasi otto anni e mi sono occupato di varie cose in Red Hat. Ho seguito vari progetti nel tempo. Al momento ho il ruolo di Chief Architect per AI Platform Engineering. All'interno di Red Hat c'è un grosso investimento sulla parte di AI e c'è tutto quindi un team di AI Engineering dove sviluppiamo vari prodotti e io essenzialmente sono Chief Architect della parte di OpenShift AI, che è tutta la piattaforma sopra Kubernetes per abilitare workload di tipo generativo e predittivo.

**Stefano**

> Ok, allora io mi aggancio qua, perché secondo me poi chi ci ascolta sicuramente andrà a sbirciare il tuo profilo LinkedIn e vedrà un percorso particolare, forse non particolare, forse in realtà standard nel mondo enterprise in qualche modo, ma che mi piace esplorare. Tu parti dal banking perché parti da Unicredit come grande lavoro, avrai fatto anche altro, ma il primo che mi balza all'occhio è Unicredit. Poi arrivi in Red Hat e la prima cosa che fai è lavorare su un rules engine perché arrivi nel team di Drools. Poi tante cose sui dati, sullo streaming e altro, ma poi Trusty AI, quindi un focus sull'explainability dell'intelligenza artificiale e adesso appunto Chief Architect di tutta la piattaforma AI. Come me lo descriveresti questo escursus, questo viaggio? Cioè tu parti da una black box in qualche modo dal punto di vista del cliente che è Drools, ma che ha dentro tutto il suo motore di regole ed è strettamente deterministico, fino ad arrivare alla black box per eccellenza che è questa degli LLM, ma con un occhio sull'explainability. Perché secondo te oggi è importante per l'enterprise in particolare capire che cosa fanno questi motori?


## **[04:57] L'Importanza dell'Explainability nell'AI**

**Daniele**

> Sì, allora, diciamo che fare una retrospettiva della carriera o comunque delle cose fatte dopo dieci anni, dopo un po' di anni, posso probabilmente trovarci un filo logico, ma è assolutamente aggiunto a valle, nel senso di dire che quando sono entrato in Unicredit era un periodo in cui c'era molto investimento sulla parte di big data e quindi sviluppavamo Spark, sviluppavamo applicazioni analitiche che tendenzialmente voleva dire quasi tutto dei grossi batch che analizzavano dati in maniera massiva per fare o applicare modelli predittivi, quindi classificazione di clienti, segmentazione, recommender, classici tipi di use case, diciamo un po' più da analitica, di analytics.
>
> E poi questo tipo di mondo nel tempo, la parte big data è rimasta molto più legata a una parte più di data management e poi adesso si fa sempre più cose con i dati, quindi la parte di intelligenza artificiale, prima magari quella predittiva e quella adesso generativa, sta iniziando a prendere sempre più piede. Quando sono entrato in Red Hat sulla parte di rules engine, anche quella è considerata intelligenza artificiale simbolica e in realtà sono cose che appunto in parte avevo anche utilizzato nella mia esperienza precedente, perché quando vai in ambito enterprise dove ci sono ambiti estremamente regolamentati, un tema di lineage, di trasparenza, di riproducibilità è la chiave. Quindi quando hai un processo di business critico e quindi inizi a dire devo fare approvazione di un mutuo oppure anche in ambito di trading devo prendere una decisione, devo riuscire in qualche modo a garantire che in un caso di audit oppure anche perché semplicemente il cliente mi chiede spiegazioni, devo poter fornire questi tipi di informazioni.
>
> Quindi i rules engine sono storicamente adottati in questi tipi di sistemi proprio perché ti danno questo tipo di garanzia, quindi sono trasparenti perché ti possono dare la sequenza di esecuzione di regole. Ovviamente non entra nel merito se la regola era giusta o sbagliata, però ti può dire ho applicato questa regola, ho applicato quest'altra regola per arrivare alla decisione finale. Però anche descrivere tutto come regole è complicato e quindi ormai era il 2019 più o meno quando abbiamo iniziato a creare Trusty AI come iniziativa, era proprio perché sempre più clienti volevano iniziare un po' a mescolare le cose, quindi dire io magari ho una funzione di machine learning che funziona molto bene per fare risk scoring, quindi mi dà un valore di rischio rispetto a una determinata persona e non voglio andare a codificarla rispetto a tutte le regole di dominio che potevo andare a inventare precedentemente, però poi tutto il resto della decisione vuole isolare la parte predittiva, quindi solo in questo tipo di funzione, il resto rimane a regole. E quindi come fai a mantenere trasparenza o comunque explainability in una situazione dove stai unendo una parte più tradizionale a regole con una parte invece un po' più opaca per sua natura?
>
> E quindi tutto il tema dell'explainable AI nasceva a quei tempi. C'era una delle primissime pubblicazioni, era del DARPA americano che iniziava a definire un'idea molto visionaria di cercare un explainable box in cui io riesco a cercare di capire come quel modello sta ragionando. Quindi se mi dice semplicemente, l'esempio più classico era la neural network che mi riconosce un gatto, non mi dice semplicemente un gatto per 0.7 di accuracy, ma mi dice anche perché: ho riconosciuto la forma delle orecchie, il colore del pelo, ho riconosciuto il naso. Ed è ovvio che non è detto che sia tutto veramente fattibile, però nasceva proprio dall'idea di dire, se le persone e le aziende devono avere trust, fiducia nell'automatizzare decisioni, automatizzare anche processi critici utilizzando intelligenza artificiale, come faccio a mantenere un po' il controllo di quello che sta facendo? E quindi c'è un tema di voglio capire come funziona. E non è un capire tecnico, voglio sapere l'algoritmo di neural network come fa il forward pass. È proprio dal punto di vista di spiegami che cosa sta facendo.

**Stefano**

> Sì, quello di cui parli, lo dico per gli ascoltatori che magari qualcuno l'ha visto rappresentato così, è quello dei video di 3Blue1Brown, quello dove vi fa vedere il latent space, le immagini in latent space di una tigre nella fattispecie del video che ho in mente io, che è esattamente quello che spiegavi tu. Ma l'explainability oggi, perché è la domanda che noi abbiamo anche più come domanda in podcast, ma in generale quando parlo con le persone alle conferenze piuttosto che con clienti, l'explainability oggi applicata agli LLM, ci sono vari studi di Anthropic, ma siamo abbastanza in alto mare. Secondo te è ancora o è oggi il principale attrito o tensione in fase di adoption nel mondo enterprise, il fatto di non sapere o di non poter spiegare almeno a posteriori che cosa è successo, o in realtà è un falso mito questo?

**Daniele**

> Allora, diciamo che l'avvento della generativa, in particolare dei large language model, ha un pochettino mescolato tutte le carte, quindi se pian piano anche le enterprise iniziavano ad avere maggiore praticità, nel senso di avere più conoscenza di dominio e quindi maggiore standardizzazione nell'utilizzare AI predittiva, proprio appunto utilizzando varie tecniche nei contesti, intendo ovviamente sempre contesti in cui ho necessità vuoi per vincoli regolamentari o proprio per necessità di criticità dello use case, e di poterne fare appunto explainability. E c'erano varie tecniche che in qualche modo riuscivano ad abbassare il livello di rischio perché a runtime potevo andare a monitorare come funzionava il sistema e quindi capire ad esempio se il modello stava driftando, che vuole dire il modello inizia a non comportarsi più come era stato fatto all'inizio, essenzialmente perché i dati sono cambiati, perché il modello è statico, però se il comportamento umano su cui è stato addestrato cambia, ovviamente il modello non si comporta bene.
>
> Quindi tutto quel tipo di lavoro non dico che ovviamente non è più applicabile, però ovviamente adesso deve essere rivisto in un contesto di large language model dove cambiano molti dei paradigmi fondamentali. Cambia il primissimo, il fatto che ovviamente questi modelli tendenzialmente non li hai addestrati da zero, quindi un sacco di cose che potresti fare in fase di training tendenzialmente non le hai. E conosco clienti che si stanno creando il loro language model, ma sono veramente pochi, e poi sarebbe anche da vedere quanto poi effettivamente la cosa può essere efficace, perché la creazione di un base model, quindi proprio del modello base, Llama, Qwen, DeepSeek, è un lavoro veramente immane e c'è un sacco di lavoro di ricerca proprio per cercare di renderlo un buon modello di partenza.
>
> Quindi, tornando al tema di explainability, sicuramente in ambito di trasparenza, il tema della comprensione, quindi di fiducia su questi modelli, si è un pochettino resettato per l'enterprise, perché è talmente disruptive come evoluzione che nessuna, o veramente poche delle cose che potevi applicare inizialmente valgono ancora. Questo sicuramente rallenta l'adozione insieme al fatto che, tendenzialmente, se stai parlando di processi critici vuoi avere comunque riproducibilità, questi modelli per loro natura cercano di essere statisticamente stabili, però in realtà l'output può essere diverso e questa è un'altra dei limiti più grossi. Perché se andiamo in uno scenario di business magari dove ho preso una decisione critica per un cliente e anche se avessi l'intera auditability, quindi riesco per qualche motivo a spiegare esattamente perché l'LLM mi ha prodotto questo tipo di risultato, ma non è credibile oppure non è giustificabile dal punto di vista del cliente se in realtà eseguendo la stessa query con lo stesso modello ti dà un risultato diverso. Quindi tu ti aspetti che perlomeno sia sempre stabile e riproducibile.


## **[13:19] OpenShift AI e il Lavoro di Daniele Zonca**

**Stefano**

> Mi collego invece per finire un attimo la tua introduzione a quello che fai. Ci hai raccontato che sei Chief Architect di OpenShift AI. Questa cosa, per il tipo di ascoltatori che abbiamo, chiarisce quello che fai al 50% di loro, più o meno. Resta l'altro 50%. Quindi ti sfido a, che è difficilissima, non ci riesco mai, però se avessi a che fare con la nonnina della porta accanto che ti chiede "Ma lei, signor Daniele, che lavoro fa esattamente?", come le risponderesti?

**Daniele**

> Allora, tendenzialmente non si può. No, a parte ho questo problema e l'ho avuto per molti anni e vale penso per tutti quelli che lavorano in generale nell'ambito engineering, perché è molto astratto, soprattutto quando parli di una realtà come Red Hat che fornisce strumenti a enterprise, non è visibile se non sei un'enterprise. Quindi posso anche andare a dire "Guarda, pensa alle compagnie aeree, quando compri i biglietti, magari il 90% di loro usano i nostri sistemi dietro le quinte", però comunque rimane impalpabile, cos'è che effettivamente fai.
>
> Nel caso concreto qua, se parliamo di intelligenza artificiale, una delle piattaforme principali su cui si sta utilizzando sempre di più per l'esecuzione di generative AI è Kubernetes. Kubernetes nasce per orchestrare container per essenzialmente un contesto di microservizi. Quindi ho delle applicazioni, ne ho tante, le devo riuscire a far parlare fra di loro. Quando parliamo di large language model, in realtà ho dei modelli che sono grossi e pesanti, quindi magari ne ho pochi, però hanno una complessità per eseguirli che è comparabile e che quindi riesco ad utilizzare lo stesso tipo di piattaforma, quindi questi tipi di primitive, per eseguire questi tipi di modelli. In realtà dietro mi devo portare dell'hardware dedicato, quindi delle GPU, quindi degli acceleratori. Allora, penso che mia nonna l'avrei già persa alla seconda parola, quindi spero di passare da quel 50% iniziale ad arrivare magari a un 75-80%, quindi non so quanto.

**Stefano**

> Facciamo 55 e non se ne parli più.

**Daniele**

> Esatto. Quindi, quello che stiamo andando a fare è, assumendo che appunto sei un'azienda che principalmente, caso più classico, potrebbe essere un'azienda che vuole eseguire questi modelli in casa per vari motivi: perché voglio avere la possibilità di isolare il traffico, voglio essere sicuro che il modello non cambia, mentre se uso un cloud provider magari nel frattempo il modello evolve per mille motivi. Quindi voglio riuscire a avere una maggiore stabilità, sia perché sono un'azienda magari abbastanza grande oppure perché ho dei vincoli, pensiamo in ambiti militari ad esempio, comunque di segretezza bancaria, quindi ho dei vincoli in cui non voglio che per nessun motivo il mio lavoro sia esposto. Lavoro proprio disconnected, quindi ho il mio data center e nessuno deve poterci accedere se non decido io. Hai bisogno di dire "Ok, come faccio a farmi girare il mio ChatGPT on premise" e poi magari a svilupparci sopra ovviamente.
>
> Ovviamente non è come prendere un'applicazione, la installo sul mio computer e da quel momento va. Riesco a far eseguire dei modelli con quel livello di facilità adesso sulle macchine moderne, però quando parliamo di un contesto di produzione ovviamente la complessità è maggiore. E quindi quello che andiamo a fare è essenzialmente integrare vari progetti open source che andiamo a sviluppare per fornirti tutti i componenti che ti servono per eseguire questo tipo di workload. Dici che siamo arrivati al 55-60%?

**Stefano**

> Perfetto, 55 tutto.


## **[17:22] Kubernetes come Piattaforma per LLM**

**Stefano**

> No, però nell'arrivare a questo 55 mi hai stimolato un sacco di altre domande che possono interessare a questo 55. Parto quasi dalla fine di quello che hai detto. Hai detto che uno dei contesti in cui ha senso maggiormente o comunque ha più mercato OpenShift AI, che è questa piattaforma per far girare su Kubernetes i modelli, sono gli ambienti estremamente regolamentati. Adesso per metterli un po' tutti insieme, dal bancario al più regolamentato ancora, la mia domanda su questo è: Kubernetes come piattaforma. Tu hai fatto un talk, perché così intanto diciamo anche che a Daniele piace anche divulgare, sempre in un ambito tecnico o altamente tecnico, e ci sono parecchi talk che potete trovare su YouTube, magari metto qualche link in descrizione. Ma in uno in particolare hai parlato di Kubernetes, il deployare su Kubernetes modelli LLM all'inizio è stato overwhelming, hai usato esattamente questa parola, schiacciante in qualche modo, stressante se la vogliamo dire un po' più soft all'italiana, perché c'era un continuo ciclo di fallimento, torno indietro, metto a posto, riprovo, rifaccio. Immagino che adesso la situazione sia ampiamente migliorata e molto più ingegnerizzata, ma tu continui a essere convinto dopo che ci hai lavorato così tanto, o forse ancora più di prima, che Kubernetes è la piattaforma per fare questo genere di cose, per permettere di far girare on premise delle grandi istanze di LLM? Perché è un problema gigantesco ovviamente che va risolto.

**Daniele**

> Ci sono varie considerazioni. Diciamo che il modello di suo non è in isolamento, il modello di solito viene poi utilizzato all'interno di uno use case che possa essere quindi dal classico chatbot oppure a sviluppare agenti, cose di questo tipo. Diciamo che l'indicazione base sarebbe di capire qual è il proprio use case, capire proprio effettivamente che cosa uno ci deve andare a fare.
>
> Se rimaniamo più sui concetti di base, Kubernetes rimane la piattaforma che riesce a scalare meglio da un punto di vista di rimanere essenzialmente abbastanza dichiarativo nel dichiarare che cosa io voglio ottenere e di cercare di astrarre un po' quella parte di complessità infrastrutturale che questi modelli LLM richiedono. Vediamo che questo, parlo principalmente se usi una parte di generativa e hai una parte di inferenza.
>
> Possiamo discutere un po' in maniera diversa, secondo me, se invece vuoi fare proprio del training, perché lì diventa un tipo di customizzazione soprattutto infrastrutturale di cui hai bisogno. Per andare nel concreto, quando fai training generi molto più traffico cross-nodo, cross-GPU, quindi hai più nodi che fra di loro comunicano e hai un sacco di traffico, proprio gigabyte al secondo, se non quasi terabit al secondo che comunichi fra un nodo e l'altro. E per queste situazioni diventa sempre più simile a un HPC, cioè un high performance computing. E quindi ci sono, se hai già questo tipo di know-how, perché magari nel tempo sei un ente di ricerca che faceva computazione distribuita e quindi sei già molto più pratico, ci sono altri tipi di piattaforme per questo tipo di use case. Volendo, quella secondo me è potenzialmente comparabile come tipologia di soluzione, ma la vedo principalmente come una soluzione di training.
>
> Se parliamo di parte di inferenza dove il modello ormai è statico e che quindi di base hai un tema di ottimizzazione proprio a livello di scalabilità, quindi essenzialmente come potresti vederti un microservizio estremamente complesso che quando più richieste arrivano deve poter scalare su più repliche, andare a fare del caching furbo in modo che cerco di minimizzare la computazione che devo fare proprio perché è un problema di hardware limitato. Ecco, per tutta questa parte di ottimizzazione, per quanto non è perfetto per questo tipo di workload, nel tempo sta evolvendo, però si sta dimostrando flessibile abbastanza per poter avere un punto di partenza e estenderlo come serve, nei punti dove serve, per renderlo più LLM-aware.


## **[22:13] Vantaggi del Professional Open Source**

**Stefano**

> Ok. Ecco, hai toccato un altro punto per me chiave: open source. Hai nominato che di fatto quello che, come in quasi tutti i prodotti Red Hat, direi tutti i prodotti Red Hat, si fa è mettere insieme i progetti vincenti in upstream e produttizzarli. Quindi se dovessi spiegare a qualcuno, ad una conferenza, piuttosto che a un ingegnere, piuttosto che a un architetto che prende le decisioni, dov'è il vantaggio di una piattaforma come OpenShift AI rispetto a fare da soli? Perché la tentazione, più l'argomento è innovativo, più l'argomento è di frontiera, e si teme sempre che non ci sia ancora una produttizzazione fatta bene. Chi fa sperimentazioni, e tutto sommato penso tu sia d'accordo con me, oggi avere il proprio LLM on premise è una cosa abbastanza di nicchia ancora, almeno nel mondo enterprise. Viene la tentazione di dire "Ma perché io non mi prendo il mio vLLM, per citare un motore di inferenza, e me lo scalo con Kubernetes eccetera?" Qual è il vantaggio di affidarsi a... facciamo una domanda ancora più larga. Il professional open source, indipendentemente dagli LLM, spezziamo una lancia su questo. Perché Red Hat o perché, non necessariamente Red Hat, perché il professional open source?


## **[23:37] Inizio e complessità delle soluzioni AI**

**Daniele**

> Allora, di base un punto di partenza è sempre legato al fatto di dire che è molto facile partire con una soluzione magari fatta in casa. E che quindi di base sì, effettivamente prendi appunto vLLM come ottimo esempio, deployare un modello su Kubernetes con vLLM in linea di massima non ha una grandissima complessità, nel tempo ormai si è diventato abbastanza maturo e quindi più o meno funziona. Quale sarebbe il motivo per cui ho un valore aggiunto nell'andare a prendere una piattaforma magari che va a integrare più pezzi? Lì diventa un pochettino più nel guardare lo spettro end-to-end dello stack di cui stiamo andando a parlare.
>
> Perché anche già solo se parliamo di vLLM, faccio il deploy di un modello, in realtà perché un modello dietro le quinte possa utilizzare una GPU vuole dire che il nodo deve avere una GPU, che deve avere probabilmente un GPU operator o qualcosa del genere che ti rende la GPU disponibile, oppure utilizzi DRA, dipende quanto sei di frontiera sull'utilizzare Kubernetes. Quindi solo primo passo: devo riuscire, visto che gli LLM richiedono hardware dedicato, essenzialmente accelerator, devo avere questo supporto hardware dentro la piattaforma, quindi devo intanto riuscire a configurarlo e ad esporlo, e quindi già lì devo andare a prendere dei componenti software, spesso sono, anzi tendenzialmente sono i vendor dell'hardware che ti forniscono questa parte. E quindi lì siamo al passo base, siamo arrivati ad avere almeno una GPU nel mio cluster.
>
> A quel punto inizio a dire devo andare a deployare, poi devo andare però a gestire il ciclo di vita perché prima o poi un modello ne uscirà un'altra versione, oppure più del modello in realtà il motore di inferenza tipo vLLM ha un tasso di frequenza di aggiornamento, ma così come tutti gli altri inference engine attuali, che è veramente importante. Parliamo di centinaia di commit per ogni release, tipo l'ultima release mi sembra che erano più di 400 commit ed erano tipo due-tre settimane di lavoro. Quindi, come puoi immaginare, c'è un sacco di rischi: da una parte ovviamente che qualcosa si possa rompere e quindi c'è da ogni volta pensare di riaggiornare il tuo sistema ogni tre settimane, ogni mese, oppure lo decidi te ogni quanto, però a quel punto aumenta la quantità di test che devono andare a fare. E qui parliamo puramente di vLLM.
>
> C'è una parte più di deployment, cioè di orchestrazione del deployment, perché non vuoi andare a ripubblicare i tuoi modelli ogni volta che c'è un nuovo runtime, quindi non vuoi andare magari a metterli insieme. E quindi è un tema di più di Kubernetes, di orchestrazione, cioè adesso non voglio andare troppo nel dettaglio, ma era per dire che in realtà appena passi dallo day zero, cioè l'ho fatto funzionare, a ho più un tema di operation, quindi devo iniziare a gestirne tutti i cicli di vita, inizia ad aumentare molto la complessità operativa. E a quel punto molta di questa complessità in realtà non è veramente specifica per il tuo use case. La complessità che vedi te è la stessa che vede probabilmente un altro anche di un settore diverso.
>
> Quindi il fatto che se il mio modello lo usi in ambito bancario, ma se lo usi in ambito assicurativo, il ciclo di vita del modello, fare in modo che il runtime sia sempre aggiornato, sia sicuro, non abbia delle vulnerabilità note, che scali correttamente, che la nuova versione mi garantisca che sia compatibile con la precedente, tutta questa parte qua è una complessità operativa, operazionale che è costante. Se te la fai in casa ovviamente te la devi andare a coprire tu, la devi andare in qualche modo a pagare da solo. Pagare nel senso di know-how in casa che devi avere, che non è facile da trovare e che devi formare, perché tendenzialmente il team che ti gestiva Kubernetes ormai nel tempo magari è consolidato, ma qua richiede competenze un po' più nuove e ci sono delle skill aggiuntive che non è mai facile trovare sul mercato.
>
> Quindi, tendenzialmente, tutta questa premessa era per dire che una soluzione fatta in casa ti permette magari maggiore velocità all'inizio quando parti per una parte esplorativa, e magari ti dà una falsa sensazione che, fatta una volta, mantenerla in produzione più o meno sia la stessa cosa. E che quindi poi tendenzialmente si cerca più un vendor, come può essere OpenShift, come può essere Red Hat, per andare a gestire la complessità invece del day-to-day, proprio perché a quel punto ho intanto qualcuno che mi può aiutare e poi ho tutta questa parte di certificazione, di andare a verificare che le cose funzionano insieme.
>
> Perché uno dei problemi più grossi di quando parliamo di community open source è che ogni progetto è un po' un micromondo, e quindi ogni micromondo tendenzialmente se lo prendi in stand alone funziona. Cioè è raro che se il progetto non è proprio gestito male, che se prendo il progetto, prendo l'hello world e lo voglio utilizzare, non vada. Quindi per utilizzarlo lo puoi utilizzare, è anche testato, di solito hanno una CI, hanno un meccanismo comunque anche loro di validazione. Però quando inizi a integrare più pezzi e quando inizi a pensare lo stack completo, per forza devi integrare più pezzi, quella complessità di testare le integrazioni in realtà è raro che sia effettivamente fatta nella parte community, perché la parte community è più appunto una comunità di persone interessate a un argomento. Se parliamo di vLLM, ci sono dall'accademia ad aziende che sviluppano modelli, ad aziende che sviluppano hardware, che vogliono essere sicuri di dire che questo engine è capace di supportare ogni possibile modello su ogni possibile hardware il più veloce possibile, però non hanno magari l'interesse a verificare che funzioni insieme a tutto il resto dello stack, perché quello diventa più un problema utente.


## **[29:08] La scelta tra soluzioni interne ed esterne**

**Stefano**

> Io credo che con questo escursus il CTO sia convinto, nel senso che alla fine si semplifica la vita sua del CTO prima ancora che quella degli sviluppatori. Ma proviamo a convincere il CTO su un'altra cosa. In realtà adesso io dico il CTO, ma mi piace spaziare anche un pochettino di più su questo. Allora, la prima tentazione che però viene da dire è: va bene, però i signori di OpenAI, i signori di Google, i signori di Anthropic, magari un po' meno ma pure loro, mi vendono delle API bellissime, un po' care forse delle volte. Però perché mi devo portare in casa questa complessità? Un discorso l'abbiamo già fatto, che è tutto quello della normativa, dell'essere isolati eccetera eccetera. È secondo te comunque quella la parte trainante o intravedi, ragionando su un fronte temporale un pochino più lungo, diciamo tre anni, delle possibilità o delle necessità di specializzare i modelli?


## **[30:33] Futuro dei modelli linguistici**

**Stefano**

> Perché oggi quello che vediamo è che abbiamo un sacco di modelli, parlando di large language model, almeno lasciamo stare un attimo quella che è l'AI predittiva che è più consolidata e sicuramente è molto più on premise. Ma sull'AI generativa vediamo dei modelli generici che fanno un sacco di cose apparentemente magiche, poi in realtà quando vai ad utilizzarli per davvero nel tuo caso d'uso specifico puoi avere qualche criticità. E allora ti chiedo: tu come vedi da qui a tre anni large language model, small language model, fine tuning, specializzazioni, qual è la tua visione a medio periodo? Non dico lungo perché è impossibile.

**Daniele**

> Sì, allora, in parte ovviamente adesso stiamo un po' cambiando la domanda, nel senso la domanda precedente era un po' più legata al fatto del confrontare farselo in casa rispetto a prendere magari una versione più enterprise, però davamo già ovviamente un po' per scontato il fatto che avevi già comunque valutato che per te farlo girare in casa era la cosa giusta. Sono d'accordo con te che comunque invece se allarghiamo un attimo la discussione a dire "Ma la decisione di farlo girare in casa è quella che va per la maggiore?", beh intanto ovviamente dipende un po' dal tipo di dominio che stiamo guardando. Se guardiamo il mercato in generale, quindi che non va solo sull'enterprise, chi fa ad oggi girare on premise un modello in produzione, non ovviamente per motivi di studio, è ovviamente una piccolissima percentuale.


## **[31:51] Costi e sostenibilità delle soluzioni AI**

**Daniele**

> Come sarà, se anche mi limito alla parte enterprise, rimane ancora una percentuale minore. E anche in questa situazione è difficile un attimo dire fra tre anni come potrebbe essere. Ci sono varie situazioni che al momento rendono molto incerto questo tipo di scenario. I vari vendor, da OpenAI, ma anche Gemini con Google, oppure Bedrock, tutti questi vendor che ti forniscono queste API SaaS, tendenzialmente stanno ancora ovviamente cercando di far quadrare i conti. Vuole dire che per acquisire mercato fanno una competizione molto forte sul costo per token, e che quindi hanno dei prezzi molto aggressivi, soprattutto quando parliamo di enterprise. Non c'è ancora un vero modello sostenibile da un punto di vista di capire qual è la quadratura, cioè queste API che appunto in base all'uso che ne fai già possono essere abbastanza costose ovviamente. È difficile capire effettivamente fra tre anni il mercato sarà consolidato a livello di efficienza e quindi il costo per token diventerà talmente basso che alla fin fine probabilmente anche un'enterprise gli conviene fare una scelta di questo tipo.
>
> Quindi c'è un tema di costi che al momento è ancora molto variabile. Si vede che il trend sembra essere che ogni anno i costi si abbassino, nel senso che gli inference engine diventino sempre migliori e l'hardware sempre più potente, quindi che il costo per token diventi sempre più basso. Però appunto, ad oggi a parte chi vende hardware, in particolare Nvidia che ci sta facendo molti soldi, non c'è ancora un modello di business particolarmente stabile per capire effettivamente come fare un'assunzione un po' più di lungo periodo. Ma diciamo che possiamo assumere che riescano a ottimizzare abbastanza i costi, l'hardware e tutto per riuscire a essere sostenibili, quindi troveranno un punto di pareggio in base al tipo di workload.


## **[34:29] Ciclo di vita dei modelli e gestione dei dati**

**Daniele**

> C'è un altro degli aspetti che fa rientrare il discorso: quando dico on premise in realtà anche self-managed, nel senso puoi tranquillamente avere Kubernetes deployato, hardware virtualizzato oppure tramite AWS, quindi non è che per forza devi avere le alternative come cluster in casa su ferro fisico che vedo oppure SaaS, c'è anche ovviamente la versione cloud. Un altro degli aspetti critici è appunto il ciclo di vita del modello, perché l'enterprise tendenzialmente ha dei cicli di vita delle applicazioni che sono estremamente lunghi. Aziende come Red Hat, come IBM, come aziende che lavorano, ma anche Microsoft che lavorano con l'enterprise, sono abituati a supportare il software per, se non decine di anni, perlomeno più di cinque anni con estensioni di supporto, per permettere all'enterprise di dire, perché magari sono in ambito regolamentato, quindi ho certificato il mio cuore infrastrutturale, ogni volta che lo modifico è un progetto di più anni con un sacco di costi.
>
> E quindi in uno scenario in cui il modello è completamente servito magari SaaS, però la mia applicazione continua ad avere lo stesso tipo di criticità. Quindi quanto è probabile o qual è il rischio di cambiare un modello? Esce GPT-6, prendo GPT-6 rispetto a GPT-5 e dovrebbe funzionare out of the box. E quindi lì c'è un altro tipo di sfida che potrebbe portare un po' più di traffico in un contesto self-managed. Perché anche grandi player come appunto può essere OpenAI tendenzialmente cercano, appena esce il nuovo modello, di rimuovere il prima possibile in realtà quello precedente per un tema di infrastruttura, perché questi modelli per eseguirli at scale, al loro livello di scalabilità, si parla di interi data center dedicati a ogni modello. E che quindi ovviamente per loro è difficile che ti potranno tenere sette versioni diverse di modelli di OpenAI e tutte supportate alla stessa maniera.
>
> Quindi un altro degli aspetti che si vedrà più nel tempo, sarà da vedere in base a quanta l'adozione della generativa diventerà critica per l'enterprise. Questo potrebbe far cambiare la scelta, perché fino a che ad oggi l'adozione è molto più esterna al cuore dell'azienda, cioè vado a costruire degli use case, utilizzo la generative AI per migliorare esperienza utente, per sviluppare magari delle funzionalità, automatizzare determinati processi, però non è il cuore, non è ancora nel cuore critico.

**Stefano**

> Sì, è più una UI alla fine, cioè poter parlare in linguaggio naturale.

**Daniele**

> Sì, ma anche quando lo uso come backend, fra virgolette, non è utilizzato per dire, diciamo che OpenAI va giù e rimane off per una settimana. Nessuna delle banche, nessuna delle enterprise, nessuna delle aziende ad oggi mi aspetto che blocchi il loro business, cioè non è considerato un sistema critico. Quando diventa un sistema critico ovviamente diventa un po' più complicato nel riuscire a capire dove tirare la riga.
>
> Quindi, questo è per dire che hai: primo aspetto i costi che ovviamente ancora non si sa come saranno, ci sono dei modelli, non sappiamo effettivamente se si stabilizzeranno e che quindi ormai ci saranno pochi modelli vincitori e più o meno vinceranno loro. E poi il terzo aspetto è che invece diventa un po' più di dominio, un po' più l'approccio fra large language model più grandi e small language model. Quindi un altro degli aspetti che cambia drammaticamente i costi è che realisticamente uno non sta creando un altro ChatGPT, nel senso di un motore che deve poter rispondere potenzialmente a qualunque tipo di domande, qualunque tipo di query. Realisticamente in un contesto aziendale hai un dominio molto più definito, hai un dominio molto più chiuso da un punto di vista di che tipologie di domande, anzi tu vuoi che sia chiuso, vuoi evitare che possa allucinare, che inizi a fare delle cose che il modello non era stato fatto per fare.
>
> E quindi ci sono modelli che hanno ordini di grandezza più piccoli, letteralmente parliamo sotto i 20 billion se vogliamo dare una soglia, non c'è una definizione formale per small language model. Questi modelli ormai sono estremamente capaci se parliamo di task ben definiti, che possono essere da una summarization, estrarre informazioni da un testo, ma anche appunto nell'ottica di agenti ci sono dei modelli, soprattutto la famiglia Qwen, che è molto buona ad esempio per fare anche tool invocation. Quindi nel tempo un'altra delle possibili evoluzioni potrebbe essere che invece di cercare il modello "to rule them all", alla Signore degli Anelli che deve vincere tutto, può essere che ce ne saranno in ogni azienda, magari non decine, però magari cinque tipologie di modelli specializzate per determinati use case diversi che a quel punto posso specializzare magari proprio andando a farne del fine tuning o comunque della customizzazione un po' più spinta, quindi voglio portare nel modello magari una parte di questa conoscenza e a quel punto riesco ad avere probabilmente un costo di gestione molto più basso di quello che mi potrebbe dare un cloud provider proprio per il fatto che l'ho specializzato.


## **[40:27] L'importanza del background accademico**

**Stefano**

> Tu comunque vedi un futuro in cui la grande enterprise, ovviamente non parliamo del negozio della porta accanto, ma della grande enterprise con grandi sistemi, avrà comunque sempre più bisogno di persone che oltre a saper scrivere il software sappiano maneggiare i dati. Sto pensando al fine tuning che nominavi adesso, per cui quando si dice che i data scientist sono chiusi nelle torri, si sente dire questa cosa, io non la penso, ma sono chiusi nelle loro torri d'avorio di OpenAI piuttosto che di Google. Forse per certe cose sì, tanto quanto lo sviluppatore del sistema operativo sta chiuso nella sua torre d'avorio, ma abbiamo un esercito di sviluppatori poi nel mondo enterprise che fanno tutto il resto. Forse questo modello di sviluppo estremamente tecnico, quindi creare i modelli di base nel caso dei data scientist, resterà una cosa da torre d'avorio, ma mutuato a quello che è successo nello sviluppo ci sarà anche un maneggio dei dati del cliente più verso il cliente.

**Daniele**

> Sì, allora sicuramente se prendo di gran lunga ad oggi qual è lo use case, ma tipo a mani basse, che chiunque sta più o meno implementando, è quello RAG, che sarebbe semplicemente un modo semplice per andare un minimo a customizzare quello che il modello può andare a fare. Quindi classica cosa: il modello, ovviamente OpenAI o qualunque modello disponibile SaaS, anche appunto i vari Anthropic, non conosce nulla del mio dominio, non conosce i miei dati, non glieli voglio mandare ma voglio che il modello li consideri in fase di esecuzione.
>
> Se questo tradizionalmente in parte predittiva voleva dire fare del fine tuning classico, quindi vado a riaddestrare il modello, questo è possibile con le language model e richiede comunque un po' di hardware e dei costi non banali. Però ci sono comunque dei dati che sono un po' più vivi, cioè che cambiano molto di frequente e che quelli voglio poter andare a tirare fuori magari in fase di esecuzione. Quindi il tema del data management e di gestire i dati, anche se non voglio fare fine tuning, quindi anche se non vado a customizzare il modello, rimane chiave perché può cambiare drasticamente la qualità del mio risultato in un contesto RAG. Se gestisco correttamente, quindi normalizzo, faccio del chunking, cioè spezzo il testo in maniera corretta, rimane comunque vero il fatto che c'è questo tipo di lavoro che è legato comunque allo use case che devi andare a fare e che non si può evitare, anche se prendo un modello più potente possibile, anche se vado su un SaaS e quindi non mi porto niente in casa. Dovranno in ogni caso capire a che punto andare a mettere la loro logica, perché poi questa diventa tutto il valore aggiunto che possono poi avere effettivamente nella parte applicativa, perché quando vai a integrare il sistema è raro che tu usi il modello in astratto, cioè che non debba conoscere qual è il tuo dominio per rispondere.

**Stefano**

> Ci riporta anche un po' al discorso dell'explainability perché, al di là dello strumento tecnico Trusty AI o altri, per poter spiegare che cosa succede dentro un modello bisogna capire i dati e saperli maneggiare. Quindi di nuovo un pochettino torniamo anche a quel discorso di explainability che tanto abbiamo visto essere chiave sull'adoption nel mondo enterprise.
>
> Su questo ti porto un attimo fuori dal contesto strettamente tecnico, perché tu hai anche, e mi viene in mente su questa cosa, tu hai anche un background accademico forte tanto che, adesso non so se siete ancora particolarmente attivi, ma eri uno degli organizzatori di Papers We Love a Milano, se ricordo bene, che è questa meetup per parlare di paper accademici. Allora ti faccio questa domanda: tu che lavori nel mondo enterprise, ti occupi, se mi permetti, dell'implementazione più stretta, non sul ferro ma poco importa, di quella che è l'AI, ti chiedo, secondo te quanto il background accademico, il capire i meccanismi matematici alla fine che ci sono dietro a questa cosa ti ha aiutato? Cioè se tu parlassi, invece prima abbiamo parlato con la nonna della porta accanto, se parli con il nipote di quella nonna che deve iniziare a fare un percorso, che cosa gli diresti oggi?


## **[44:47] Curiosità e Approfondimento nel Mondo del Lavoro**

**Daniele**

> Se guardiamo adesso più a qualcuno che si affaccia al mondo del lavoro oppure anche in ambito di studio, sicuramente uno degli aspetti che era vero prima e rimane ancora più vero adesso, in un mondo con l'intelligenza artificiale che si muove a questa velocità, è comunque di essere sempre curiosi e di approfondire. L'ecosistema di community, Milano ad esempio, è molto ricco. Avevamo cercato di creare, la stiamo ancora un po' portando avanti quando riusciamo, Papers We Love come iniziativa, per cercare di offrire una piazza anche non solo per un approfondimento più tradizionale e tecnico del "c'è questa nuova libreria, questo nuovo software, proviamolo", ma anche del "cerchiamo di capire come funziona".
>
> Quando si gratta un po' la superficie e si guarda un po' più a fondo, cerchiamo di capire come funziona. Questo è verissimo negli LLM, ma è vero in realtà in tantissimi aspetti. Ti porta ad avere quella maggiore conoscenza e anche quella capacità di analizzare un po' meglio sia quello che devi andare a utilizzare, ma sia anche come in tutte le fasi di hype, quindi c'è una nuova tecnologia, tutti vogliono utilizzarla, ovviamente sembra che sia l'uovo di Colombo che va bene per qualunque cosa e che possa risolvere qualunque problema. Questo tipo di minimo di pensiero critico nel capire dove posso utilizzarla o dove non posso utilizzarla è difficile averlo se non si ha un minimo di background da un punto di vista del "approfondisco come funziona, voglio capire un attimo dentro la parte interna". Magari poi non hai bisogno di andare sulla parte più matematica interna veramente del come è implementata la Transformer Architecture o comunque come è definita come architettura, però riuscire ad andare un po' più dentro nelle cose è chiave. E questo vale ovviamente come consiglio generico per qualunque sia il percorso in ambito computer science, ma anche se poi ovviamente ne farei uno diverso.
>
> Quindi abbiamo un vantaggio in un ambito, diciamo, nostro ambito lavorativo che non abbiamo delle barriere all'ingresso che sono legate a normative. Quindi chiunque può, anche senza titolo di studi, ovviamente approcciarsi a questo mondo. La verità è che però, senza aver avuto un po' un background accademico, non per forza magari master degree, però comunque approfondendo e avendo abbastanza curiosità nel guardare un po' dentro le cose, è difficile che poi si riesca ad essere efficaci nell'approcciare nuove tecnologie o nuovi problemi.
>
> Quindi è ovvio che quando ho studiato all'università non era nemmeno stato creato il primo paper a livello di Transformer Architecture, quindi quando si parlava di intelligenza artificiale si parlava di reti neurali oppure più tradizionalmente da random forest a linear regression, cioè clusterizzazione, quindi quella che è più quella predittiva, quella più tradizionale, quella più consolidata. Però appunto anche quando poi c'è una rivoluzione come può essere la parte dei large language model, in realtà quel tipo di background e anche capire come, se torniamo e ci ricolleghiamo alla parte dell'explainability, capire come un problema che c'era prima c'è ancora, sì o no, e se c'è ancora posso riutilizzare le stesse soluzioni. Ecco questo tipo di ragionamento è la parte che dovrebbe essere il bagaglio migliore che ti lascia il percorso di studi.
>
> Questo è ovvio che è un discorso abbastanza generico, per alcuni può valere di più, per altri valere di meno. È ovvio che il mondo dell'informatica ha vari tipi di lavori. Alcuni di questi lavori sono magari più legati a implemento un requisito di business e quindi è meno sul come funziona, ma qual è la domanda del mio cliente. Però come uno non sa dove la propria carriera lo porterà, quindi se uno deve partire e approcciarla, secondo me avere tutti gli strumenti e poi in base al tipo di percorso che prenderà ne approfondirà alcuni rispetto ad altri, rimane comunque ancora molto importante.


## **[47:35] L'importanza del Background Tecnico**

**Stefano**

> Sì, perché sai cosa? Questo è un commento mio. Io vedo molti nostri colleghi, diciamo colleghi intendo nel mondo dell'IT in generale, non necessariamente sviluppatori o altro, che hanno l'atteggiamento un po' di rifiuto, perché la complessità è alta, io penso che sia quello, dicendo "Ma no, ma i large language model per me sono una black box e la uso così". Io la risposta che do sempre è: "E quindi quando facevi lo sviluppatore di un linguaggio di alto livello, che sia C, Java o altro, perché ti hanno fatto studiare l'assembler, come sono fatti i processori?" Te l'hanno fatto studiare perché avere quella conoscenza, anche se poi non l'applichi direttamente, ti rende un programmatore migliore. E se oggi i large language model sono il sistema operativo, come dice Karpathy, di questo nuovo modo di fare informatica, è fondamentale capirli. E capirli vuol dire capire un po' di statistica, di matematica, di regression e tutte queste cose.

**Daniele**

> Sì, se uno guarda una persona che ha una carriera molto forte in ambito sviluppo software e utilizza i framework più tradizionali, tendenzialmente comunque uno dovrebbe aver guardato prima come funziona, ovviamente va bene come per come quel progetto è stato creato, ma poi capirne un po' come funziona dentro e approfondire sempre la parte più di internals, perché è quella poi che ti permette di comprendere meglio in qualche modo quando le cose non vanno, o se devo anche disegnare, devo creare un nuovo sistema, una nuova applicazione, capire quali percorsi posso andare a prendere e quali non prendere.


## **[50:39] Evoluzione e Rivoluzioni Tecnologiche**

**Daniele**

> Quando lo approcciamo in un contesto un po' più disruptive come può essere la parte di large language model, c'è un talk di una persona che ho sentito un anno fa che paragonava le tre rivoluzioni che lui vedeva, quella precedente, quella attuale e quella futura. La prima era il bit, quindi in generale la computazione, quindi capire come funziona l'hardware. Poi usava come seconda rivoluzione il neuron, quindi la parte che l'intelligenza artificiale generativa sta portando come impatto. E vedeva come potenzialmente prossima generazione la parte del qubit, quindi la parte del quantum computing.
>
> E cercava in qualche modo di collegarli non perché siano collegati fra di loro, ma perché l'impatto che può avere da un punto di vista di disruption è paragonabile. Quindi se appunto quando parlavo di uno sviluppo tradizionale software andavo a fondo fino a capire un compilatore, e se io so come funziona un compilatore questo mi permette di scrivere magari del codice migliore, più mantenibile, più veloce, più performante, allo stesso modo se io so come funziona, se lo approccio nella stessa maniera idealmente come nuovo argomento, se approfondisco un po' la parte matematica che c'è dietro, questo mi permette anche di capire cosa effettivamente è realistico e cosa no. E la stessa cosa vale per ogni rivoluzione tecnologica o comunque rivoluzione in generale.

**Stefano**

> Sì, sono assolutamente d'accordo con te. E questa cosa qui che abbiamo, ci siamo un attimo spinti a parlare di sviluppatori software, di compilatori e tutto quello che abbiamo nominato adesso, non può che portarmi alla domanda che tendenzialmente in una forma o in un'altra faccio a tutti quelli che si occupano di sviluppo che sono passati davanti a questo microfono.


## **[53:26] Vibe Coding e AI Assisted Coding**

**Stefano**

> E quindi, se dico vibe coding o AI assisted coding, chiamalo come vuoi, a me il vibe non piace tanto come definizione, anche se stimo Karpathy, non amo quella definizione lì perché, o meglio, la amo per quello che è il vibe coding, che secondo me non è quello che fa uno sviluppatore. Ma qui entriamo nella mia opinione, ma voglio la tua. Che cosa mi dici di scrivere codice con l'aiuto dell'AI? Lo usi? Se sì, come? Cosa ne pensi? Pregi, difetti?

**Daniele**

> Allora, è ovvio che è sempre difficile valutare una tecnologia così tanto rivoluzionaria quando è ancora così presto fra virgolette. Quindi c'è sempre questo effetto magico del "scrivo, fammi l'applicazione, è fatta" che all'inizio mi dà e poi appena scopro che però, ah sì, però in realtà non fa esattamente quello che avevo in mente ma che non gli ho detto di fare, dico "No, quindi è inutile". E quindi si passa velocemente dal "è una rivoluzione" al "anche questo strumento non lo potrò utilizzare".
>
> Quindi ci sono già quelli che teorizzano il fatto che scrivere codice sia ormai una cosa che non servirà più in generale, perché comunque questi modelli saranno sempre migliori, quindi il software engineering per come lo conosciamo non esisterà più. È ovvio che fare valutazioni di questo tipo è sempre complicato e si tende a finire a delle previsioni che sembrano un po' più oroscopo del tipo "chissà fra sei mesi, in base al tuo segno zodiacale, il tuo ascendente, vediamo come va a funzionare".
>
> Vibe coding stretto, nel senso di dire scrivere codice con la parte di prompt, non mi sta capitando di farne tanto. È anche vero che non vedo una definizione formale di cos'è vibe coding, ognuno c'ha un pochettino la sua idea. Diciamo che la parte comune è che non scrivi tu il codice ma lo fai scrivere dall'LLM, ma come interagisci con questo modello per generare l'applicazione che vuoi, quello cambia molto.
>
> Una buona analogia potrebbe essere quella del fatto di dire che se lo paragoni a una parte come potrebbe essere più, magari che sembra meno disruptive come impatto, che potrebbe essere la parte di pair programming. Quindi stai facendo magari mentoring a una persona che è molto brava tecnicamente perché ha studiato ogni possibile libro, ma non sa esattamente qual è il problema che stiamo andando a risolvere. La devi guidare, gli devi dare un po' delle indicazioni perché se gli dici "Guarda, io devo fare una roba", potenzialmente tirerà fuori delle cose estremamente belle ma che non sono applicabili, non possono funzionare. Quindi uno dovrebbe, secondo me, inizialmente approcciarlo e a mano a mano che impara a capire quali sono le cose, quindi a migliorarne meglio il contesto.
>
> Ci sono delle iniziative come Spec Kit di GitHub che cercano in qualche modo di tornare a uno scenario che un po' mi ricorda in realtà l'ingegneria del software, quella un po' più tradizionale degli anni '80, in cui vado a descrivere quello che mi serve e poi basta.


## **[56:30] Interazione con i Modelli di Linguaggio**

**Daniele**

> In realtà però sono tutte evoluzioni che cercano in qualche modo di rendere una codebase esplicita in termini di quali sono i tuoi principi cardine, quindi quali sono le tue regole, qual è il set di principi che devono essere utilizzati. Che sono appunto, anche se non ci fosse un LLM, se lo scrivi tu, dico io mi approccio a una community, devo provare a contribuire, teoricamente dovrei cercare di seguire lo stesso stile di codice, gli stessi principi, fare le cose nella stessa maniera. Se nel tempo si arriva ad avere questo livello di maturità, in realtà la parte di vibe coding non diventa una cosa così mitologica o così oscura, diventa semplicemente una composizione naturale soprattutto su quello che è stato fatto. Quindi ormai hai un'astrazione, hai una definizione, hai estratto questo tipo di informazioni, le hai più o meno un attimo consolidate. Quindi vedo sicuramente quella come un percorso che non lo vedo così irrealistico o così una roba proprio da rompere gli schemi.
>
> Mentre invece quello che ad oggi in realtà il mio utilizzo principale da parte dell'LLM, anche per il ruolo che ho, in realtà è più a livello come strumento di analisi. Quindi appunto gli dai un repo, gli dici "Guarda, devo un attimo capire come fa questa parte", quindi per cercare di estrarre informazioni, oppure anche dico "Questi sette link o questa documentazione", quindi come strumento l'interazione è come se fosse veramente un contesto in qualche modo di pair programming.
>
> Per questi tipi di use case è ovvio che devi guardare bene il risultato perché può allucinare. E lì è anche un po' legato al fatto che ogni modello risponde in maniera diversa, viene sollecitato in maniera diversa rispetto al tipo di prompt, e che quindi devi anche riuscire a capire lo strumento. Qua è ovvio che diventa un discorso filosofico barra etico, però potenzialmente lo puoi approcciare proprio come dire "Ho un nuovo collega" ed è ovvio che devo capire qual è il modo migliore per interagire con questo collega. Questo collega in qualche modo può fare delle cose molto meglio di me, ma magari non ha al momento delle conoscenze che io ho. E che quindi in realtà non dovrebbe essere visto come una specie di sfida del tipo "Vediamo se ce la fa se non gli dico abbastanza cose", oppure diventa appunto quelle dinamiche tossiche di team in cui dico "No, lasciamolo andare a sbattere, vediamo dove va a finire, così dico vedi che non è capace". Ecco, non dovrebbe essere quello.

**Stefano**

> Sì, c'è un po' questa dinamica tossica, credo, nei confronti degli LLM da parte, chiamiamoli degli scettici, se li vogliamo chiamare così.

**Daniele**

> Allora, è ovvio che questi tipi di fenomeni si materializzano sempre quando da una parte c'è gente che lo considera quasi ormai un problema risolto, che "No, ok, basta", fa uno statement molto forte, "software engineering no more", nel senso non ci sarà più software engineering. Perché è ovvio che quello ti genera anche dei rigetti che sicuramente è un estremo estremamente al momento da verificare e non mi aspetto che sarà vera come cosa.
>
> E poi appunto è un tema proprio anche di maturità degli strumenti. Alcuni fanno un'analogia un po' impropria del dire "Eh, ma tanto tu non guardi mai il compilatore e l'assembly perché ti fidi del fatto che il risultato sia lo stesso". È un'analogia impropria perché ovviamente il compilatore ti dà una garanzia di determinismo del fatto che quella cosa verrà eseguita nella stessa maniera, mentre invece un LLM non te la dà. Però in realtà ci sono già un sacco di scenari in cui, se volessimo, anche qua però è facile finire nell'etica e nella filosofia, il requisito stesso di solito non è deterministico, nel senso il requisito di software, di business che ti ottieni tendenzialmente è suscettibile a delle interpretazioni e nel tuo lavoro in realtà cercare di andare a renderlo ben definito e di fare le domande giuste per renderlo definito. E questo tipo di paradigma in realtà non è che viene tagliato, viene semplicemente utilizzato con uno strumento diverso.


## **[59:37] Il Ruolo dello Sviluppatore nel Futuro**

**Stefano**

> Sì, esatto. La domanda forse è proprio quella. Qual è il lavoro vero dello sviluppatore? È quello di scrivere il codice o è quello di capire i requisiti? Forse tutte e due, tradurre in un linguaggio formale quello che gli viene chiesto attraverso dei requisiti che intrinsecamente non sono formali. Tra l'altro facevo questa conversazione qualche intervista fa con un nostro comune amico, Mario Fusco, a cui io ho proprio lanciato la provocazione, sapendo che era una provocazione, dicendogli "Siamo passati dalle schede Hollerith all'assembler, dall'assembler a linguaggi di più alto livello, poi gli oggetti, poi i linguaggi funzionali. Ma allora il linguaggio naturale è il prossimo livello di astrazione?" E lui mi ha risposto come te, giustamente, come avrei risposto io. Però voleva essere una provocazione: tutto vero, ma fino al funzionale hai parlato di linguaggi formali. Nel momento in cui vai nel linguaggio naturale sei intrinsecamente in un linguaggio che non è formale e quindi può avere interpretazioni. E tutte queste cose, poi gli strumenti migliorano, ma...

**Daniele**

> Ci sono un sacco di evoluzioni che ancora siamo veramente all'inizio perché appunto quando iniziamo a fare agent-to-agent, comunque agenti che fra di loro potenzialmente comunicano, il fatto che utilizzino un linguaggio naturale per comunicare è un derivato del fatto che in realtà noi in qualche modo abbiamo costruito questi sistemi come language model. Quindi in realtà ci sono un sacco di aspetti o comunque di direzioni di ricerca ancora da andare a esplorare.
>
> Si vede la potenzialità, cioè si vede effettivamente e chiunque abbia utilizzato ChatGPT all'inizio vede oggettivamente che, se prendiamo il primissimo esempio, il chatbot è stato il primo use case che è diventato di massa e che quindi tutti ci hanno interagito. Se lo paragoni a un qualunque chatbot alternativo precedente, è proprio un mondo diverso, nel senso la capacità di interagirci con un linguaggio naturale in maniera naturale come se stessi parlando con una persona, e la capacità di questo modello di perlomeno riuscire a prendere qual è il contenuto principale, quindi qual era effettivamente il cuore della mia domanda, non sono paragonabili, è proprio una rivoluzione.
>
> Questa è la potenzialità che triggera un pochettino il fatto di dire "Ok, ma dov'è il limite?". È ovvio che ogni volta che c'è un nuovo filone si finisce un attimo a dire "Tutto potrebbe esserlo". Se faccio un salto enormemente indietro e lo guardo poi da un punto di vista in ambito enterprise, è ovvio che non è nemmeno detto che se si dimostra la fattibilità questo avrà l'impatto pervasivo, perché c'è un sacco di automazione più tradizionale che si potrebbe fare che ancora magari in ambito aziendale è ancora immatura per mille altri motivi, perché i requisiti non sono mai stati chiariti, non c'è mai stato fatto questo tipo di investimento.
>
> Quindi è sempre molto speculativo dire "Risolviamo il problema, abbiamo trovato un modo con cui diamo un formato pseudo-formale con cui scriviamo un requisito e questo genera del software". Come funzionerà rispetto a un sistema legacy? Io ho delle codebase estremamente legacy e quindi una delle iniziative su cui ho iniziato a fare qualche esperimento era una specie di scoring, tipo agent rating, per dire cerchiamo di capire se una codebase è adatta o applicabile. Perché è ovvio che più vado su cose magari legacy oppure custom in cui ho fatto delle robe completamente strane, diciamo non canoniche, e più vado a confondere magari questi modelli. Quindi è molto onestamente interessante vedere quanto velocemente questa ricerca sta andando avanti. Da lì poi a capirne effettivamente fin dove può arrivare, ovviamente diventa veramente palla di cristallo.

**Stefano**

> Questo di sicuro. Poi mi riaggancio ad un'altra cosa che dicevi, su cui io mi sento di spezzare un pochino una lancia. Dice che qualcuno comincia a dire che il ruolo dello sviluppatore non esisterà più e lo sviluppatore non serve più perché se tutti possono scrivere codice attraverso il linguaggio naturale, a che cosa serve lo sviluppatore? Io qui faccio sempre il paragone dicendo che ad un certo punto, qualche anno fa, adesso non so dare un numero, una decina, si è detto "Ma le foto non si stamperanno più perché si vedono tanto bene nei monitor, ci sono anche le cornici digitali", e quindi il lavoro dello stampatore è finito. Che magari il piccolo stampatore può essere vero. Ma se si vanno a guardare i numeri, in realtà sono aumentate tantissimo le stampe. La sensazione è che ognuno di noi stampa molte meno foto, ma il volume di foto che viene prodotto attraverso le macchine digitali, i telefonini e tutte queste cose ha portato al fatto che è vero, prima stampavamo il 100% delle foto, oggi stampiamo l'1%, ma quell'1% è molto maggiore del 100% precedente. E probabilmente è quello che potrebbe succedere al software. Probabilmente gli sviluppatori propriamente tali scriveranno l'1% di tutto il software, ma quell'1% sarà molto maggiore del 100% di oggi, perché ci sarà tutto un software che oggi sono fogli Excel, invece saranno software, ma che non portano via veramente lavoro allo sviluppatore, ma semmai a chi fa oggi i fogli Excel.


## **[01:02:32] Gestione dei Fallimenti nel Mondo Enterprise**

**Stefano**

> Ma sul costruire tutta questa infrastruttura, invece tornando un attimo al discorso più tuo, del tuo lavoro, come secondo te si gestiscono, soprattutto nel mondo enterprise, i fallimenti di questa cosa? Perché nominavi prima che non tutto ha sempre un impatto. A me viene in mente banalmente il cloud che ha avuto sicuramente un grandissimo impatto, ma forse almeno nel mondo enterprise un pochino meno di quello che ci si aspettava, si sperava, che è veramente alto ma nasconde in realtà un successo tale che nasconde un successo ancora maggiore che avrebbe potuto avere, perché comunque l'enterprise va avanti ad usare anche i mainframe per stabilità e queste cose. Io quello che mi chiedo è: il mondo enterprise secondo te è pronto a gestire i fallimenti? E ancora più, se estendo un po' la domanda che è forse la parte più interessante, i fallimenti intesi come unpredictability. Sono abituati ai sistemi deterministici, sono abituati a testare tutto quello che fanno. Qui si parla invece di valutare gli eval in gergo, valutare la bontà media statistica di un sistema, cioè si passa da un sistema deterministico a un sistema statistico. Quella cosa qua come la conciliamo con le banche e con la difesa americana? Se la conciliamo!

**Daniele**

> Tendenzialmente, ad oggi non la conciliamo, nel senso che ad oggi, ovviamente, come tutte le nuove tecnologie si inizia ad andare per assessment di risk management, nel senso qual è il rischio che posso accettare per un determinato use case. E questo viene applicato praticamente come decisione per ogni scelta che viene presa. Quindi posso accettare il rischio che una risposta statisticamente stabile, ma non deterministica, mi porti a un risultato sbagliato. E questa valutazione ovviamente è una valutazione che è molto specifica di dominio. In ambito europeo in generale l'approccio normativo è molto diverso e quindi con strumenti tipo le AI Act si impone proprio di valutare il rischio dello use case rispetto a questo, capire che tipo di cosa posso andarci ad applicare o meno. E poi questa assessment definisce solo il quadro normativo.
>
> Poi ogni realtà deve, ed è ovvio che parliamo di realtà regolamentate, quindi enterprise grosse, ogni realtà deve poi andare a definire, a classificare quello. Di base è sempre un po' legato al fatto di qual è il danno, nel senso qual è il danno, che cosa può andare male. In base a quello decidi anche quanto critico è quel sistema. Tendenzialmente le enterprise sono molto risk-averse, cioè per loro il rischio che una cosa vada male è una roba da mitigare, è sempre una roba da minimizzare. Il valore aggiuntivo, la parte di business in più che possono ottenere, è sempre comunque da valutare rispetto ovviamente a qual è il rischio che possono andare a gestire.
>
> Il discorso rimane un po' astratto, ma se lo prendiamo nel caso concreto, è facile fare l'esempio bancario perché è una realtà su cui andiamo a interagire quotidianamente, ma anche in ambito assicurativo, in ambito compagnie aeree, medico. Sono sempre delle situazioni in cui ovviamente il costo, qual è l'output di una decisione sbagliata? La vita di un paziente. Se stiamo parlando di un sistema che monitora i parametri vitali di una persona e magari automaticamente cerca di inferire tramite un modello di intelligenza artificiale il rischio che ha di infarto nei prossimi minuti, il rischio è che se quel modello sbaglia, potenzialmente la persona può avere un impatto di salute anche grave. In quel senso lì, la possibilità di accettare o meno il rischio del fallimento è molto legata al fatto del costo. Qual è il costo del fallimento?

**Stefano**

> Ma guarda, io su questa ti stimolo con un altro tipo di domanda che si lega anche un po' alle AI Act, perché leggendo un po' le AI Act, non sono un legale e capisco fino a pagina due probabilmente, però quello che viene fuori leggendolo per me, ed è un po' quello che toccavi tu in qualche modo, è che sembrerebbe che l'errore umano sia più tollerato di quello statistico. Perché comunque si chiede di valutare un rischio, ma difficilmente, almeno io non l'ho trovato così chiaro, c'è un paragone a quello che è l'errore umano. Perché hai ragione, se un sistema di monitoraggio cardiaco nell'1% dei casi sbaglia e porta alla morte del paziente, viene assolutamente non preso in considerazione e potrei dire capibilmente. Se però sull'altro lato del piatto metto quante volte un medico fa lo stesso errore, un altro errore di valutazione che porta allo stesso danno, probabilmente più dell'1%. Però il nostro essere antropocentrici ci porta ad accettare di più l'errore umano o a non valutarlo del tutto a priori e soltanto gestirlo a valle. Questa è una cosa che forse non sempre si considera.


## **[01:13:06] Gestione del Rischio e Fiducia nei Modelli**

**Daniele**

> È una riflessione molto valida ed è un po' anche legata, ovviamente, come per motivi evoluzionistici siamo tentati sempre di essere un po' più scettici delle cose nuove. Ovviamente quella che conosciamo è sempre più semplice. Se voglio darti una chiave di lettura un po' meno sui massimi sistemi, c'è da dire che il paragone tiene fino a un certo punto, perché nel caso di un medico che sbaglia abbiamo dei modi, fra virgolette, di punire e che quindi cerchiamo di mitigare il fatto che possa risuccedere, perché posso fare in modo che quel medico non lavori più, posso avere dei controlli aggiuntivi e quindi posso cercare di andare a costruire un insieme di azioni per andare in qualche modo a gestire la cosa.
>
> Quando parliamo di un modello, il modello ovviamente non ha sensazioni, ha il vantaggio che ad esempio non ha stanchezza, quindi il medico ha sbagliato perché era la decima visita nell'arco di un'ora perché era sovraccarico e lì non è nemmeno colpa sua, mentre in quel senso l'algoritmo te ne può fare 100 in un secondo e non ti darebbe nessun tipo di problema di stanchezza. Quindi c'è un tema di riuscire ad adottarne, averne maggiore fiducia.
>
> Ancora quando andavo all'università c'era venuto a fare un webinar un'azienda, una startup che aveva creato un sistema che analizzava praticamente l'elettrocardiogramma in particolari situazioni e riusciva automaticamente a tirare fuori, a riconoscere le aritmie o i casi particolari. Però comunque per riuscire a farlo accettare poi dai medici avevano dovuto poi comunque andare a stampare l'intero tracciato in modo che poi la decisione finale fosse del medico, anche se appunto in quel caso era una roba algoritmica, potevo tranquillamente andare a riconoscerla.
>
> E lì c'è un tema più di fiducia, di rischio. Se l'AI sbaglia, da una posizione dei massimi sistemi, di chi è la colpa? Vado a fare causa all'ingegnere o al data scientist di OpenAI che ha creato quel modello? E quindi in questo discorso qua, in un ambito di gestione del rischio, avere una situazione di un attore che può sbagliare, però non abbiamo leve di nessun tipo per cercare di anche solo non perderci dei soldi, perché a quel punto ovviamente il risk management è molto legato a dire: qual è il rischio e qual è la conseguenza? Se questa cosa va male, chi ne paga?


## **[01:15:09] Responsabilità e Agenzia nell'Utilizzo degli LLM**

**Stefano**

> No, tocchi un punto importante che abbiamo toccato tante volte in podcast e forse anche in un paio di interviste l'ho toccato già, che è il tema dell'agenzia in senso americano, agency. Cioè parliamo tanto di agenti, ma alla fine l'agency, quindi la responsabilità per dirlo in italiano, delle azioni degli LLM, di chi è? Si dovrebbe arrivare probabilmente, se verrà, ad un punto in cui il professionista si assume il rischio utilizzando il tool come uno strumento. Che sembra stranissimo, però in fondo è la stessa cosa che fa chiunque usi una calcolatrice. Se uso bene la calcolatrice è deterministica e quindi è un po' diverso, ma comunque qualunque tool io vado ad utilizzare, dall'idraulico che usa la chiave inglese e la deve utilizzare correttamente per non rompere il bullone invece che riparare, allo stesso modo si arriverà al punto in cui ci sarà l'operatore che si prende l'agenzia di chi opera per lui. Tutto ha un costo, e quindi il prendersi quella responsabilità sarà quantificato semplicemente.
>
> Faccio una battuta su quello che dicevi, che comunque gli LLM o in generale l'intelligenza artificiale può allucinare. Io dico sempre che anche le persone allucinano.


## **[01:17:00] Etica e Fiducia nell'Intelligenza Artificiale**

**Daniele**

> C'è proprio un tema molto etico su queste cose. C'è proprio il fatto di dire che ci fidiamo delle persone e prima che la fiducia la applichi su altri strumenti, vuoi perché non li conosci, vuoi perché hanno una complessità che oggettivamente non è comprensibile. Non posso spiegare cosa vuole dire che un modello LLM ha letto letteralmente ogni possibile libro che è disponibile attualmente sulla faccia della Terra. Questo è un concetto che non riesci a interiorizzare.

**Stefano**

> Sì, certo. Quindi se ci muoviamo leggermente da qui, perché mi hai stimolato questa domanda parlando della parte di quanto antropomorfizziamo le cose. Noi ci siamo mossi verso i large language model perché apparentemente capiscono e parlano come facciamo noi. Stiamo costruendo robot umanoidi e tutti dicono "Ma perché? Non è la forma più efficiente". No, in teoria in pratica se si deve muovere in una casa che è stata disegnata per la nostra forma, è meglio che abbia la nostra forma.
>
> Tu credi che sia soltanto questo a guidare? Cioè, proprio l'esempio dei robot è calzante, ma vale anche per i large language model. Tu pensi che sia soltanto questo? Cioè, stiamo costruendo qualcosa che il più possibile ci assomiglia perché è più efficiente, o anche perché ci dà più comfort avere a che fare con qualcosa di simile? Se noi sentissimo due LLM che parlano tra loro a 56 bit come facevano i modem, non capiamo niente. Se abbiamo un robot che parla con noi parlando in italiano o in inglese, forse è meglio. Tu credi che sia soltanto questo oppure è il modo migliore per andare a quello che tutti chiamano AGI o superintelligence? Che cosa manca? Perché poi è soltanto la parola che ci porta lì o c'è di più? Domanda difficile.


## **[01:19:13] Antropomorfizzazione e Comprensione dei Modelli**

**Daniele**

> Sì, ovviamente sono domande che hanno, da quando si è definito il concetto di intelligenza artificiale, in realtà iniziano anche dal test di Turing, a dire qual è un'intelligenza, come faccio a definire che una cosa è intelligente e come faccio a definire a quel punto che è abbastanza intelligente, se vogliamo provare a banalizzare.
>
> In questo, infatti, è anche molto interessante vedere come con gli LLM, in particolare la Transformer Architecture, si è trovata un'architettura per fare delle reti neurali che scalano in maniera molto grande e che quindi riescono ad avere, con la definizione di attention, un comportamento che riesce a fare delle cose che sono particolarmente innovative per la dimensione che riescono ad avere. Questo però in realtà è più la parte di pre-training, cioè come macinano l'impossibile e ottengo quello che si chiama base model, che non è quello che nessuno di noi utilizza perché noi utilizziamo di solito un modello allineato, un modello che ha fatto del post-training, dell'alignment tuning, dove quindi ha imparato a fare cose.


## **[01:21:46] Architettura dei Modelli e Allineamento Etico**

**Daniele**

> C'era un'analogia, era un blog post mi sembra di IBM Research, che era interessante, che lo paragonava un po' al contesto delle tre leggi di Asimov, in cui, se anche ci ricordiamo solo il film, il robot ha più o meno tutte le capacità, ma in realtà senza quelle tre leggi, fino a che non gli dai i principi etici di base, non riesce a interagire. E che quindi in questa fase di alignment dove impara ad esempio a seguire istruzioni, a rispondere a domande oppure a fare dei coding task, cose di questo tipo, già qui dimostra il fatto che in realtà abbiamo trovato una cosa particolarmente interessante, cioè la Transformer Architecture con la parte di attention, e poi però per poterla rendere applicabile abbiamo dovuto insegnare un po' di più di cosa ci aspettiamo noi.
>
> Quindi lì potenzialmente vorrebbe dire, abbiamo un'architettura che scala e che potenzialmente può imparare a fare cose, ma poi in più ho dovuto fare una fase aggiuntiva di reinforcement solo per renderla in qualche modo interagibile con noi. Ovviamente non abbiamo la controprova che ci sarebbe stato un modo migliore per allinearle, magari verrà anche fatta a un certo punto.
>
> In una situazione in cui interagisci, l'esempio tuo della robotica è calzante, in una situazione in cui interagisci con tutti gli altri attori, hanno un determinato comportamento perché sono umani, aggiungere qualcosa in più è più facile se si comporta in maniera analoga in qualche modo. Non è di sicuro, ripeto, nella comunicazione, come dicevi tu, nell'esempio dei modem fra di loro che comunicano, il linguaggio naturale è una roba ambigua, è una roba che ha una grammatica formalizzata ma ogni linguaggio ha un sacco di regole ad hoc. Se pensi a come si pronunciano le parole in inglese, che molti principi non sono per niente stabili, ogni parola ha una pronuncia diversa anche se hanno la stessa sequenza magari di caratteri. Perché è così?

**Stefano**

> E verbi irregolari.

**Daniele**

> Esatto, ma perché praticamente in realtà è una successione di cose storiche che nel tempo si sono accumulate. Non è che c'è una persona particolarmente fantasiosa che ha deciso di inventarsi le regole di come funziona la lingua. Questi modelli sono molto bravi a estrarre essenzialmente questi tipi di pattern, che quindi riescono a riprodurli in maniera molto efficiente.
>
> Non escluderei, non vedrei affatto un problema ad applicare la stessa metodologia, assumendo di avere abbastanza dati, per fare una fase di pre-training non basata su testo naturale, anche perché i modelli tendenzialmente non lavorano su testo, lavorano comunque nella parte numerica, c'è una parte di tokenization, quindi una parte in cui passo dal testo naturale a una rappresentazione numerica, e a quel punto quella rappresentazione numerica per il modello è un token, è un numero, non è in realtà una parola particolare che gli dà un significato, è una rappresentazione e una sua distribuzione e quindi lui genera quel numero. Quindi potremmo utilizzare la stessa tecnologia per addestrare modelli completamente diversi su dei paradigmi completamente diversi e potrebbe funzionare molto bene.

**Stefano**

> Interessante. Io racconto questa cosa qui che ho letto in un paper perché credo possa essere anche vagamente divertente per qualcuno degli ascoltatori. Credo forse ChatGPT che ha delle regole di allineamento specifiche per dire i punteggi a tennis in inglese. Perché, non so se sapete, quando uno dei due giocatori è a zero si dice "love", non si dice zero, "fifteen-love". Questo perché è un motivo storico, perché a tennis ci giocavano il re e la regina e loro non potevano mai essere a zero, non poteva essere assegnato lo zero al re. E questo è il motivo storico per cui nel tennis si usa quella strana numerazione. E ovviamente il modello non lo sapeva fare fino a quando non gli è stato spiegato in maniera specifica perché per lui era una parola che con il punteggio non c'entrava nulla, quindi ha bisogno di queste cose.


## **[01:26:58] Futuro dei Modelli di Base e Open Source**

**Stefano**

> Ti faccio l'ultima domanda provocazione perché stiamo andando lunghi come al solito, avremo ancora mille cose su cui vorrei parlare con te, ma proviamo a chiudere su una cosa che è in qualche modo strettamente enterprise, ma che mi viene da un'intervista che ho sentito abbastanza di recente di Ilya Sutskever, ammesso che io lo stia pronunciando bene. In cui lui diceva che uno dei motivi dei successi dei Transformer, che lui dice sarà un successo anche nel mondo enterprise on premise e queste cose, è che è molto facile da spiegare ai C-level nella sua base di potenza, cioè tu metti più soldi, ottieni un modello migliore perché puoi trattare più dati, puoi avere più GPU. La legge di scalabilità è molto più affascinante per un ricercatore, ma ancora più affascinante per un CEO, perché per lui è facilissimo capire più soldi più potenza.
>
> Quindi la provocazione è un po' questa: più soldi più potenza. Ma è vera questa cosa qui, o ad un certo punto il mondo enterprise avrà bisogno di un cut-off, trovare un modo, e torniamo a quel discorso che facevamo prima di fine tuning, allineamenti, eccetera, per farsi in casa l'ultima parte del training e customizzare veramente i modelli sul loro business, sia per un'explainability che per un controllo dei costi? Il futuro di questa parte qui dove la vedi andare? In questo senso l'on premise, tra virgolette che dicevamo prima, può essere vincente anche per la parte di training? Cioè tu ci vedi qualcuno che in futuro farà il training di modelli di base per quanto piccoli? Chiedo.

**Daniele**

> Allora, training di modelli di base? Intanto non sono tanto d'accordo sull'analogia precedente di dire più soldi maggiore qualità, perché in realtà lo si sta già vedendo anche che modelli estremamente grandi non è detto che performino meglio rispetto ad altri, e anche a parità di dimensioni la qualità dei modelli, ci sono modelli che sono estremamente migliori di altri, vuoi perché stiamo imparando meglio ad addestrarli. Quindi è vero il fatto che ci metti i soldi per addestrarli meglio.

**Stefano**

> Beh però se ci metti i soldi per addestrarli meglio...

**Daniele**

> Fino a un certo punto, perché poi c'è il momento di DeepSeek, in cui hanno dimostrato che praticamente hanno addestrato un modello con circa due ordini di grandezza meno, quindi si parlava di decine di milioni di dollari contro le centinaia, se non i miliardi, per addestrare un ChatGPT. Perché nel tempo impari tecniche migliori, impari anche scorciatoie, impari varie cose. E che quindi l'addestramento di foundation model, quindi proprio di pre-training, quindi parto da zero, faccio molta fatica a vederla come una roba applicabile su larga scala a tante aziende, per un semplice fatto anche puramente di efficienza. Perché questi modelli, torniamo al discorso, parliamo quindi di language model che comunque alla fine lavorano con linguaggio naturale, c'è un sacco di conoscenza di base che tutti devono in qualche modo addestrare e non avresti un vero valore nel ripartire da zero. Devo insegnargli che cos'è il concetto di mela, perché a un certo punto, anche se il mio business domain è diverso.
>
> Perché una delle cose che ci sono, il concetto di model collapse, cioè modelli che in qualche modo a un certo punto, vuoi perché li stai riaddestrando con dati sintetizzati, quindi non più dati reali ma dati in qualche modo derivati, iniziano a degradare in maniera forte a livello di performance. È difficile capire esattamente qual è il ground truth, cioè definire un concetto di verità di base su cui tutti i modelli devono avere. Che è quella senza la quale, anche se il tuo dominio è diverso, io comunque in realtà non riesco a interagire con le persone perché mi mancano proprio i concetti base del linguaggio. Riaddestrare questa parte è comunque uno spreco di risorse.
>
> Quindi mi aspetterei di più una situazione in cui ci si focalizza su pochi base model magari, quindi nemmeno riallineati, e su questi poi venga fatto alignment anche magari particolarmente custom, rispetto a proprio partire da zero. Proprio per un discorso di logica, nel senso sarebbe come dire parto talmente da zero che prima mi creo un linguaggio che non è inglese, che non è italiano, prima invento un linguaggio con cui interagire e a quel punto vado a definire. È ovvio che mi conviene molto di più partire da un linguaggio che già conosciamo. E anche qua se abbiamo un base model che ha i concetti base di che cosa vuole dire interazione, logica, concetti proprio di ragionamento, che sono proprio, se pensiamo a un neonato che parte, che di base è solo istinto, quella base di istinto deve averla. Poi dopo il resto lo può prendere, ma se non parte nemmeno quello, gli devo reinsegnare, devo ricostruire un cervello umano che abbia quella parte di istinto, ovviamente sto sprecando un po' di risorse.

**Stefano**

> Sì, chiaro. E quindi giusto per chiudere e riagganciarsi all'open source che tanto ci appassiona, questi modelli di base già pronti in qualche modo e poi da fine-tunare eccetera, qui vedi l'open source, come l'open source nei modelli, quindi open weight almeno, come il futuro possibile? Cioè io faccio fatica a vedere Gemini, ChatGPT e Claude dati alle aziende per fare una specializzazione. Sembra che loro vogliano restare nella famosa torre d'avorio di prima. Quindi sul mondo enterprise, di nuovo, l'open source può dire la sua?

**Daniele**

> Vedo sicuramente la possibilità che i modelli open source o open weight, sono d'accordo con te, quindi il fatto che siano disponibili e uno li può andare a modificare, siano una buona base di partenza se uno vuole andare a customizzare, perché a quel punto ho la possibilità di partire da qualcosa che è già stato creato. Ad oggi in realtà la forza maggiore della comunità open source è sicuramente nel condividere i modelli, ma molto di più nel condividere quei technical paper che spiegano come stanno migliorando, come li hanno addestrati.
>
> L'impatto di tipo DeepSeek è stato veramente forte proprio perché ha migliorato non solo il modello, ma ha fornito proprio anche, ha spiegato come effettivamente è stato fatto, cosa hanno fatto, quali sono state le tecniche, quindi sono riusciti a ricostruire la stessa pipeline di training in isolamento e quindi poi questa è stata utilizzata per fare altri modelli. Questo è proprio l'effetto moltiplicativo dell'open source, del fatto di comunità nel condividere. Se ne parliamo di software, condividi il codice, condividi le funzionalità, la community open source nell'ambito dell'AI continua a condividere il software perché l'ecosistema, la community di PyTorch, di Hugging Face, vLLM, questi progetti condividono lo stack software che è chiave, perché ad oggi il fatto che se parliamo anche solamente di inferenza, l'esecuzione di un modello adesso costa dieci, cento volte meno è proprio perché c'è stato tutto questo sviluppo di ottimizzazioni, compreso dell'hardware ovviamente.
>
> Quindi c'è spazio per andare a fare customizzazione di modelli on premise o comunque self-managed con i propri dati. Ad oggi l'incognita che avrei è nel capire fino a dove riesci ad arrivare facendo solamente context engineering, quindi andando semplicemente a fare RAG o comunque tecniche di arricchimento del contesto, quindi anche tramite agenti dove cerco di essere molto furbo in quanto vado a inserire. Non ho esattamente ancora un'opinione forte sul fatto se questo riesce a spingere abbastanza la qualità del risultato e la customizzazione del risultato per rendere meno necessaria una parte di customizzazione o di fine tuning del modello.
>
> Di base, anche qua, se parliamo di un concetto di base model, dovremmo perlomeno poi averne uno per area di business in qualche modo. Come per la conoscenza di base, potrei avere della conoscenza di base in ambito assicurativo che sa come funziona un'assicurazione, sa qual è il linguaggio. Facevi prima l'esempio del tennis, ecco, conosce il linguaggio tecnico di quel dominio in modo che non devo andargli a rispiegare che nel tennis le cose si dicono in un certo modo. Quello è un mondo più, secondo me, da system integrator, cioè io posso andare a costruire dei modelli customizzati per il tuo segmento, e poi manca a quel punto la parte che solo tu puoi fornire, sono i tuoi dati, il tuo valore specifico.
>
> E lì è dove appunto ad oggi sicuramente va per la maggiore più scenari di context engineering, quindi vado ad arricchire il contesto.

**Stefano**

> Sì, quello che viene chiamato in-context learning, no?

**Daniele**

> Esatto, perché a quel punto in realtà stai andando essenzialmente a modificare il comportamento, però lo stai facendo in una maniera in cui non stai alterando il modello. Però appunto a un certo punto l'equilibrio è: se devo mettere troppe informazioni di contesto, tipo appunto un glossario, se io ogni volta devo dare il mio glossario che spiega il mio contesto, nel mio contesto "pratica" per me vuole dire mutuo, nel tuo contesto "pratica" vuole dire nuova assicurazione, un altro contesto e quindi tutte queste informazioni se spreco il contesto soltanto per darle ogni volta, allora sono un ottimo candidato per andare a mettere nel modello. E questa è quello che mi aspetto diventerà in ambito aziendale enterprise il primo passo nell'ottica dell'ottimizzazione dei costi. Perché a un certo punto poi diventa quella la chiave: perché dovrei sprecare il contesto se è un problema? Perché a quel punto ogni volta il modello deve riscoprire una cosa che in realtà potrebbe già sapere.

**Stefano**

> No, certo. È interessante questa cosa che dici, insomma, del trovare l'equilibrio tra il fine tuning e l'in-context learning. Forse quell'equilibrio, hai detto bene tu, è per settore. Guarda, su questa cosa che lascia spazio a riflessione dagli ascoltatori che saranno arrivati tutti sicuramente fino qua, che è sempre un po' un rischio con le interviste lunghe che non arrivino, ma io mi auguro che arrivino perché, come dico sempre, vogliamo fare con queste interviste l'anti-social, cioè dare spazio all'ospite, in questo caso Daniele, di esprimere la sua visione non con 160 caratteri perché può diventare un po' complicato delle volte. Quindi io ti ringrazio tantissimo per l'interessante conversazione. L'invito a tutti è sempre di seguirci eccetera eccetera, quelle cose lì, marchette che non mi vengono neanche bene.

**Daniele**

> Dovresti farle all'inizio della puntata, non alla fine. La regola social è sempre che il tempo inizia.

**Stefano**

> Delle volte mi ricordo di farlo all'inizio, la maggior parte no, arrivo alla fine quando non mi ascolta più nessuno. Non fa niente, pazienza. Davvero, grazie ancora. Per gli ascoltatori mettiamo un po' di link ai talk di Daniele o articoli in descrizione. E alla prossima. Grazie ancora. Ciao.

**Daniele**

> Ciao.
