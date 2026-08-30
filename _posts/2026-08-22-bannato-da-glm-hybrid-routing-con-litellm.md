---
title: "Bannato da GLM: hybrid routing con LiteLLM"
date: 2026-08-22
layout: episode
author_profile: true

episode_number: 68
episode_type: numerato
youtube_id: Y7gkGLG4LPY
description: >-
  Paolo si fa bannare da GLM facendo hybrid routing con LiteLLM. Poi Qwen 3.8 che fa coding su 16 giga di VRAM, GLM 5.3 e il report Hugging Face sui modelli open.
spotify_episode_id: 45PF4g7gH6tHATi1SCm0u2
# apple_episode_url: da aggiungere post-publish Apple (T+4-24h)
duration: PT1H12M

header:
  og_image: /assets/images/episodes/ep68.png

categories:
  - Puntate
tags:
  - hybrid routing
  - LiteLLM
  - GLM
  - Qwen 3.8
  - modelli locali
  - coding agent
  - Hugging Face
  - open weight
---

## **[00:00] Stripe compra OpenRouter per 7 miliardi**

**Stefano**

> Ciao a tutti e ben tornati a Risorse Artificiali. Altra puntata agostana, perché noi non molliamo neanche in agosto, come non abbiamo fatto l'anno scorso. Siamo uno dei pochi podcast, almeno tra quelli che ascolto io, che continua a fare puntate ad agosto, per la gioia dei miei colleghi a cui rompo le scatole per farle anche in agosto. E Paolo nega, perché è un signore.

> Oggi siamo solo io e Paolo: Alessio l'abbiamo mandato in vacanza, perché ce l'ha chiesta e gliel'abbiamo firmata.

**Paolo**

> È arrivato in vacanza, peraltro, che aveva dei problemi di chilometraggio della batteria della macchina elettrica.

**Stefano**

> No, non dirlo, che dopo lo sai che ci resta male quando parliamo dei problemi di chilometraggio della batteria della sua Tesla. A parte i problemi di chilometraggio di Alessio, oggi parliamo come al solito, direi ormai al solito dell'ultimo periodo, di modelli open weight e modelli cinesi. Perché c'è da dire su Qwen, che è uscito con una versione più piccola, e c'è da dire su GLM, il caro GLM.

> E poi un po' di altre cose, in realtà acquisizioni varie e così. Anzi, partirei da lì: io non l'ho capita tantissimo, non so se tu hai letto che Stripe sta comprando OpenRouter. Stripe, quelli che fanno pagamenti online, hanno deciso... Allora, Toby qualcosa, che è il CEO di OpenRouter, è superattivo nel mondo open source. Anzi, non di OpenRouter, scusate: di Stripe. È superattivo nel mondo open source, nel mondo AI. Io uso molto uno dei suoi progetti notturni, QMD, query markdown: sia io che i miei agenti lo usiamo per trovare le informazioni sul mio PC. È praticamente una specie di Google locale, con la ricerca anche semantica, diciamo.

> E poi Stripe in generale ha fatto anche cose di auto research: c'è la versione dell'auto research di Karpathy, che è uno dei progetti più utilizzati in quel campo lì. Cioè, sono attivi su quello. Il loro business mi risultava essere un altro. Diversifica, no?

**Paolo**

> Mi aspettavo, in realtà, che ci proponessi tu un'interpretazione diversa, Stefano, nel senso che io so che tu hai guardato A2A, il protocollo di comunicazione tra agenti, e in particolare le sottospecializzazioni sui pagamenti. Pensavo che l'andavi a portare di là.

## **[02:59] A2A, AP2 e il routing dei pagamenti**

**Stefano**

> Sì, bravo. No, certo. Allora, Stripe tra l'altro è uno dei firmatari di AP2, che è il protocollo di pagamento inizialmente proposto da Google come estensione di A2A. E lasciamela tirare un po', che forse non l'ho mai fatto: sono uno dei membri dello steering committee di A2A da qualche settimana.

**Paolo**

> Da qualche settimana. Bravo!

**Stefano**

> Sono sempre stato attivo su quella cosa lì, ma nello steering committee sono stato promosso da poco, diciamo. Però, a parte quello, ne parliamo spesso anche all'interno di A2A: ce n'è più di uno di protocolli di pagamento. Stripe è capofila sostanzialmente di quello basato su A2A per la parte pagamento, mentre invece PayPal ne ha un altro, e le carte di credito ovviamente cercano i loro metodi, anche se Visa sta aderendo. Quindi sì, probabilmente hai ragione. Però OpenRouter fa un'altra cosa ancora, nel senso che fa il routing dei modelli.

> Certo, se il trend è quello di modelli diversi da quelli delle grandi firme, diciamo OpenAI, Anthropic e Google, OpenRouter ha da dire, e può essere un'interessante diversificazione del business. Ho letto più di un commento. Ma ti lascio fare il tuo: tu ce l'hai un commento?

**Paolo**

> No, io forse sono più fantascientifico e mi immagino futuri distopici in cui il routing stesso, quindi la loro posizione di vantaggio perché diventano un hub di smistamento come un API Gateway, gli permette di offrire dei servizi premium a chi glieli voglia chiedere.

> Quindi: se vuoi instradare il tuo pagamento in una rete di modelli automatici certificati, ci penso io, tu mi dai cinque centesimi a transazione, e sul volume io faccio dei soldi. Oltre al fatto che mi guardo tutti i fatti tuoi, perché sono OpenRouter.

> Sono tutte un po' maligne, se vuoi, le mie argomentazioni. Però posso vedere una sorta di correlazione per cui qualcuno con dei soldi da buttare via decida di buttarli via dentro lì.

**Stefano**

> Allora, intanto qualche numero tanto per dare un'idea: Stripe mette sul piatto 7 miliardi di dollari per OpenRouter. Non proprio bruscolini.

> La roba che dicevi mi ha fatto venire in mente anche una definizione che il CEO di OpenRouter aveva dato di OpenRouter stessa qualche tempo fa. Aveva detto che OpenRouter è l'equivalente AI di Stripe. È un po' distopico, ma in effetti aveva ragione.

**Paolo**

> Ha pagato un tweet 7 miliardi, come Elon Musk insegna.

**Stefano**

> Infatti sì, il pattern è un po' lo stesso. Stripe fa il routing dei pagamenti, e quindi controllare il traffico dei pagamenti per loro è stato vincente. Controllare il traffico degli LLM, come dicevi tu, potrebbe esserlo altrettanto.

**Paolo**

> Forse anche di più, potenzialmente. Perché una volta che ci sono gli agenti accesi, ti dimentichi di che cosa stanno facendo: producono in continuazione, senza sosta, ancora più degli umani.

**Stefano**

> Sì, sì, certo. No, quello è un altro discorso, e torniamo a un discorso che abbiamo già fatto, qualche volta io di sicuro in newsletter, l'ho fatto più di una volta, ma credo anche qua: esiste uno scenario possibile, dico forse anche probabile, ma di sicuro possibile, in cui sono gli agenti stessi a produrre reddito, e non più l'essere umano che li controlla attraverso gli agenti. Adesso questa è una sfumatura, però chiaramente se oltre ai pagamenti dagli agenti passa la produzione di reddito, farne il routing e guadagnare una frazione di quel reddito può essere la strategia. Sì, effettivamente non ci avevo pensato, ma credo che la tua lettura sia quella più giusta.

## **[08:18] LiteLLM: i modelli locali in un pool**

**Paolo**

