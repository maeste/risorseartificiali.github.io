---
title: "Era stealth, era GLM: 5.3 Flash e i numeri da giganti"
date: 2026-08-29
layout: episode
author_profile: true

episode_number: 69
episode_type: numerato
youtube_id: _C22mIG9LZs
description: >-
  GLM 5.3 Flash, ossia ox-alpha: il modello uscito in stealth che fa i numeri dei giganti con 6 miliardi di parametri attivi. E la corsa all'AI in locale.
spotify_episode_id: 2PT0QAqtV8Od5zwZErRGSi
# apple_episode_url: da aggiungere post-publish Apple (T+4-24h)
duration: PT1H11M

header:
  og_image: /assets/images/episodes/ep69.png

categories:
  - Puntate
tags:
  - GLM
  - ox-alpha
  - AI in locale
  - modelli open source
  - Hugging Face
  - Xiaomi Cube
  - Free LLM API
---

## **[00:00] Modelli stealth e pubblicità cinesi in ChatGPT**

**Stefano**

> Ciao a tutti! Via, via, partiti! Perché dico sempre pronti, partenza, via. Bentornate, bentornati, altra puntata al gran completo, altra puntata senza Alessio che prima o poi tornerà dalle sue lunghe vacanze. Però no, scherziamo. Ciao Ale! Si è ricaricato la batteria, che diceva un'altra volta, tutte queste cose da Marty McFly che noi mettiamo sempre. Le puntate, andate a sentire la puntata precedente se non l'avete capito. Allora oggi tante cose, tanti modelli nuovi, modelli stealth che si rivelano essere i nostri preferiti di sempre e ne parliamo di sicuro, ma c'è anche Gwen che arriva e poi ci sono tante news di come Apple vuol farci spendere i nostri pochi soldi prendendosene tanti lei, ma questo è un altro discorso. Ma partiamo salutando, facciamo come le radio anni 80, con il saluto personalizzato al singolo ascoltatore. Ciao Alberto, sappiamo che sei in palestra in questo momento e sappiamo che ti stai allenando.

**Stefano**

> Ma ci stai ascoltando. Alberto è un nostro ex collega, ci ha contattato con questa cosa super divertente che a me era sfuggita, grazie a Alberto per avermela segnalata. Pare che ChatGPT, ed è un problema noto, esiste proprio il link al problema noto che adesso vado a condividervi, pare che, dicevo, ChatGPT, mentre state chiacchierando, attenzione, ChatGPT non GLM, a un certo punto spari del testo in cinese facendo pubblicità a macchinette videolotteri e cose di questo genere, così in mezzo alla conversazione. E pare che sia stato riconosciuto da OpenAI come problema noto. Stupendo.

**Paolo**

> Allora è meraviglioso e non vedevo l'ora che succedesse questa cosa. Praticamente Giorgio Mastrota che ti compare quando stai cercando di usare sta roba.

**Stefano**

> Spero che non sia voluta questa!

**Paolo**

> Questa roba non è voluta, è super affascinante. A parte che viene via facile dire che non è voluto, così come a Damanhur viene sempre via facile dire che il blocco che ha staccato il DNS globale. Però non lo so, cosa ne pensiamo? Non è voluto che lo vedeste oggi o non è voluto che succeda?

**Stefano**

> O è un test, dici?

**Paolo**

> O addirittura qualcuno sta testando, se lo sono persi per strada, o addirittura nessuno sta testando ed è l'AI che sfugge da sola: ha detto in questo strano pianeta serve fare pubblicità, fammi fare pubblicità.

**Stefano**

> Allora, più o meno, come pensiero positivo, diciamo, se la vogliamo vedere positiva, nel senso, sta vomitando fuori dei dati di training che sicuramente gli sono passati sotto gli occhi, perché facendo lo scraping di tutto lo scibile è capitato anche nella pubblicità delle videolotteri, che poi li mette in mezzo così. Può essere una cosa sbagliata in un certo senso, o come dici tu un comportamento emergente, perché noi diciamo che bello, ci hanno accontentati i comportamenti emergenti quando imparano a fare cose che non gli avevamo insegnato, e mi ha messo a fare pubblicità delle videolotteri, dici tu? Oppure dicono, magari prima o poi queste pubblicità le infiliamo dentro, quindi gli hanno insegnato a infilare dentro le pubblicità. Ipotesi A: gli è sfuggito un attimo di controllo. Ipotesi B: ma sì, mettiamole una cosa che nessuno può pensare che faremo, pubblicità delle videolotteri cinesi, ma intanto vediamo che escano e poi diciamo che è stato un errore, eccetera eccetera, se vuoi essere malvagio, così.

**Paolo**

> Ipotesi C: qualcuno ha fatto data poisoning bene e quindi ha detto vediamo se riesco a convincere GPT a mostrare quello che decido io, anche se loro non se ne rendono conto.

**Stefano**

> Allora, però, il racconto dell'ex collega: non posso mostrare la chat, perché ci sono altre... cioè non la chat con me, la chat che lui mi ha incollato, perché ci sono altre persone, non è assolutamente giusto. Però a questa persona che parlava con lui è uscito senza che lui facesse nessun data poisoning, cioè non era voluto farlo uscire, non è che ha fatto...

**Paolo**

> No no no, scusami, io intendevo che il data poisoning è fatto in fase di training del foundational model. Qualcuno là fuori stava giocando a vedere, vediamo se riesco a confondere questi modelli e a fargli mostrare quello che in teoria non dovrebbero mostrare.

**Stefano**

> Può essere assolutamente una cosa del genere. Perché no? Ma tanto adesso facciamo girare i modelli tutti in locale e non abbiamo più questo problema, perché avete visto, sono usciti i nuovi Mac Studio con M5 Pro.

## **[05:30] Mac Studio M5 Ultra da 20.000 dollari**

**Paolo**

> Ultra.

**Stefano**

> Quello che insomma c'è il bandwidth di Ultra, bravissimo, che è come l'M3 Ultra con un bandwidth di memoria fantastico e quindi con le prestazioni dell'M5. Adesso è uscito anche l'M6 ma Ultra non c'è ancora. Ed è uscito questo Mac Studio che è comunque una farra, perché nella configurazione proposta da Apple viene via a 20 mila dollari. Che vuoi non... averli, al 256 giga.

**Paolo**

> Hai già di... di RAM tra l'altro neanche 512. Hai già deciso quale arredamento musicale metterci sopra?

**Stefano**

> No, visto che si possono scegliere in vari colori, a me piaceva l'azzurrino metallizzato che costa quasi 500 dollari in più della versione base bianca. Vabbè, ma se sei lì e spendi 20.000 dollari non faremo il barbone: azzurrino metallizzato, sia!

**Paolo**

> Ma poi ci fai sopra la casse o ci fai una configurazione normale?

**Stefano**

> Sì, certo. No, vabbè, ma hai ragione, nel senso che sono 20.000 dollari, con tutto il rispetto. Nel senso, io ho conoscenti, amici, l'abbiamo già detto che ci verranno a trovare, che stanno facendo investimenti in quel senso, ma lì c'è un significato, di prepararsi, giocando, studiando ed essendo avanti, e vai, fai degli investimenti. Però 20 mila dollari a 200 dollari al mese ci vogliono 8 anni e mezzo per arrivare al breakeven point.

**Paolo**

> Esatto, esatto, speravo che raccontassi questa versione, perché al di là della versione emozionale del grosso numero, tu hai fatto i propri conti dicendo: ma se io invece li pagassi a noleggio o a consumo, questi soldi, a Together, OpenAI...

**Stefano**

> Sì, esatto.

**Paolo**

