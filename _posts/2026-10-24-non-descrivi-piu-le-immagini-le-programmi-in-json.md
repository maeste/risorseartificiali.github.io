---
title: "Non descrivi più le immagini: le programmi in JSON"
date: 2026-10-24
layout: episode
author_profile: true

episode_number: 77
episode_type: numerato
youtube_id: rzXCmvk89qo
description: >-
  E' uscita un'ondata di modelli per la generazione immagini: prompt in JSON,
  diffusion che scrive codice e open weight da 8GB di VRAM. Benchmark
  skateboarder compreso.
spotify_episode_id: 5tT49Yk79ttvVon3tQoz8z
# apple_episode_url: da aggiungere post-publish Apple (T+4-24h)
duration: PT1H11M

header:
  og_image: /assets/images/episodes/ep77.png

categories:
  - Puntate
tags:
  - generazione immagini
  - diffusion model
  - modelli open weight
  - prompt strutturati
  - AI engineering
---

## **[00:00] Apertura: modelli immagine e agenti personali**

**Stefano**

> Eccoci qua, bentornati e bentornate a Risorse Artificiali. Oggi puntata in cui parliamo di immagini, perché sono usciti un sacco di modelli sulle immagini. Parliamo anche di pull request review e poi di nuovi modelli che sono usciti, e Skateboarder. Cos'altro? Beh, poi c'è da dire anche, appunto, dei modelli, e di Duet, diciamolo subito quello: non abbiamo ancora avuto modo di provarlo, facciamo presto. Ma anche Claude è uscito con il suo sistema di agenti personali: che novità, pensate, un'idea innovativa che non ha avuto nessun altro, tra l'altro, in questo periodo. Cioè, a parte OpenAI, Meta, Grok, Instinct, tutti quelli che già c'erano prima, dei vari open source eccetera: un'idea nuova, nuova, nuovissima. Beh, dimenticavo Google, che ha fatto l'annuncio dei multi agenti, lo dicevamo settimana scorsa. È un trend evidentemente, che io capisco essendo un utilizzatore attivo di Hermès. E poi dopo vi racconto una roba. Ma non lo so, secondo voi c'è qualcuno che verrà fuori più forte?

**Alessio**

> Io sono Stefano.

**Paolo**

> Che deve esserci stato problema di sicurezza informatica legato a PHP, e qualcuno deve essergli entrato nel computer, secondo me. Quindi sta a noi reggere la conversazione. Io stavo comprando un... Non lo so, adesso non ci è dubito che andremo avanti con questa registrazione, ma nell'ipotesi che ciò avvenga, immagino che l'unica cosa che rimanga da fare sia che adesso noi come Risorse Artificiali proponiamo il nostro agente e piattaforma ad agenti personali.

**Alessio**

> Capaci?

**Paolo**

> Sì, prendiamo Erminio, che è il nostro non sveglissimo assistente di preparazione per podcast.

**Alessio**

> Intendi quella cosa che gli dici di fare la scaletta e lui sta ancora ragionando sulla settimana prima?

**Paolo**

> Sì, oppure quando mi confondo gli dico aggiungi questo, lui lo aggiunge ma non so mai a che cosa lo aggiunge: bisogna educarlo un pochettino, non è proprio sveglissimo. Sì, facciamo questa cosa. Peraltro adesso stiamo perdendo tempo: metà stiamo cazzeggiando, metà stiamo inventando. Sai che la gente lo fa, davvero, questa cosa di convincersi o di credersi di avere tra le mani un prodotto che potrebbe vendere a qualunque livello? Ovviamente c'è il mondo delle startup, questo fa, però di solito lì c'è un minimo di ragionamento, almeno un minimo. Alcune sono proprio che non hanno le gambe, alcune ce l'hanno, hanno solo bisogno di un po' di fortuna. E su tutto questo non ho niente contro, anche quelli che non hanno le gambe, dici vabbè, però almeno... c'è creduto fino in fondo, hai fatto un business plan, cavolo. La parte più folle secondo me è il canale di Reddit che ho iniziato a monitorare da quando ho realizzato Antivocale, per pubblicizzare un pochettino. C'è un canale in cui fondamentalmente ti permettono di pubblicare, di pubblicizzare le tue app e così, perché altrimenti viene vista come spam, ovviamente, questa cosa di segnalare le app, mentre in alcuni è consentito. E in quelli in cui è consentito, in continuazione ci sono pubblicazioni di nuove app random, potrebbe essere Antivocale ma anche meno intelligenti, cioè tipo la mia to-do list personale così, in cui le persone che le pubblicano hanno delle altissime aspettative di cosa succederà della loro app, e ti dicono, per i primi 30... le persone che si scrivono: i primi 30 giorni è completamente gratuito, per la vita. E me li farò ridere, non capisco se sono ragazzini, neanche delle superiori, delle medie, che sono convinti di poter fare questa cosa. Sono proprio scioccato. Da un lato è interessante perché qualcuno ha delle idee nuove e combina insieme dei pezzi, e allora è comunque curioso. Ma molte no, tipo ecco la mia nuova variante di calendario di Google Calendar. E sti cavoli, grazie che me lo dai gratis per la vita, ma neanche se mi dai soldi tu probabilmente lo installavo. Siamo andati avanti come se avessimo quasi fatto finta di niente, Stefano. Quasi fatto finta che tu con il piede non abbia staccato il cavo, no?

**Alessio**

> Sei... e comunque non ti sentiamo al momento.

**Paolo**

> Non ti sentiamo. Però questa credo di averla capita, quella parola che hai detto: credo "porta vittoria", hai detto qualcosa del genere? Sì, sì, esatto. E quindi niente... vediamo: di solito, a mio avviso, il litmus test, la cartina tornasole che ci dice se abbiamo toccato il fondo nelle iniziative commerciali informatiche: se Tim e Vodafone provano a inventare anche loro lo stesso servizio che ha inventato Google quattro anni prima, e si sentono Google, e allora ti dicono: guarda, per i nostri clienti, a solo 9 euro e 99 puoi avere l'agente personale che funziona peggio di quello degli altri.

**Alessio**

> Vediamo, stiamo attenti alla pubblicità.

**Paolo**

> La tua macchina non ti vuole fare anche da agente personale, e ti dice: guarda che ti è arrivato il pacco al locker e devi andarlo a ritirare, o queste cose qui.

**Alessio**

> No, allora, intendiamoci: chiaramente c'è un qualche tipo di sponsorizzazione di pubblicità verso Grok. Direi di no.

**Paolo**

> Cerca di convincerti a diventare un driver di Uber, o così così.

**Alessio**

> Tra i miei figli hanno apprezzato la modalità Halloween in questi giorni.

**Paolo**

> Mi hanno mandato uno screenshot: anche perché la macchina diventa un fantasma volante, che mi sembra molto appropriato dagli avvenimenti della settimana passata.

**Alessio**

> Sì, mi si è attivata un giorno che qui diluviava di brutto: più che lenzuolo del fantasma doveva mettere su un impermeabile. Comunque la cosa più...

**Paolo**

> Ciao Stefano, sei tornato!

**Stefano**

