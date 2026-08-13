# Template output — `podcast-promo/scaletta_episodio_{N}.md`

Markup esatto del file da produrre. I placeholder sono tra `{}`. Il testo fisso (etichette come **Tesi:**, **Ponte verso il blocco N:**) va riprodotto letteralmente: e' quello che rende il documento scansionabile a colpo d'occhio durante la registrazione.

---

```markdown
# Scaletta Episodio {N} — Risorse Artificiali

> Episodio **numerato** (rassegna/discussione, non intervista)
> Voci: **Stefano**, **Paolo**, **Alessio**{, + **{Ospite}** come quarta voce}
> Durata target: **~{70} minuti**
> Preparato il: {13 agosto 2026}

**Filo conduttore:** {una frase che tiene insieme i quattro blocchi. Non un riassunto: la tensione dell'episodio.}

---

# SEZIONE 1 — Traccia dell'episodio (~{70} minuti)

Quattro macro argomenti, in quest'ordine. Ogni blocco ha una tesi, le cose da dire e la frase che porta al blocco dopo. Chi dice cosa lo decidiamo in registrazione. Ogni riferimento a una fonte è **cliccabile** e porta alla scheda corrispondente nella Sezione 2.

---

## Apertura (~3')

{Partire a freddo da una citazione o da un dettaglio specifico — mai da "questa settimana sono uscite tante cose". Poi il ribaltone verso il quadro generale. Poi i quattro blocchi anticipati in una riga ciascuno.}

{Se una fonte funziona meglio come rivelazione finale: "«{Fonte}» non si anticipa: sta nel finale."}

---

## Blocco 1 — {Titolo} (~17')
*Fonti: [#1 {Nome}](#fonte-1) · [#2 {Nome}](#fonte-2) · [#5 {Nome}](#fonte-5) come contro-esempio*

**Tesi:** {un'affermazione discutibile, in una riga}

Le cose da dire:
- [**{Fonte}**](#fonte-1) {i numeri esatti, poi perché conta}
- [**{Fonte}**](#fonte-2) {…}
- [**{Fonte}**](#fonte-3) {…}
- **{Il punto che tira le somme}** {tipicamente lo strumento pratico da portare a casa}

**Vale la pena litigare su:** {la domanda su cui tre persone intelligenti possono dividersi}

**Ponte verso il blocco 2:** {la frase quasi verbatim, appoggiata su un dettaglio concreto già detto}

---

## Blocco 2 — {Titolo} (~18')
{stessa struttura}

---

## Blocco 3 — {Titolo} (~16')
{stessa struttura}

---

## Blocco 4 — {Titolo} (~13')
{stessa struttura, senza "Ponte verso"}

---

## Chiusura (~3')

{Giro finale su una domanda aperta.}

{Consiglio pratico verificabile per chi ascolta.}

---

# SEZIONE 2 — Le fonti

<a id="fonte-1"></a>
## 1. {Titolo della fonte}
🔗 {url pulito, senza utm_*}

{Sintesi di ~100 parole in italiano. Numeri in grassetto. Non un abstract neutro: dice cosa c'è dentro e dove sta il punto interessante. Le frasi che vale la pena leggere ad alta voce vanno tra virgolette.}

<a id="fonte-2"></a>
## 2. {Titolo della fonte}
🔗 {url}

{…}

{… una scheda per ogni link …}

---

# Note di regia

**{2-3} citazioni da leggere ad alta voce:**
1. *"{verbatim}"* — {fonte} ({dove usarla}).
2. *"{verbatim}"* — {fonte} ({dove usarla}).

**Da verificare prima di registrare:**
- ⚠️ {fonte ricostruita via WebSearch, con l'elenco delle fonti secondarie usate}
- {notizia che può cambiare tra preparazione e registrazione, e cosa cambierebbe nel documento}

**Se si sfora:** il punto più comprimibile è {…}. Il punto da non tagliare mai è {…}, che è la tesi dell'episodio.

**Titoli candidati:**
- "{…}"
- "{…}"
- "{…}"
```

---

## Note sul markup

**Ancore.** `<a id="fonte-N"></a>` va sulla riga **sopra** l'heading `## N.`, senza riga vuota in mezzo. Regge su GitHub, Jekyll e nei renderer Markdown generici. Non regge in Obsidian (che risolve i link interni per testo dell'heading): se l'utente legge lì, proponi la conversione in wikilink `[[#…]]`.

**Link in grassetto.** La forma è `[**Nome**](#fonte-N)`, non `**[Nome](#fonte-N)**`. Entrambe rendono uguale, la prima è più leggibile nel sorgente.

**Quante volte linkare.** Prima menzione di ciascuna fonte dentro ciascun blocco. Le ripetizioni successive nello stesso blocco restano in testo semplice, altrimenti il documento diventa illeggibile.

**Blocco di avviso su fonte non letta**, da inserire subito sotto l'URL della scheda:

```markdown
> ⚠️ *Nota per i conduttori: {dominio} non era raggiungibile in fase di preparazione (DNS). La sintesi è ricostruita da {fonte A}, {fonte B} e {fonte C} del {date}. Verificare i dettagli prima di citarli a voce.*
```

**Marcatore ospite.** Con una quarta voce, i punti dove l'ospite ha qualcosa di unico da dire si segnano con ⭐ in coda al bullet.