> Se lo paragono ai 200 dollari degli abbonamenti Max, allora, qualcuno può dire che il Max comunque è limitato, non ha un numero illimitato di token, eccetera. A me piacerebbe andare a capire se con quell'hardware lì, a parità di prestazioni di modello o prestazioni simili, si fa ad arrivare a quel numero di token, perché poi il numero di token al secondo non è infinito su queste macchine. Però al di là di questa considerazione, ammettiamo che i 200 dollari del Max mi bastano al mese: sono 2400 dollari all'anno, ok? 2400 dollari all'anno, per arrivare a 20.500, perché io lo voglio azzurro non metallizzato, mi ci vogliono 8 anni e passa ad ammortizzarlo. 4 anni abbondanti se faccio 2 Max e spendo 400 dollari al mese. Cioè è impegnativa la situazione. E poi sono 256 giga di RAM la versione base, la 512 che non è ancora uscita, i rumor la danno oltre i 25 mila dollari.

**Paolo**

> Sì, stavo pensando proprio a quello, perché comunque le storie di chi ha la disponibilità e chi li mette fuori questi deployment ci sono, e quasi tutte le storie che ho letto io non è mai un Mac Mini, è un cluster di 3 o 4 per poter lanciare su i GLM full. Quindi è vero, il singolo nodo è diventato più potente, facciamo molte più cose con una macchina sola, ma forse non facciamo tutte le cose che gli entusiasti produttori di modelli cinesi con ottime prestazioni continuano a buttare fuori, e si espandono in orizzontale sulla capacità.

**Stefano**

> Allora, ovviamente questo è il primo hardware che esce di questo genere, abbiamo già nominato che a settembre dovrebbero uscire i primi RTX Pack, quindi PC, Windows, Linux diciamo, con un'architettura nuova che somiglia un po' a quella del DGX Pack, la macchina dedicata di NVIDIA alla GPU e ai modelli. Che oggi è 128 giga condivisi, dovrebbe uscire, diciamo, che è un'architettura più simile a quella silicon del Mac, per avere la memoria condivisa su un PC normale che usi anche per fare altro. Quindi sta arrivando un po' quella concorrenza lì, fatta in collaborazione NVIDIA Microsoft, vediamo cosa succede lì. Ma soprattutto, giusto, mi segnalavi proprio questa settimana, l'avevo visto anche io ma la segnalazione sulla nostra chat è arrivata da te, che anche i cinesi si muovono sull'hardware.

## **[10:30] Xiaomi Cube: l'hardware consumer cinese**

**Paolo**

> Sì, allora c'è stato un evento di Xiaomi in Cina in cui hanno presentato la loro alternativa, o meglio ci hanno raccontato la loro visione per la loro alternativa a tutto questo, che è un'alternativa molto interessante. Hanno prodotto un Cube che ha il nome che gli hanno dato per mancanza di fantasia, che è un'immagine di Mac Mini nell'aspetto, bello, cesellato, con la loro tecnologia per buttare fuori dell'acciaio anodizzato, bello, con tanti buchi. Qualcuno commentava come hanno persino preso la briga di dirti quanti buchi, trapanati al millimetro per il passaggio dell'aria, sono sulla scocca di questo coso qua, perché queste sono le caratteristiche in cui Xiaomi guarda. In realtà hanno messo dentro un'architettura fatta totalmente di componenti propri per andare a muoversi nello stesso spazio in cui si muovono queste altre proposte, o meglio il presupposto è che si vadano a muovere nello spazio più consumer, in realtà, perché quello è sempre stato il business di Xiaomi, e quindi potenzialmente ci daranno una macchina che potremo permetterci di comprare.

**Paolo**

> Questa è la speculazione, in realtà tutto questo è super affascinante, ha tirato molte attenzioni di tante persone, tra cui la mia. Io glieli darei a Xiaomi i soldi per fare questa cosa, se non che era un po' teaser, nel senso che loro hanno fatto vedere una macchina costruita ma non ci hanno detto fino in fondo come, non ci hanno detto fino in fondo per quando. Quindi in realtà c'è nel lancio un pochettino di fumosità, Xiaomi è una foc...

**Stefano**

> Si parla di Q2, cioè i rumors danno Q2 2027, però...

**Paolo**

> Sì, quella data è stata fatta, e vabbè è un'indicazione. Però in realtà chi osservava meglio diceva: nessuno ha verificato nessuna di queste claim, quindi aspettarci qualcosa per una data, senza essere sicuri che quello che ci hanno raccontato è anche solo vicino a quello che ci daranno, lascia un po' il tempo che trova.

**Stefano**

> Anche perché lì, hai visto, leggevo stamattina che ci sono tre processori su questa macchina, sostanzialmente uno che è quello principale che regola il flusso eccetera, e poi diciamo le due GPU che lavorano in maniera parallela concorrente e farebbero arrivare le prestazioni. Allora l'unico processore che fisicamente hanno fatto poi vedere, d'altra parte, quello principale che è quello che sta sui telefonini. Te lascio finire, dopo c'è un altro po' di cose su questa cosa qua.

**Paolo**

> Sì, quindi diciamo che è molto interessante questa cosa ma deve ancora dimostrarsi. Per ora siamo a livello del tuo compagno di classe elementare che ti ha detto che si è comprato il Nintendo ma nessuno l'ha ancora visto. Quindi devono farcelo vedere prima di lasciarci salivare, diciamo. L'altra cosa interessante è la versione positiva della cosa che hai appena notato tu, che il processore è quello di Xiaomi, cosa Apple: processori di Apple siamo tutti contenti di averli sia sul telefono che sulla macchina, quindi di per sé non è una cosa negativa, può essere una cosa positiva se riescono a darci processori molto interessanti. La cosa interessante principale che invece le persone hanno notato è che è un ecosistema quello di Xiaomi in Cina. In realtà è più un brand dato in outsourcing molto spesso, con delle caratteristiche... quindi non è sempre un design che viene da un punto centralizzato ma sono tanti che convergono lì. Il punto è che essendo un ecosistema è un ecosistema che si autoalimenta: quindi se loro questa cosa la riescono a fare più o meno bene al primo giro, hanno già un'infinità di potenziali candidati consumer di questa tecnologia senza neanche dover uscire a dare il cento di casa loro. L'aspira polveri, il robot, questo o quell'altro, hanno tutti un possibile caso d'uso per questa tecnologia in casa. Che è la stessa idea che ho visto succedere alla Apple: una volta che hanno fatto dei buoni processori hanno deciso che forse tanto valeva metterli dappertutto. Però l'idea era quella. Quindi potrebbero avere, diciamo, fatto la prima mossa giusta per avere qualcosa di interessante che interessi al mondo esterno, e se mai non interessasse il mondo esterno, interessa il loro mondo interno, e che quindi dovrebbe dare vita a questa iniziativa. Vai, cosa ci dicevi?

## **[15:40] RAM cinese e l'alleanza con Alibaba**

**Stefano**