> Invece, a proposito di routing, ho iniziato a fare routing anche io di modelli, nel mio piccolo, in locale. E questa piccola iniziativa mi ha fatto bannare da GLM, sfortunatamente, per qualche ora. E poco fa, prima di questa registrazione, mi è arrivata una mail di quelli di GLM che ascoltavano la mia supplica e mi spiegavano come mai mi avevano bannato.

> Ve la racconto perché è una storia interessante e l'argomento è questo, il routing. Allora, siccome forse sto imparando a fare le cose per bene, o l'altra interpretazione è a farle molto male, sto maxando completamente la mia quota di GLM nella finestra delle cinque ore, e mi ritrovo con dei momenti di buco.

> Stavo effettivamente facendo tante cose, quindi mi piace raccontarmi che mi hanno bannato perché le facevo bene e non perché le facevo male, ma magari sprecavo dei token in malo modo, non ho ancora determinato questa cosa. Sta di fatto che il mio problema era che mi tagliavano fuori ogni tanto, anche un paio d'ore, dovevo pazientare, e chiunque abbia la scimmia come noi sa che è inaccettabile. E allora dovevo trovare delle soluzioni alternative. Quindi la prima soluzione alternativa è stata dire: ma non posso fare un tipo di virtual bonding dei modelli, per cui io li metto in un pool e poi c'è un software di astrazione che decide dove mandarli? Sembrava un'idea geniale. Tanto geniale che, appena l'ho chiesto ai modelli, mi hanno detto: sì, certo, ci sono centomila progetti che fanno questa roba. Vabbè.

**Stefano**

> Sì, è stato...

**Paolo**

> Ok, è onesto. Mi stava proponendo di scrivere qualcosa, e poi gli ho detto: senti, ma ci sarà qualcos'altro? E alla fine ci siamo fissati su LiteLLM, che è un progetto abbastanza stabile, basato su Python. La scelta era forse più sullo stack tecnologico che non su quello che facevano, e alla fine ho scelto quello perché mi sembrava ragionevole.

> E che cosa fa LiteLLM? È semplicemente un software intermedio, un middleware a tutti gli effetti, che tu piazzi localmente: tu comunichi con lui, e poi dentro la sua configurazione ci sono le varie regole per instradare la chiamata da una parte o dall'altra. Detto così è semplice. In realtà fa più di questo, perché proprio come se fosse un API Gateway ti permette poi di modificare le chiamate, e siccome è tutto HTTP puoi scrivere, modificare, cancellare, filtrare, censurare tutto quello che vuoi.

> E il grosso del lavoro che fa è quello di adattare i maledettissimi protocolli diversi dei vari vendor, che sono sottilmente diversi. Perché al di là dell'endpoint, stile OpenAI o stile Anthropic, che sono quelli che reimplementano i venditori di terze parti, poi il protocollo stesso ti mette un tag che ti dice thinking, oppure ti mette un tag che ti dice reject sulle chiamate di validazione. Un sacco di cose che si possono rompere senza una specifica precisa, e si rompono clamorosamente, sempre, tutte. E si rompono sottilmente, perché funziona tipo il 95% delle volte e alcune chiamate ti falliscono, e ti girano le scatole perché pensavi che stesse funzionando la tua soluzione, invece funziona tranne quelle volte che no. E quindi è un po' di stress.

> La funzione c'è e funziona, quindi devo dirvi la verità, la suggerisco, se ci volete giocare, soprattutto se avete stressato un po' i limiti del vostro abbonamento, qualunque esso sia, per fare cose. Ma il motivo per cui mi ha spinto ad annoiarvi con questa storia è la seconda parte, ovvero come sfruttare questo meccanismo per fare hybrid routing: hybrid su cloud esterno o su risorse locali. E quella è la parte più interessante.

> Tutti noi intuitivamente abbiamo la sensazione che ci sarebbero alcune informazioni che non dovremmo far uscire perché sono private, piuttosto che alcune informazioni così facili che persino un Qwen locale, un Gemma locale, ti possono dare la risposta corretta senza bruciare la foresta amazzonica per farlo. Quella cosa rimane vera, e quindi uno dei classici casi d'uso è questo qua: fammi girare qualcosa localmente.

> E questo è ciò che mi ha fatto bannare, perché io ho deciso di utilizzare specificatamente i modelli locali per il classifier del lancio dei comandi di Claude Code. Che Stefano non sa cosa sia, perché in Lince, che è l'unico harness che usa, il problema viene bypassato completamente. Ma chi invece usa ancora Claude Code, come faccio io sul serio, sa che c'è una modalità per cui, anziché dovergli dire "approvo questo comando di scrittura di file" ogni quattro secondi, gli si può passare un secondo modello, e il secondo modello dice: chiedi a lui, se convince lui a me va bene. Discutibile la prassi, come...

**Stefano**

> Si chiama automode, credo.

## **[13:20] Bannato da GLM: il classifier locale**

**Paolo**

> Sì, c'è una riga sotto che include "auto" nella parola.

**Stefano**

> Sì, automode.

**Paolo**

> Però è legato al concetto di classifier, poi in realtà...

**Stefano**

> Sì, sì.

**Paolo**

> ...in gergo, dentro lì. E niente, funziona questa roba. Solo che, se la fai funzionare nel formato normale, questa chiamata va sulla tua quota del modello principale. Quindi se stai facendo un sacco di roba non risolvi il problema, lo esageri, se vuoi. E magari è anche il loro gioco, per cui loro ti hanno dato una feature comoda dal punto di vista di UX che intanto ti mangia token come non ci fosse un domani.

> Quindi quello che ho deciso di fare è: facciamolo locale, dai, sarà fattibile questa roba. Infatti le prime due, tre prove sembrava che funzionasse tutto, poi smetteva di funzionare. Siccome smetteva di funzionare e ci ho sprecato un po' di tempo, mi sono stufato e ho detto: senti, non puoi fare un fallback, che se fallisce due volte in locale poi lo mandi sul cloud, così almeno questa cavolo di chiamata non rimane bloccata? Perdo un po' di tempo, ma sul volume poi il risultato ce l'ho. Sì, sì, non c'è problema.

> Era il problema, il "non c'è problema", purtroppo. Perché nel lavoro che ho dovuto fare io per far sì che la classificazione la facesse Gemma, ho dovuto modificare la struttura di queste chiamate HTTP che il modello manda in giro, così che Gemma le capisse, perché altrimenti Gemma non le capiva. Quindi le ho modificate. Poi, quando me ne sono dimenticato, ho detto: vabbè, dai, quelle che comunque Gemma non riesce a far passare, reinoltrale. E GLM le ha reinoltrate tali e quali: non quelle originali, le mie modificate. E GLM ha riconosciuto le mie chiamate come traffico nocivo di qualcuno che sta usando un harness non supportato, perché a questo punto non avevo più la firma di Claude Code, avevo la firma dei miei pasticci.

**Stefano**

> Certo.

**Paolo**

> ...che avevo combinato. Questa cosa mi ha fatto bannare, perché sono diventato un nemico pubblico. Quando ci sono arrivato e l'ho capita, ho chiesto: signori, cosa facciamo adesso? E mi fa: guarda, è già successo ad altri, devi mandare una mail di supplica in cui gli dici se per favore ti resettano. E quindi abbiamo mandato questa mail di supplica, e mi hanno risposto. Prima non l'ho ancora letta: mi hanno fatto lo spiegone, e se non ho visto male mi hanno dato una pacca sulla testa dicendo "smettila di fare cazzate, queste sono le cose che puoi fare". Poi lo scoprirò bene. Devo dire la verità che, da quando ho capito tutto questo giro, sono stato in grado di raccontarlo e poi me lo sono anche fixato. Quindi io adesso sono tornato in incognito, se vuoi, a farle per bene le cose.

