# The _Chanson de Roland_ : illformed lines
This document collects irregular lines in the _Chanson de Roland_, in the edition of the Base de Français Médiéval (`roland`[1]). Analysis is done with the PAM (Programme d'Analyse Métrique = Metrical Analysis Program [2]), a Python script that segment a given text into syllables, tag them with prosodic prominence and count the number of metrically-relevant syllables of each line to assess for their metrical wellformedness. Some ill-formed lines have been check in a more interventionnist edition, the one by Ian Short [3].
> [1] _Chanson de Roland_ (1972). Edited by Gérard Moignet, Paris: Bordas. Published on-line by the Base de français médiéval, http://catalog.bfm-corpus.org/roland. Version: 2014-02-24.<br>
> [2] POGGIO, Enzo & Timothée PREMAT (2019). "Le PAM, un Programme d'Analyse Métrique pour le français médiéval", in: _Actes des Rencontres lyonnaises des jeunes chercheurs en linguistique historique_, directed by Timothée Premat & Ariane Pinche, Lyon: Diachronies contemporaines, 2019, pp. 59-70. ⟨[hal-02320550](https://hal.archives-ouvertes.fr/hal-02320550)⟩ ⟨[10.5281/zenodo.3464477](https://zenodo.org/record/3464477#.X_SJdDRudqu)⟩<br>
> [3] _La Chanson de Roland_ (1990). Edited by Ian Short, Paris: Librairie Générale Française.

>Note that when several line numbers are given for a single line, the former is the line number in the `txt` file given in input to the PAM at the latter is the line number given in the `xml` file. There is indeed differences between the two numbering, as the `xml` file can count missing lines (e.g. if the editor knows there is a missing line but cannot edit it) while the `txt` file cannot. The difference between the two numberings are small (mostly from one to five lines), so even with only one numbering system the reader should easily find his way through it.

## Problems in the edition
This section collects irregularities that are probably/maybe due to errors in the edition of the text and/or its XML formatting.

### Missing content without proper demarcation in the XML file.
- l. 1971: _un mort sur altre geter_
  - 3 syllables missing, no gap marked in the XML
- l. 2394: _E seint Michel del Peril_
  - 3 syllables missing, no gap marked in the XML
- l. 202: _De ses paiens enveiat quinze_
  - 2 syllables missing, no gap marked in the XML
- l. 1485: _Mielz est mult que jo l'alge ocire_
  - 2 syllables missing, no gap marked in the XML
- l. 2208: _Vos fustes filz al duc Reiner_
  - 2 syllables missing, no gap marked in the XML
- l. 2790: _Sire amiralz, dist Clarïens_:
  - 2 syllables missing, no gap marked in the XML
- l. 2968: _En quirs de cerf les seigneurs unt mis_:
  - 2 syllables missing, no gap marked in the XML
- l. 3983(3988): _Quant l' emperere ad fait sa justice_.
  - The final -e of _faite_ is missing; it should be _faite_
  - checked on the ms, which has _faite_
  - this line is not illformed, it just have been wrongly edited.

## Problems not related to schwas
This section collects irregularities that are probably/maybe not due to mistakes in the file but to the reality of the line in the manuscript **and** that are not due to final schwas irregularities. It is organised by the number of metrically-relevant syllables assessed by the PAM.
> For instance, m:9[10] means that the concerned lines have 9 metrically-relevant syllables while they are supposed to have 10.

### m:9[10]
- l. 434: _Pris e liez serez par poësted_
  - _liez_, ppp de _lier_ : bisyllabique ici, mais pas au v. 96 (adj. <- LAETUS).
  - added a ¨ in roland.txt.
- l. 494: _Altrement ne m' amerat il mie . »_
  - 1 missing syllable
  - no explanation
- l. 632: _- Ben serat fait » , Guenes respundit ;_
  - 1 missing syllable
  - no explanation
- l. 727: _Guenes li quens l' ad sur lui saisie ;_
  - 1 missing syllable
  - no explanation
- l. 773: _Ne poet muer que des oilz ne plurt ._
  - 1 missing syllable
  - no explanation
- l. 1089: _Ne placet Damnedeu ne ses angles_
  - 1 missing syllable
  - no explanation
- l. 1463: _En tanz lius les avum nos portees !_
  - 1 missing syllable
  - no explanation
  - Short replaces _lieu_ by _terre_, but that's not conform to the ms. (fol 27r)
- l. 1619(1620): _Aprof li ad sa bronie desclose ,_ :
  - 1 missing syllable if <ni> = <gn> (lemma _broigne_). But would be OK if the syllabification is _bro.ni.e_, so it has been corrected in the PAM. Not wrong anymore.
- l. 1769(1771): _Ja estes veilz e fluriz e blancs ;_.
    - 1 missing syllable
    - no explanation
    - Short adds _vus_ in _Ja estes vus veilz_.
- l. 1834(1845): _N' i ad icel ne demeint irance_ :
  - 1 missing syllable
  - no explanation
  - Short edits a completely different line (_N' i ad icel durement ne s'en pleine_) which rime is less good.
- l. 2255(2257): _Ja la vostre anme nen ait sufraite !_
  - 2 missing syllables
  - no explanation ; probably faulty ms.
  - Short interpolates an entire phrase (_doel ne surfaite_)
- l. 2259(2261): _De ses pers priet Deu ques apelt ,_
  - 2 missing syllables
- l. 2269(2271): _Halt sunt li pui e mult halt les arbres ._
  - 1 missing syllable
  - Pbt _e mult halt sunt les arbres_ ?
- l. 2335(2337): _Deus ! perre , n' en laiser hunir France ! »_
  - 2 missing syllables
  - _Deus_ is abbreviated, Short develops _Damnedeux perre_ (fol. 42v)
- l. 2339(2341): _Cuntre ciel amunt est resortie ._
  - 1 missing syllable.
  - Short edits _le ciel_.
  - No explanation.
- l. 2391(2393): _Deus tramist sun angle Cherubin_
  - 1 missing syllable.
  - Short edits _li tramist_.
- l. 2470(2472): _Li altre en vunt cuntreval flotant ;_
  - 1 missing syllable.
  - Short edits _encuntreval_, but the ms. does have _cuntreval_.
  - No explanation.
- l. 1633(1635): _Par la noit la mer en est plus bele ,_
  - 1 missing syllable.
  - Short edits _Tute la noit_ but the ms. is unambiguous (fol. 48r)
- l. 2765(2767): _A l' amiraill en vunt esfreet ,_
  - 1 missing syllable.
  - Short edits _tut esfreet_.
- l. 2832(2334): _Mei ai perdut e tute ma gent . »_
  - 1 missing syllable.
  - Short edits _trestute_.
- l. 2843(2845): _Al matin , quant primes pert li albe ,_
  - 1 missing syllable.
  - Short edits _matinet_ but the ms. does have _matin_.
- l. 2966(2968): _En quirs de cerf les seignurs unt mis ;_
  - 1 missing syllable.
  - Short edits _les treis seignurs_, but the ms. does have _les seignurs_ (fol. 53v)
- l. 3001(3003): _Puis sunt muntez e unt grant scïence ._
  - 1 missing syllable.
  - Short edits _escience_. The ms. is not clear here (fol 54v).
  - Could it be a case of irregular gender agreement of _grand_? It is too early for GRANDIS to be agreed!
- l. 3206: _Cil respunt : « Sire , vostre mercit ! »_
  - 1 missing syllable.
  - Short edits _E cil respunt_, which better fit the metrical break.
- l. 3257: _E la disme est des barbez de Fronde :_
  - 1 missing syllable.
  - Short edits _Val-Fronde_.
- l. 3363: _« Ferez , baron , ne vos targez mie !_
  - 1 missing syllable.
  - Short edits _si ne vos_.
- l. 3372: _Veez mun filz , Carlun vait querant ,_
  - 1 missing syllable.
  - Short edits _qui Carlun_.
- l. 3500: _E aprés sin enbrunket sun vis ._
  - 1 missing syllable.
  - Short edits _E enaprés_.
- l. 3522: _Arguille si cume chen glatissent ;_
  - 1 or 2 missing syllable(s) + problem with the metrical break
  - Short edits _E cil d'Arguille_
- l. 3693: _Cume il est en sun paleis halçur ,_
  - 1 missing syllable.
  - Short edits _Si come il est_.

### m:11[10] not with 4épC
- l. 28: _Mandez Carlun , a l' orguillus e al fier ,_
  - Short edits _a l'orguillus al fier_ and he is probably right.
- l. 408: _Envolupet fut d' un palie alexandrin :_
- l. 639: _Le grant aveir en presentez al rei Carles ,_
- l. 722: _Par tel aïr l' at estrussee e brandie_
  - contains a final schwa in the problematic colon, but is already elided so the problem is not with the final schwa.
- l. 742: _Kar me jugez ki ert en la rereguarde . »_
  - Or contraction of _ki ert_
  - Or line illformed because of the reduplication of the prefix of _rereguarde_
  - BUT _rereguarde_ is the regular form for _arrière garde_ (back of the armee).
  - That's why Short keep the double prefix and delete the determiner: _en rereguarde_.
- l. 761: _Quant ot Rollant qu' il ert en la rereguarde ,_
  - Idem, without the possibility of contraction. So probably inaccurate insertion of _la_ in the ms.
- l. 796: _E vint i Astors e Anseïs li veillz ,_
  - 1 extra syllable in the first colon.
- l. 907. _Si nus remeindrat Espaigne en quitedet . »_
  - 1 extra syllable in the first colon.
- l. 912: _« En Rencesvals guïerai ma cumpaigne ,_
  - _Cumpaigne_ is supposed to be a synonym of _compagnie_ (not a form of the word _compagnie_, but a different word). It is not the case in Roland, where on 10 _cumpaigne_, 8 are 4-syllables long
  - But in this line, it seems to be the case, as it requires the excepted 3 syllables long form.
- l. 1087: _Nus i avum mult petite cumpaigne . »_
  - Idem.

## Problems possibly related to final schwas
This section collects irregularities that are probably/maybe not due to mistakes in the file but to the reality of the line in the manuscript **and** that are probably due to final schwas irregularities.

### m:9[10]
- l. 390: _Kar chascun jur de mort s'abandunet_
  - 1 syllable missing
  - _abandunet_ is paroxytonique: in feminine assonance and non metrified in the other occurrence in this text (l. 1535)
- l. 685: _Ki l' en conduistrent tresqu' en la mer :_
  - 1 missing syllable.
  - Probably _tresquë_, to be checked.
- l. 714: _En un bruill par sum les puis remestrent ._.
  - _Brile_ is attested once in the AND, but the regular form is monosyllabic like in _roland_.
  - The XML file indicates: ```<!-- erreur de saisie : pas de duplication dans l'édition -->```
  - Short edits _Enz en un breul_
    - Therefor, we can suppose that the correction of the XML is faulty by deleting a word. Or, as often, that Short adds a function word when he misses a syllable...
- l. 730: _D' enz de sale uns veltres avalat ,_
  - The 1 missing syllable cannot be due to an irregular support of final schwa in _sale_ because it would cause a lyric break, unknown in _roland_.
- l. 1158: _Les renges li batent josqu' as mains ._
  - maybe _jusques aux_? (the ms. has _josqu'_ (fol. 21v))
- l. 1265: _L' osberc li rumpt entresque a la charn_
  - It seems that _entresque_ can resist elision ; it has been corrected <entresquë> in `special_syll` (PAM instruction file).
- l. 1323: _A quinze cols l' ad fraite e perdue ;_
  - It seems like there can be an Intonation Phrase (IPh) boundary after _fraite_; in Meigret we see that the only position where final schwas can resist elision in an unpredictable fashion is before conjunctions like _et_ which allow for a IPh boundary by restructuration.
- l. 1398(1399): _Tant' hanste i ad e fraite e sanglente ,_
  - Idem?
  - Short edits _frettë_!
  - Or it might be that _fraite_ is an irregular participle?
- l. 2016(2018): _Sun cumpaignun Rollant sur tuz humes ._
  - Short edits _trestuz_, but the ms. does only have _tuz_ (fol. 36v)
- l. 2038(2040): _Repairez est des muntaignes jus ;_
  - Short edits _de ces muntaignes_, but the ms. does only have _des_.
- l. 2059(2061): _Guardez , seignurs , qu' il n' en algent vif ._
  - In the ms., the page is damaged, the writing goes around the scar but is poorly legible.
  - Short edits _qu'il ne s'en algent vif_. (fol. 37v)
- l. 2064(2066): _Li quens Rollant fut noble guerrer ,_
  - Short edits _gerreier_,but the ms. does have _guerrer_ (fol. 37v)
- l. 2209(2211): _Pur orgoillos veintre e esmaier_
  - Frontière de GI devant _e_ ? Short édite _e veintre e esmailler_, alors que le ms. n'a clairement pas d'esperluette devant _veintre_ (fol. 40r)
- l. 2211(2214): _E pur glutun veintre e esmaier ,_ manque une syllabe. Comme le cas du dessus !!!
- l. 2275(2277): _Met sei en piez e de curre s' astet ._ Manque une syllabe. Short édite intelligemment _se hastet_, mais le ms. a bien <sastet> (fol. 41v).
- l. 2552(2557): _Li emperere n' est mie esveillét ._. Manque une syllabe. Short édite _ne s'est_, mais on peut aussi considérer _mië esveillet_.
- l. 2576(2578): _Ensembl' od li plus de vingt mil humes ,_. Manque une syllabe. Short édite _trente mil_ o_O Probablement _vingt et mil_. Donc pas vers faux, d'ailleurs corrigé. MAIS <ensemblod> dans le ms est très beau et doit être analysé !!!!
- l. 2926(2928): _E ! France , cum remeines deserte !_ : manque une syllabe. Pbt _cum-cume_ ! Assonance féminine.
- l. 2939(2941): _Entre les lur aluee e mise_ : manque une syllabe. Short édite _fust alüee_. Mais ça pourrait aussi être _alueë e mise_ pour éviter le hiatus /ee/... À voir si on trouve d'autres cas comme ça !
- l. 3391: _Josqu' a la nuit n' en ert fins otriee ._: Short édite _otrïee_, mais _otrie_ est /trj/ en principe en a.fr. On peut penser à _jusques_ ?

### m:11[10] not with 4épC
- l. 21: _Si me guarisez e de mort e de hunte ! »_
  - Short edits _m'gurarisez_ !
- l. 27: _E dist al rei : « Ore ne vus esmaiez !_
  - _ore_ can be subject to some variation.
  - Short edits _ore_
- l. 37: _Vos le sivrez a la feste seint Michel ,_
- l. 77: _Dient paien : « De ço avun nus asez ! »_
  - maybe the _nus_ is interpolated?
  - Short have a completely different version: _Bien dist nostre avoëz_
- l. 81: _Si me direz a Carlemagne le rei_
- l. 83: _Ja einz ne verrat passer cest premer meis_
  - The problem is in the first colon.
- l. 138: _Baisset sun chef , si cumencet a penser ._
  - Probably a precocious case of _-t_ falling in _cumencet_, allowing for the elision of the posttonic.
- l. 141: _Sa custume est qu' il parolet a leisir ._
  - Idem.
- l. 156: _Charles respunt : « Uncore purrat guarir . »_
  - _Encore_ is subject to final schwa variation.
- l. 170: _Le duc Oger e l' arcevesque Turpin ,_
  - Apocope on _arcevesque_?
  - Rhythmical factors?
- l. 180: _« Seignurs barons , dist li emperere Carles ,_
  - Two possibilities:
    - apocope on _emperere_
    - contraction of the /i/ of _li_ in hiatus
      - that would be in post-verbal position of the subject.
- l. 197: _Set anz ad pleins que en Espaigne venimes ;_
  - _que en_ is a weird graphical form for _qu'en_
  - elision in clitics is not always written?
- l. 369: _Par grant saveir parolet li uns a l' altre ._
  - Two solutions:
    - precocious case of _-t_ falling in _parolet_
      - short, with a different word-roder (?), edits _parole_ with no _-t_ and elision (_parole a l'altre_)
    - contraction in _li uns_
- l. 416: _E dist al rei : « Salvez seiez de Mahum_
  - Probably just ill-formed without schwa problem, but still contains a schwa.
- l. 458: _Ne por tut l' aveir ki seit en cest païs ,_
  - Probably just ill-formed without schwa problem, but still contains a schwa.
- l. 509: _E Guenes l' ad pris par la main destre as deiz ,_
  - Or it is just an illformed line, or it is a case of final schwa irregularity in an anthroponym.
- l. 517: _Einz demain noit en iert bele l' amendise . »_
  - Or it is just an illformed line
  - Or it is a problem in elision of the final schwa of _bele_.
    - Short have mooved the words to solve it: _bele en iert l'amendise_.
- l. 639: _Eles valent mielz que tut l' aveir de Rume ._
  - The problem is in the first colon.
  - There is probably an irregular apocope in _eles_ or _valent_!
- l. 720: _Entre ses poinz teneit sa hanste fraisnine ;_
  - Irregular apocope in _hasnte_?
- l. 740: _« Seignurs barons , dist li emperere Carles ,_
  - Apocope in _emperere Carles_, in a formulary phrase?
  - Or contraction in _li emperere_
- l. 765: _Cume fist a tei le bastun devant Carle ? »_
  - _Cume_ is subject to variation.
- l. 837: _Que entre mes puinz me depeçout ma hanste ;_
  - Non-written elision in _que en_
- l. 851: _quatre cent milie en ajustet en trois jurz ;_
  - precocious case of _-t_ falling in _parolet_
  - which allows for elision and wellformed line.
- l. 856: _La tere Certaine e les vals e les munz :_
  - Irregular apocope in _terre certaine_?
- l. 872: _Ja n' avrez mais guere en tut vostre vivant . »_
  - Irregular apocope on _vostre_?
- l. 931: _De l' altre part est Escremiz de Valterne ;_
- l. 959: _Quant ele le veit , ne poet muer ne riet ;_
- l. 959: _De l' altre part est Chernubles de Munigre ._
- l. 978: _Que quatre mulez ne funt , quant il sumeient ._
  - _mulez_ tagged `lemma="mulet"`, but if it is _mule_, that would be a possible 4épC and the line would be wellformed.
- l. 1082: _Pur ben ferir l' emperere plus nos aimet . »_
  - irregular apocope on _emperere_.
    - This word seems to have a lot of apocopated occurrences.





## Cases of no-schwa vowel elided

### m:9[10]
- l. 1388(1390): _Seint Gabriel de sa main l' ad pris ._ Short édite _li ad_. Le ms. a bien <lad> (fol. 43v)

### m:11[10]
- l. 180: _« Seignurs barons , dist li emperere Carles ,_
  - Two possibilities:
    - apocope on _emperere_
    - contraction of the /i/ of _li_ in hiatus
      - that would be in post-verbal position of the subject.
- l. 252: _Seignurs baruns , qui i purruns enveier ,_
  - _qui i_ contracted in _qui_?
  - Short has just _qui_; _i_ is semantically and syntactically redondant (_enveier al sarrazin_)
- l. 254: _Respunt Rollant : « Jo i puis aler mult ben !_
  - contraction of _jo i_?
- l. 274: _« Francs chevalers , dist li emperere Carles ,_
  - contraction of _li emperere_
  - that would be in post-verbal position of the subject.
- l. 314: _Ço est Baldewin , ço dit , ki ert prozdoem ._
  - Two solutions:
    - Contraction of _ço est_
    - _Baldewin_ is a weird graphical form for _Balduin_, bi-syllabic.
- l. 324: _Ne Oliver , por ço qu' il est si cumpainz ._
  - Contraction in _qu'il est_?
  - Short edits _qu'est_
- l. 329: _- Jo i puis aler , mais n' i avrai guarant_
  - Contraction in _jo i_
- l. 351: _En la cort al rei mult i avez ested ,_
  - Contraction in _en la_?
  - Short edits _en cort_
  - Maybe _enl cort_ would be more correct?
- l. 369: _Par grant saveir parolet li uns a l' altre ._
  - Two solutions:
    - precocious case of _-t_ falling in _parolet_
      - short, with a different word-order (?), edits _parole_ with no _-t_ and elision (_parole a l'altre_)
    - contraction in _li uns_
- l. 382: _Ne més Rollant , ki uncore en avrat hunte ._
  - Contraction in _ki uncore_
- l. 447: _Ja nel dirat de France li emperere_
  - Contraction in _li emperere_
- l. 498: _Livrez le mei , jo en ferai la justice . »_
  - Contraction in _jo en_
- l. 504: _E Jurfaret , ki est ses filz e ses heirs ,_
  - Contraction in _ki est_
  - Short edits _k'est_
- l. 740: _« Seignurs barons , dist li emperere Carles ,_
  - Apocope in _emperere Carles_, in a formulary phrase?
  - Or contraction in _li emperere_
- l. 742: _Kar me jugez ki ert en la rereguarde . »_
  - Or contraction of _ki ert_
  - Or line illformed because of the reduplication of the prefix of _rereguarde_
  - BUT _rereguarde_ is the regular form for _arrière garde_ (back of the armee).
  - That's why Short keep the double prefix and delete the determiner: _en rereguarde_.
  - Cf. l. 761, same problem with no contraction possible.
- l. 786: _Retenez les , ço est vostre salvement ! »_
  - Contraction in _ço est_
- l. 866: _Dunez m' un feu , ço est le colp de Rollant ;_
  - Contraction in _ço est_


## Cases of medial schwas no to analyse (in my PhD) but still to keep:

### m:9[10]
- l. 300: _Einz i frai un poi de legerie_
  - _frai_ is clearly a wrong (from the metrical perspective) syncopated form of _ferai_

### m:11[10]
- l. 314: _Ço est Baldewin , ço dit , ki ert prozdoem ._
  - Two solutions:
    - Contraction of _ço est_
    - _Baldewin _ is a weird graphical form for _Balduin_, bi-syllabic.

## Problems with numbers
There are often problems with numbers that are noted in latin style (e.g. .C. for _cent_) in the text. There have been re-writen in modern form (e.g. .C. -> _cent_) before the PAM has been applied, but composed numbers can take a _et_ between their members and there is apparently no rule to predict it. Also, numbers can generate other errors.

### m:9[10]
- l. 1041: _Cil devant sunt .C. milie ad escuz ,_ : it is expected than elision apply in _milie ad_ -> /milad/. Probably the number must be read _cent et milie_, as it often happen in old and middle French. Modified as such in roland.txt.
- others are modified without being reported here.

## Other remarks

### Anthroponyms
- _Marsiliun_ is problematic:
  - 4 syllables long and oxytonic at lines 222, 414, 618, 880, 1214 (=880 bis), 1562, 1903
  - 3 syllables long and/or paroxytonic at lines 276, 288
  - treated as 4-syllables long and oxytonic in the PAM
  - ! other graphies exist!
    - _marsilie_ have same problem, treated as 3-syllables long paroxytonic by the PAM
- l. 509: _E Guenes l' ad pris par la main destre as deiz ,_
  - Or it is just a illformed line, or it is a case of final schwa irregularity in an anthroponym.

### Subj.
- _diet_ est bien bisyllabique paroxyton (l. 424, 531 (c.ép.), 2360 (id.))
  - Subj.Pré.3sg _dire_

### Adj/ppp/CONJ
- _repairet_ peut être _repéré_ ou _repère_ (Ind.Pré.3sg). Édité _repairét_ sur le seul vers problématique dans roland.txt (1867).
- _pasmet_ peut être _pâmé_ ou _pâme_ (Ind.Pré.3sg). Édité _pasmét_ aux vers problématiques dans roland.txt (l. 1987, 2218). Cf. l. 1986-1987 pour les deux formes !
- _regardet_ : idem.
- _desmailet_ : :idem.
- _culchet_ : idem.
- _enveiet_ : idem.
- _esveiet_ : idem.
- _demuret_ : idem.
- _venget_ : idem.
- _turnet_ : idem.

### Ind.Pré/Subj.Pré.
- _esvertuet_ édité en _esvertüet_ l. 2296.