> Sono tornato. Mi è morto un hub USB così in diretta, e quindi non andava più né il microfono né le telecamere: prima era tutto attaccato all'hub USB, adesso ho attaccato tutto al computer, sembra che funzioni. Avete fatto bene? No, non credo.

**Paolo**

> Noi abbiamo fatto buon viso e cattivo gioco. Probabilmente perderemo il 75% degli ascoltatori, ma a tutti gli effetti siamo andati avanti: show must go on.

**Stefano**

> No, no, show must go on, assolutamente. Cioè, ecco, cerchiamo di non morire in diretta che fa impressione, però... poi chi la monta? Poi se muoio io, chi è che monta? Sì, ma chi è che monta la puntata se muoio io? Per dire!

**Paolo**

> Stai male: quanti visualizzazioni facciamo? Ma sai quanti visualizzazioni facciamo? Fa niente! Sacrificati per il gruppo!

**Alessio**

> Comunque lasciami dire questa cosa, per concludere il discorso: la cosa figa dell'Halloween Mode della macchina è vedere come reagiscono le persone quando tu chiudi la macchina e ne vai, e dopo qualche secondo, invece di aver chiuso la macchina, senti un rumore un po' tenebroso di fantasmi, mostri eccetera. La gente...

**Paolo**

> La risata delle streghe!

**Alessio**

> Salta per aria, perché non si aspetta questo rumore.

**Paolo**

> È geniale, è geniale. Però, avendo visto l'anno scorso quella natalizia, non vedo l'ora di quella natalizia: quella natalizia è proprio una maledizione per i genitori e per la gioia dei figli.

**Stefano**

> Avete visto che volano anche adesso le macchine, come quella di Alessio? Più che altro atterrano.

**Alessio**

> Sì, non proprio quella.

**Stefano**

> Più che altro atterrano, perché tutti hanno detto "macchina volante": no, macchina atterrante, più che volante però va là.

**Paolo**

> Io ve l'ho già detto: voi avete interpretato male quella presentazione. Quello era un tentativo di Elon di partecipare al nostro benchmark, soltanto che lui ha più risorse e, anziché farglielo fare al modello, glielo ha fatto fare la macchina.

**Alessio**

> La cattola.

**Paolo**

> Gli ha fatto l'halfpipe con la macchina.

## **[08:36] Skateboarder: i nuovi modelli e le velocità**

**Stefano**

> L'ha fatto live? Sì, ecco: che mi dai subito il gancio per l'halfpipe. Allora, facciamo subito l'halfpipe, intanto che il mio USB regge. Allora, sono usciti i modelli nuovi e io ho fatto lo skateboarder. L'ho fatto di tre modelli che adesso vi mostro, appena riesco a condividere il mio... Allora, di quattro in realtà, scusate: uno non è uscito questa settimana, ma è arrivato un contributo da uno dei nostri contributor, lo stesso che ha contribuito già altre volte, che ci ha mandato DeepSeek 4.1 flash, nuovo, tanto minimal, che è proprio minimal. Cioè, quando si dice minimal, ha interpretato bene il minimal. E poi sempre Lorenzo...

**Alessio**

> Beh, l'ha fatto bello ripido il bordo del...

**Stefano**

> Fatto bello ripido. Poi sempre Lorenzo ci ha mandato... no, scusate, questo qui è di Psyche, minimal, e ce l'ha mandato anche con Strand che, a parte che non... che questo è più simile alla macchina di Elon, che non tocca mai terra, vedete?

**Paolo**

> Aspetta, però quando è in alto è divertente! Scusate, mi...

**Stefano**

> Condannare il tuo...

**Paolo**

> Sono girato un istante.

**Stefano**

> E poi è uscito un altro modello molto piccolo, che Alessio proverà sulla sua macchina, e anche Lorenzo ha detto che proverà sui suoi, perché il nostro ascoltatore, che ne ha due di DGX Spark, mi ha detto che è Flint, che però non ha capito benissimo in minimal che cosa intendevo, cioè lì in alto che vola, mentre Constraint ha qualche leggerissimo problemino a capire il verso delle cose. Però insomma, è un modello molto molto piccolo: 40 billion, 2 e mezzo attivi, di cui dicono molto bene nel coding. A guardare quello che fa qua, non so se io lo proverei per le cose mission critical. Poi questo...

**Alessio**

> Allora, io non avevo ancora visto il benchmark, diciamo che avevo dei...

**Stefano**

> Mhm.

**Alessio**

> Dubbi su quando, dove metterlo nella coda delle cose da provare: mi sa che forse provo prima qualcos'altro. E anche perché avevo detto che non...

**Stefano**

> È molto veloce, ha quella caratteristica lì: cioè fa tipo 158 token al secondo su un DGX Spark, che è interessante.

**Alessio**

> E, a tal proposito, avevo detto che non ne avrei parlato in puntata, ma tanto ormai oggi la puntata è alternativa, mettiamola così: parlando di velocità, sul mio hardware credo che proverò prima un'altra cosa. Nel senso che, se da un lato vediamo che migliorano i modelli eccetera, come dicevamo già anche altre volte nelle ultime settimane, c'è un'ingegnerizzazione spinta per cercare di utilizzare le peculiarità dei vari... lo specifico, il mio, che ricordo essere un AMD Strix Halo: oltre alla parte di CPU e GPU ha un'NPU che al momento nessun modello veniva a utilizzare. È uscito un fork di llama.cpp, di cui abbiamo parlato qualche settimana fa, che è un inference engine particolarmente ottimizzato specificatamente per il mio hardware, che divide la parte di pre-fill in parte sulla GPU e in parte sull'NPU e, per rimanere su questo discorso della velocità, risolve tanti problemi nell'accelerare il pre-fill, che è punto critico con alcuni modelli tipo Flash 3.8 Next. Quindi, però ero prima quello, credo.

**Stefano**

> È uscito anche Minimax 3.1 flash che invece disegna meglio: non fa un gran lavoro sulla fisica o sul capire cosa deve fare. Come minimal, questo è Constraint: non fa un gran lavoro sulla fisica però è sicuramente disegnato, questo disegnato carino, peccato che non abbia capito cosa doveva fare, cioè lui i trick li fa, è sull'halfpipe però non si muove mai.

**Alessio**

> Da fermo.

**Stefano**

> Fa i trick da fermo.

## **[13:31] Mercury 3: il diffusion model che scrive codice**

**Stefano**

> Però, riguardo alla velocità che dicevo prima, vi invito a guardare i tempi: Minimax si mette 550 secondi per fare tutti e due, Flint 125 e 87, ottenendo un risultato scarso, per carità, però diciamo che si vede che ha puntato tutto sulla velocità. Ma, quando parliamo di velocità, allora, io sono andato a vedere anche cosa riesce a fare Mercury. Allora, questo non capisce che cosa deve fare, un po' come non capiva Luna che salta un tubo, però vedo che è una confusione che hanno in tanti modelli. E Constraint invece fa un discreto lavoro, a parte che lo mette a testa in giù, diciamo: assomiglia un po' a Terra come risultato. Però guardate i tempi, 119 secondi e 69 secondi, ma per generare non i 18.000 token che generava Flint, ma 56.000 token, quindi facendo un lavoro molto più complesso. E perché? Perché Mercury è un diffusion model text. E l'ho provato per quel motivo lì: è il primo diffusion model che proviamo con questo benchmark, perché in teoria i diffusion model non sono nati per testo, formattare, programmare e così, e invece alla fine fa un discreto lavoro, a una velocità warp rispetto ai modelli tradizionali.