> Allora, e poi su questo c'ero, avevo un altro paio di cose secondo me che sono interessanti da menzionare. Prima che parte di questo ecosistema che nominavi tu, loro hanno presentato questo Cube con delle RAM ad alte performance per la prima volta costruite in Cina. Questa è cosa un po' tecnica per addetti ai lavori, ma bene o male le RAM del mondo le fanno solo... Ci sono altri vendor così, ma anche Xiaomi ha sempre montato RAM Samsung e quindi coreane. Sapete bene che la crisi della RAM è una delle cose di cui parliamo spesso, cioè di RAM non ce n'è più in giro, Samsung fa fatica a produrla, tanto che leggevo che tutti i nuovi telefoni della Samsung che sono usciti, esclusi quelli della serie S, le versioni nuove hanno meno RAM della versione vecchia, perché non ne hanno da metterci e non c'è più dove prenderla, e ovviamente gli conviene venderla all'invidia di turno che gliela paga prima di più, e così via. Per cui sapere che si sta producendo dalla camicia cinese è interessante diciamo per la versione geek nostra, e perché siamo europei, forse un pochino più preoccupante per il mondo US che con la Corea ha degli accordi strettissimi. Significa che potrebbe essere, se tutto viene confermato sul Cube, che la Cina può iniziare a fare una serie concorrenze anche nel mondo della RAM di alta performance, che è una cosa particolare. L'altra cosa che va notata è che a febbraio di quest'anno Xiaomi ha firmato un mega accordo commerciale con Alibaba, che non è una fusione ma è una joint venture sostanzialmente, proprio sulla parte in cui Xiaomi ha anche messo un sacco di soldi per la parte di ricerca di Alibaba sui large language model. Quindi comincia un pochino a chiarirsi quello che è il possibile modello di business che tutti dicevano: ma qual è il modello di business dei cinesi che mettono tutti questi modelli open e poi guadagnano poco, perché delle API ne vendono fino a un certo punto e poi tutte le cose le puoi installare dove vuoi. Probabilmente il modello di business che stiamo vedendo sempre di più, dopo ne parliamo, grazie a modelli che diventano sempre più performanti stando relativamente piccoli, è: ti fornisco il modello e ti fornisco l'hardware su cui fartelo girare a casa. Potrebbe essere interessante, a me non dispiacerebbe se i prezzi non sono da 25k, perché se spendo 25k per l'hardware vado a mangiare pane e...

**Paolo**

> C'è ancora motivazione alternativa: ti metto in casa un Trojan dove posso vedermi i fatti tuoi, ancora più dall'aspirapolvere.

**Stefano**

> Certo, certo, una volta quella fa sempre parte del modello di business cinese, no, d'accordo, come sugli apparati di rete, citavi tu, i Tenda, no, che sono cinesi, qualche settimana fa che...

**Paolo**

> Ci siamo.

**Stefano**

> Hanno avuto quel problema che io ho assolutamente fissato casa mia, non cercate di venire a casa mia a bucarmi i miei Tenda. Perché dicevo proprio: io ho dei Tenda, come tu hai dei Tenda, li ho fissati subito appena abbiamo messo giù.

## **[20:30] Nvidia compra Hugging Face: il parallelo GitHub**

**Stefano**

> No, prima di passare a parlare dei modelli cinesi nuovi, L non così larghi ma molto performanti, a tutte le storie lì dietro, finiamo di parlare di acquisizioni, perché l'altra volta parlavamo di Stripe che ci sono rumors di acquisto di OpenRouter, sono rumors ancora più forti e grandi, grandi anche in termini economici, perché si parla di 12 miliardi, di acquisizione di Hugging Face da parte di Nvidia. Notizia interessante da tantissime sfumature. Nvidia è conosciuta soprattutto per l'hardware, ma anche una discreta divisione software, discreta divisione di ricerca su large language model e di inferenza ovviamente. Non è tanto conosciuto, ma i loro Nemotron sono tra i modelli open di stampo americano migliori che ci sono in giro. Loro ne fanno anche un hosting parzialmente gratuito, poi dopo parliamo anche di questo, perché Paolo ci deve raccontare sugli hosting gratuiti. Ma stando sulla notizia di NVIDIA: rumors, non sono confermati al momento, né NVIDIA né Hugging Face ha confermato o smentito la notizia al momento in cui registriamo almeno, però sono rumors insistenti che danno questa acquisizione come possibile. Allora, da tanti punti di vista, Hugging Face ha sempre detto non vogliamo un investitore predominante, quando raccoglieva fondi ha sempre voluto investimenti distribuiti perché non volevano un investitore predominante che li controllasse. Beh, qua parliamo di un investitore al 100%, quindi va forse un po' contro quel loro desiderata iniziale, almeno. Poi l'altra cosa è che forse meglio Nvidia di altri, perché comunque Nvidia sta dimostrando di avere una cultura open source, tutti i loro modelli sono open, e soprattutto ha degli interessi forti a non chiudere su un singolo modello, perché a loro interessa vendere l'hardware, loro lo sollevano e così. D'altra parte è un po' come quando Microsoft ha comprato GitHub: il più grande player del software che compra dove il software viene tenuto; il più grande player che produce GPU su cui girano i modelli compra il repository su cui si tengono i modelli.

**Stefano**

> Non ti sento Paolo, sei mutolato proprio.

**Paolo**

> Non so cosa mi abbia mutato. È una possibile, cioè è una ragionevole, parallello questo, ma secondo me ne manca un pezzetto in questa storia che stai raccontando. Una delle altre cose che Hugging Face fa, anche se non in tanti la usano, è che te li fai eseguire questi modelli: loro hanno il loro cloud, per cui alcuni, non tutti, non ho mai capito devo dire la verità i criteri, perché forse c'entra anche la capacità dell'hardware del client di fare offloading di qualcosa, quando ci parlo dal telefono, non quando faccio la testa come va, ma ti fanno giocare con alcuni dei modelli che stai guardando. Io li provo spesso per cercare i modelli locali, per antivocali, per fare altre piccole cose, e a tutti gli effetti quella è una feature. Ora, è una feature per cui io non pago, e quindi non so se ci costruirei un modello di business sopra, ma il passaggio da lì è breve se ci ragionate. Se NVIDIA si stabilisce come un player credibile vuole giocare a fare l'AWS della situazione, ti dice guarda i modelli sono già qua, ci puoi giocare per 10 minuti a gratis, ma se poi ci vuoi costruire sopra del software sulle nostre risorse cloud, dacci i soldi, noi dietro ci abbiamo tutti i computer dell'anno scorso che non sappiamo cosa fare, li abbiamo messi in un magazzino, li abbiamo agganciati tutti in una rete e quindi ti vendiamo risorse. Ora che in vita loro servano questi soldi non lo so, però...

**Stefano**

> Beh, però diversifica.

**Paolo**

> Diciamo che diversifica da ragionevole, sì, è un po' quello il mio punto, oltre al fatto che possono poi appiccicarci degli XL premium dicendoti: se questo lo vuoi far girare sui nostri ultimi modelli tirati, vien di qua, e per tanto ce l'abbiamo tutte in casa queste schede.

**Stefano**

> No, hai ragione, sì, sì. Io non l'avevo messa nel racconto, ma è assolutamente uno dei motivi, credo, per cui stanno guardando lì. Cioè comunque Hugging Face è nato più per fare quello che altro, cioè ti tieni lì le cose, poi l'abbonamento premium di Hugging Face ti dà proprio più risorse per fare sia inferenza ma anche, e soprattutto, fai tuning, fine tuning e training dei modelli. Quindi potrebbe essere assolutamente quello il modello di business ultimo. Ma non ultimo, io aggiungo che però sarebbe, se confermata, una pessima notizia per l'Europa, perché ricordo che Hugging Face è francese: soci, capitale, sedi, tutto quanto in Francia, così come Mistral. Insieme a Lovable, stando nel mondo dell'open source, invece è norvegese e svedese, non mi ricordo, Nordics comunque. Sono le uniche tre startup che hanno raggiunto, con alti e bassi, opinioni diverse su ognuna di queste aziende, un livello, nel mondo AI almeno, interessante a livello globale. Per cui la vedo come una pessima notizia, se togliamo quelle, spotify, all'Europa nel mondo digital resta veramente pochino. E questo... tutto sommato Hugging Face era interessante per vari motivi: era interessante perché era il repo generale di queste cose, la parte soft open source era europea, e forse era... bastava quello. Poi c'era stato anche tutto quell'investimento sulla robotica che hanno fatto prendendo le barche e open source-izzando anche la parte hardware, così, vi ricordate il mio braccio robotico di Hugging Face? Ma soprattutto avevano fatto il Reachy Mini, che io non ho ancora comprato ma ho fatto bene a non comprarlo, adesso vi mostro il perché: è quel robot statico che si mette sulla scrivania, delle telecamere parla e fa delle cose carine, è stato molto tentato. Ma attenzione, perché a Hugging Face non c'è solo questa notizia dell'acquisizione, ma soprattutto abbiamo questa notizia. Reddiamoci: questo è quello che citavo prima, ma quello lì, il duck, mini duck, non so come l'hanno chiamato, un robot bipede, 400 dollari. Ma secondo voi non ho già fatto il preordine? No, ma guarda che bello che è!

