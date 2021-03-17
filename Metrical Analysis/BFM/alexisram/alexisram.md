# The _Vie de saint Alexis_ : illformed lines
This document collects irregular lines in the _Vie de saint Alexis_, in the edition of the Base de Français Médiéval (BFM: `AlexisRaM`[1]). Analysis is done with the PAM (Programme d'Analyse Métrique = Metrical Analysis Program [2]), a Python script that segments a given text into syllables, tag them with prosodic prominence and count the number of metrically-relevant syllables of each line to assess for their metrical wellformedness. We thank Thomas Rainsford and Christiane Marchello-Nizia for having granted us access to the digital multi-level edition (standardized, diplomatic and facsimile) they are preparing for the BFM.
> [1] _Vie de saint Alexis_, ed. by Thomas Rainsford and Christiane Marchello-Nizia, Lyon, ENS de Lyon, 2018. Published on-line by the Base de français médiéval http://catalog.bfm-corpus.org/AlexisRaM. Version: 2018-10-24.<br>
> [2] POGGIO, Enzo & Timothée PREMAT (2019). "Le PAM, un Programme d'Analyse Métrique pour le français médiéval", in: _Actes des Rencontres lyonnaises des jeunes chercheurs en linguistique historique_, directed by Timothée Premat & Ariane Pinche, Lyon: Diachronies contemporaines, 2019, pp. 59-70. ⟨[hal-02320550](https://hal.archives-ouvertes.fr/hal-02320550)⟩ ⟨[10.5281/zenodo.3464477](https://zenodo.org/record/3464477#.X_SJdDRudqu)⟩<br>

## Introduction | How to read this document

### What is this?
This document is made of notes that are published only for reproducibility of research and for data broadcasting. It does not necessarily follow strict scientific writing principles, and does not have the value of a publication.

### Warning about quality
I consider that I should not be blamed for any clumsy analysis contained is this document as **this is not a final analysis**. In my view, open science is more important than social pressure and fear to share non-completed stuff.

Open-science is not (only) about increasing your readership and 'quotability', but about spreading data and stuff. In order to move forward together, as a positive academic community, we need to be able to share non-perfect work (or, in this case, work that is half-way between data and analysis) and not be blamed for it.

### Quoting this document
If you use data and/or analysis proposed in this document, please quote it in a regular way. For now, I cannot guarantee that the GitHub repertory URL will stay fixed, so be aware that the URL you quote is not persistent. When my work will be advanced enough, I will consider using DOI for these documents.

>PREMAT, Timothée ([year of last update]). "The _Vie de saint Alexis_: illformed lines", ms. Version: [date of the last commit of the file]. Url: https://github.com/TimotheePremat/PhD/blob/main/Metrical%20Analysis/BFM/roland/roland.md

If you like this work and want to give me a real quotation (that counts for researchers metrics), you can quote one of the publication about the PAM (as [2] above, or more recent if available), as for instance, in full-text:

> This example came from unplublished work by PREMAT (YYYY), which collects illformed lines of the text with a prosodic tagging and metrical analysis software (POGGIO & PREMAT, 2019).<br><br>
>_Bibliography_<br>
>- POGGIO, Enzo & Timothée PREMAT (2019). "Le PAM, un Programme d'Analyse Métrique pour le français médiéval", in: _Actes des Rencontres lyonnaises des jeunes chercheurs en linguistique historique_, directed by Timothée Premat & Ariane Pinche, Lyon: Diachronies contemporaines, 2019, pp. 59-70. ⟨[hal-02320550](https://hal.archives-ouvertes.fr/hal-02320550)⟩ ⟨[10.5281/zenodo.3464477](https://zenodo.org/record/3464477#.X_SJdDRudqu)⟩<br>
>- PREMAT, Timothée (YYYY). "The _Vie de saint Alexis_: illformed lines", ms. Version: [date of the last commit of the file]. Url: https://github.com/TimotheePremat/PhD/blob/main/Metrical%20Analysis/BFM/roland/roland.md

### Norms
This document uses the following norms:
- each ill-formed line detected by the PAM is humanly read and annotated
- ill-formed lines are filtered by:
  - first, the type of analysis we provide (typology of the probable cause(s) of illformedness of the line)
  - then, the number of metrified syllables (m:_n_) detected by the PAM
- a line that can belong to several categories (because of incertainty of the analysis) or that does belong to several categories (because of several ill-formedness) is copied in its different typological categories
  - Only exception to that: all lines that are not in the 'Problems not related to schwas nor other weak vowels contraction' category could actually be in this category, as we can never be totally sure that an irregularity is due to phonological behaviour and not to _lapsus calami_ or other type of non-phonological source of illformedness.
- we refer to metrical breaks with the PAM conventions:
  - the position of the break is indicated by a number (the one the metrical position preceding it)
  - the type of break is indicated by the following:
    - `ma` for 'masculine' (oxytonic word before the break)
    - `épC` for 'epic break before a consonant-initial word'
    - `épV` for 'epic break before a vowel-initial word' (including _h_ when it does not prohibit elision[1])
    - `ly` for 'lyric' and 'ej' for 'enjambante'.
  - For instance, `4ma` means that the break is located after the fourth syllable, which is the tonic of an oxytonic word.
- line numbering:
  - the PAM produce its own line-numbering, which is not necessarily consistent with the original line-numbering encoded in the `xml` file. This is due to te fact that the source file can number missing lines, while the PAM only numbers line that have content it can analyse.
    - when only one line-numbering is given, it is the one of the PAM
    - when two line-numberings are given, the first one is the one of the PAM and the second one is the one of the original `xml` file.
    - differences between the two numberings are small (mostly from one to ten lines), so even with only one numbering system the reader should easily find his way through it.

> [1] For an _h_ not to prohibit elision, it has to be overwritten by an other character into the PAM input of into the PAM `config` files. The character we chose is an superscript _h_: ʰ, which is not one of the consonants recognized by the PAM. This way, the PAM does not treat _h_ in a specific way, it just has in analysis' input some words that begins with an _h_ (consonant: blocks elision) and some that begins with an _ʰ_ (non-consonant: triggers elision).

### _Non-corrected_ and _corrected_ version of the text
In the GitHub repertory, there are files that came from what we'll call the _non-corrected_ version of the text[1] and a folder that contains files that came from a _corrected_ version of the text. This document is mainly based on the non-corrected version of the text.
- lines that remain uncorrected in the corrected version are preceded by an un-checked box:
  - [ ] uncorrected line
- lines that have been corrected in the corrected version of the text are preceded by a checked box:
  - [x] corrected line (only in the `/corr` repertory)

The overview section below allows comparison between the two version. All the differences between these stats came from lines with checked boxes; all lines with checked boxes create a difference between these stats. Corrections are intended to allow for calculation about final schwas irregularity that would be hidden in implicit conventions about writing (for instance, one can consider that elision of non-schwa vowel in _ço est_ -> /sɛst/ is optional but regular and does not require the line to be considered ill-formed).

Correction obeys the following principles:
- we do not correct lines by adding or deleting textual content (words, affixes, etc.)
- for a line to be corrected, it should match all the following criteria:
  - correction needs to be applicable to other ill-formed line also (frequency of the pattern)
    - implies not to correct hapaxes[2]
  - it needs to be phonologically and semantically consistent
    - linguistic consistency of the pattern:
      - do not create illegal phonological sequences
      - do not create sequences that would have no meaning
      - as far as possible, avoid loosing morphosyntactic information by correcting the line
- when several correction are possible, one can be favoured based on:
  - frequency:
    - raw frequency:if one correction is more frequent than the other(s), prefer it.
    - phrase frequency: if the problem is located in a formulaic phrase or colon, check if other occurrences have the same problem and allow for one solution rather than for the other(s); if so, prefer the one that work for the most occurrences.
  - interventionism: if one correction implies less modification of the text in itself than the other(s), prefer it.
    - for instance, if a syllable is missing and the line contains a compound number, prefer adding _et_ between two of the members of the number than adding something else elsewhere in the line (cf. `Problems with numbers` section near the end of the document)
  - word status: prefer to correct a quite rare toponym or anthroponym rather than an usually steady common name.

> [1] _Non-corrected version of the text_: this version is the raw version obtained by deleting the `xml` formatting: it has suffered several modification, as replacement of abbreviated numbers (including manual gender agreement of _un~une_) and replacement of elision triggering _h_ by _ʰ_.<br>
> [2] Here, hapaxes mean that the order is not only not-attested in other texts but also not attested elswhere in the same text, of in too few occurrences are only in different phonological/metrical/prosodic/syntactic contexts.

## Overview
>In the tables and figures in this section, lines that are scanned by the pam as m:11 with 4épC and/or 6épC have been added to m:10.<br>
>This is not the case for line m>11, as the PAM cannot correctly assign the position of the break when there is more than 1 extra syllable.

### Before correction
|meter | count|  rate|
|:-----|-----:|-----:|
|8     |     1|  0.16|
|9     |    15|  2.42|
|10    |   537| 86.61|
|11    |    30|  4.84|
|12    |    34|  5.48|
|13    |     2|  0.32|
|14    |     1|  0.16|
| _**Σ**_|_**620**_|_**100**_|

<img src="distrib_meter.png" alt="Distribution of line lenght (plot)"
	title="Distribution of line lenght (plot)" width="700" />

### After correction
|meter | count|  rate|
|:-----|-----:|-----:|
|8     |     1|  0.16|
|9     |    15|  2.42|
|10    |   568| 91.61|
|11    |    19|  3.06|
|12    |    15|  2.42|
|13    |     1|  0.16|
|14    |     1|  0.16|
| _**Σ**_|_**620**_|_**100**_|

<img src="corr/distrib_meter.png" alt="Distribution of line lenght (plot)"
	title="Distribution of line lenght (plot)" width="700" />



## Problems not related to schwas nor other weak vowels contraction
This section collects irregularities that are probably/maybe not due to mistakes in the file but to the reality of the line in the manuscript **and** that are not due to final schwas irregularities. It is organised by the number of metrically-relevant syllables assessed by the PAM.
> For instance, m:9[10] means that the concerned lines have 9 metrically-relevant syllables while they are supposed to have 10.

### m:8[10]
- [ ] l. 548: _ensur tut ne nuls languerus ,_
  - 2 syl. missing. Line ill-formed.

### m:9[10]
- [ ] l. 75: _ensur nuit s' en fuit de la contrethe ._
  - One syl. missing in the first colon. Maybe a pb with _ensur_ (cf. l. 548)
- [ ] l. 189: _Ensur nuit s' en fuit de la ciptét ,_
  - Id.
- [ ] l. 250: _plus aimet Deu que tut sun linage ._
- [ ] l. 272: _ne nuls hom ne sout les sons ahanz ._
  - 1 syl. missing in the first colon.
  - Cannot be due to _hom-home_ declension, as this text does not have lyric break; the _-e_ would be parsed as an extrametrical syllable so the line would still be ill-formed.
- [ ] l. 324: _sedent es bans pensis e plurus ,_
- [ ] l. 360: _de tut cest mund sumes jugedor ,_
  - Should be analyzed as a missing _-e_ on _mund_ because (a) the form without _-e_ is common and (b) it could only correct the line with a enjambante break, which should not be the case that early.
- [ ] l. 405: _Si grant dolur or m' est aparude ._
- [ ] l. 513: _cest saint cors que Deus nus ad donét ;_
- [ ] l. 609: _Ço ad ques volt , nïent n' est a dire ,_
- [ ] l. 610: _ensor tut e si veit Deu medisme ._
- [ ] l. 414: _e d' icel bien , ki toen doüst estra ,_

### m:11[10] not with 4épC or 6épC*
>\* Exclusion of 4épC and 6épC is due to the fact that the PAM cannot count the extrametrical syllable as being extrametrical. It is the user that must exclude the supernumerary syllable. Those lines are m:11[10] but they are ill-formed, because m:11[10] with 4épC or 6épC is actually m:10[10].

- [ ] l. 145: _sa grant honur a grant dol ad aturnede ._
- [ ] l. 312: _quer iloec est et iloc le trovereiz . »_
  - May just be illformed
  - Or due to syncope in _trovereiz_
- [ ] l. 342: _vint a sun filz ou il gist suz lu degrét ._
- [ ] l. 353: _venent devant , jetent sei an ureisuns ,_
  - One extra syllable in the last colon
  - Maybe a case of irregularity of _-ent_?
  - Or just ill-formed.
- [ ] l. 364: _Dune li la cartre par tue mercit ,_
  - Multiple problems with this line:
    - (a) there's one extra syllable somewhere
    - (b) but even but deleting one syllable in one of the colon, the line cannot be correctly broken in two cola.
- [ ] l. 371: _avant la tent ad un boen clerc e savie ._
- [ ] l. 388: _« Filz Alexis , quels dols m' est apresentét !_
- [ ] l. 416: _Se Deu ploüst , servit en doüsses estra . »_
  - Two solutions:
    - or it is that diaresis on _doüsses_ (indicated by editors) is irregular here
    - or it is an apocope on _doüsses_
- [ ] l. 449: _Pur quem fuïs ? Ja te portai en men ventre ,_
- [ ] l. 452: _Ainz que tei vedisse fui mult desirruse ,_
- [ ] l. 483: _ja tute gent ne m' en soüsent turner_
  - Two solutions:
    - or it is that diaresis on _soüsent_ (indicated by editors) is irregular here
      - cf. l. 416
    - or it is that _-ent_ is apocopated or non-metrified.
- [ ] l. 485: _si me leüst , si t' oüsse bien guardét ._
  - idem?
- [ ] l. 518: _de noz aveirs feruns largas departies_
  - or apocope on _largas_ (but why?)
  - or just ill-formed.
- [ ] l. 520: _s' il nus funt presse , uncore an ermes delivres . »_
  - apocope on _ermes_?
- [ ] l. 541: _Ki fait ad pechét bien s' en pot recorder ,_


### m:12[10]
- [ ] l. 41: _Fud la pulcela nethe de halt parentét ,_
  - There is one extra syllable in the second colon, no matter it is 4epC or 6epC.
- [ ] l. 140: _unches puis cel di ne se contint ledement ._
  - can be due to multiple schwa apocope, but more probably just ill-formed...
- [ ] l. 143: _Si l' at destruite cum dis l' ait host depredethe ,_
  - one extra syllable in the last colon
  - (4épC)
- [ ] l. 197: _iloec arivet la nef a icel saint home ._
  - there's one extra syllable in the last colon
  (4épC)
- [ ] l. 201: _« E ! Deus , dist il , bels sire reis qui tut guvernes ,_
- [ ] l. 203: _s' or me conuissent mi parent d' icesta terre ,_
  - apocope on _icesta_?
  - (4épC)
- [ ] l. 217: _quar me herberges pur Deu an tue maison ,_
  - if the problem is due to _tue_ instead of _ta_, this is about lapsus calami, not about phonology.
  - (4épC)
- [ ] l. 458: _Aidiez mei a plaindra le duel de mun ami !_
  - One extra syllable in the first colon. Maybe _mei ad_ -> _m'ad_?
  - But in postverbal position, wouldn't it be weird?
  - (4épC if first colon corrected)
- [ ] l. 565: _Felix le le liu u sun saint cors herberget !_
  - Editors signal that _le le_ is probably lapsus calami for simple _le_.
- [ ] l. 603: _od la pulcela dunt il se fist si estranges ._
  - there is one non-schwa extra syllable in the last colon.

### m:13[10]
- [ ] l. 356: _nen coneümes net uncore nen conuissum ._
  - Even with _uncor_ and 4épC, there is still one extra syllable in the last colon...

## Problems possibly related to final schwas
This section collects irregularities that are probably/maybe not due to mistakes in the file but to the reality of the line in the manuscript **and** that are probably due to final schwas irregularities.

### m:9[10]
- [ ] l. 202: _se tei ploüst ci ne volisse estra ,_
  - No elision in _volisse estra_?
- [ ] l. 239: _n' il ne lur dist n' el s nel demanderent ,_
  - on _n'el s_ (written _nels_, the edition has a note: _Nous corrigeons ici le manuscrit au minimum en lisant_ nels _pour_ nelf. _Il s'agit donc d'une occurrence précoce du pronom régime tonique en fonction de sujet, vraisembablement motivé par l'opposition contrastive entre les sujets des deux phrases._)
  - it should be _elle_ and not _el_; that would be grammaticaly correct and made the line well-formed.

### m:11[10] not with 4épC or 6épC*
>\* Exclusion of 4épC and 6épC is due to the fact that the PAM cannot count the extrametrical syllable as being extrametrical. It is the user that must exclude the supernumerary syllable. Those lines are m:11[10] but they are ill-formed, because m:11[10] with 4épC or 6épC is actually m:10[10].

- [x] l. 60: _se or ne m' en fui , mult criem que ne t' em perde . »_
  - non written elision in _se or_
- [ ] l. 353: _venent devant , jetent sei an ureisuns ,_
  - One extra syllable in the last colon
  - Maybe a case of irregularity of _-ent_?
  - Or just ill-formed.
- [ ] l. 416: _Se Deu ploüst , servit en doüsses estra . »_
  - Two solutions:
    - or it is that diaresis on _doüsses_ (indicated by editors) is irregular here
    - or it is an apocope on _doüsses_
- [ ] l. 475: _mais ore les vei si dures e si pesmes ._
  - _or-ore_ alternation?
- [ ] l. 483: _ja tute gent ne m' en soüsent turner_
  - Two solutions:
    - or it is that diaresis on _soüsent_ (indicated by editors) is irregular here
      - cf. l. 416
    - or it is that _-ent_ is apocopated or non-metrified.
- [ ] l. 485: _si me leüst , si t' oüsse bien guardét ._
  - idem?
- [ ] l. 518: _de noz aveirs feruns largas departies_
  - or apocope on _largas_ (but why?)
  - or just ill-formed.

### m:12[10]
- [ ] l. 3: _si ert creance dunt ore n' i at nul prut ,_
  - _or-ore_ alternation?
  - (4épC)
- [x] l. 107: _Respont la medre : « Lasse ! qued est devenut ? »_
  - non written elision in _qued est_ (for _qu'est_)?
  - (4épC or 6épC)
- [x] l. 151: _Ço di la medre : « Se a mei te vols tenir ,_
  - non written elision in _se a_
  - (4épC)
- [ ] l. 203: _s' or me conuissent mi parent d' icesta terre ,_
  - apocope on _icesta_?
  - (4épC)
- [ ] l. 389: _Malveise guarde t' ai faite suz mun degrét ._
  - One extra syllable in the second colon. Can be due to apocope on the _-e_ of _faite_, or can just be ill-formed.
  - (4épC)
- [x] l. 431: _Nel cunuisseie plus que unches nel vedisse . »_
  - non written elision on _que unches_
  - (4épC)
- [x] l. 436: _Ço est grant merveile que pietét ne t' en prist ._
  - Non-written elision on _ço est_
  - (4épC)
- [x] l. 441: _Ço est granz merveile que li mens quors tant duret ._
  - Non-written elision on _ço est_
  - (4épC)

### m:13[10]


## Cases of no-schwa vowel elided

### m:11[10] not with 4épC or 6épC*
>\* Exclusion of 4épC and 6épC is due to the fact that the PAM cannot count the extrametrical syllable as being extrametrical. It is the user that must exclude the supernumerary syllable. Those lines are m:11[10] but they are well-formed, because m:11[10] with 4épC or 6épC is actually m:10[10].

- [x] l. 49: _mais ço est tel plait dunt ne volsist nïent ,_
  - contraction in _ço est_
- [x] l. 73: _et un anel , a Deu li ad comandethe ,_
  - contraction in _li ad_?
- [x] l. 285: _parfitement se ad a Deu cumandét ,_
  - contraction in _se ad_
- [x] l. 359: _ço est sa merci qu' il nus consent l' onor ,_
  - contraction in _ço est_
- [x] l. 363: _ço est ses mesters dunt il ad a servir ._
  - contraction in _ço est_

### m:12[10]
- [ ] l. 458: _Aidiez mei a plaindra le duel de mun ami !_
  - One extra syllable in the first colon. Maybe _mei ad_ -> _m'ad_?
  - But in postverbal position, wouldn't it be weird?
  - (4épC if first colon corrected)

### m:13[10]
- [x] l. 178: _Respont l' imagine : « Ço est cil qui tres l' us set ,_
  - contraction in _ço est_

### m:14[10]
- [x] l. 304: _li uns Acharies , li altre Anories out num ,_
  - contraction in _li uns_ and _li altre_

## Cases of medial schwas not to analyse (in my PhD) but still to keep:

### m:11[10]
- [ ] l. 312: _quer iloec est et iloc le trovereiz . »_
  - May just be illformed
  - Or due to syncope in _trovereiz_

### m:12[10]


### m:13[10]

## <a> for <e>
### m:11[10]
- [ ] l. 20: _des melz gentils de tuta la cuntretha ._
- [ ] l. 29: _de sain batesma l' unt fait regenerer ,_
- [ ] l. 42: _fille ad un conpta de Rome la ciptét ,_
- [ ] l. 56: _Cum veit le lit , esguardat la pulcela ,_
- [ ] l. 95: _pur nul aver ne volt estra ancumbrét ._
- [ ] l. 141: _« Cambra , dist ela , jamais n' estras parede ,_
  - _ela_ (and _cambra_, with no incidence on the line's wellformedness)
- [ ] l. 150: _quant n' ai tun filz , ansembl' ot tei voil estra . »_
- [x] l. 194: estra
  - corrected because elision is needed and PAM can only elide <e> vowels.
- medra
- [x] pedra
  - [x] l. 101
  - [x] l. 387
  - [x] l. 462
  - [x] l. 491
  - [x] l. 586
- [ ] perdra
- [ ] tabla
- [x] enca (encre, _ink_), l. 278
- [ ] cartra
- [ ] prendra
- [ ] ceindra
- [x] lunga, l. 439
- [ ] tendra
- [ ] juventa
- [ ] largas (l. 518)
- [ ] plaindra (l. 458)

### m:12
- [ ] l. 586: _Or n' estot dire del pedra e de la medra_
- [ ] l. 603: _od la pulcela dunt il se fist si estranges ._

## <o> for <e>
- [x] l. 607: _fist cel saint homo en cesta mortel vide ,_

## Other remarks

### Lines > m:13[10]
>Because it is higly improbable that lines with more than 13 metrified syllables can be corrected with final schwa irregularity, these lines are not analysed.

#### m:14
- [ ] l. 620: _en ipse verbe sin dimes : Pater noster , amen ._
  - [ ] last line of the text.

#### m:15



### Anthroponyms


### Subj.


### Adj/ppp/CONJ


### Ind.Pré/Subj.Pré.


### Latinism
- [x] _imagine_
  - l. 87: _pur une imagine dunt il oït parler ,_
  - l. 168: _Deus fist l' imagine pur sue amur parler_
  - l. 176: _Revint li costre a l' imagine el muster :_
  - l. 178: _Respont l' imagine : « Ç'est cil qui tres l' us set ,_
  - l. 183: _que cele imagine parlat pur Alexis ._
  - l. 379: _e que l' imagine Deus fist pur lui parler ,_
- [x] _imagina_
  - l. 171: _Ço dist l' imagena : « Fai l' ume Deu venir ,_
- [x] _imagene_
  - l. 175: _icel saint home de cui l' imagene dist ._
- [x] _aname(s)_
  - l. 362: _Cist apostolies deit les anames baillir ,_
  - l. 406: _Filz , la tue aname el ciel seit absoluthe !_
    - Two solutions:
      - Or it is indeed /ˈanamə/, with the two posttonic falling into the 4épC
      - Or it is just a graphic form from ANIMA for /ˈamə/. See below:
  - l. 600: _par cel saint cors sunt lur anames salvedes ._
    - Here, we see that it is not the first option but the second! No epic break here.
  - l. 604: _Or l' at od sei , ansemble sunt lur anames ,_
  - l. 608: _quer or est s' aname de glorie replenithe !_
- [x] _anema_
  - l. 539: _e l' anema en est enz el paradis Deu ._
- [x] _aneme_
  - l. 329: _deseivret l' aneme del cors sainz Alexis ,_
- [x] _angele(s)_
  - l. 88: _qued angeles firent par cumandement Deu ,_
  - l. 602: _ensembl' ot Deu e la compaignie as angeles ,_
- [x] _virgine_
  - l. 89: _el num la virgine ki portat salvetét ,_

# TODO
- [x] Lines with less than 9 syllables
- [x] Lines m:9
- [ ] Check breaks in m:10?
- [x] Lines m:11 without 4épC and 6épC
  - [ ] Check breaks in m:11 with 4épC and 6épC?
- [x] Lines m:12
- [x] Lines with more than 12 syllables
- [ ] Add general stats
- [ ] Produce statistic test to evaluate the influence of final schwa on the probability for a line to be ill-formed.
- [ ] correct lines if possible