**Alessio**

> Sì, perché la critica su quelli è sulla qualità, tendenzialmente.

**Stefano**

> Invece, con l'ultimo, uscito l'altro giorno, questo Mercury 3 di Inception: il lavoro che fa è comunque buono, a livello degli, appunto... no, Sonnet 5.5 fa meglio, un Terra più o meno, un Luna o un Aiku. Però a una velocità assolutamente superiore, quindi questo in qualche modo lo rende interessante. E relativamente ai modelli nuovi, sui modelli di testo non c'è molto altro da dire: che fosse in arrivo il Minimax l'avamo già detto settimana scorsa, era un modello molto atteso perché è un po' più piccolo del precedente, molto più veloce, nonostante non sia velocissimo secondo me, e molto buono, molto portato per la programmazione. Loro se lo fanno abbastanza pagare. Però dovrebbero uscire oggi, credo, o domani con l'open weight: quindi lo vedremo girare anche su altri provider come OpenRouter. Quindi un altro attore che si affaccia, c'è un altro attore, il Minimax.

## **[16:40] Minimax, Quen e la scacchiera AI cinese**

**Stefano**

> Tra l'altro, Minimax si configura nel mondo cinese un pochettino più come Google si configura nel mondo occidentale, perché adesso ha tutta la proposta multimodale, generazione video, generazione immagini, magari meno spinti sulla parte programmazione di quanto non sia ZAI con GLM, o meno spinti sul generalista gigante come Kimi, che invece si spinge su quello. E invece tende a fare un po' tutto, un po' come fa Quen: anche Quen ha quell'impostazione lì. Però secondo me Quen, sulle singole cose, ha punte più alte rispetto a Minimax, almeno al momento. Ma c'hanno anche più soldi: ricordiamoci che Quen è fatto da Alibaba, quindi AliExpress, il più grande concorrente mondiale di Amazon.

**Alessio**

> Io credo, in realtà, che su alcune cose Minimax sia messo anche meglio di quelli, cioè tipo sulla generazione video.

**Stefano**

> Video.

**Alessio**

> Minimax H3 fa tanto. Comunque sì, concordo sul...

**Stefano**

> Sì, sul multimodale, sì. Magari sulla parte più di sviluppo, di development vero e proprio, forse è lì meglio.

**Alessio**

> Sì sì, ma anche perché lì, almeno poi magari adesso domani esce un modello nuovo e mi smentiscono, sui modelli di generazione di testo Minimax, come parte, dice anche il nome, hanno cercato di fare modelli non troppo grossi, mentre Quen ha seguito il trend del trilione di parametri sui modelli di punta, e quindi forse per quello sono rimasti un pelino più indietro Minimax.

**Stefano**

> Sì, probabilmente sì.

## **[19:09] Fibo 2.0: prompt strutturati in JSON per le immagini**

**Alessio**

> Senti, ma parliamo un po' di immagini, magari?

**Stefano**

> Parliamo di immagini, perché altre grosse novità sono arrivate nel mondo di generazione immagini. Immagini e video, o solo immagini?

**Alessio**

> Immagini e video, ma soprattutto immagini, che condividiamo qualcosa. Va bene, diciamo che partiamo da qua: Artificial Analysis, come probabilmente ricordate, oltre ai leaderboard sull'intelligenza generale, sulla generazione del codice, eccetera, ci sono anche quelli su Text to Image, Image Edit. Come vediamo qui, abbiamo dei nuovi soggetti: abbiamo Flux 3, Klein, abbiamo Fibo 2.0, abbiamo Crea, se ricordo bene Crea 3 Ultra, nuovi player tutti più o meno usciti in questi giorni. Quindi sono andato un attimo a guardare che cosa c'è di nuovo, e ci sono varie cose. Allora, prima di tutto partiamo da Fibo per dire: Fibo 2.0 è un modello di... che c'è da questa azienda, Bria AI, è un player nell'ambito della generazione di immagini, ha un loro servizio in cui vendono servizi di editing di immagini, eccetera. E se ne escono con questo modello che ha una serie di particolarità.

**Stefano**

> Lo proverei, perché è open weight.

**Alessio**

> Sì, perché hanno fatto sia la versione open weight che la versione, diciamo, a servizio: sostanzialmente rivendono, vendono un servizio basato sulla versione open weight, con tutta una serie di loro migliorie in fase di serving del modello. È interessante perché punta sul discorso dei prompt strutturati in formato VGL. Sostanzialmente è JSON: loro hanno fatto training del modello facendo vedere al modello questi prompt strutturati, che è un trend, non sono gli unici, poi dopo parliamo di Moss Image. Il senso è che con questo sistema loro hanno un controllo più preciso su come vengono generate le immagini. Esisteva già questo formato VGL, semplicemente adesso il modello è molto più forte: genera immagini più belle, più fedeli, eccetera, per cui sono andati un attimo alla rincorsa, perché, appunto, andiamo a guardare di nuovo qua, su Text to Image, sugli open weight sono quasi allo stato dell'arte degli open weight, che era quello Quen Image 2.1. È interessante, perché avere un prompting basato su un formato tipo questo di VGL consente di integrarsi meglio con gli agenti, perché in questo formato sostanzialmente uno può definire le caratteristiche dell'immagine, l'ambientazione, i soggetti, l'illuminazione, la posizione degli oggetti, eccetera, e quindi si presta a un lavoro che potrebbe fare un LLM, o comunque un agente che utilizza un LLM, per generare i prompt. È un modello open weight: come vi facevo vedere, sostanzialmente siamo quasi al top delle classifiche. Poi è uscito Moss Image...

**Paolo**

> Alessio, scusami, mi è partito un pensiero laterale quando spiegavi il prompt engineering per modelli visuali, e mi chiedevo se possa essere un esperimento interessante cercare di fare risolvere il demo dello skateboarder da questi modelli: possiamo fare un flipbook di descrizioni e vedere se magari non facciamo un risultato migliore, piuttosto che se possa essere un risultato intermedio da passare poi agli altri modelli di programmazione.

**Alessio**

> Non sono sicuro di aver capito esattamente cosa intendi.

**Paolo**

> E... noi, quando chiediamo allo skateboarder, ai modelli, di crearci lo skateboarder, gli diciamo: voglio un'animazione con un bambino che va sullo skateboard, sull'halfpipe, che salta e fa i salti, cavolo. Quello che gli diciamo: se noi gli diciamo la stessa cosa al modello di generazione delle immagini, lui magari uno screenshot ce lo dà, giusto, posso immaginare, o comunque ci dà qualcosa che potrebbe anche essere giusto, tendenzialmente. Potremmo noi dargli, non lo so, 30 frame di descrizione, e lui ci potrebbe produrre i fotogrammi, e potremmo incollarli insieme. Potremmo vedere se risolvere un problema da un altro approccio possa comunque portare qualcosa di pratico nella soluzione di quello che stavamo cercando di fare.