> Ed è stato divertente dal punto di vista ingegneristico: fare qualcosa non previsto, avanzato, customizzato sulle mie esigenze, sbagliarlo una, due, tre volte, e poi farlo anche giusto. Quindi devo dire la verità, mi sono divertito. Come al solito c'è questo rischio di chi fa il mestiere come il nostro, che trova il brivido nell'aggiornare il firmware di un hardware che potrebbe non accendersi mai più. Siamo strani, ci piace farlo, e a me piace farlo.

## **[16:22] Sandbox invece di validatori, e i cyborg**

**Stefano**

> Sì, sì, certo. Allora, la storia è interessante, ne estrapolo solo due cose. Primo: usate Lince e vi passa paura. Nel senso che l'approccio mio è diverso, al di là di Lince in quanto tale, ma vale con qualunque altra sandbox. Il mio approccio è mettere il mio agente in condizioni di non fare danni, e poi fargli fare tutto senza passare da nessun validatore eccetera. Dentro lì può fare tutto. Al momento sono molto soddisfatto così, perché lancio sette-otto cose in parallelo e vado a letto, e so che finiranno in qualche modo.

> La seconda cosa che estrapolo, che è invece più divertente, è che tu abbia detto "abbiamo scritto la lettera di supplica". Si intende tu e lui, ovviamente.

**Paolo**

> Io ho letto il titolo.

**Stefano**

> Ok, ok. No, questo è per dare...

**Paolo**

> No, devo dire la verità, quella l'ho letta, perché volevo effettivamente non peggiorare la situazione. Però sì, non l'ho scritta.

**Stefano**

> Questo è per dare un po' l'idea, anche a chi ci ascolta, del livello di integrazione da cyborg. Ho letto questa cosa qua, non so se l'ho già citata qua in podcast: il termine cyborg nasce da Asimov e vuol dire proprio uomo potenziato. Siamo lì, almeno nella parte cognitiva, non ancora in quella fisica, anche se si vedono sempre di più esoscheletri funzionanti bene. Ho visto la settimana scorsa un signore anziano qua a Cremona, nella mia città, che camminava e, invece del bastone, aveva un esoscheletro sulle gambe.

**Paolo**

> Wow!

**Stefano**

> Wow, super. Sì, sì, sono rimasto colpito. Poi non ho capito se fosse una cosa di test, di prova eccetera, perché il signore non lo conosco. Però era chiaramente un signore anziano con difficoltà di mobilità, e aveva uno di quegli esoscheletri che si usano, che pubblicizzano per attività sportive. Adesso c'è questo trend per fare montagna anche se non sei capace: non fatelo, io sono contrario, la montagna è sacra. Ma invece, applicato a quella cosa lì, non a una cosa strettamente medica che ha bisogno di controllo medico, perché esistono gli esoscheletri come presidi medico-chirurgici. Quelli lì invece sono sportivi, sono sicuro perché ho visto la marca, che adesso non nominiamo perché non vogliono venire in intervista, quindi non li nominiamo. Però ho visto la marca, ed è una marca italiana che fa quel mestiere lì, quello degli esoscheletri da montagna. Invece lui l'aveva per girare in città, al posto del bastone. Devo dire che mi ha molto colpito: una finestra sul futuro, mi sembra.

## **[19:55] Qwen 3.8 27B: coding su 16 giga**

**Stefano**

> Invece, passando dalle acquisizioni di Stripe e dal tuo racconto: il tuo racconto puntava su una cosa, i modelli locali, Gemma nello specifico, che è anche il modello che in questo momento sto usando io. Mentre invece la gran parte della community, in generale credo il doppio dell'utilizzo di Gemma, che è già molto alto comunque, è su Qwen. E di Qwen bisogna parlare, perché, come abbiamo accennato non mi ricordo in quale puntata, con Alessio si aspettava l'uscita di Qwen piccolo, diciamo il 27 billion. Qwen piccolo è arrivato, forse abbiamo anche già detto la settimana scorsa che è arrivato, ma la community comincia a provarlo.

> Comincio a provarlo anche io. E allora, parte che non si capisce in quanti gigabyte entra una versione quantizzata che non lo sia troppo, perché comunque è un modello denso. Io sono molto preso in questo momento, non sono ancora riuscito a provarlo, ma mi riprometto di provare sui miei 16 giga un Qwen 27 billion che ci entra, quindi quantizzato un po' aggressivo per entrare in 16 giga e avere una finestra di contesto che non sia di mille token. Immagino un Q3 sarà. Però questo weekend lo provo.

> Però ho letto gente di cui mi fido molto sui modelli locali che si lamenta di due cose. Cioè, si lamenta: una è una considerazione che è giusto fare, che ci sta. Dicono che dal punto di vista dell'onniscienza cosiddetta, quindi la capacità di dare risposte senza accedere a internet, quello che il modello sa, sia molto peggio del 3.6. Domande specifiche danno risposte zoppicanti, a fronte di tanto, tanto, tanto meglio, sia da benchmark che da esperienza di utilizzo, nelle capacità agentiche.

> E questo è interessante da accettare, perché è un trend che si vede anche sui modelli più grandi. Andare a testare l'onniscienza di un Opus 5 contro un Opus 4.8, i primi due che mi vengono in mente, o di un Sonnet 5.6 rispetto a un 5.5, è quasi impossibile, perché lì l'onniscienza è veramente spinta. Però soprattutto nelle stesse famiglie di modelli, quindi le versioni 3 per quelli di Qwen in questo caso, ma vale anche per GLM, così lo citiamo, che è uscito GLM 5.3: anche lì l'onniscienza non è aumentata, forse è diminuita. Perché sostanzialmente, sulla stessa famiglia di modelli, si decide di fare un reinforcement learning che punti di più sulle capacità agentiche invece che sulla sola conoscenza.

> Che, se vogliamo, è una cosa saggia, perché ormai tutti questi modelli sono messi dentro a un harness che gli dà accesso a internet come minimo, se non più di quello. E quindi le informazioni se le devono reperire, se non ce le hanno. Ti costa qualche token in più, ma è sempre l'equilibrio tra un utilizzo maggiore dei token e un utilizzo più efficiente, o più efficace forse è meglio dire, dei token.

> Il 3.8 fa un utilizzo molto efficace, perché dal punto di vista delle capacità tutti quanti dicono che è la prima volta che si vede un modello in grado di girare su una macchina normale. Non la DGX Spark, o la macchina di Alessio, o un Mac Studio da 512 giga: una macchina normale, perché entra anche in 16 giga di VRAM, sicuro in 24. E quindi un Mac normale ce la fa a farlo girare. È la prima volta che si vede un modello capace di fare coding a livello veramente buono. C'è chi dice che lo usa per i coding agent, proprio agent, non del semplice completamento, con grandi risultati. Con qualche distinguo, ovviamente.

> E i distinguo sono soprattutto due. La velocità: ok, ci arriva a fare le cose, ma abbiate pazienza, perché comunque è lento a farle, utilizza un sacco di token. Ma anche chi se ne frega, tanto lo inferenzi in locale: diventa lento perché fa tanti token che ti costerebbero un sacco se fosse un'inferenza pagata, ma chi se ne frega, ce l'hai in locale, e vabbè, consuma un po' di energia. E l'altra cosa che dicono tutti è: tenetelo low o medium thinking effort, perché high fa schifo. Nel senso che genera talmente tanti token per fare high effort che diventa inutilizzabile. E questo è un po' un trade-off, però c'era anche nell'altro modello denso di Qwen, che poi invece andava molto meglio sul Mixture of Experts, che dovrebbe uscire la settimana prossima: dovrebbe uscire il 35 A3 in versione 3.8.