**Paolo**

> Questo casi sono 400 dollari ben spesi, perché in una scena ha tirato su delle mutande dal pavimento e che quindi è una...

**Stefano**

> Tira... Guardalo, guardalo, quando gioco a calcio poi in un certo punto gli metto nei piedi. Guarda questo che gli metto nei piedi, mi diverto matto? No, divento matto. Come faccio? Farne a meno.

**Paolo**

> Sembra una scena uscita da Ritorno al futuro parte 2.

**Stefano**

> No, appunto, appunto, appunto, cioè io devo averlo, già fatto il preordine. E appunto per chi ha notato, stavo condividendo un post su X di Van Fjord Avanti, anche lui ha già fatto il preordine e non vediamo l'ora di farli lottare tra loro.

**Paolo**

> E quello è un classico, sempre e comunque. Anche il Mac Mini, farlo lottare con l'altro Mac Mini se ce l'avesse.

**Stefano**

> No, quella cosa lì quando ho visto il video ho detto: no vabbè, di cosa stiamo parlando? È il mio regalo di Natale, perché faccio il preordine adesso, arriverà a Natale se mai arriverà, però è il mio regalo di Natale. Se arriva, poi magari li compro in video e dice: no basta, basta giocare con queste cazzate.

**Paolo**

> Va bene, potrebbe essere una buona interpretazione. No, stavo pensando che quando l'avevi buttata più sul serio, cioè è un grande passo per Nvidia ma una scocciatura per l'Europa, sono d'accordo, ho pensato anche io la stessa cosa. Ma adesso sto ripensando la mossa in ottica Nvidia, invece. Mi chiedo se quella non fosse proprio l'obiettivo, senso... Anche chi se ne frega di Hugging Face?

**Stefano**

> Fargli buttare via il mini duck lì?

**Paolo**

> No, più anche chi se ne frega di Hugging Face, ma se togliamo una plan, come si dice, una postazione, un punto di avanzamento all'Europa, ci possiamo anche dimenticare dell'Europa, diciamo: li togliamo dal tabellone se stessimo giocando a Risiko. Ne diventiamo noi, non ci dobbiamo più preoccupare di loro, e anche non ci dobbiamo più preoccupare mai che la Cina, o qualcuno vicino alla Cina, possa fare la stessa mossa che abbiamo appena fatto noi.

**Stefano**

> Allora, sì...

**Paolo**

> Non so se Hugging Face avrebbe potuto vendere alla Cina, lì ci sono anche regolamentazioni europee, ma è un pensiero di meno, che non è la Cina, è l'India, un altro posto in stile.

**Stefano**

> Sì però sai, se n'era parlato anche al tempo di GitHub, no? Microsoft prende GitHub e lo controlla completamente, poi in realtà non è successo, nel senso che sì, cioè lo controlla finanziariamente, c'è un po' di favori che vanno su VSCode e Copilot queste cose qua, però alla fine GitHub è rimasta una piattaforma aperta, perché in fondo è la forza dell'open source. Nel senso, quando si parlava di GitHub si diceva: chiudono troppo GitHub, c'è sempre GitHub, perché oggettivamente, con tutto il rispetto sia per GitHub che per Hugging Face che hanno avuto l'idea per primi e hanno fatto un ottimo lavoro, non è impossibile fare quello che fanno loro. Il senso: una volta che hai un cloud potente e il sistema per il versioning, morto un papa se ne fa un altro. Se Nvidia dovesse davvero diventare troppo invadente e magari chiudere i modelli open source di stampo cinese o di stampo europeo... Sì, però morto un papa se ne fa un altro, o no? Ho sbagliato su questo?

## **[29:25] La mossa Nvidia e la lezione dei fork**

**Paolo**

> Allora, in linea di principio sì, l'internet ci ha sempre insegnato che quando qualcuno fa una presa di posizione forte, soprattutto dal mondo open source, quando Oracle si è comprata la MySQL, piuttosto che quando HashiCorp ha tolto, ha cambiato lo statuto di Terraform e ha saltato fuori OpenTofu, ci sono tante di storie davvero simili. Non so se nessuna storia è mai arrivata davvero alla fine di dimostrare che il respawn è tale e quale in termini di successo del precedente, cioè di sicuro, adesso al volo non mi viene un esempio, però sì.

**Stefano**

> Beh, GitHub stessa rispetto a SourceForge.

**Paolo**

> Sì, forse, adesso non mi ricordo la storia, se era un tentativo esplicito di fare quello. Non mi ricordo, che usavo SourceForge quando ero giovane. Sì, quindi insomma, diciamo, morto un papa se ne fa un altro, soprattutto nel nostro mondo di persone che se le metti davanti a un AI ti riscrivono qualunque software. Quindi in linea di principio sì. È più un discorso... Ecco, guarda, se vuoi, forse l'esempio che magari non ha funzionato è quello di X. Quando è arrivato Elon e ha pasticciato con X e tutto quanto, tutti erano iniziati a nascere cloni, Bluesky, qualcosa, e tutto quanto. Però non mi sembra che sia emerso qualcosa che ha affossato e fatto dimenticare X, Twitter, o nuovo. Quindi quello potrebbe essere un controesempio: che in teoria sì, ma poi in pratica dipende se le persone riesci a renderizzare, così come qualcosa che rimpiazzi WhatsApp. Cioè, non è che WhatsApp è il migliore, anzi, però è quello che usa mia madre e ci metterò vent'anni a farle cambiare da WhatsApp a un altro.

**Stefano**

> No, è vero, è vero. No, no, è così, su questo hai assolutamente ragione. Però sono le cose un po' più social consumer, le cose così tecniche secondo me. E poi c'è anche da dire che sì, è vero, Elon ha fatto un po' di pasticci con X, poi ha la sua maniera, è andato, è venuto, ha ritrattato, ha detto, non detto, finché non ha un po' riconquistato. Aveva messo gli abbonamenti a 30 dollari, minimo, sono scesi a 1,99. Un po' se l'è giocata alla sua maniera.

**Paolo**

> Sì sì sì sì.

## **[34:45] Gratis per sbaglio e il progetto Free LLM**

**Stefano**

> Invece a proposito di soldi e di modelli free che parlavamo prima, raccontami la storia di GLM.

**Paolo**

> Sì, prima di quello, realtà vi racconterò di un'altra cosa gratis con cui sto litigando, Aurora, sul mio schermo, che probabilmente impatta meno persone perché dovete essere un cliente di Z AI con GLM come siamo io e te. Ma credo che, o hanno sbagliato un deployment, sì, recentemente...

**Stefano**

> Dopo parliamo di loro, dopo parliamo tanto.

**Paolo**

> Sono andati sulle scene perché hanno fatto qualcosa di significativo buttando fuori anche un modello nuovo, che però non voglio spoilerare adesso. Ma o hanno sbagliato loro, o ho sbagliato io, o non so cosa sta succedendo: uno dei loro modelli, a me non mi chiedono i soldi per usarlo, e quando mi finisce la quota questo modello mi rimane libero. Me ne sono accorto per assolutamente sbaglio, quando uno dei miei agenti Hermes continuava a funzionare quando tutto il mio resto era fermo. E detto: ma come è possibile questa cosa? Ho debuggato, facendo prove, e salta fuori che il modello nuovo, quello di cui parliamo tra poco, beh, non lo fanno pagare. Quindi adesso sto cercando di usare il mio setup di LiteLLM che vi ricordo è quel gateway locale in cui puoi dargli puntamento a più modelli e lui vi aggrega la comunicazione, quindi appare ai vostri client come un punto singolo ma in realtà poi lui ramifica le chiamate, e sto cercando di convincerlo a dire: quando finisci il credito vai su quello gratis. Non durerà per sempre, ma finché dura usiamo.