**Stefano**

> Sicuramente anche i modelli di generazione video sono capaci di fare questa cosa: forse è anche molto molto più facile per loro fare questo genere di cose qui.

**Alessio**

> Sì, sicuramente. Io non avevo capito cosa intendevi, onestamente. Partendo da immagini, un paio, i modelli di generazione video ti possono fare assolutamente il filmato, e verrebbe anche molto più fluido e realistico del...

**Paolo**

> E...

**Stefano**

> Sarà interessante vedere la fisica come va.

**Paolo**

> Sarebbe interessante quello, e comunque, in ogni modo, mi verrebbe da chiedermi se noi poi dessimo quell'output, buono o cattivo, come input aggiuntivo agli altri modelli a cui stiamo dicendo "creacelo solo software con l'animazione", porterebbe a un risultato...

**Stefano**

> Probabilmente viene meglio.

**Alessio**

> Mmm.

**Paolo**

> Migliore o peggiore? E se porta a un risultato migliore, dovremmo aspettare che qualcuno dei frontier model metta questo nostro workflow di multistep dentro il modello stesso? Questa cosa succede? Noi non lo sappiamo.

**Stefano**

> Vai sì.

**Alessio**

> Modelli multimodali, tipo...

**Stefano**

> Gemini.

**Alessio**

> Gemini, ma anche restando sull'open weight mi viene in mente quei tre vision language che possono leggere.

**Stefano**

> Sì, di sicuro gli stiamo dando tanto contesto in più, probabilmente generano un risultato...

**Alessio**

> Sì sì, assolutamente. Mi è fatto venire...

**Stefano**

> Per concludere...

**Alessio**

> ...l'idea di provarli, perché noi abbiamo provato solo modelli testuali puri. Potrebbe avere...

**Paolo**

> Piuttosto che un harness che faccia proprio la cosa che abbiamo descritto, quindi laddove la richiesta reale è che tu mi crei il software dell'animazione, il prompt che devo dare al generatore di immagini non può essere lo stesso, perché deve avere quantomeno una dimensione temporale che ti dice: voglio l'immagine al t1, al t2, al t3. Magari un harness che faccia questo mestiere qua, di descrivere i prompt del t1, del t2, del t3, e darti il risultato.

**Stefano**

> No, ma è interessante, un altro tipo di test, con harness in mezzo, con un sacco di cose in più. Cioè quello che fa oggi quella roba lì, come tutti quelli che generano SVG di varia natura, è fare il prompt secco sul modello, senza harness in mezzo: cioè chiamo solo l'API, quando faccio quella roba lì, per vedere cosa fa il modello con un prompt sempre uguale. Nel momento in cui introduci l'harness... così, c'è un commento che fa venire in mente: abbiamo ricevuto un commento da un ascoltatore che dice "ma io l'ho provato sull'ultimo Sonnet, mi pare, o sull'ultimo Opus, non mi ricordo, e dà un risultato molto migliore". Io gli ho chiesto in un altro commento "ma come l'hai provato?". È dall'applicazione web? Però l'applicazione web, in quanto tale, è un harness ormai: le applicazioni web dei grandi vendor di modelli sono un harness, e di sicuro non ha fatto one-shot quando glielo ha chiesto: c'è provato, visto cosa veniva fuori, si è corretto: l'ha guardato, ha detto "no, bellino, ma mi dà un errore", corregge l'errore eccetera eccetera. Mentre invece quando io chiamo le API non do possibilità di fare questo: è proprio zero-shot. Quello è il prompt, quello che arriva arriva, e se è un SVG malformato, è SVG malformato, fine, fine della prova.

**Alessio**

> Assolutamente. Però quello che raccontavi, Paolo, mi ha fatto venire in mente un paio di altri ragionamenti. Rimaniamo un attimo su Fibo, non tanto per Fibo in sé, ma perché questi di Bria fanno delle cose in questo ambito. Tu parlavi della possibilità di avere un harness che gioca con le immagini, la generazione dei prompt per avere il filmato completo eccetera. Ecco, attorno al discorso della generazione delle immagini c'è tutta una ricerca e una serie di effort su come al meglio convertire un prompt nell'immagine, e questo... Questo fatto del supporto del formato JSON nativo, per generare le immagini, si apre anche alla creazione di skill per la generazione dei prompt più efficaci. Perché, nel momento in cui tu sai già meglio come deve essere formato il prompt, la skill ha modo di essere più efficace. Quando è uscito qualche settimana fa Minimax H3 per la generazione di video, quelli di Minimax hanno pubblicato le guideline per il prompting e anche le skill per scrivere i prompt. Guarda caso, questi di Bria, nel rilasciare Fibo 2.0, fanno vedere anche come offrono, appunto, le skill per generare i prompt. E ne fanno addirittura, tra l'altro, un servizio, nel senso che nel loro servizio, offerto proprio dal loro sistema, hanno delle API proprio per generare i prompt, non solo per generare le immagini: proprio perché quella è la direzione in cui si va con questo tipo di modelli.

## **[28:51] Moss Image e Flux Klein: gli open weight**

**Alessio**

> Dicevamo delle altre uscite: è uscito Moss Image. Moss Image fa una cosa simile a quella di Fibo, nel senso che punta tanto sulla possibilità di definire le posizioni, la struttura degli oggetti nelle immagini: Layout to Image Generation. Di nuovo con dei prompt strutturati, casualmente in JSON: hanno trainato il modello a capire tutti questi aspetti legati alla composizione, all'ordine delle cose nelle immagini. Questo è utile per vari tipi di utilizzo: innanzitutto per il testo, ma poi anche per immagini in cui ci siano tanti, per dire, soggetti piuttosto che tante cose differenti, che un encoder che dal prompt crea la rappresentazione in latent space dell'immagine potrebbe andare a mescolare, nel senso che se io nel prompt chiedo di avere tutta una serie di elementi, poi magari questi elementi ci sono nell'immagine ma non sono posizionati come mi aspetterei che fossero. Avere la possibilità di posizionare correttamente tutte le componenti nell'immagine in modo preciso aiuta ad avere un'immagine più fedele rispetto a quanto si chiedeva nel prompt. Moss Image non è ancora su Artificial Analysis, quindi non sappiamo esattamente come si posiziona: mi aspetto che non faccia così male, onestamente. È open weight, come dice il nome. Ebbene, altro rilascio di questa settimana, restando nell'ambito degli open weight: è uscito anche Flux 3 Klein. Allora, Flux, image Klein: stiamo parlando della serie di modelli di Black Forest Labs che, se vi ricordate, faceva, e fa tuttora, modelli sia open che closed, e la versione Klein sono quelli, diciamo, un pochino più piccolini, che escono tipicamente open weight. Questa è la nuova generazione del modello Klein, in versione base per fare il training e in versione distillata. Esce con una licenza nuova, questa Flux Community License, che... sono tedeschi loro... che... fammi vedere, avevo letto qualcosa di questa licenza... Ma niente: non è permissiva come una Apache 2.0, permette di utilizzare il modello gratuitamente anche per l'uso commerciale per aziende fino a 5 milioni di dollari di fatturato. Comunque non così male, onestamente. Il modello è carino, è carino innanzitutto come requisiti hardware, nel senso che, secondo le dichiarazioni di Black Forest Labs, dovrebbe andare anche con 8GB di VRAM quantizzato, mentre i modelli che vedevamo prima, Quen Image e Fibo, dalla ventina di gigabyte in su di VRAM: servono per farli andare. In particolar modo, se ricordo bene, Moss Image ha bisogno di 20GB solo per l'encoder. Quindi... invece per Fibo dipende da quali encoder si usa: mi sembra che quello di default sia Qwen, un vision language 4 billion, un pochino più piccolo, però comunque...