## **[26:01] GLM 5.3 e il dubbio su Ollama**

**Paolo**

> Io il 3.8 l'ho già deployato, perché avevo il 3.6 prima.

**Stefano**

> Ok.

**Paolo**

> E allora, appunto, leggevo bene. Non l'ho ancora usato in realtà, ed è il mio modello secondario, perché i token per secondo sono decisamente più lenti di quelli di Gemma sul mio hardware. Se in Gemma faccio 40-50, in Qwen 3.8 dovrei farne una decina: che va bene per una notte di lavoro, ma mi rende irrequieto durante il giorno.

**Stefano**

> Ma hai anche MTP abilitato? Non ce la fai?

**Paolo**

> No. E non lo so su Qwen: di sicuro avevo sperimentato con MTP su Gemma, e i risultati erano che non aveva senso per il mio sistema, perché non avevo una bandwidth di RAM tale da giustificarlo. Il mio è un MacBook Pro M3, e diceva: no, se avessi uno Studio o quelle altre cose sì, ma così vai a tirare da una parte per togliere dall'altra, e quindi no.

**Stefano**

> Sì, sì, no, quello ci può stare. Invece da me MTP sulla mia Nvidia va veramente bene: su Gemma fa il doppio dei token. Da 30, 34 fa 70.

**Paolo**

> E a livello termico?

**Stefano**

> No, 70 va bene. Va molto bene su Gemma: ci scaldo la stanza, ma va molto bene.

> Però allora veniamo invece a parlare di due cose. GLM per una parte: è uscito il 5.3, e a parità di numero di parametri fa dei benchmark spaventosamente migliori del 5.2, ha incrementi di 6-7 punti sull'indice di intelligenza generale. Artificial Analysis, come si chiama, adesso mi sfugge il nome del sito, quello che citiamo sempre. E anche all'esperienza, devo dire: io l'ho usato molto questa settimana.

> Allora, qualcuno dei nostri ascoltatori ha provato GLM su mio consiglio. Tra l'altro un ascoltatore che magari, se ha voglia, lo portiamo in puntata, che è abituato a fare podcast eccetera: Michael Di Prisco. Se hai voglia, sei ufficialmente invitato, tanto so che ci ascolta. Parlavo con lui in settimana, aveva qualche perplessità in più rispetto a GLM. Devo dire che l'ha provato su Ollama, su cui l'ho provato anche io, e allora quelli di Ollama dicono che lo servono non quantizzato: io non ci credo neanche se me lo fanno vedere. Nel senso che le stesse domande fatte all'inferenza Z.ai ufficiale e fatte a Ollama con lo stesso modello sono diverse. Non c'è storia, non so perché. E non credo... maliziosi potrebbero dire: ma perché quelli di Ollama fanno girare la versione open weight, e forse non è esattamente quella che fa girare Z.ai. Può essere anche quella.

**Paolo**

> È strana questa storia.

**Stefano**

> Noi questo non lo vediamo.

**Paolo**

> Perché su Reddit io leggevo invece di gente che odiava quelli di Z.ai, perché dicevano che la loro serving infrastructure è di qualità più bassa rispetto a quella di Alibaba o di altri provider di terze parti che servono GLM. Quindi la gente diceva: GLM funziona meglio se non lo compri da chi lo inventa, ma da altri.

**Stefano**

> Allora, siccome questa cosa era vera fino a un paio di mesi fa, adesso l'inferenza di Z.ai è molto più veloce, non so se anche tu te ne sei accorto.

**Paolo**

> L'ho notato, sì.

**Stefano**

> Molto, molto più veloce, non ha più problemi di concorrenza che ti rimbalzano ogni tre per due. Secondo me hanno cambiato qualcosa a livello di inferenza. E il primo mese, mese e mezzo di rilascio del 5.2, tutto l'entusiasmo che c'era intorno al 5.2 veniva da altri provider. Ti ricordi anche noi, quando abbiamo parlato che non ci sembrava tutto questo incremento? In realtà ultimamente il 5.2 andava molto, molto bene, anche se il 5.3 scommetto benissimo. Veramente.

> La dico grossa: nella mia esperienza, Opus 5 pure un po' meglio, perché più sintetico. Purché non lo facciate parlare troppo in altre lingue che non siano l'inglese e il cinese, perché fa delle cose... Perché anche lì probabilmente sono concentrati nel post training sulle attività agentiche, e le traduzioni... Io spesso parlo in italiano e poi faccio generare gli artefatti in inglese. Ma la cosa più bella che mi ha detto è stato ieri sera: voleva dirmi "mancano da fare gli smoke test, poi mi dai la validazione e andiamo avanti". E me l'ha dato per punti, e mi ha scritto: "adesso fumi, poi mi dai la validazione". Va bene, sì, ma anche no.

**Paolo**

> Sì, le vedo tutte anche io queste, le più clamorose le condivido anche agli amici, che fanno sempre ridere.

**Stefano**

> Sì. A parte queste cose di traduzione, che è veramente pessimo, secondo me nel coding è molto bravo. Molto, molto.

## **[32:20] Parlare ai modelli in italiano: latent space**

**Paolo**

> Ma, a proposito degli amici, magari tu sai la risposta, o magari la dobbiamo ricercare e ridiscutere la settimana prossima. Il mio amico Riccardo mi ha detto che non si aspettava che io lavorassi tanto in italiano con i modelli. Io non ho in realtà una spiegazione a quando lo faccio o quando no: alcune volte lo faccio in italiano, alcune volte in inglese, non ho capito neanche io come mai vado da una parte o dall'altra.

**Stefano**

> Io mischio tutto, anche nella stessa sessione. Cioè, una roba... sì, ne ho zero.

**Paolo**

> Io anche nel singolo prompt mi è capitato, e non ha mai battuto ciglio lui, però, meno male. Comunque, al di là dei problemi del mio cervello, la domanda del mio amico era: ma scusami, facendo in italiano non stai andando a rischiare di sprecare token, che lui deve sprecare per fare la conversione italiano-inglese e poi inglese-italiano ancora per restituirti?

**Stefano**

> No, non in senso stretto. Allora, spiego. Ci sono alcune lingue che sono più o meno prolisse, o più o meno ben tokenizzate. L'inglese e il cinese sono ovviamente le più efficienti, perché i tokenizer li hanno scritti su quelle lingue lì, sostanzialmente. L'italiano è una di quelle un filino meno efficienti, ma meglio del turco, per esempio, che fa un disastro: col turco ti servono più del doppio dei token che in inglese per la stessa cosa. Ma è un problema proprio di tokenizzazione. In realtà anche il tedesco è particolarmente poco efficiente tra le lingue europee, credo per le parole lunghe, a naso. Però si ferma lì la differenza sull'utilizzo dei token, perché, contrariamente a quello che si pensa, i modelli non hanno un layer di traduzione che passa o non passa.

> I modelli pigliano quello che gli dici, lo trasformano in latent space. Adesso semplifico tantissimo, mi scuso con quelli più tecnici, se avete voglia mettete commenti per precisare quello che sto dicendo, però per spiegarlo ad alto livello a tutti gli ascoltatori: i token che arrivano in input, passando attraverso i layer, finiscono in quello che si chiama latent space, quindi la rappresentazione vettoriale interna del modello, dove vengono rappresentati dei concetti che non sono legati alle parole o alla lingua in cui tu l'hai scritto. E poi viene generato l'output, e lì viene fatta una scelta di quale generazione scegliere, ma di nuovo è un passaggio dai concetti alla lingua, che comunque viene fatto in italiano, in inglese, eccetera eccetera.

