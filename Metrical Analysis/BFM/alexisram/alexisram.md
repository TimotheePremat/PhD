# The _Chanson de Roland_ : illformed lines
This document collects irregular lines in the _Vie de Saint Alexis_, in the edition of the Base de Français Médiéval (BFM: `AlexisRaM`[1]). Analysis is done with the PAM (Programme d'Analyse Métrique = Metrical Analysis Program [2]), a Python script that segments a given text into syllables, tag them with prosodic prominence and count the number of metrically-relevant syllables of each line to assess for their metrical wellformedness. We thank Thomas Rainsford and Christiane Marchello-Nizia for having granted us access to the digital multi-level edition (standardized, diplomatic and facsimile) they are preparing for the BFM.
> [1] _Vie de saint Alexis_, ed. by Thomas Rainsford and Christiane Marchello-Nizia, Lyon, ENS de Lyon, 2018. Published on-line by the Base de français médiéval http://catalog.bfm-corpus.org/AlexisRaM. Version: 2018-10-24.<br>
> [2] POGGIO, Enzo & Timothée PREMAT (2019). "Le PAM, un Programme d'Analyse Métrique pour le français médiéval", in: _Actes des Rencontres lyonnaises des jeunes chercheurs en linguistique historique_, directed by Timothée Premat & Ariane Pinche, Lyon: Diachronies contemporaines, 2019, pp. 59-70. ⟨[hal-02320550](https://hal.archives-ouvertes.fr/hal-02320550)⟩ ⟨[10.5281/zenodo.3464477](https://zenodo.org/record/3464477#.X_SJdDRudqu)⟩<br>

>Note that when several line numbers are given for a single line, the former is the line number in the `txt` file given in input to the PAM at the latter is the line number given in the `xml` file. There is indeed differences between the two numbering, as the `xml` file can count missing lines (e.g. if the editor knows there is a missing line but cannot edit it) while the `txt` file cannot. The difference between the two numberings are small (mostly from one to five lines), so even with only one numbering system the reader should easily find his way through it.

>Note that metrical breaks are referred to with the PAM conventions: the position of the break is indicated by a number, and the type by the following: 'ma' for 'masculine' (oxytonic word before the break), 'épC' for 'epic break before a consonant-initial word', 'épV' for 'epic break before a vowel-initial word' (including <h> when it does not prohibit elision), 'ly' for 'lyric' and 'ej' for 'enjambante'. So that '4ma' mean that the break falls after the fourth syllable, which is the tonic of an oxytonic word, etc.

>Note that a line than can belong to several categories (because of incertainty of the analysis) or that does belong to several categories (because of several ill-formedness) is copied in its different categories. Only exception to that: all lines that are not in the 'Problems not related to schwas nor other weak vowels contraction' category could actually be in this category, as we can never be totally sure that an irregularity is due to phonological behavior and not to lapsus calami.


## Overview


>In the table above, lines that are scanned by the pam as m:11 with 4épC and/or 6épC have been added to m:10.

## Problems in the edition
This section collects irregularities that are probably/maybe due to errors in the edition of the text and/or its XML formatting.

### Missing content without proper demarcation in the XML file.


## Problems not related to schwas nor other weak vowels contraction
This section collects irregularities that are probably/maybe not due to mistakes in the file but to the reality of the line in the manuscript **and** that are not due to final schwas irregularities. It is organised by the number of metrically-relevant syllables assessed by the PAM.
> For instance, m:9[10] means that the concerned lines have 9 metrically-relevant syllables while they are supposed to have 10.


### m:8[10]
- l. 548: _ensur tut ne nuls languerus ,_
  - 2 syl. missing. Line ill-formed.

### m:9[10]
- l. 75: _ensur nuit s' en fuit de la contrethe ._
  - One syl. missing in the first colon. Maybe a pb with _ensur_ (cf. l. 548)
- l. 189: _Ensur nuit s' en fuit de la ciptét ,_
  - Id.
- l. 250: _plus aimet Deu que tut sun linage ._
- l. 272: _ne nuls hom ne sout les sons ahanz ._
  - 1 syl. missing in the first colon.
  - Cannot be due to _hom-home_ declension, as this text does not have lyric break; the _-e_ would be parsed as an extrametrical syllable so the line would still be ill-formed.
- l. 324: _sedent es bans pensis e plurus ,_
- l. 360: _de tut cest mund sumes jugedor ,_
  - Should be analyzed as a missing _-e_ on _mund_ because (a) the form without _-e_ is common and (b) it could only correct the line with a enjambante break, which should not be the case that early.
- l. 405: _Si grant dolur or m' est aparude ._
- l. 513: _cest saint cors que Deus nus ad donét ;_
- l. 609: _Ço ad ques volt , nïent n' est a dire ,_
- l. 610: _ensor tut e si veit Deu medisme ._
- l. 414: _e d' icel bien , ki toen doüst estra ,_


### m:11[10] not with 4épC or 6épC*
>\* Exclusion of 4épC and 6épC is due to the fact that the PAM cannot count the extrametrical syllable as being extrametrical. It is the user that must exclude the supernumerary syllable. Those lines are m:11[10] but they are ill-formed, because m:11[10] with 4épC or 6épC is actually m:10[10].

- l. 312: _quer iloec est et iloc le trovereiz . »_
  - May just be illformed
  - Or due to syncope in _trovereiz_
- l. 342: _vint a sun filz ou il gist suz lu degrét ._
- l. 353: _venent devant , jetent sei an ureisuns ,_
  - One extra syllable in the last colon
  - Maybe a case of irregularity of _-ent_?
  - Or just ill-formed.
- l. 364: _Dune li la cartre par tue mercit ,_
  - Multiple problems with this line:
    - (a) there's one extra syllable somewhere
    - (b) but even but deleting one syllable in one of the colon, the line cannot be correctly broken in two cola.
- l. 371: _avant la tent ad un boen clerc e savie ._

### m:12[10]


### m:13[10]


## Problems possibly related to final schwas
This section collects irregularities that are probably/maybe not due to mistakes in the file but to the reality of the line in the manuscript **and** that are probably due to final schwas irregularities.

### m:9[10]
- l. 202: _se tei ploüst ci ne volisse estra ,_
  - No elision in _volisse estra_?
- l. 239: _n' il ne lur dist n' el s nel demanderent ,_
  - on _n'el s_ (written _nels_, the edition has a note: _Nous corrigeons ici le manuscrit au minimum en lisant_ nels _pour_ nelf. _Il s'agit donc d'une occurrence précoce du pronom régime tonique en fonction de sujet, vraisembablement motivé par l'opposition contrastive entre les sujets des deux phrases._)
  - it should be _elle_ and not _el_; that would be grammaticaly correct and made the line well-formed.
- l. 353: _venent devant , jetent sei an ureisuns ,_
  - One extra syllable in the last colon
  - Maybe a case of irregularity of _-ent_?
  - Or just ill-formed.

### m:11[10] not with 4épC or 6épC*
>\* Exclusion of 4épC and 6épC is due to the fact that the PAM cannot count the extrametrical syllable as being extrametrical. It is the user that must exclude the supernumerary syllable. Those lines are m:11[10] but they are ill-formed, because m:11[10] with 4épC or 6épC is actually m:10[10].

- l. 145: _sa grant honur a grant dol ad aturnede ._

### m:12[10]


### m:13[10]


## Cases of no-schwa vowel elided

### m:11[10] not with 4épC or 6épC*
>\* Exclusion of 4épC and 6épC is due to the fact that the PAM cannot count the extrametrical syllable as being extrametrical. It is the user that must exclude the supernumerary syllable. Those lines are m:11[10] but they are well-formed, because m:11[10] with 4épC or 6épC is actually m:10[10].

- l. 49: _mais ço est tel plait dunt ne volsist nïent ,_
  - contraction in _ço est_
- l. 73: _et un anel , a Deu li ad comandethe ,_
  - contraction in _li ad_?
- l. 285: _parfitement se ad a Deu cumandét ,_
  - contraction in _se ad_
- l. 359: _ço est sa merci qu' il nus consent l' onor ,_
  - contraction in _ço est_
- l. 363: _ço est ses mesters dunt il ad a servir ._
  - contraction in _ço est_

### m:12[10]


## Cases of medial schwas not to analyse (in my PhD) but still to keep:

### m:11[10]
- l. 312: _quer iloec est et iloc le trovereiz . »_
  - May just be illformed
  - Or due to syncope in _trovereiz_

### m:12[10]


### m:13[10]

## <a> for <e>
### m:11[10]
- l. 20: _des melz gentils de tuta la cuntretha ._
- l. 29: _de sain batesma l' unt fait regenerer ,_
- l. 42: _fille ad un conpta de Rome la ciptét ,_
- l. 56: _Cum veit le lit , esguardat la pulcela ,_
- l. 95: _pur nul aver ne volt estra ancumbrét ._
- l. 141: _« Cambra , dist ela , jamais n' estras parede ,_
  - _ela_ (and _cambra_, with no incidence on the line's wellformedness)
- l. 150: _quant n' ai tun filz , ansembl' ot tei voil estra . »_
- l. 194: estra
- medra
- pedra
- tabla
- enca (encre, _ink_)
- cartra
- prendra

## Problems with numbers
There are often problems with numbers that are noted in latin style (e.g. .C. for _cent_) in the text. There have been re-writen in modern form (e.g. .C. -> _cent_) before the PAM has been applied, but composed numbers can take a _et_ between their members and there is apparently no rule to predict it. Also, numbers can generate other errors:


### m:9[10]


### m:12[10]


## Other remarks

### Lines > m:13[10]
>Because it is higly improbable that lines with more than 13 metrified syllables can be corrected with final schwa irregularity, these lines are not analysed.

#### m:14


#### m:15



### Anthroponyms


### Subj.


### Adj/ppp/CONJ


### Ind.Pré/Subj.Pré.


### Latinism
- l. 176: _Revint li costre a l' imagine el muster :_

#TODO
- [x] Lines with less than 9 syllables
- [x] Lines m:9
- [ ] Check breaks in m:10?
- [ ] Lines m:11 without 4épC and 6épC
  - [ ] Check breaks in m:11 with 4épC and 6épC?
- [ ] Lines m:12
- [ ] Lines with more than 12 syllables
- [ ] Add general stats
- [ ] Produce statistic test to evaluate the influence of final schwa on the probability for a line to be ill-formed.