**Stefano**

> Che è piccolo.

**Alessio**

> ...invece Flux Klein mantiene fede al fatto che si chiama Klein e va con 8 giga di VRAM. Detto questo, i risultati sono degni di nota, nel senso che se andiamo a vedere, su Image Editing siamo sostanzialmente a livello di Quen Image: Fibo fa leggermente meglio, ma siamo nell'ordine quasi della tolleranza sull'errore. Text to Image, invece, restando sugli open weight, Flux Klein diventa ufficialmente il modello migliore; anche qui, molto vicino a Quen Image. Interessante: siamo comunque ancora lontani dallo stato dell'arte dei modelli cloud closed, perché il GPT Image siamo a 1200 su questo indice qui, noi siamo a 1100, siamo un 10% più bassi. Però Quen Image 2.1 non è più l'unico modello che si può usare in locale per generare immagini degni di nota, mettiamola così. E, se parliamo di licenze: Fibo 2.0 è Creative Commons, mentre Moss Image è Apache 2.0. Mentre si muovono tutte queste cose, negli open weight esce anche Crea 3: Crea, probabilmente, ve lo ricordate, era quel modello che usciva come spin-off di Flux per migliorare l'estetica delle immagini. A questo giro sono usciti solo con la versione proprietaria, che fa tante belle cose: di nuovo punta soprattutto sull'estetica, la qualità visiva, l'impatto delle immagini.

**Stefano**

> Beh sì.

## **[38:04] I costi per immagine e Flint, il modello creato da un'AI**

**Alessio**

> Tant'è che se andiamo a vedere qua, sulla leaderboard, andiamo a vedere... Editing. Eccoci qui: siamo al quarto posto sulla classifica overall, vicinissimi a GPT Image. Ricordo che questo indice di Artificial Analysis è fatto con, diciamo, di nuovo, la comparazione al buio tra immagini, chiedendo agli utenti: è meglio questo o meglio quello? E quindi c'è anche un aspetto umano, proprio, nella valutazione delle immagini. Bene, quindi queste sono più o meno le news di generazione di immagini di questi giorni. Bisogna considerare anche un aspetto di costi, se vogliamo, perché nessuno non ha i dati da fare vedere, però andando a vedere, facendo due conti, stiamo parlando di modelli che per generare immagini hanno costi completamente differenti. Vabbè, quelli usabili in locale chiaramente sono vantaggiati, ma anche utilizzandoli offerti con le API andiamo da un costo nell'ordine di 10 dollari per mille immagini generate con un Flux Klein, fino a quasi 300 per mille immagini generate con Crea 3 Ultra. Crea 3 Ultra è nell'ordine di costi di GPT Image 2.5, quello proprio più costoso. Dipende dove vi volete posizionare, di nuovo, nella spesa.

**Stefano**

> Sì, indubbiamente. Poi i costi impattano un po' quello che dicevo prima, io, con le velocità e numero di token dei modelli. Poi non abbiamo parlato di costi, ma ovviamente Flint, che nominavamo, costa un pezzo meno di tutti gli altri. Tra l'altro... hai altro? Tu, immagini, video o altro? Ok.

**Alessio**

> No, direi che ci siamo così.

**Stefano**

> Dico una cosa che non ho detto prima, quando parlavo di Flint, che secondo me è rilevante. È rilasciato da un'azienda che si chiama Recursive, e il nome non è casuale, perché i loro modelli sono fatti da una... la chiamano self improvement recursive machine, ricordo adesso il nome che usano loro, ma che comunque è un auto research, cioè i modelli sono creati per miglioramento continuo fatto da altri modelli, più piccoli o precedenti. Questo è il loro primo rilascio open con questa modalità, quindi possiamo anche dire che è il primo modello open generato, sia nel disegno dell'architettura del modello che nel training, da un'altra AI. Quindi, in questo senso, se ne è parlato tanto quando sono uscite le varie notizie, del rallentamento o meno eccetera: che il self improving stia diventando rilevante.

## **[43:13] Accelerazione, reinforcement learning e le perdite di Anthropic**

**Stefano**

> Beh certo, sì sì, assolutamente, molto importante. No, e quindi questo è un fatto rilevante che ho trascurato di dire prima, perché mi sono concentrato poi sul diffusion model, però il fatto che sia un modello creato da un'altra AI è comunque un fatto estremamente rilevante. E sta portando a un'accelerazione: altro che il rallentamento come ci si aspettava. Con modelli che stanno continuamente uscendo... c'è anche in Cina: si sa che Kimi sta lavorando a K3.1, pare che sia una minor; GLM sta lavorando al prossimo modello; e ZAI sta lavorando al prossimo GLM, che sarà un modello molto grande, come Kimi e tutti gli altri, almeno questi rumors. Quindi c'è comunque questa sorta di accelerazione, nonostante, negli ultimi tempi, vada anche rilevato che sono tutti, rispetto a OpenAI e Anthropic, leggermente indietro. Parliamo sia di Cina, ma anche di Gemini, che è uscito con Argon, Quattron, parlavamo le scorse settimane: che è un ottimo modello sul testo, magari sulla programmazione meno, ma sul testo, sul ragionamento fa un ottimo lavoro, secondo me anche i benchmark lo dicono. Però è leggermente sotto, sia da benchmark che anche da esperienza, soprattutto sulla programmazione, a quello che fanno i due modelli veramente di frontiera, che sono OpenAI e Anthropic. E attenzione che questi hanno già pronto il dopo, perché nel momento in cui si esce si sta già lavorando sul modello dopo. E alla velocità con cui stanno andando, e anche se vogliamo farne un discorso puramente di mercato: se sei già il leader del mercato, fino a quando il concorrente diretto non ti supera, forse neanche ti conviene uscire con il modello. Soprattutto perché abbiamo visto in questi mesi che un giro in più di reinforcement learning può dare a tutti questi modelli una spinta...

**Alessio**

> Un boost.

**Stefano**

> ...notevole. Quindi prendersi il tempo per fare la reinforcement learning può convenire. Salvo che poi Anthropic, avete visto, ha dichiarato una perdita gigante nell'ultimo quarter, per via delle spese maggiori che ha avuto di cloud. Lo ha messo un po' in difficoltà con l'IPO che sta arrivando, perché qualche analista l'ha addirittura classificato junk, spazzatura. Ovviamente esagerando, però...

**Alessio**

> Magari spazzatura no, diciamo che dei dubbi sulla sostenibilità ci stanno.