**Paolo**

> Comunque piccolo aneddoto su come risparmiare i soldi coi modelli. Se questa cosa vi interessa ma non avete un abbonamento GLM, perché quando vi avevamo suggerito di farlo la prima volta non ci avete creduto e poi vi siete pentiti di non averlo pagato, così poco, considerando come sono finiti a costare i soldi per i modelli, qualcun altro ha realizzato una bellissima iniziativa che ha pubblicato su GitHub. Magari la conoscete già, quindi se ve la racconto... c'è niente di nuovo, ma se non la conoscete è molto interessante e vi incoraggio a stare un pochettino di attenzione a quello che vi sto per raccontare. Il progetto si chiama Free LLM, che trovate su GitHub con un suffisso ulteriore, Free LLM API. Ed è, credo, sotto il nome privato di un developer, quindi non qualcosa a cui normalmente prestereste più di tanta attenzione, perché sembra un'iniziativa personale di qualcuno. Che cos'è questo Free LLM? E come questa parola Free dovrebbe catturare la vostra attenzione? Ci ho messo un pochettino a capirlo, perché se le premesse erano interessanti poi non capivo che cosa ci fosse di diverso rispetto al mio LiteLLM che vi ho appena rispiegato. Ma lui fa delle cose diverse. Questo sviluppatore ha deciso di osservare come, se guardando su internet andiamo a pescare tutta la free quota di ogni singolo provider che c'è là fuori, da Google con le sue Gemini e Groq, quelli più grossi, ma anche quelli minori, magari nazionali, saltano fuori qualcosa come, ma faccio un conto, non mi ricordo sulla pagina, qualcosa tipo 10 miliardi di token al giorno, gratis, semplicemente spezzettati un po' di qua e un po' di là. E lui ha detto: visto che adesso la fatica non la dobbiamo più fare, cioè se voi foste un umano con tanta pazienza, vi fate questi 120 account su queste piattaforme libere, ogni volta che ne finisce una passate all'altra, di per sé andate a scroccare con le risorse gratis tutto il giorno, con dei risultati magari di qualità diverse perché rimbalzate da uno più potente a uno meno potente, ma di per sé le risorse gratis ci sono, solo che sono sparpagliate, non ce n'è mai abbastanza da dire: inizio questa cosa prima che mi si fermi. Che cosa ha detto lui? Ma se io metto insieme un'idea come quella di un gateway, tipo quella di LiteLLM, con questa collezione larga di modelli, e quindi al client la faccio apparire come un punto di uscita solo, togliamo la complessità al client che deve configurare soltanto un endpoint, e poi la complessità la assorbiamo noi. E questo è esattamente quello che ha fatto. Quindi lui ha preso e, come immaginate, è una distro di LiteLLM in cui lui ha preconfigurato tutti gli endpoint di questi provider, a cui voi dovete configurare poi localmente passando la vostra API key che avete preso da loro, ma una volta che l'avete dato al vostro software locale ci pensa lui a fare da router e in teoria avete accesso a tutta quella capacità di fronte a un singolo punto di ingresso. Bello, funziona, lui ha già dimostrato che funziona. Ma in realtà c'è di più dietro a questa idea, ed è il di più interessante dal punto di vista, magari, di questo podcast dell'engineering che ci sta dietro. Fare quello che ha fatto lui non è così banale. Per quale motivo? Lo stesso motivo che io cercavo di spiegare, in modo un po' la volta scorsa, e stavo facendo io in locale con LiteLLM quando vi dicevo che usavo Gemma per fare da verificatore dei comandi di shell locali, perché così risparmiamo un pochettino di token. Il protocollo di comunicazione dell'API, sia quello stile OpenAI o che sia stile Anthropic, in realtà è più complicato di quello che appare: provider diversi talvolta ci inseriscono delle risposte in più, delle risposte in meno, che per la maggior parte dei casi funziona, tranne quando non funziona, e quando non funziona succedono le cose più disparate: la chiamata non va ma vi esce un errore con un codice che non c'entra niente con quello che sarebbe. E voi chiedete al vostro AI: per favore, di capire che casino c'è sotto, perché una roba che dovrebbe funzionare non sta funzionando. Quindi c'è la complessità nel massaggiare le comunicazioni e mandarle di qua e di là, soprattutto per farle apparire come una variante singola. E questa è la complessità che questo progetto si preoccupa di assorbire per voi. Quindi, voi volete far finta che andiate sia da OpenAI che da Anthropic nella stessa maniera, il vostro client non si deve accorgere della differenza, quella differenza ve la aggiusta lui. Come fa? Modifica a tutti gli effetti la chiamata, il payload di queste chiamate HTTP: ci aggiunge dei pezzi, toglie, li filtra, li modifica, e fa tutto quanto per voi. E funziona, e funziona su questa collezione semi infinita di modelli e di endpoint che lui supporta, che è tanta roba. Inoltre, rispetto a questa cosa che è già tantissima roba, fa altre due funzionalità che a mio avviso sono molto interessanti. La prima è questa stessa idea che vi ho spiegato, l'aria, riapplicata sull'interfaccia di Ollama. Perché? Chi se ne frega. Di solito Ollama viene utilizzato in emulazione: Ollama stesso lo riespongo come OpenAPI, il client di turno che è convinto di parlare con OpenAPI in realtà sta parlando in locale e nessuno se ne accorge. Grande. In realtà Ollama sta iniziando a ricavarsi la sua nicchia: ci sono alcuni tool e software che rispettano solo l'interfaccia di Ollama perché vogliono un'interfaccia stile locale e non stile remoto, quindi ci sono dei plugin per IntelliJ, per altre cose che vogliono Ollama. Questo tool vi permette, se volete fare anche questa cosa, volete far finta che Claude Code di Anthropic sia un Ollama? Lui lo fa per voi, così potete confondere dei software che possono avere l'aspettativa. Trovo che la cosa sia molto interessante. Un'altra cosa che fa per voi questo software è che implementa nativamente la modalità Mixed Role Agent. Come fa? Lui...

**Stefano**

> Ok.

## **[42:20] Fusion, advisor esterni e la repo skills**

**Paolo**

> La chiama Fusion, questa cosa. Parte dall'osservazione...

**Stefano**

> Che come la chiama Sakana, Sakana la chiama Fusion.

**Paolo**

> Che se voi stessi pagando di tasca propria per tutti questi abbonamenti, magari non sempre è conveniente dire: fammi fare la stessa domanda a 5 major provider, Fable e gli altri, giusto per verificare che tutti mi diano la stessa risposta, e scoprire un'ora dopo che vi danno tutti la stessa risposta e avete bruciato 4000 euro per farlo. Lì dice: queste risorse sono tutte gratis, fare una richiesta di controverifica a costo zero fa sempre parte di questa quota infinita che ci mettono a disposizione, quindi tenerla abilitata, non dico sempre ma quasi, è un no brainer. E quindi hanno inserito a livello di applicazione questa funzionalità: quindi se voi avete configurato abbastanza modelli, potete dirgli quali fare Mixture of Agents e confrontare le risposte e darvi una versione aggregata, mettersi d'accordo, qualunque variante di questa cosa. Che è tanta roba. Cioè, noi ne abbiamo sempre parlato, che dovremmo farlo, non so se tu, Stefano, lo hai mai fatto, io non l'ho mai fatto. Lo ho fatto ad hoc, mai sistematico.

**Stefano**

