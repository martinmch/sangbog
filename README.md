# Vores sangbog

Her indføres sange som du godt kan lide, og som vi kan spille til
musikaftener. Det kunne være sjovt at få trykt nogle sangbøger engang.

Min arbejdsgang er:

1. Skriv teksten ned til en sang
2. Find meta informationer
3. Lav chordpro direktiver
4. Lav akkorder (hvis jeg kan)
5. Gem i filstruktur.

Filstrukturen er opbygget efter kunstnernavn. Bag Dukkede Ruder af TV2 vil
altså blive gemt i følgende sti: `t/tv-2/bag-dukkede-ruder.crd`. Det er
vigtigt ikke at bruge store bogstaver, og ikke at bruge mellemrum.

# Chordpro direktiver

Alle direktiver kan ses her
https://www.chordpro.org/chordpro/ChordPro-Directives.html. De er ligeledes
anført nedenfor.

## Meta information

I starten af en fil angives titlen, kunstneren, navnet på et eventuelt album,
hvem der har skrevet tekst, og hvem der har komponeret melodien. Det ser
således ud:
```
{title: Hvorfor Gaar Louise Til Bal?}
{artist: Flemming Bamse Jorgensen}
{album: 34 fede hits}
{lyricist: Otto Leisner}
{composer: Sven Gyldmark}
{capo: 2}
```

Ved et vers skrives enten `{start_of_verse}`, `{sov}` eller `{sov: note til
verset}`. I slutningen af et vers skrives ligeledes `{end_of_verse}` eller
`{eov}`.

Ved omkvæd skrives `{start_of_chorus}` og `{end_of_chorus}`, eller `{soc}` og
`{eoc}`. Hvis omkvædet er ens hvergang, kan du nøjes med at skrive `{chorus}`
hvor omkvædet spilles. Det først omkvæd skal dog altid skrives ud.

## Akkorder

Akkorder skrives som følger:
```
When a [G]single mom goes out on a date [C]with somebody new
It [D]always winds up feeling more like a j[C]ob inter[G]view
```

## Flere versioner

Ved en sang med flere versioner, kan der henvises til andre sange ved at
bruge følgende syntaks:

### Forskelligt sprog

Sprogkoder:
    EN - Engelsk
    DA - Dansk
    DE - Tysk
    ...

Eksempel: I Søren Pilmark's Thomas 'O Malley
(`s/soeren-pilmark/thomas-o-malley.crd`), vil vi gerne henvise til den
engelske version af Phil Harris. Vi skriver da,
```
#lang: EN|p/phil-harris/thomas-o-malley.crd
```

Sørg altid for at lave tovejs referencer, dvs. tilføj ligeledes til Phil
Harris' version
```
#lang: DA|s/soeren-pilmark/thomas-o-malley.crd
```

### Forskellig version

Ved reference til en anden version, skriv da
```
#ref: t/tv-2/selvmord-paa-dansegulvet.crd
```