**Stefano**

> Sì sì, chi guarda solo i numeri, giustamente, guarda quello. Poi, i nostri non sono consigli finanziari, non denunciateci, grazie.

**Alessio**

> E in... noi, non so dove andate.

**Stefano**

> No, male e malissimo: io sono pessimo in quelle cose lì, pessimo. Poi, parlando di Anthropic...

## **[46:32] PR review: il metodo Anthropic e i semafori di Stefano**

**Stefano**

> ...parlando di Anthropic, è uscito un articolo interessante di Addy Osmani. Direte: non era Google? Era Google, invece adesso Anthropic. Autore di vari libri, una delle voci più seguite nel campo dello sviluppo AI, che qualche mese fa è sbarcato in Anthropic: è stato uno dei volti più noti in questo campo, di Gemini, ma è uscito con questo articolo in cui parla di come Anthropic fa le PR review. Abbiamo parlato settimana scorsa con Paolo: hanno rifatto Git loro, perché volevano una cosa più distribuita eccetera, e anche sulle PR review hanno cominciato a... che non va più bene guardare ogni riga di codice. Dimmi Paolo, stavi dicendo?

**Paolo**

> No, che settimana scorsa ci siamo dimenticati di dire forse che hanno rifatto anche la piattaforma di code review, che non è proprio quello di cui stai parlando tutto; adesso ci racconterai...

**Stefano**

> Sì.

**Paolo**

> ...del workflow, ma in realtà loro hanno fatto il software: come se avessero fatto il GitHub, se volete, per quella parte lì.

**Stefano**

> Sì, sì, ma è collegato, perché lui spiega come usano questo loro software che li aiuta in questo processo. E quello che fanno è... non hanno scoperto l'uovo di Colombo, nel senso che, se leggete un po' in giro, chi fa code review di grandi volumi di codice generato si è trovato in quei problemi e in qualche modo ha sviluppato delle soluzioni. Quello che fanno loro, sostanzialmente, è fare review per importanza, pericolosità e innovazione. Cioè classificano il software, il PR review, non tanto per righe di codice ma per quello che fanno, andando molto all'osso.

**Paolo**

> Quando leggevo queste informazioni pensavo proprio a te: sei tu che usi il metodo Eisenhower per la priorizzazione delle cose da fare, o stai facendo una confusione?

**Stefano**

> Sì, sì, no, no, io lo so...

**Paolo**

> Mi ricordava un pochettino questo. Fondamentalmente il metodo Eisenhower ti dà quattro scelte: ti plotta su due assi e ti dice urgenza e facilità, o importanza, non mi ricordo il dettaglio, però fondamentalmente...

**Stefano**

> Urgenza, importanza.

**Paolo**

> L'idea è: se qualcosa è importante e urgente, fallo. Se qualcosa, di contro, non è importante e non è urgente, ignoralo. E ovviamente applichi il buon senso in tutto ciò che sta in mezzo.

**Stefano**

> Io tendenzialmente uso quello per classificare le cose da fare, le issue, più che le PR review, però uso un metodo molto simile a quello che descrivono in Anthropic per le PR review, che è pubblico: se andate sul nostro repository GitHub, risorseartificiali slash skills, ce n'è una che si chiama PR Walkthrough, che fa più o meno quello che fa Anthropic, fatto in casa, e un po' più verboso, forse un po' troppo: lo sto ripensando per renderlo un po' meno verboso. Che vi crea sostanzialmente un documento, guarda la PR da sette dimensioni: l'impatto, il numero di dipendenze toccate, l'importanza, la sicurezza, e le altre neanche me le ricordo, perché le leggo tutti giorni ma non me le ricordo. Perché non me le ricordo? Perché, per ognuna di queste dimensioni...

**Alessio**

> Perché fa lui il walkthrough, e quindi...

**Stefano**

> Primo, e poi perché per ognuna di queste dimensioni mi mette il semaforo: verde, giallo, rosso. Quindi io quelle verdi non le guardo nemmeno. Se lui le ha classificate verdi, non le guardo. Quelle gialle gli do un'occhiata, e se mai gli chiedo un'analisi ulteriore; su quelle rosse gli dico che facciamo il walkthrough, davvero: dimmi che cosa è cambiato in queste cose, e andiamo al dettaglio, al dettaglio logico, sempre. Accanto a questa roba, che è un altro trend che si vede leggendo tutti, mi fa una rappresentazione grafica della PR. Per me la rappresentazione grafica è molto base in questo momento, ed è un grafo degli impatti sulle dipendenze e un grafo dei componenti toccati nell'architettura. Così, in buona sostanza, la prima cosa che guardo sono quelle due cose lì: se mi ha toccato 15 dipendenze e ha toccato 8 componenti su 9, forse è il caso di guardarla, la PR; se è molto verticale, solo sul componente documentazione, va là che vai bene, nel senso che non ci perdo tempo. Quindi è una preanalisi. Anthropic fa una cosa simile, più raffinata, più guidata dagli agenti, però è guidata...

**Paolo**

> ...data da Token Infinity.

**Stefano**

> ...da Token Infinity. Assolutamente guidata da Token Infinity. Però è un trend quello lì, di cominciare a vedere le cose in modo grafico, perché il volume di informazione è tale che ci si perdono le cose. Se ne sono visti tanti, ne abbiamo anche parlato in settimana: ci sono vari progetti che tentano di visualizzare le architetture, piuttosto che gli agenti che girano, eccetera eccetera.

## **[52:58] L'acquario di Sakana e le mappe di Groma**

**Paolo**

> Ti racconto una storia tangenziale, non di AI, ma che conferma questo trend che hai appena descritto. Oramai saranno 10, forse 15 anni fa: era l'epoca in cui Netflix aveva fatto il boom, e le loro soluzioni tecnologiche facevano trend: rilasciavano progetti open source, avevano delle cose sui sistemi distribuiti, un po' di roba, in Java in particolare (loro ancora oggi usano Java), e quindi qualunque cosa faceva...

**Stefano**

> Volevano assumere gente.

**Paolo**

> ...Netflix lasciava il segno, insomma.

**Alessio**

> Era figo, sì.

**Paolo**

> Allora avevo iniziato a seguire il loro technical blog, quello in cui il loro team, quando fa qualcosa di interessante, lo pubblica e te lo racconta lì. È una delle cose che mi aveva colpito, ha sempre lasciato segno: non sono mai riuscito ad applicarla, ma mi è sempre rimasta con me. Raccontavano di un post mortem di qualche cosa che gli era fallita, di servizi di rete che andavano male, che hanno insomma volumi senza senso per noi comuni mortali. Allora dicevano: ecco come abbiamo fatto per proteggerci e mitigare questo rischio futuro. E quello che avevano realizzato era una dashboard non tradizionale: quindi non una roba di grafici, ma avevano fatto un grafo in cui facevano vedere i nodi, e poi avevano fatto un'animazione che, per ogni..., rappresentava il volume, la banda di comunicazione tra i nodi, come dei pallini che si spostavano. Quindi una visualizzazione grafica: io ho sempre immaginato di esplorare il corpo umano, come se ci fossero delle unità distinte che si spostavano così, e quindi vedevi questo flusso che andava in una direzione o nell'altra. E loro... ed è finita la storia, quindi dici: ok, chi se ne frega di sta roba? No, la cosa interessante di questa cosa era che fondamentalmente avevano osservato che, nonostante le automazioni, nonostante quello che vuoi, era più utile un colpo d'occhio: guardare una specie di acquario in cui vedi se c'è del traffico, c'è un pasticcio...