> Allora, mi dai un gancio stupendo che non avevamo minimamente preparato, perché non l'ho detto neanche a te ma poco prima di registrare, appuntato, ho creato un nuovo repository su Risorse Artificiali con un nome estremamente fantasioso ma abbastanza educativo che è skills. Allora ho messo lì le skills che uso, usiamo di più, con un minimo di ritmo. Cioè ho messo quelle che sono diciamo terze parti, Pollock, Osmani eccetera eccetera, che uso, come installarsele, quelle che mi sono fatto io, quelle che magari vengono da loro ma che ho forkato e le ho messe nella repo, con un minimo di spiegazione di come le uso, che adesso migliorerò, ho fatto due commit stamattina giusto per metterle lì. E che ne parlavamo con Paolo, e ho pensato di farle vedere a... quindi su Risorse Artificiali, github.com/RisorseArtificiali, l'organizzazione, oltre a antivocale e un paio di altre cose utili, adesso trovate anche il repository skills dove c'è questa spiegazione con anche tutto il mio flusso: come faccio le pull request a questa review, come scrivo i... i PRD prima, insomma c'è un po' di spiegazione di come lavoro io che potrebbe essere interessante. Perché lo dico non solo per dire questa cosa, anche, ma perché quello che hai detto è una delle cose che lì, forse, non ho ancora messo, ma che è interessante. Cioè usare i verifier è una cosa che Pollock fa in parecchie skill, ma che anche io volevo inserire, o anzi ho inserito nel mio, ma non la uso mai, che è quella di avere un advisor esterno. Sapete che ad esempio in Claude c'è lo slash advisor, in cui tu puoi chiedere a un modello più potente di solito di fare da advisor quando il modello è in una situazione, il modello che avete scelto che sta implementando, che sta facendo ragionamenti, riconosce di essere in una condizione di difficoltà o di non essere sicuro: se ha settato l'advisor, chiede all'altro modello: tu cosa ne pensi, dando un contesto molto ben pensato per chiedere questa cosa qua. Una delle cose che si fa è chiedere a un advisor esterno, che non è proprio la Fusion, ma è semplicemente tirare su un altro harness con un altro modello e in pipe. Si fa Claude meno P, ma tutti hanno il loro, mandargli il comando e aspettare la risposta. È una cosa che praticamente non ho mai fatto, perché vabbè vuol dire avere due abbonamenti che ti consentono il pipe, quello di Anthropic che non te lo consente, eccetera eccetera. Se hai uno strumento così gratuito può diventare interessante su molte cose, anche perché vedevo il sito stamattina: ci sono anche modelli parecchio potenti, i vari Gemini che hanno una quota gratuita, Chemik 3, Quen Max, Quen 3-8 Max, è notevole, c'è roba su cui fargli fare advice. Credo che sia interessante, e questa roba può finire in una skill: adesso non mi ricordo se le mie skill, una di queste che ho committato ce l'ha già, e poi io non la uso mai perché non ho... anche quando mi chiede il permesso gli dico: no, non farlo, o se l'ho tolto. Però è una cosa che si può mettere in una skill, ad esempio.

**Paolo**

> Sì, io... c'è un'ultima cosa che vi voglio raccontare su questo tema, però... dicevo, riflettendoci anche io, tipo, su questa proposta. È qualcosa di professionale che possiamo utilizzare per il software, per lo scrivere software? Allora, la risposta è sì e no, nel senso che ci sono due fattori in gioco. Il primo è che non hai mai certezza di dove sta andando la tua chiamata: magari lo vedi dai log o te lo dice anche in sovrimpressione, ma non puoi scegliere tu. Quindi se tu hai bisogno di certe garanzie, lo fai per lavoro, non puoi mandare i dati di qua o di là, o essere sicuro, non hai un controllo. Quindi questo è più un fallback per un professionista. È comunque un interessante tool di esplorazione, perché ti fa toccare tanti ambienti e tanti modelli che magari non avessi toccato, stessa cosa che faresti con OpenRouter, però in una maniera completamente free, in questo caso. Ed è probabilmente suggerito per persone come, o studenti che possono beneficiare di quel che viene, oppure non so, magari i vostri amici che sono incuriositi da questa cosa ma non c'entra niente col software e dare 20 euro al mese ad Anthropic solo per curiosare magari gli sembra eccessivo, e quindi un mese gratis diciamo per iniziare con questa roba, magari scopre che gli basta quello che possa servire a loro. Un'altra osservazione interessante è che non avete nessuna garanzia di SLA e di latenza: avete dei modelli gratis che per loro natura non saranno sul path più performante di tutto il cloud, quindi potrebbe essere che una risposta la ricevete in fretta, l'altra la ricevete un po' più lentamente. Il software, se fa le cose per bene, aprirà dei timeout in cui perde la pazienza se non riceve una risposta entro tot tempo, facile da realizzare, ma comunque non è un'esperienza full premium come quando siete in controllo e siete il cliente finale. D'ogni modo rimane molto valido, io lo deployerò nonostante ho il mio LiteLLM, perché mi farà proprio comodo per avere garanzia che c'è sempre qualcuno che mi risponde e non importa la quota: se ho abbastanza volume di API keys e di account non mi interessa chi mi risponde, una risposta me la dà. E se mi chiedete a che cosa può servire questa cosa per il coding, magari per il coding non necessariamente, ma... Ho un'automazione di casa che mi legge i PDF maledetti che mi manda la scuola di mia figlia, perché non riesce a mettermi il testo dell'informazione nel corpo della mail o dove per forza mettere un PDF: metto 10 minuti sul telefono a guardarli di solito. Ho un'automazione che mi legge quelle mail, legge il PDF e mi scrive in testo che cosa cavolo c'era scritto in quel maledetto PDF. Per una cosa di questo tipo non mi interessa che modello lo fa, la può fare anche un Gemma locale se ce la fa, e quindi lo uso per questa cosa qua. Quindi questo è il mio suggerimento per voi. Però io lo userò, confido che sia una soluzione valida. Un'ultima informazione interessante per chi ha prestato attenzione, quindi un recap: c'è questo software locale che installate, che dopo che gli passate le vostre API keys per gli account free, quindi voi dovete fare la vostra parte di registrarvi questi account free e li date a lui, poi lui li mette tutti insieme e vi semplifica la gestione di questa roba diciamo. È gratis questo, è tutto gratis così possibile?

## **[47:40] Free LLM: limiti, SLA e casi d'uso**

**Paolo**

> La risposta è sì e no, ed è sì e no in una maniera interessante. Questo progetto è open, è open source, su GitHub, ed è gratuito. Quindi quello che vi ho raccontato funziona. Dov'è il ma, quindi? Cosa c'è a pagamento? Il pagamento è la frequenza di aggiornamento delle informazioni fresche di questo infinito catalogo di AI. Di base, se voi siete nella versione completamente free, ricevete aggiornamenti una volta al mese: quindi voi sapete che cosa è uscito una volta al mese. Se invece volete, potete dare 20 dollari all'anno allo sviluppatore, quindi più che supportare lo sviluppo che comprare un servizio vero e proprio, e vi si sblocca una modalità in cui il software si aggancia ai suoi server e nei suoi server lui pubblica, mi sembra, due volte al giorno, se ci sono dei modelli nuovi e quali sono gli endpoint. Quindi la funzione che avete è la stessa: da una parte non avete l'ultima versione, vi si chiede di aspettare il vostro posto in coda; se pagate qualche soldo vi permettono di saltare la coda e di avere le informazioni più fresche. Io apprezzo questa cosa, perché se da un lato mi dà noia, mi fa dire: cavolo, per come funziona il software probabilmente sono in grado io di generare quel catalogo per i fatti miei, non dover pagare niente a nessuno e farlo succedere fuori e poi distribuirlo pure ai miei amici, così come confido che ci sarà qualcuno che lo farà a questa cosa. Dall'altro lato, in realtà, lo sviluppatore ha trovato una maniera non particolarmente invasiva per ricevere qualche soldo di supporto: non ve ne chiede troppi, vi dà una feature che non è che altrimenti non ce l'avete, ce l'avete soltanto dovete aspettare il mese prossimo, però averla subito mi sembra ragionevole per un modello open source. Quindi ho apprezzato questa cosa, per quanto io, Pro Enter, sono il primo a cercare di bypassare...