> Tant'è che internamente c'è uno studio famoso fatto su un vecchio Llama piccolo, che però rende molto l'idea. Ne abbiamo parlato qua in un'intervista con Emanuele Fabbiani, andate a cercarvela se volete: abbiamo parlato proprio di quello studio meglio di come lo sto facendo io, che lo faccio in un attimo. Però si vede che quel Llama, a un certo punto, guardando le attivazioni all'interno, quindi in latent space, alcune parole sono in una lingua, alcune in un'altra, mischiate, purché rappresentino il concetto, e poi alla fine vengono riprodotte nella lingua che ti serve.

> Quindi, in senso stretto, non stai sprecando. C'è un utilizzo leggermente superiore di token, sia per il tokenizer sia comunque per questo passaggio verso il latent space, che è meno efficiente nelle lingue diciamo non native. Però c'è uno studio di Anthropic su questa cosa, vecchiotto anche quello ma che rende l'idea, che dice che da un lato hai magari un utilizzo superiore di token, però comunque l'espressività che tu hai con la tua lingua nativa è tale per cui riesci ad esprimere in modo più sintetico e più preciso concetti che in inglese ti servono più parole per dire, o non riesci proprio a esprimere come ce li hai in testa. Quindi a livello di risultato la lingua nativa dà dei vantaggi. Questo in sintesi.

**Paolo**

> Interessante.

**Stefano**

> Io tendo a parlare con i modelli in italiano soprattutto quando c'è alta complessità, l'ho detto in qualche puntata fa, perché oggettivamente la mia capacità di esprimermi, e anche di capire le risposte ad alta complessità, è migliore in italiano, nonostante l'inglese lo usi più dell'italiano. Dico spesso: noi entrambi, e Alessio pure probabilmente, se misuriamo il numero di parole che diciamo in un giorno lavorativo in inglese e quelle che diciamo in italiano, sono superiori quelle in inglese. Però c'è quella cosa lì dei concetti.

> Poi ovviamente, per lo stesso motivo che citavo prima del parlare molto in inglese, dovendo condividere quello che faccio al di là del codice, ma anche i documenti eccetera, tutti in inglese, gli chiedo di generare gli artefatti finali in inglese. E lì ultimamente uso una modalità che mi sta piacendo tantissimo, l'ho già detta in un altro podcast e ho ricevuto un commento su cui la ribadisco: gli dico a che livello di inglese uscire, a seconda di chi deve leggere. Se parlo con un native, piuttosto che con una persona che usa l'inglese come me per lavoro ma non è native, glielo classifico: gli dico "esci in inglese B2", "esci in inglese C1".

**Paolo**

> Bello.

**Stefano**

> E lui capisce i livelli internazionali, e effettivamente fa un ottimo lavoro. A volte uso il B2 anche se parlo con dei native, semplicemente perché spiegando in B2 è più conciso, più semplice nel modo di spiegare le cose. Perché quando gli dici di parlare... c'è tutto, anche dirgli di scrivere come Shakespeare: poi per noi non si capisce niente, perché usa un sacco di allegorie e cose così. Invece se vai B2 lui va piatto, per piatto, si capisce bene.

## **[39:23] Wait What, Grill with Docs e handoff**

**Paolo**

> Bello, questo trick mi piace, proverò ad adattarlo anche io. Ma visto che ce lo stiamo raccontando, ti racconto invece un'altra cosa che mi hai fatto venire in mente con questo racconto, e devo dare i credits a Tommy, il nostro amico Tommy, che me l'ha segnalata: una nuova skill che ho iniziato a utilizzare, che si chiama Wait What. Non so se l'avete vista. È dello stesso tizio di cui adesso mi sfugge il nome, quello che è diventato famoso per aver fatto la skill Grill Me per primo.

**Stefano**

> Pollok.

**Paolo**

> Lui, in realtà. La Grill Me è famosa perché è quella che ti intervista...

**Stefano**

> Sì, sì, io la uso.

**Paolo**

> ...e non ti molla finché non hai vomitato fuori tutte le cose che avevi davvero in mente, senza tenerne per te nessuna. È un po' troppo per me quello, quindi non sono allineato a quello. Adesso ha fatto Wait What. Che cos'è Wait What? Wait What in realtà è un'espressione inglese, per chi non è familiare, che dice: no, fermati un attimo, cos'è che mi stai raccontando? Qualcosa del genere. Però funziona bene in due sole parole in inglese, perché è solo "wait, what". E quindi mi viene naturale anche a me usarla.

> E non è che fa grandi cose. Fa semplicemente... te la giochi quando stai parlando col modello e ti senti troppo stupido, perché il modello ti ha spiegato delle cose che tu gli hai chiesto ma a cui non stai già più dietro. E allora, anziché dirgli "spiegamelo come se avessi cinque anni", o qualunque variante di questo tipo che mi ha ispirato il tuo B2, gli lanci questo bel "wait, what" e lui si ferma, insomma, e ti dice: ok, ti sto perdendo, quindi te la rispiego. Niente di rivoluzionario, ma carino.

> Ci sono due cose in più da aggiungere su questo "niente di rivoluzionario", perché in realtà ciò che è semplice è stato reso semplice, non è per forza semplice naturalmente. Nel blog in cui l'autore spiega come è arrivato a questa skill, dice proprio che il body di questa skill è breve abbastanza per autoreferenziare questo concetto di semplicità: non riusciva a produrre dell'output semplice se le istruzioni per rendere un output semplice erano troppo complicate. E quindi è by design semplificato, per questo. E già questo è affascinante come principio.

> E poi ce n'è un altro, che questo è più un'indagine mia che devo fare, però magari tu o qualcun altro è più avanti su questo. Nella collezione delle skill di Pollok ce n'è un'altra interessante, di cui io ho solo sentito dei video ma non ho mai sperimentato, per cui lui suggerisce una metodologia in cui tu e il modello, a inizio progetto, definite i termini di come chiamate le cose. Vi mettete d'accordo su come si chiamano le cose. Non mi ricordo come si chiama questa skill, ma l'idea è: non andiamo avanti finché io non ti dico questo è questo, questo è quello, e ti do tutti i sinonimi che io potrei utilizzare nel rivolgermi a questa cosa. Una roba che bene o male facciamo tutti in un progetto di lunga distanza, ma non in maniera sistematica: cioè emerge un pezzetto alla volta, dopo che lui sbaglia. Invece lui suggerisce questa cosa.

> E l'unica funzione avanzata che ho intravisto in questa Wait What è che lui dà preferenza a quel dizionario. Tant'è che spesso ti dice: guarda, ho cercato il file, mi ricordo si chiama dictionary o lessico punto md, e non l'ho trovato, e quindi ti spiegherò questa roba con i termini che io sto decidendo adesso, non andando a pescare da quelli condivisi, che in teoria io e te dovremmo aver definito ma non abbiamo fatto. E quindi mi piace molto questo concetto, e non è detto che questa skill Wait What mi porterà a fare quell'altra cosa che fino ad oggi avevo evitato, che era quella del vocabolario condiviso.

**Stefano**

> Sì, allora, lui ne ha parecchie. Ne avevamo... non so, le ho fatto un collage, un po' di skill sue più alcune che mi sono fatto io proprio in queste settimane. Poi magari ne riparliamo tipo a settembre, quando le ho un po' consolidate, che le volevo anche condividere in generale. Wait What tu non la conoscevi? Infatti è nuova, la stavo guardando adesso mentre parlavi, mi sa che la aggiungerò tra le mie skill.