**Alessio**

> Più o meno come gira l'acqua tra una parte e l'altra.

**Paolo**

> ...così come gira l'acqua: che non avere una sonda che ti dice "guarda che il numero ha superato questa certa soglia". Avevi un valore maggiore di quell'informazione che non ha un sistema autodeterminante così. E quello che mi stai descrivendo adesso, Stefano, va in quella direzione. Quindi io ho quel principio di cercare di trasferire un'informazione intuitiva, se vuoi, da System One (visto che adesso sto studiando per parlare dei JEV) ce l'ho sempre con me, e ogni tanto mi chiedo se e quando io posso andare a rubare l'idea e applicarla a qualcosa di pratico per i fatti miei.

**Stefano**

> Allora, intanto, adesso il pubblico non crederà che noi ci siamo messi d'accordo sulla parola "acquario": era esattamente quello che, prima dell'appuntamento, avevo detto io. Poi c'è una cosa da farvi vedere, ma non ve la faccio vedere adesso perché la teniamo come sorpresa, e invece lui ha detto la parola "acquario", perché la cosa che mi ha colpito di più in questa cosa qui è l'acquario di Sakana, che Sakana, in un momento di grande inclusività, ha pubblicato soltanto in giapponese. Però ve la faccio vedere, perché è carina: questa è la rappresentazione di come girano gli agenti dentro a Sakana. Vabbè, c'è tutta una pippa in giapponese, che poi io mi sono fatto tradurre la pagina: creano cose un po' più statiche prima, e poi lo fanno vedere proprio come un acquario, gli agenti... adesso vediamo se lo fa, perché questo è, non so se in tempo reale o generato, però vedete che a un certo punto i pesci accelerano, perché fanno delle cose quando si muovono, perché ho letto una spiegazione: stanno girando, ma c'è anche il momento in cui il pesce va a pancia in su, mi è successo di vederlo, quando... quando la gente muore, che ho trovato geniale.

**Alessio**

> Ma quando c'è il cerchietto attorno alla cosa sulla base...

**Stefano**

> ...vuol dire che è andato a prendere i dati da quel datalink. Però mi ha fatto morire il pesce che va a pancia in su.

**Paolo**

> Che, scusami, è un trend comunque questo dell'antropomorfizzazione...

**Stefano**

> Sì, sì.

**Paolo**

> ...delle cose: non solo con lo schermino da mettere sulla scrivania, tipo tamagotchi, ma anche con stile Sims, giusto?

**Stefano**

> Ma anche con le rappresentazioni interne, sì, è proprio un trend. Stile Sims ce n'è un progetto italiano che adesso, se volete, recupero (non ce l'ho qua sottomano, ma lo trovo facile), e il video: Fairmind è questo. Questo qua, che è la rappresentazione degli agenti; c'era anche un video da qualche parte... forse questo è il video... no. Comunque questo qui, che fa la rappresentazione degli agenti: demo, watch the demo video... non ci riesco, no.

**Alessio**

> È stato rimosso.

**Stefano**

> C'è un mp4 però non si vede più... adesso dovrebbe... vediamo se lo vedo io... no, perché non va là... qua, va bene.

**Paolo**

> Vedi cose che altri non vedono?

**Stefano**

> No, perché si apre in un altro modo. Adesso non ho trovato il video, però rappresenta, appunto, come un ufficio i vostri agenti che collaborano tra loro. Stoppiamo questo sharing, è venuto male, non eravamo preparati su questo. Comunque è fatto da una persona italiana che si chiama Alessio Cassani, che se vuole ce lo verrà a raccontare. E comunque è vero, è un trend quello della rappresentazione. Un altro progetto che invece sicuramente verrà qua a raccontarci Alex, perché ce l'ha già promesso, è quello di chi aveva fatto il nostro ben amato Backlog MD (ciò che ancora fa Backlog MD): adesso fa un altro progetto, che anche quello non sono preparato a mostrarvi, ma potrei provarci lo stesso. Oggi...

**Alessio**

> ...puntata particolare.

**Stefano**

> ...puntata...

**Paolo**

> Dovremo proprio fare una live una volta.

**Stefano**

> Dovremo fare una live che praticamente sarebbe uguale: Groma. Groma MD, gli piace il punto MD. Vabbè. Questo si vede il video: forse è la cosa migliore, far vedere il video. Allora, dove siete? Qui. Share, X. Che è questa idea di rappresentare le architetture software come dei buildings. C'è un libro, C4MAP mi pare che si chiami... le mappe C4, che c'è un libro che fa tutta la teoria di questa cosa. E la caratteristica di Groma è che vi tiene aggiornata questa mappa, e queste comunicazioni (è molto simile a quello che descriveva prima Paolo di Netflix) in tempo reale. Quindi, man mano che voi fate i commit, viene aggiornata questa mappa: è una mappa live che voi potete leggere per meglio capire l'architettura software. Perché c'è questa esigenza, comunque, di vedere ad alto livello l'architettura, visto che andare alla singola riga di codice non è umanamente sostenibile: generano troppo codice oggi gli agenti, e ci deve essere un modo per mantenere il controllo. Si è stato cercando: ci sono vari tentativi, questo di Groma a me piace; anche dell'antropomorfizzazione, o l'acquario, che a me è piaciuto un sacco l'acquario, invece quando muore...

**Paolo**

> Dici quello...

## **[01:01:52] Diventare manager di agenti**

**Paolo**

> ...io avrei detto che era addirittura prima ancora del codice, nel senso che il problema che vedo io, con la mia finestra aperta adesso, di Hermes, è che avrò una decina di agenti in esecuzione. Ufficialmente il numero è maggiore di quello che io riesco a vedere in un colpo d'occhio: quindi potrebbero essere 10, potrebbero essere 20, non lo so, non mi metto a contarli. E non ho idea (cioè ho una vaga idea di che cosa gli ho chiesto nell'arco delle ultime due settimane) di chi sia ancora lì e stia facendo cose...

**Stefano**

> Allora, sono due cose...

**Paolo**

> ...te ne so dire 2 o 3, gli altri boh...

**Stefano**

> ...diverse, vere entrambe: dell'antropomorfizzazione, che abbiamo visto con Cassani e con l'acquario, fanno quella visualizzazione che dici tu. E spoiler: arriverà anche in Lince, a forma di acquario, mio caso, sperando di vederli andare a pancia in su. Però... che è la cosa su cui stavo lavorando ieri sera: perché, quando visto l'acquario, mi si è accesa la lampadina anche su Lince, e volevo metterla in Lince. Però invece Groma è solo visualizzazione dell'artefatto ad alto livello, quindi l'architettura...

**Paolo**

> Ok.

**Stefano**