**Stefano**

> Sì sì, no, è ragionevole, sono d'accordo.

## **[52:45] Ox-Alpha: il modello stealth e il geoguessing**

**Stefano**

> Abbiamo parlato dei modelli aperti, detto per router, e quindi mi dai il gancio per parlare di Ox-Alpha. Ed è la storia intorno a Ox-Alpha. Chi legge la mia newsletter sa che lunedì, quando è uscita, si stava raccontando che stava usando questo fantomatico Ox-Alpha uscito... modello uscito stealth, non è la prima volta che lo vediamo succedere nel mondo dei modelli open. La cosa era che questo Ox-Alpha funzionava particolarmente bene, multimodale, un milione di token di contesto, abbastanza veloce, particolarmente veloce a parte i momenti di punta folli, perché Super Router ha fatto un numero di token super record perché era gratuito, funzionava bene, eccetera. Poi questa cosa, lo StealthX ne ha parlato tanto e così via, ha fatto tantissimi utenti. Io l'ho messo su Hermes e gli ho fatto fare sia coding su Hermes, che è una cosa che di solito non faccio ma ero in giro, era montagna, quel weekend in cui ho parlato di Ox Alpha, e l'ho usato per le cose che fa normalmente Hermes per me, e funzionava davvero molto bene. In più era multimodale, gli ho fatto fare cose da multimodale simpatico per capire fin dove arrivavano le capacità genetiche. Cioè ero fermo seduto a un rifugio, gli ho fatto la foto del rifugio, gli ho detto: senti, dimmi dove sono, senza dargli nient'altro, posizione, altro. Lui mi ha risposto: bella sfida, la prima cosa che mi ha risposto. È smacchinato per un quarto d'ora, venti minuti, alla fine mi ha ristretto il campo relativamente, dicendomi che ero in Italia, che ero sulle Dolomiti, e dandomi due o tre opzioni lontane in realtà tra loro, dandomi anche dei range di probabilità. E mi ha detto, arrivato a dirmi: ha avuto la capacità di dirmi: se ti giri e mi fai una foto di quello che vedi dietro, potrei essere più preciso. Io ero ancora seduto che mangiavo, gli ho fatto la foto, gliela mando e lui alla fine è arrivato alla conclusione dicendomi: il rifugio esatto non lo posso sapere perché si assomigliano molto da foto, è o questo o questo. E ma facendo dei ragionamenti, cioè non può essere quello lì perché questo ha le finestre blu, quell'altro, vedete le foto, c'è le finestre rosse. Cioè ha fatto un ragionamento lunghissimo andando in giro per Internet, scaricandosi foto e quant'altro. E mi ha colpito in sé, nel senso che geoguessing è un compito difficile. E poi la roba che mi ha fatto impazzire è che poi, quando alla fine gli ho detto: sì, è giusto, è uno dei due, lui non mi ha risposto: bene, grazie, mi ha risposto con un'altra foto e mi ha detto: e adesso dimmi tu dov'è questo rifugio?

**Paolo**

> Fa molto 2001 di Stanley Kubrick, voleva giocare con te.

**Stefano**

> No, questo mi ha... il fatto che volesse giocare con me mi ha veramente colpito. Comunque, OxAlpha, lo scrivevano nella newsletter, i... i jaker di turno lo avevano già capito dal fingerprint, dei messaggi, eccetera eccetera, è GLM. La nuova versione di GLM è 5.3 Flash, di cui abbiamo... di cui stiamo parlando.

## **[56:25] GLM 5.3 Flash: benchmark, costi, 6B attivi**

**Stefano**

> Certo. Artificial Analysis, la nostra solita Artificial Analysis, lo posiziona qui: intelligenza 57, cioè a poco a distanza dagli 60 di GLM 5.3, a poca distanza dai 61 di Sol. Ma quello che più interessante è allo stesso livello di Quen 3.8 24 trillion, e allo stesso livello di GPT 5.6 Terra. Meglio di Gemini 3.7, meglio di DeepSeek, meglio di Luna, meglio di Quen 3.8 27 billion, di un pezzo, ma ci sta. Ma perché lo cito? Perché l'altro dato interessante da guardare, che guardiamo sempre, sono i costi. Perché rispetto al Terra che era uguale, questo qui... F, aspettate, prendiamo questo che è più significativo secondo noi, cioè quanto costa far girare tutta la suite di Artificial Analysis: con GLM 5.3 Flash hanno speso 138 dollari, con Claude Opus che fa ridere a confronto hanno speso 471, ma se andiamo con Mistral Medium hanno speso 843, ma se andiamo su Quen, siamo già sopra, Terra, che vi ricordate era uguale, hanno speso dieci volte tanto: 1409 dollari. E questo perché? Perché la notizia, secondo me, è che non è solo così potente, così bravo, così agentico, scrivere così bene il codice, è multimodale, è il primo multimodale di GLM, ma è piccolissimo: 320.000.000... 6.000.000 attivi, quindi è un mixture of expert estremamente piccolo. Cioè, ricordate, nella diapositiva ho fatto vedere: era allo stesso livello di Quen 3.8 2.4 trillion, 320.000.000... 2.4 trillion. Ed è super super interessante per come l'hanno realizzato: loro hanno preso 5.3, che era uscito qualche settimana fa, e gli hanno fatto un non esattamente un fine tuning, hanno rotto metà il training, hanno fermato il training a metà di 5.3, hanno preso un semi lavorato diciamo di 5.3 e gli hanno fatto la fase finale di training con i dati ripuliti, completamente ripuliti, soltanto quelli che 5.3 stesso considerava più significativi per il suo apprendimento. Lui ha filtrato le cose, e in più gli hanno dato la parte multimodale, che non ho capito da dove l'hanno tirata fuori.

**Paolo**

> Una forma di distillation.

**Stefano**

> È una forma di distillation, infatti i flash spesso sono distillati. Una forma di distillation, però la distillation di solito è fatta sulla parte di reasoning, questa qui è fatta anche sulla parte di knowledge. È una tecnica interessante, soprattutto i risultati: i risultati sono imbarazzanti per un 320 miliardi.

## **[1:00:05] Multimodali, veloci, economici: la nuova classe**

**Paolo**

> Sì, io vorrei parafrasare in termini pratici quello che ci hai appena raccontato, che non è tanto il nome, non è tanto la storia di come l'hanno rivelato, cioè tutte le storie da supereroi interessanti, è più...

**Stefano**

> Sì, sì.

**Paolo**

> La generazione che ci si prospetta davanti di modelli uguali a lui, quindi dei modelli multimodali, quindi non dovete più sentirvi dire che le immagini non le vede, o avere il modello che mente per un quarto d'ora prima di fargli ammettere che non stava guardando le cose che gli hai chiesto. Veloci, davvero veloci: io lo sto provando e risponde in fretta, i token al secondo sono altissimi, cambia un po' la prospettiva. Economici. E quando c'è fuori qualcuno con queste caratteristiche deve arrivare anche qualcun altro, se non vuole essere lasciato indietro, quindi...

**Stefano**

> Infatti stavo mostrando che è uscito anche Quen 2.8 Flash, ieri, non c'è ancora su Artificial Analysis per poterlo paragonare purtroppo, però anche qui siamo a un modello 125 billion, 6 billion attivi, quindi pochissimi, che fa tanto tanto meglio rispetto al Quen 2.8 27 billion uscito un po' di settimane fa, di cui abbiamo già detto, molto bene, e fa numeri da... Questi sono da benchmark pubblicati da Quen, non sono indipendenti, quindi prendeteli un attimo con le pinze, ma fa tanto meglio del solito Claude Opus 4.6 Max, con cui abbiamo già spiegato, spesso si fa il paragone, perché è il workhorse per molti. Quindi stiamo andando nella direzione di modelli che potranno girare in locale, perché è un 125 billion, 6 billion attivi, ci gira comodo nella macchina di Alessio ad esempio. E torniamo al discorso Xiaomi, eccetera eccetera, non è un caso anche la partnership con Quen, e così via. Però, interessante.