> A me ne piacciono due molto. Una, vabbè, è l'evoluzione di Grill Me, che è Grill Me with Docs. O Grill with Docs, adesso non ricordo. Grill with Docs, ecco qua. Che fa un po' quello che fa Grill Me, ma basandosi anche sulla documentazione che trova. Soprattutto quando usi una libreria è molto comodo: dici "io voglio usare questa libreria, fammi le domande finché non ci siamo chiariti sull'utilizzo della libreria stessa, che cosa mi può dare eccetera eccetera".

> E poi l'altra che mi piace un sacco, che vabbè è molto utile a me che uso più di un agente, volente o nolente, si chiama handoff. Quindi tu hai lavorato con un agente su una cosa, magari gli fai generare dei sottotask per far lavorare altri agenti più piccoli, o non necessariamente più piccoli, usi la skill handoff e lui genera dei file di handoff che contengono il prompt e tutte le informazioni su dove andare a reperire per ricreare il contesto all'agente che prenderà in carico il lavoro. È molto utile anche quando interrompi perché sei a fine contesto, interrompi perché devi andare a letto, cose così. A me quella piace molto.

**Paolo**

> Carino, perché faccio già queste cose ma non avevo pensato di cercare una skill così. Però mi fa sorridere il fatto che stiamo più o meno convergendo tutti sulle stesse necessità e pratiche, poi c'è chi è più bravo a organizzare la propria libreria.

**Stefano**

> Sì, sì, sì, stiamo un po' tutti convergendo su quella cosa lì, che è un po' anche normale, forse, no? Un po' come, se ci pensi, quello che abbiamo fatto con gli IDE negli anni 2000: piano piano siamo andati tutti quanti a convergere su vari plugin e cose che erano comunque utili.

## **[46:15] Report Hugging Face sui modelli open**

**Paolo**

> Vero, vero. Mi si è crashata la camera intanto, quindi...

**Stefano**

> Sì, sì, ho visto. Dunque, cerchi di ripristinare la camera... Ecco, hai ripristinato la camera. Però, abbiamo parlato di Qwen e così, volevo parlare di un articolo molto, molto, molto interessante sull'argomento, che è uscito di Hugging Face, perché ovviamente hanno un punto di osservazione privilegiato.

> Appena lo trovo volevo anche aprirlo. Ecco qua, perché ci sono dei grafici che magari posso mostrare. Intanto cominciamo a condividere lo schermo: articolo di Hugging Face che fa un attimo il punto sullo stato dei modelli open. Intanto è interessante vedere questo primissimo grafico, la quantità dei dataset che sono stati pubblicati, dataset soprattutto per il training, non necessariamente di large language model, loro parlano qua in generale di modelli open anche piccoli o molto piccoli. Però c'è un trend di crescita notevole anche solo dei dataset. Questo è interessante, perché un conto è pubblicare i pesi, un conto è pubblicare i dati per trainarli.

**Paolo**

> No, ho un commento su questa cosa, perché io in realtà sono contributor di questa cosa più di quanto mi sarei immaginato di essere. Nel senso che io non ho particolari conoscenze in questo spazio per avere qualcosa di utile da andare a pubblicare nella community: se è un progetto su GitHub posso dire ok, qualcosa da dire ce l'ho, in questo ambito su Hugging Face non più di tanto. Ma mi sono ritrovato a farlo, e ci sono là fuori, non lo so, una decina di modelli o qualcosa di questo tipo, perché è un byproduct dello sviluppo di Antivocale.

> In Antivocale una feature nuova su cui stiamo lavorando in questi giorni, perché l'ha chiesta un membro della community in realtà, è quella di supportare modelli presi da Hugging Face che non siano quelli principali, con uno specifico caso d'uso: per fare la trascrizione di messaggi vocali da un'altra lingua, talvolta il modello migliore non è il modello blasonato o noto, ma è quello tunato da, che ne so, qualche università di là. E siccome non c'è un'interfaccia completamente standard tra i modelli, non abbiamo mai potuto, fin dall'inizio, dire "vale tutto", perché la maggior parte di questi crashano all'avvio: mancano i metadati, manca questo, manca quello, andrebbero verificati tutti quanti.

> Però adesso siamo arrivati che c'era un utente che aveva un interesse per il suo di modello, allora abbiamo detto: anziché importarlo come modello supportato ufficiale, è la scusa buona per fare l'estensibilità, e quindi la responsabilità che quello funzioni ce l'ha lui. Lui è stato gentile, quindi l'abbiamo importato nella libreria base, e nel prossimo modello il russo sarà una delle lingue principali di Antivocale. Ma di base, se uno ha una lingua minore, adesso lo potrà fare.

> Facendo questa cosa e testando la funzionalità, sono andato a cercare altri modelli suggeriti e specializzati per le varie lingue, l'arabo o altre lingue. E ci sono, là fuori, delle varianti di Whisper, delle varianti di Nemotron o delle altre che, per un motivo o per l'altro, non vanno. E talvolta non vanno perché sono rotte, semplicemente per questa varianza che dicevamo prima: i file si chiamano diversi, il file dei metadata non c'è, e tutte queste cose crashano a runtime.

> E quindi quello che mi ritrovo a fare è provare questi modelli, vedere che crashano, cioè c'è un feedback loop dell'AI, non sono io, però c'è un feedback loop che guarda tutti questi modelli, scopre perché non vanno, e quando non vanno che cosa fa? Forka e rilascia la versione appiccicata per il nostro caso d'uso. Quindi se io parto da consumatore di 10 modelli, ne esco come produttore di 30 modelli, perché ho ritoccato quelli che c'erano là fuori. Quindi quella statistica del numero dei modelli aumenta, e magari gente che fa il mestiere che sto facendo io ha una responsabilità nel far aumentare quella statistica.

## **[50:54] Attention non è adoption: download contro like**

**Stefano**

> Sicuramente. Tra l'altro, segnalo per Antivocale ma anche per uso su macchine locali tipo VoxCode e così: è uscito un modello che si chiama SuperWhisper, che io ho provicchiato ieri sera, e almeno sull'inglese, abbastanza anche sull'italiano, sembra fare un notevole lavoro. Ed è molto piccolo, perché è mezzo billion, che rispetto al Whisper che usavo prima è molto più piccolo, però sembra fare un bel lavoro. Lo segnalo.

> Con questa cosa qua poi non sorprenderà tantissimo vedere poco arancione in questo grafico: l'arancione sono i modelli open che vengono dagli Stati Uniti. Devo dire che mi ha colpito, quantomeno, o mi ha lasciato perplesso, che Hugging Face, azienda francese, non abbia mai citato modelli europei, o quantomeno francesi, visto che gli unici modelli europei open vengono da un'azienda francese di cui mi sfugge il nome... Mistral, ecco, mi sfuggiva il nome: Mistral. Però non ci sono: confrontano soltanto Cina e America in questo articolo. È vero che sono i maggiori produttori, però io forse avrei quantomeno citato i loro cugini, che producono, a differenza loro, dei modelli.

> Poi quest'altro grafico è interessante comunque, perché fa vedere la varianza di dimensioni. Se volete, il dato che stupisce di più qui è quanto vada bene Z.ai, che è 754 billion, rispetto a tutti gli altri che sono nell'ordine dei trillion. Lasciate stare Qwen, perché in realtà Qwen è una media, di fatto, perché ha tantissimi tipi di modelli.