> ...software. Ci sono due problemi, entrambi presenti e ortogonali tra loro. Così come le mie mappe visuali di impatto sui componenti e di impatto sulle dipendenze nelle PR Walkthrough sono quella roba più simile a Groma. Per cui sono due problemi, entrambi: vanno gestiti, soprattutto quando si parla di swarm, di agenti, ma ancora molto più che nel coding: ci sarà quel problema lì di capire dove stanno andando, cosa stanno facendo, e di capirlo col colpo d'occhio il più possibile. È indubbiamente un'esigenza, ed è un'esigenza forte, che c'è.

**Paolo**

> Praticamente stai dicendo che serve misurare il throughput degli agenti.

**Stefano**

> Più o meno: diciamo che serve capire cosa c'è in giro, sì. Però diciamo che throughput e agenti sono due parole che non vanno tantissimo d'accordo, dal mio punto di vista, questo: cioè, throughput classico, no, quello di quante request al secondo fa un agente, e meno di una, nel senso che le request di un agente sono lunghe, si prendono responsabilità lunghe.

**Paolo**

> Mi hai dato una visione del futuro: praticamente ci ritroveremo a fine anno a fare l'analisi delle performance dei nostri agenti, gli obiettivi, eventualmente metterne qualcuno in pip.

**Stefano**

> Sì, certo, quello che... beh, quando si dice che il programmatore sta diventando un manager di agenti, dovrà trovare quelli low performer, no? Prima o poi. O promuovere quelli high performers, sì.

**Alessio**

> Beh, ma il podcast si chiamava Risorse Artificiali anche per questo.

**Paolo**

> Sì, sì, sì. A proposito di Black Mirror e di fantascienza: questa settimana ve ne racconto una che non c'entra niente, ma trovo che sia carina. Mia figlia mi ha chiesto (si parlava di vaccini e di non vaccini), e mi stava chiedendo cosa può fare uno che vuole fare il vaccino ma gli è proibito fare il vaccino. E ho pensato che è uno spazio per una distopia futura, dove i vaccini sono clandestini e c'è tutto un sottobosco di gente che si vuole vaccinare ma il governo non gli...

**Alessio**

> ...che se non fosse passato il Covid 19...

**Stefano**

> Ok. ...o che, trasponiamola sul nostro mondo: che gli antivirus non si possono più usare, sono clandestini.

**Paolo**

> Una volta si è parlato di rendere illegale la crittografia, quindi non è che siamo lontani.

**Stefano**

> Sì. ...rendere illegale la crittografia che farebbe un favore, credo, a Bitcoin. Così a naso. Bene, siamo all'ora e sei minuti.

## **[01:06:28] Il robot di Unit 3 e i saluti**

**Paolo**

> E questa puntata potrebbe essere molto più corta, se decidiamo di tagliare tutta la parte in cui è caduto Stefano all'inizio e io e Alessio ce la cantavamo su da soli.

**Stefano**

> No, io non taglio mai niente, perché devo tagliare questa bellissima esperienza con l'hub USB, che non era neanche vecchio. Chissà, magari adesso lo scollego, lo ricollego e riparte.

**Alessio**

> ...e si rientra.

**Stefano**

> Funziona sempre. No, funziona sempre, però... no, beh, aspetta, prima di chiudere, prima di chiudere: dobbiamo mostrare il nuovo robot di Unit 3, così, per stare...

**Paolo**

> Giusto.

**Stefano**

> ...nel mondo distopico e nei futuri distopici.

**Paolo**

> Perché tra un po' iniziano i consigli per gli acquisti di Natale. Quindi, cioè, solita... "i 10 migliori gadget AI da fare a Natale".

**Stefano**

> Allora aspetta, allora no, aspetta...

**Alessio**

> ...Winter Black Friday.

**Stefano**

> Se volete allora, prima di...

**Paolo**

> ...e anche per questa época, a Black Friday prima di Natale: Black Friday, Cyber Monday e Natale.

**Stefano**

> Se volete, allora prima di...

**Paolo**

> Senti, devi fare qualcosa per questa history del browser che non ti funziona oggi.

**Stefano**

> No, non la sto trovando... ho trovato gli acquisti di Natale. Che il Toddler: avete visto il Toddler? Che bello, però costa un botto: è un robot bipede da programmare, andate a vedervi l'ultimo. Posso provare a cercarlo, come era... Win3 Confu...

**Alessio**

> Sì, ho capito cosa dici.

**Paolo**

> Ecco, questa sarebbe la parte che, se fosse un film, il nostro podcast passerebbe già ai titoli di coda, dove la gente ha smesso di seguire e sentire gente che parlava a mamma. Sì sì sì.

**Stefano**

> Sì, sì, infatti è...

**Alessio**

> Intanto la gente si alza e se ne va.

**Stefano**

> ...così: dov'è quello dove dà il calcio?

**Paolo**

> Togli il telefono dalla modalità...

**Stefano**

> ...e era quello classico, così lì. ...facilmente: quel video che avevo in mente in cui dai il calcio alla macchina, a una i3, su X che ce l'ho: eccolo qua. Questo qua è un'immagine... Eccolo qua, quello ho trovato. Vedete che bravo che sono: adesso faccio la condivisione dallo schermo.

**Alessio**

> Perché noi pensiamo ai robot che ci fanno due o tre cosettine facili e allora...

**Stefano**

> ...e dato che togliamo l'audio: guarda anche il calcio che dà la macchina, impressionante! Anche questo. Quindi, niente...

**Paolo**

> Questo è un video delle proteste di Milano, giusto?

**Stefano**

> Sì, un video delle proteste di Milano. Pensa quando si protesterà contro gli Unit 3 che ti danno un calcio in faccia così: ridere. O quando sono dall'altra parte, con il... e il casco: peggio, forse.

**Alessio**

> Poi dopo bisogna capire chi...

**Paolo**

> Bello questo!

**Alessio**

> ...ha il robot migliore. Guarda adesso.

**Stefano**

> L'idea è che sia fatto per la difesa personale, e quindi cerca di uccidere chiunque gli passi a tiro. Poi salva quello da sotto la macchina. Però al di là di tutto, al di là del fatto che lo diciamo per chi non ha seguito le puntate precedenti: tutti questi robot sono ancora telecomandati, non sono veramente autonomi come si possa pensare o come sembra suggerire il video. Però la meccanica è notevole: solleva una macchina con discreta facilità.

**Paolo**

> Come si fa quella mossa che ha appena fatto con il telecomando? Mezza luna in avanti, pugno, calcio insieme?

**Stefano**

> Questo non lo so, non ne ho mai telecomandato uno. Bene, adesso abbiamo...

**Paolo**

> Ok.

**Stefano**

> ...allungato di 5 minuti la puntata, così ci odiano tutti. E tanto, come dici tu, non hanno ascoltato fino a qua. Metti i titoli di coda! Sì, dai, quando lo monto metto i titoli di coda, quando lo dici tu.

**Paolo**

> Va bene.

**Stefano**

> Va bene, vi saluto. Ciao, ciao ciao.

**Paolo**

> Vado, sono in ritardo. Ciao ciao.

**Alessio**

> Ciao ciao!

**Paolo**

> Ciao.