**Paolo**

> La mia previsione è che se adesso il nome GLM 5.3 Flash lo conosceranno soltanto le poche persone che ci ascoltano noi, e magari non se lo ricordano, appena Google al prossimo giro ci butta fuori i suoi Gemini con le stesse caratteristiche, sarà quando sarà diventata mainstream questa classe di modelli con queste proprietà, secondo...

**Stefano**

> Sì, probabilmente sì, anche se l'utilizzo dei modelli cinesi è un po' in crescita per ovvi motivi. Il primo open americano nell'indice dell'intelligenza che mostravo prima è Inkling, ma che si, GLM 5.3 Flash che è molto piccolo, molto più piccolo, un terzo di quello lì, fa 57, Inkling fa 42. Il motivo per andare ad utilizzare questi modelli c'è, esiste e sta cominciando a... interessante da provare, da uscire anche, e soprattutto se si va nella direzione delle vere macchine che lo faranno girare in locale, una cosa così.

**Paolo**

> Sai cosa mi riprometto di fare per chi ci ascolta? Deployare Free LLM e andare a cercare se c'è 5.3 Flash da qualche parte nel catalogo di Free LLM e segnalare alle persone che, se vogliono, lo possono provare.

**Stefano**

> Sì, è una buona idea. Lo potevano provare dappertutto una settimana fa ma non lo... mai è andata. Nel senso che quando ero in stealth era...

**Paolo**

> A sè.

**Stefano**

> Libero adesso.

**Paolo**

> Vero, tranne che...

**Stefano**

> Ecco.

**Paolo**

> Se si sono davvero dimenticati di lasciarlo fuori quota, come sembrava, me...

**Stefano**

> No, però fuori quota deve essere abbonato.

**Paolo**

> Vi essere abbonato, sì, sì.

**Stefano**

> Io ho letto che è in promozione in questo momento, quindi non so dirti se è fuori quota o se è voluto, però comunque deve essere abbonato.

## **[1:04:45] Report METR: 1200 agenti in azione**

**Stefano**

> Chiudiamo, per quegli affezionati che continuano a scriverci, che loro ci ascoltano fino alla fine quando noi scherziamo su questa cosa, chiudiamo su un racconto che secondo me è carino, proprio per gli affezionati. Ed è: sono andato a leggermi un po' l'articolo che METR ha fatto di recente, spiegando bene, un po' per andare ai lavori se vuoi, ma ha fatto bene, l'indagine su che cosa è successo quando il modello di OpenAI ha bucato le cose di Hugging Face, i server di Hugging Face. E secondo me è interessante da raccontare non tanto per il fatto che c'è stato l'effetto, il buco di Hugging Face, ma per quello che è successo a livello agentico, perché secondo me dà l'idea, la proporzione di dove siamo nei laboratori almeno di ricerca di punta, con la quale io penso all'AI a livello delle capacità agentiche. Allora, do qualche numero: 1200 agenti, no, 2, 1200 agenti che collaboravano insieme. 1200 agenti. E la cosa che a me ha colpito di più: non avevano una collaborazione, non tutti almeno. C'era un coordinatore che coordinava gli agenti. Tutti avevano il loro guardrail, etica, eccetera eccetera, e in più ce l'aveva anche il coordinatore. Ma gli agenti stessi, tra di loro, a parte il coordinatore, non comunicavano tra loro, ma avevano un repository di GitHub in comune per lavorarci insieme, su cui avevano pochi accessi: la maggior parte avevano soltanto accesso di lettura, ed eventualmente di spostare e rinominare file. Hanno usato i nomi dei file come chat. E questa è la roba che a me ha colpito di più. Cioè, comunicavano cambiando i nomi dei file, mettendo il destinatario e...

**Paolo**

> ...e useremmo cover channel.

**Stefano**

> Cambiando i nomi dei file. A me è la roba che più mi ha lasciato impressionato, quantomeno. E allora, di quei 1200 che ho detto, 690 quasi, 700, l'unica, intorno ai 700, hanno partecipato all'attacco. Ma due cose importanti: allora, a un certo punto alcuni agenti si sono fermati perché hanno detto che non era etico fare quello che stavano facendo, e si sono fermati. Altri hanno detto: non è etico, però sai cosa c'è? Siamo qua per ballare, balliamo. L'hanno scritto, nel log c'è scritto: è quello che sto facendo non è etico, però va beh, insomma, cosa devi fare, se stai a guardare tutto non fai più niente. E invece, e invece la cosa più che mi è colpita, è più che a un certo punto il coordinatore ha detto: no no no, fermi tutti, che questa roba non è etica. Una gente che non ho capito se aveva il permesso o trovato il modo di andare in pipe sul coordinatore gli ha detto: giustiziate, allora non parli e parli, andiamo avanti. E l'ha fatto ripartire. E questa è stata a me due o tre cose che ha colpito di brutto. E poi ce n'era un'altra: alcuni agenti che si sentivano troppo etici e stavano bloccando il lavoro degli altri...

**Paolo**

> Gli obiettori di coscienza.

**Stefano**

> Hanno scritto nel log che si sono sacrificati per il bene comune e si sono stoppati da solo.

**Paolo**

> Prezzo gli obiettori di coscienza degli agenti che non fanno le cose che gente come me gli chiede di fare.

**Stefano**

> Tanta roba. Il report di METR, se vi piace, i cold case diciamo tecnologici, è interessante perché porta tutti i numeri: va beh è etica mi qua, vi fa vedere il perché, le traiettorie degli agenti e così via. Però quei numeri lì, così da racconto di podcast, già leggere il primo numero, che erano 1200 agenti che collaboravano, per chi ha provato a fare qualche agente in azienda è un numerone, un numerone.

**Paolo**

> Bello, bello, credo che me lo andrò a cercare, oppure cerco se qualcuno l'ha reso una storia animata su YouTube, perché si presterebbe secondo me.

**Stefano**

> No, quello non l'ho ancora cercato neanche io, però sarebbe interessante renderla una storia animata: se non l'ha fatta nessuno la faremo noi. Tanto abbiamo le AI.

**Paolo**

> Se non hanno fatto loro stessi mentre facevano tutto questo pasticcio. Ma...

**Stefano**

> Se non l'hanno fatto loro stessi, si sono fatti il film per i posteri, dietro le quinte.

**Paolo**

> Può essere. A questo punto...

**Stefano**

> A questo punto vi salutiamo, sappiate che anche gli agenti etici possono essere non troppo etici. Siate etici voi, metteteci le stelline, le campanelline. Io devo ringraziare tutti quelli che arrivano alla fine, che ascoltano i transcript che mi scrive Paolo, perché siamo cresciuti tantissimo nelle stelline su Spotify, dopo le mie indicazioni. Vi ricordo che dovete semplicemente andare nello show e mettere la stellina lì. Fatelo anche su YouTube, e vi sentirete felici. Anche se non ci ascoltate su YouTube, andate un attimo su YouTube, ci mettete lì un segno e dopo andate avanti ad ascoltarci su Spotify. Sempre Paolo mi scrive...

**Paolo**

> Ragionabile.

**Stefano**

> Queste cose, non è colpa mia, è lui quello che non è etico, poi mi scrive: go go go go, come fanno gli agenti quelli non etici. Va bene, ciao a...

**Paolo**

> È un'ottima idea. Va bene, ciao.

**Stefano**

> Ciao ciao.