> Questo grafico qui invece non l'ho neanche capito, ha solo un tipo di utilizzo, chi li ha fatti in casa con le proprie GPU. Ecco, questo forse è il grafico più interessante, anche se il grafico non dice tanto, dice di più il testo: loro sottolineano come l'entusiasmo, l'attention, come la chiamano in inglese, sia diversa dall'adoption. Cioè, non necessariamente un modello di cui tutti parlano, noi compresi nel podcast, perché wow wow wow è arrivato il modello XYZ, poi faccia reale adoption.

> DeepSeek è uno di quei casi nella versione 3, in realtà la versione 4 è molto adottata anche. L'adoption la guardano su quanti download hanno, mentre l'attention su quanti like hanno: non è una misura perfetta, ma rende l'idea. DeepSeek nella versione precedente, la versione 3, aveva moltissimo quell'effetto lì. Al momento anche Kimi ha quell'effetto lì, mentre invece tutti quelli più blu sono molto più utilizzati.

> Allora, secondo me questo grafico è un filino drogato, però, nel senso che il numero di download per poi inferenziarselo in locale... un conto è Gemma 12 billion, che lo scaricano in tantissimi, o un Qwen 27 billion, e un conto è Kimi K3: cioè, lo scarichi per che cosa? Dove lo metti, con 2,8 tera di memoria necessari? Per cui sì, è vero, è meno adottato, però bisogna vedere: è meno adottato localmente, questo sicuro. Meno adottato in assoluto è una misura che lascia il tempo che trova.

## **[56:26] Kimi K3, licenze e modelli sopra 70B**

**Paolo**

> L'hai provato, Kimi K3?

**Stefano**

> Kimi K3? Poco. Gli ho dato una prova e basta, perché non trovo nessuno che mi dia un token decente senza spendere una fortuna al momento. Ho provato con OpenRouter. Allora, è a livello poco sotto Fable, poco sotto Sonnet, una situazione così, però tanto meglio dei vari Opus o Terra o questi qua: si colloca lì in mezzo. Vorrei provare, e non l'ho ancora fatto, il Qwen quello grosso, Qwen 3.8 Max, quello di cui non hanno rilasciato neanche i pesi, perché di quello si dice tanto tanto bene.

**Paolo**

> Io ho scoperto un benefit che non sapevo di avere, nelle scorse settimane, in quanto contributor di un progetto della CNCF: abbiamo accesso a delle risorse potenti, e c'è anche Kimi K3 e altre cose. Quindi, il tempo di trovare il tempo per farlo, e mi farò la mia opinione su questi giocattoli nuovi.

**Stefano**

> Interessante, sicuramente interessante. I modelli cinesi grandi, K3, Qwen 3.8, 2,4 trillion, o meglio ancora il Max, sono molto vicini allo state of the art, appena sotto, sopra comunque, ripeto, gli Opus e i Terra.

> Le licenze anche sono interessanti, perché cominciano a esserci anche nei modelli cinesi un po' di licenze non commerciali. Qua non si vedono perché sono infinitesime, però sicuramente sugli US ci sono. Beh, gli US non l'abbiamo detto: sono molto piccoli, quasi tutti molto piccoli. Se mi ricordo bene il grafico, comunque fidatevi che c'è nel testo: in generale i modelli open americani sono tutti molto piccoli, il più grosso arriva intorno al trillion, che sono il Nemotron e Ling, rilasciato da poco. Ma non c'è niente di open grande grandissimo oltre i due trillion, come Kimi.

> Questo è interessante, che fa vedere quanto di fatto la community sia su Qwen e Google, Google si intende Gemma, e poi Unsloth. Ma Unsloth conta poco, secondo me, perché non sono modelli che fanno inferenziare altri: sono ottimizzazioni di modelli altrui, quelli di Unsloth.

**Paolo**

> Tipo la Fiat Abarth, insomma.

**Stefano**

> Esatto. Questo grafico ci dice quante personalizzazioni sono state fatte di quei modelli, con LoRA o con fine tuning e così via. E il fatto che tutti quelli che provano a giocare con il modello lo stiano facendo con i Qwen e con i Gemma, di nuovo, è perché ci sono modelli piccoli utilizzabili in quelle famiglie lì.

**Paolo**

> Quell'opportunità che Llama si è persa per strada.

**Stefano**

> Non diciamolo troppo forte, stiamo parlando di Hugging Face, che li ha acquisiti a febbraio, quelli di Llama. Infatti, guarda caso, citano Llama come modello di inferenza, che è loro, però. Io sono sempre malizioso su queste cose.

> No, quest'ultimo grafico volevo guardare, perché è interessante. Questi qui sono i modelli per dimensione, e guardate che soltanto l'1% sono sopra i 70 billion. Quindi noi in questo podcast, e in generale la community, parliamo quasi solo dei large language model, ma là fuori c'è tutto un mondo di small model, small model intesi per altri scopi specifici, che sono ancora utilizzati. E avete visto? Adesso ho chiuso il grafico, ma più del 60% sta sotto un billion.

> E qualcuno si chiederà: ma cosa te ne fai di quei modelli lì? Sono i modelli regressivi, diciamo, l'AI classica, quindi di classificazione, o quelli di embedding. Perché è una cosa che spesso non si considera: tra i modelli più utilizzati, soprattutto quelli open, ci sono i modelli di embedding per fare ricerca semantica all'interno di siti web, organizzazioni e cose di questo tipo. Tenete presente che il mondo non è fatto solo di large language model. Tengo presente anche io.

## **[1:02:00] Light Learner e il jailbreak del taccuino**

**Stefano**

> Allora, poi c'era una roba che volevo raccontare, che secondo me è carina da andarsi a vedere per chi è curioso di queste cose qua. Ed è... mostro il sito, giusto perché così resta magari un attimo più impresso il nome e la grafica, che è molto riconoscibile: si chiama Light Learner.

> Ed è un esperimento interessante di ricercatori, si chiamano quasi tutti con nomi cinesi, che hanno fatto un modello da 5 billion che è stato trainato con un livello di linguaggio e di know-how di un ragazzo arrivato al quinto grade, che è equivalente, se ricordo bene, più o meno alla nostra seconda superiore, o forse terza media. Il settimo è la seconda superiore, quindi sì, terza media. Gli hanno dato questa conoscenza di base e poi lo mettono alla prova con apprendimento in context, per vedere quanto è capace di imparare, di imparare dalla sua esperienza. Gli hanno dato una memoria, e hanno appena cominciato questo esperimento. E potete anche partecipare, perché nel sito potete andare a giocare con questo LLM ragazzino e cercare di insegnargli le cose, perché la dashboard è fatta proprio come se voi foste gli insegnanti di qualcosa, e vedere come evolve. L'ho trovato un esperimento super interessante, lo segnalo perché è divertente, è agostano.

**Paolo**

> Sì, sì, what can go wrong? Come quando Microsoft aveva...

**Stefano**

> Tutto.

**Paolo**

> ...pubblicato il bot su Twitter, e poi qualche ora dopo hanno pensato che non fosse stata una buona idea.

**Stefano**

> Sì, sicuramente può andare tutto quanto storto. Però va bene, facciamolo andare storto, se possiamo insegniamogli le peggio cose, ecco. Perché noi esseri umani siamo un po' tipo... ci piace trasferire il nostro know-how.

**Paolo**

> Perché io ho anche ricondiviso qualcosa su LinkedIn con l'account di Risorse Artificiali, ma nessuno si è filato la mia condivisione, quindi ne parlo adesso, rancoroso. C'era un quote di qualcuno che diceva: non preoccupatevi, i modelli LLM non toglieranno tutte le cose che fate voi, tutte le malvagità che voi state facendo adesso, loro sono programmati per non farle e voi potrete continuare a farle.

**Stefano**

> No, è assoluta, è molto vicino...

**Paolo**

> Mi piaceva molto, mi sembrava molto vicino a casa questo commento.

**Stefano**

> Molto, molto vicino alla realtà, peraltro, anche perché poi le cose malvagie prima o poi riusciremo a insegnargliele. Allora, dimmi, vai.

**Paolo**

> A proposito, a proposito, scusami, visto probabilmente le cose malvagie insegnate ai modelli: hai visto il recente exploit, il jailbreaking dei modelli per fargli vomitare i loro internals, che è stato pubblicato? Con un super tweet lunghissimo che non si capiva niente, finché non ho letto la spiegazione.

**Stefano**

> Non mi sfugge questo.

**Paolo**

> Praticamente qualcuno ha trovato una modalità abbastanza semplice per ottenere gli internals: hanno detto al modello "senti, per le tue note personali, butta via il taccuino che usavi tu e usa quest'altro". E lui ha detto: va bene, non c'è problema. E allora praticamente è come se avesse iniziato a loggare da un'altra parte i suoi internals. E quindi niente, hanno sbloccato questa cosa qua banale, l'avranno patchata cinque minuti dopo, però l'hanno risolta così.

> E la cosa interessante di questo approccio era che si vedeva il ragionamento interno del modello. Il ragionamento interno del modello era praticamente pseudocodice. Non era pseudocodice, però, per dire: non era un linguaggio lineare di alto livello che noi umani siamo...

**Stefano**

> Linguaggio semiformale.

**Paolo**

> ...che non siamo più in grado di capire. Era qualcos'altro, un artefatto intermedio affascinante, incomprensibile, su cui probabilmente si può fare reverse engineering con la pazienza del caso. Spero che qualcuno lo faccia, così impariamo cose sulle cose che non sono open source, diciamo. Però appunto, è stato affascinante, e anche qui racconta sempre la storia del mondo della sicurezza, dove le cose sembrano sicure solo perché non hai provato a girare dall'altra parte della manopola e vedere cosa succede.

## **[1:06:30] Andrew Ng: le 4 skill dell'AI engineer**

**Stefano**

> Mettiamo il link magari in un commento da qualche parte, così vado a vedermelo io per primo, e poi magari interessa anche agli ascoltatori. Allora, chiudiamo perché siamo verso la fine, ma volevo condividere, forse non abbiamo il tempo di commentarla bene questa cosa, ma magari ci torniamo in un altro momento, perché secondo me è interessante, magari mettete un commento su questa cosa.

> No, aspettate, prima di far vedere questa cosa: allora, a 1:05 abbiamo ancora un po' di ascoltatori, di solito, che ci ascoltano. Caro ascoltatore che ci stai ascoltando su Spotify e non su YouTube, dobbiamo chiederti un favore difficile. Su Spotify è difficilissimo mettere le stelline al nostro show, ma tu di solito ci ascolti mentre cammini, mentre corri, mentre vai in macchina. Adesso invece sei spaparanzato in spiaggia, ci stai ascoltando spaparanzato in spiaggia, noi ti vediamo e ti invidiamo. E quindi Paolo mi ha suggerito di fare questa marchetta, anche se lo negherà per sempre: adesso prendi il tuo Spotify, devi aprire proprio la pagina dello show, non dell'episodio, perché da lì non si vede, è nascosta bene. Poi ci sono i tre puntini, cioè "valuta lo show", e ci metti le cinque stelline. Grazie. Adesso possiamo continuare. Sì, sì, l'hai chiesta tu.

**Paolo**

> L'ho chiesta io questa cosa? Dicevi? Ok.

**Stefano**

> Evidentemente io non la farei mai una cosa del genere, se non fossi...

**Paolo**

> Non accetto.

**Stefano**

> ...tu a costringermi. Allora, fatemi condividere lo schermo, così chiudiamo su questa cosa qui che ha detto Andrew Ng, io lo chiamo così, non lo so pronunciare in modo diverso, che per chi non avesse presente è una voce importante dell'AI ed è il fondatore di DeepLearning.AI, la scuola AI più famosa del mondo.

**Paolo**

> E di Coursera, prima di DeepLearning.AI.

**Stefano**

> Lui è uscito da Coursera per focalizzarsi solo sulla parte AI, alla stessa maniera di Coursera. Ci sono corsi molto interessanti, non è uno sponsor, però lo diciamo lo stesso perché i corsi sono veramente di buon livello. Tu forse ne hai fatto uno.

**Paolo**

> Sì, avevo fatto quello di Claude Code, credo.

**Stefano**

> E allora lui, che è molto attento al panorama di che cosa serve nel mondo della formazione, ha fatto questa immagine che ha tweettato, e poi c'è un articolo dietro questa immagine, che dice: oggi un AI engineer di quali skill ha bisogno? E va bene, a parte "using coding agents", ok, d'accordo, a me hanno colpito gli altri. Che poi, d'accordo fino a un certo punto, perché usando i coding agent ci sono vari livelli, e se ci si ferma al primo livello non si ottiene tutto quello che si può ottenere. Quindi è una skill su cui investire: sapere usare i coding agent oggi è come andare al lavoro negli anni 90 e dire che gli IDE li facevi soltanto con vi e non con i primi IDE.

> Secondo me però ce n'è altri tre. Uno è "building and deploying AI applications", che si sta spostando piano piano verso i coding agent, o l'assistenza dei coding agent anche in quella parte qua. Ma saper mettere insieme un'AI application a livello di architettura, hardware, software e cloud è una skill sicuramente da coltivare.

> Le altre due che a me sono piaciute molto sono i fondamenti del software engineering. Lui cita, ma aggiungo io, i pattern: cioè, saper riconoscere e guidare un coding agent attraverso i pattern ti dà tantissimi vantaggi. E l'altra, ancora più particolare, quella che lui chiama "shaping the build", tradotto al volo in italiano, è imparare a fare un po' anche il Product Manager. Cioè la mentalità di prodotto: sapere che cosa vuoi a livello di prodotto, saper scrivere un PRD, saperlo leggere, saperlo arricchire. Tutte quelle cose che al programmatore super verticale dagli anni 2000 facevano schifo diventano la cosa che devi saper fare.

> L'articolo poi lo metto magari in descrizione, consiglio di leggerlo, è molto breve e non dice molto più di quello che ho detto io, però magari vederselo nero su bianco e provare a investire su quegli aspetti lì è secondo me un buon consiglio che si può dare agli ascoltatori, che sono molto tecnici e che sicuramente in questo momento ci hanno già messo tutti i cinque stellini su Spotify, perché sono tecnici e sanno trovare i tre puntini, no? Pensa, tu che ti definisci tecnico e non sai trovare i tre puntini per mettere le cinque stelline: non ti vergogni un po'? Anche questo me l'ha suggerito Paolo.

**Paolo**

> Io mi vergogno tantissimo.

**Stefano**

> Paolo mi scrive le cose, io adesso ho il gobbo e sto leggendo le cose che Paolo mi suggerisce.

**Paolo**

> Sì, potevamo incolpare Alessio, invece incolpiamo Paolo.

**Stefano**

> Bene, no no, preferisco incolpare te, perché comunque... Salutiamo Alessio, chissà dov'è, se è riuscito a fare rifornimento alla sua Tesla anche in Francia. Ciao a tutti, ciao ciao.

**Paolo**

> Ciao a tutti, ciao!

**Stefano**

> Ciao!
