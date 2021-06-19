let tartuTervishoiuKõrgkoolRaka = [
    majorsMinors(
        name: "Õde",
        level: .applied,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Erialakatse", percentage: 40),
            Requirements(term: "Gümnaasiumi füüsika, keemia ja bioloogia keskmine hinne", percentage: 30),
            Requirements(term: "Gümnaasiumi matemaatika lõpuhinne", percentage: 30)
        ],
        description: ["Õde on tervishoiuspetsialist, kes osundab õendusabi: rakendab oma kutsealaseid teadmisi, oskusi ja hoiakuid üksikisiku, perekonna ja/või kogukonna abistamisel, selleks et säilitada tervist, saavutada parem elukvaliteet, parem enesehoolduse- ja funktsioneerimisvõime või võimaldada inimesel surra väärikalt kui tervise taastamine pole võimalik. Õde hindab inimese kogemusi ja reaktsioone haiguse ja tervise suhtes ning õpetab ja juhendab teda tervise hoidmisel ja/või haigusest paranemisel lähtudest holistlikust inimkäsitusest.", "Tartu Tervishoiu Kõrgkoolis kestab õe põhiõpe kolm ja pool aastat, selle aja jooksul kogub üliõpilane 210 EAP-d. Õppekava koosneb kümnest moodulist: kutsealane ja isiksuslik areng, õenduse alused, anatoomia-füsioloogia, kogukonnaõendus, lapse õendusabi, reproduktiivtervis, eaka õendusabi, kliiniline õendusabi, komplitseeritud juhtude õendusabi, vaimne tervis ja psühhiaatriline õendusabi.", "Lisaks teoreetilisele õppele on olulisel kohal praktika: eelkliiniline praktika viiakse läbi kõrgkooli õppeklassis, kliiniline õppepraktika toimub praktikabaasides integreeritult teooriaõppe tsüklitega ning annab üliõpilasele kokku 86 EAP-d (üle 40% õppe mahust). Praktika eesmärgiks on arendada teoreetiliste teadmiste rakendamise ning kutseoskusi ja selle juhendajateks on praktikabaasi erialaspetsialist ja kõrgkooli poolt vastava aine õppejõud."],
        outcomes: ["Õe põhiõppe õppekava läbinu:", "Mõistab õenduse kui teadusala põhimõtteid, keskseid mõisteid, õendusteooriaid, uurimismeetodeid, kutsealade aktuaalseid probleeme ja rakendusvõimalusi", "Tuginedes õe eetikakoodeksile hindab inimese kui terviku tervisevajadusi ja lähtub talle õendusabi osutades parimast olemasolevast teabest ja patsiendi-/kliendi- ning perekesksuse printsiibist", "Mõistab õendusabi kui protsessi, mille eesmärk on võimestada inimest võtma vastutust enda ja pereliikmete tervise eest", "Rakendab meeskonnatöö põhimõtteid õendusabi osutamisel, juhtimisel ja vastutades oma pädevuse piires koostöös teiste tervishoiu spetsialistidega", "Omab kutsealast valmisolekut iseseisvalt töötamiseks õenduse valdkonnas", "Oskab kriitiliselt analüüsida enda kutsealase ja isiksusliku arengu vajadust ning on valmis elukestvaks ennastjuhtivaks õppimiseks ja kutseala tõenduspõhiseks arendamiseks.", "Õed töötavad tervishoiu ja sotsiaalvaldkonda kuuluvates asutustes, näiteks haiglates, päeva- ja tervisekeskustes ning ka hooldekodudes. Õdesid vajatakse tööturul pidevalt: erialase ametikoha leidmine ei tohiks valmistada probleeme ning karjäärivõimalused on laiad. Samuti on lõpetamise järel võimalik jätkata õpinguid õe või selle lähedase kutse- või eriala magistriõppes."],
        language: .eesti,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/rakenduskorgharidus/ode",
        spots: 160,
        duration: 3.5,
        studyLocation:  ["Tartu"],
        eap: 210,
        cost: "0€",
        modules: [
            Module(
                module: "Reproduktiivtervis",
                courses: [
                    Course(name: "Normaalne rasedus, sünnitus ja puerpeerium", eapCount: 1),
                    Course(name: "Emadushooldus", eapCount: 2),
                    Course(name: "Naistehaigused", eapCount: 1),
                    Course(name: "Terve mees ja naine", eapCount: 2)
                ]
            ),
            Module(
                module: "Anatoomia-füsioloogia",
                courses: [
                    Course(name: "Ladina keel", eapCount: 1),
                    Course(name: "Anatoomia-füsioloogia I", eapCount: 4),
                    Course(name: "Anatoomia-füsioloogia II", eapCount: 2)
                ]
            ),
            Module(
                module: "Kliiniline õendusabi",
                courses: [
                    Course(name: "Õendustoimingud", eapCount: 4),
                    Course(name: "Õppepraktika „Kliiniline õendus", eapCount: 24),
                    Course(name: "Üldfarmakoloogia", eapCount: 2),
                    Course(name: "Sissejuhatus kliinilisse õendusse", eapCount: 2),
                    Course(name: "Kirurgilise haige õendusabi", eapCount: 10),
                    Course(name: "Farmakoloogia", eapCount: 5),
                    Course(name: "Sisehaige õendusabi", eapCount: 9)
                ]
            ),
            Module(
                module: "Valikained",
                courses: [
                    Course(name: "Elustamine", eapCount: 3),
                    Course(name: "Laste neuroloogia", eapCount: 2.5),
                    Course(name: "Imetamisõpetus", eapCount: 3),
                    Course(name: "Une osa elus, unekvaliteedi tõstmine", eapCount: 2),
                    Course(name: "Ergonoomika", eapCount: 2),
                    Course(name: "Vabaaine III", eapCount: 0.5),
                    Course(name: "Täiendav vene keel/PRÕM", eapCount: 2),
                    Course(name: "Meditsiiniajalugu", eapCount: 2),
                    Course(name: "Vabaaine II", eapCount: 1),
                    Course(name: "Imetusõpetus", eapCount: 1),
                    Course(name: "Esmaste tervisenäitajate mõõtmine ja nende tõlgendamine südamenädala raames", eapCount: 1),
                    Course(name: "Eesti keel", eapCount: 30),
                    Course(name: "Podiaatria", eapCount: 1),
                    Course(name: "Clinical counselling and therapeutic communication with patient", eapCount: 3),
                    Course(name: "Teaduskonverents", eapCount: 1),
                    Course(name: "Vabaaine I", eapCount: 1),
                    Course(name: "Pervasiivsed arenguhäired", eapCount: 2),
                    Course(name: "Alkoholi liigtarvitamise varajase avastamise ja nõustamie koolitus", eapCount: 0.3),
                    Course(name: "Erialane vene keel", eapCount: 2),
                    Course(name: "Õendus digiajastul", eapCount: 2),
                    Course(name: "Inimese teadlikkus surmast", eapCount: 2),
                    Course(name: "Eesti keel", eapCount: 2),
                    Course(name: "Üliõpilasnõustamine", eapCount: 3),
                    Course(name: "Sünnitusjärgne tervishoiuteenus", eapCount: 2),
                    Course(name: "Teise kooli valikaine III", eapCount: 1),
                    Course(name: "Õenduse dokumenteerimine esmatasandil - OMAHA", eapCount: 2),
                    Course(name: "Sissejuhatav kursus e-õppesse", eapCount: 1),
                    Course(name: "Üldkirurgilise lapspatsiendi õendusabi", eapCount: 1.5),
                    Course(name: "Mida peab õde teadma kopsutuberkuloosist", eapCount: 1),
                    Course(name: "Suhtlemine dementsussündroomiga inimestega", eapCount: 3),
                    Course(name: "Saksa keel edasijõudnutele", eapCount: 1),
                    Course(name: "Immuniseerimine", eapCount: 2),
                    Course(name: "Esmaabi (jätkukursus)", eapCount: 1),
                    Course(name: "Lapse toitumine", eapCount: 1.5),
                    Course(name: "Avalik esinemine", eapCount: 1),
                    Course(name: "Nõustamise alused", eapCount: 2),
                    Course(name: "Teise kooli valikaine I", eapCount: 1),
                    Course(name: "Projektipõhine praktika", eapCount: 0.5),
                    Course(name: "Sissejuhatus soouuringutesse", eapCount: 2),
                    Course(name: "Eesti keel/kesktase/PRÕM", eapCount: 2),
                    Course(name: "Imetamisnõustamine", eapCount: 3),
                    Course(name: "Infotund", eapCount: 0),
                    Course(name: "Lapse ergonoomika ja turvavahendid", eapCount: 2),
                    Course(name: "Probleemsete jalgade hooldus", eapCount: 2),
                    Course(name: "Vene keel/algtase/PRÕM", eapCount: 2),
                    Course(name: "Joogivesi ja selle ohutus", eapCount: 2),
                    Course(name: "Teise kooli valikaine IV", eapCount: 1),
                    Course(name: "Õppekava arendus", eapCount: 1),
                    Course(name: "Teadusartikli lugemine inglise keeles", eapCount: 2),
                    Course(name: "Vabaaine V", eapCount: 0.3),
                    Course(name: "Massaaź", eapCount: 2),
                    Course(name: "Luumurruga patsiendi õendusabi ja patsiendiõpetus", eapCount: 1),
                    Course(name: "Sissejuhatus anesteesiasse", eapCount: 2),
                    Course(name: "Keemia alused", eapCount: 2),
                    Course(name: "Traumaga kannatanu abistamine", eapCount: 2),
                    Course(name: "Töötervishoid ja tööohutus", eapCount: 2),
                    Course(name: "Vabaaine IV", eapCount: 0.5),
                    Course(name: "Reageerimine erakorralist abi vajavates situatsioonides", eapCount: 1),
                    Course(name: "Interaktiivne e-õpe I", eapCount: 2),
                    Course(name: "Õppimine digiajastul I", eapCount: 1),
                    Course(name: "Kriisinõustamine", eapCount: 0.5),
                    Course(name: "Inimene ja ühiskond", eapCount: 2),
                    Course(name: "Teise kooli valikaine V", eapCount: 1),
                    Course(name: "Erialane saksa keel", eapCount: 1),
                    Course(name: "Kardioloogiline patsient", eapCount: 1.5),
                    Course(name: "Keelteklubi/PRÕM", eapCount: 3),
                    Course(name: "Teise kooli valikaine II", eapCount: 1),
                    Course(name: "Teise kooli valikaine VI", eapCount: 0.5),
                    Course(name: "Lapse turvavarustus", eapCount: 1.5),
                    Course(name: "Sissejuhatus soouuringutesse", eapCount: 2),
                    Course(name: "Inglise keel/kesktase/PRÕM", eapCount: 2),
                    Course(name: "Immuumprofülaktika", eapCount: 1.5),
                    Course(name: "Surm ja lein", eapCount: 1),
                    Course(name: "Õpioskuste teadlik kujundamine", eapCount: 2),
                    Course(name: "Demograafia, rahvatervis ja rahvastikupoliitik", eapCount: 1),
                    Course(name: "Patsiendi/kliendikeskne tervishoid", eapCount: 1.5),
                    Course(name: "Muusikateraapia", eapCount: 1),
                    Course(name: "Eesti keele kursus I", eapCount: 2),
                    Course(name: "Keelekümblus/PRÕM", eapCount: 1),
                    Course(name: "Sissejuhatus aroomteraapiasse", eapCount: 1),
                    Course(name: "Patsiendi ohutus", eapCount: 2),
                    Course(name: "Organdoonorlus", eapCount: 2)
                ]
            ),
            Module(
                module: "Kutsealane ja isiksuslik areng",
                courses: [
                    Course(name: "Uurimistöö kavand", eapCount: 3),
                    Course(name: "Juhtimine ja ettevõtlus", eapCount: 2),
                    Course(name: "Lõpupraktika", eapCount: 8),
                    Course(name: "Lõputöö", eapCount: 7),
                    Course(name: "Enesejuhtimine", eapCount: 2),
                    Course(name: "Erialane suhtlemine võõrkeeles (inglise keel)", eapCount: 2),
                    Course(name: "Erialane suhtlemine võõrkeeles (vene/eesti keel)", eapCount: 2),
                    Course(name: "Nõustamine", eapCount: 2),
                    Course(name: "Teadustöö alused ja uurimistöö metoodika", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 2)
                ]
            ),
            Module(
                module: "Rahvatervis, tervisedendus ja esmastandi õendus",
                courses: [
                    Course(name: "Praktika -Teenused kogukonnale", eapCount: 2),
                    Course(name: "Pereõendus", eapCount: 3),
                    Course(name: "Esmaabi", eapCount: 1),
                    Course(name: "Rahvatervis II", eapCount: 2),
                    Course(name: "Praktika 'Pereõendus'", eapCount: 13),
                    Course(name: "Rahvatervis I", eapCount: 4),
                    Course(name: "Tervisedenduslik projekt", eapCount: 2),
                ]
            ),
            Module(
                module: "Lapse õendus",
                courses: [
                    Course(name: "Haige lapse õendus", eapCount: 6),
                    Course(name: "Praktika 'Haige lapse õendus'", eapCount: 8),
                    Course(name: "Lapse tervis", eapCount: 5),
                    Course(name: "Praktika 'Lapse tervis'", eapCount: 5)
                ]
            ),
            Module(
                module: "Eaka õendus",
                courses: [
                    Course(name: "Vananemine ja eaka tervis", eapCount: 2),
                    Course(name: "Praktika 'Eaka hooldus'", eapCount: 5),
                    Course(name: "Praktika 'Geriaatriline õendusabi'", eapCount: 8),
                    Course(name: "Geriaatrilise haige õendusabi", eapCount: 2)
                ]
            ),
            Module(
                module: "Õenduse alused",
                courses: [
                    Course(name: "Õenduse filosoofia ja eetika", eapCount: 2),
                    Course(name: "Õenduse alused ja tõenduspõhine õendus", eapCount: 4)
                ]
            ),
            Module(
                module: "Vaimse tervise õendus",
                courses: [
                    Course(name: "Psühhiaatriline õendus", eapCount: 3),
                    Course(name: "Praktika 'Psühhiaatriline õendusabi'", eapCount: 7),
                ]
            ),
            Module(
                module: "Intensiivõendus",
                courses: [
                    Course(name: "Komplitseeritud haigusjuhud ja intensiivõendus", eapCount: 4),
                    Course(name: "Sõja- ja katastroofimeditsiin", eapCount: 2),
                    Course(name: "Praktika 'Intensiivõendus'", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Ämmaemand",
        level: .applied,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Erialakatse", percentage: 10),
            Requirements(term: "Gümnaasiumi füüsika, keemia ja bioloogia keskmine hinne", percentage: 30),
            Requirements(term: "Gümnaasiumi matemaatika lõpuhinne", percentage: 30),
            Requirements(term: "Vestlus", percentage: 30)],
        description: ["Ämmaemand juhendab, jälgib, hooldab ja nõustab naisi ning peresid raseduse ja sünnituse ajal, sünnitusjärgsel perioodil ning günekoloogiliste probleemide lahendamisel, juhib sünnitusi, hooldab ja jälgib vastsündinuid ja imikuid. Ämmaemandal on tähtis roll tervisekasvatuses ja nõustamises mitte ainult naiste, vaid ka nende perede ja kogu ühiskonna tasandil.", "Erialal rakenduskõrghariduse saamiseks tuleb Tartu Tervishoiu Kõrgkoolis nelja ja poole aasta jooksul koguda 270 EAP-d. Õppekava koosneb kaheksast moodulist: kutsealane ja isiksuslik areng, kutsealane orientatsioon, rahvatervis, farmakoloogia, terve inimene, emadushooldus I, emadushooldus II ja esmatasandi tervishoid, kliiniline õendusabi.", "Stuudiumis on lisaks teooriale olulisel kohal ka praktiline õpe – eelkliinilised praktikumid viiakse läbi kõrgkooli laboris, kliiniline õppepraktika toimub praktikabaasides integreeritult teooriaõppe tsüklitega ning moodustab ligi 40% õppetöö mahust (106 EAP-d). Praktika eesmärgiks on arendada teoreetiliste teadmiste rakendamist ning kutseoskusi ja õppepraktika juhendajateks on praktikabaasides erialaspetsialistid ja kõrgkooli poolt vastava aine õppejõud. Kõrgkooli lõpetamiseks peab üliõpilane läbima õppekava etteantud mahus ja kaitsma  lõputöö.", "Ämmaemanduse õppekava läbinu saab lisaks ämmaemanda diplomile ka õe kutse ja võib töötada nii ämmaemanda kui õena erinevates haiglates, nõuandlates, perekoolides, nõustamiskeskustes, perearstikeskustes ja erapraksistes – töö leidmise ja karjäärivõimalused on väga head. "],
        outcomes: ["Ämmaemanda õppekava läbinu:", "Mõistab ämmaemanduse ja õenduse kui teadusalade põhimõtteid, keskseid mõisteid, teooriaid, uurimismeetodeid, kutsealade aktuaalseid probleeme ja rakendusvõimalusi", "Hindab inimese kui terviku tervisevajadusi ja lähtub talle ämmaemandus-/õendusabi osutades parimast olemasolevast teabest, patsiendi-/kliendi- ning perekesksuse ja kultuuritundlikkuse printsiipidest, tuginedes eetikakoodeksile ja seadusandlusele sh EU direktiividele", "Mõistab ämmaemandus-/õendusabi kui protsessi, mille eesmärk on võimestada inimest võtma vastutust enda ja pereliikmete tervise eest", "Rakendab meeskonnatöö põhimõtteid ämmaemandus-/õendusabi osutamisel, juhtimisel ja oma pädevuse piires vastutamisel koostöös teiste tervishoiu spetsialistidega", "Omab kutsealast valmisolekut iseseisvalt töötamiseks ämmaemanduse ja õenduse valdkonnas", "Oskab kriitiliselt analüüsida enda kutsealase ja isiksusliku arengu vajadust ning on valmis elukestvaks ennastjuhtivaks õppimiseks ja kutseala tõenduspõhiseks arendamiseks"],
        language: .eesti,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/rakenduskorgharidus/ammaemand",
        spots: 26,
        duration: 4.5,
        studyLocation:  ["Tartu"],
        eap: 270,
        cost: "0€",
        modules: [
            Module(
                module: "Emahooldus II ja esmatasandi tervishoid",
                courses: [
                    Course(name: "Praktika Esmatasandi tervishoid", eapCount: 6),
                    Course(name: "Günekoloogia", eapCount: 3),
                    Course(name: "Riskirasedus", eapCount: 5),
                    Course(name: "Patoloogiline sünnitus ja puerpeerium", eapCount: 10),
                    Course(name: "Neonatoloogia", eapCount: 5),
                    Course(name: "Praktika Emadushooldus II", eapCount: 24),
                    Course(name: "Esmatasandi õendus ja ämmaemandus", eapCount: 4)
                ]
            ),
            Module(
                module: "Kutsealane orientatsioon",
                courses: [
                    Course(name: "Ämmaemanduse alused", eapCount: 4),
                    Course(name: "Õenduse alused ja tõenduspõhine õendus", eapCount: 4),
                    Course(name: "Õenduse filosoofia ja eetika", eapCount: 2),
                    Course(name: "Juhtimine ja ettevõtlus", eapCount: 2),
                    Course(name: "Rahvusvahelisus ämmaemanduses", eapCount: 1),
                    Course(name: "Juhendamine ämmaemanduspraktikas", eapCount: 1)
                ]
            ),
            Module(
                module: "Kutsealane ja isiksuslik areng",
                courses: [
                    Course(name: "Enesejuhtimine", eapCount: 2),
                    Course(name: "Psühholoogia", eapCount: 2),
                    Course(name: "Teadustöö alused ja uurimistöö metoodika", eapCount: 2),
                    Course(name: "Kutseala teaduspõhine arendamine ja uurimistöö", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 7),
                    Course(name: "Lõpupraktika", eapCount: 12),
                    Course(name: "Erialane suhtlemine võõrkeeles (vene/eesti keel)", eapCount: 1),
                    Course(name: "Erialane suhtlemine võõrkeeles (inglise keel)", eapCount: 2),
                ]
            ),
            Module(
                module: "Rahvatervis",
                courses: [
                    Course(name: "Esmaabi", eapCount: 1),
                    Course(name: "Rahvatervis I", eapCount: 4),
                    Course(name: "Rahvatervis II", eapCount: 2),
                    Course(name: "Tervisedenduslik projekt", eapCount: 2)
                ]
            ),
            Module(
                module: "Terve Inimene",
                courses: [
                    Course(name: "Anatoomia-füsioloogia II", eapCount: 2),
                    Course(name: "Ladina keel", eapCount: 1),
                    Course(name: "Terve inimene", eapCount: 9),
                    Course(name: "Praktika Terve naine", eapCount: 3),
                    Course(name: "Praktika Terve laps", eapCount: 3),
                    Course(name: "Praktika Terve eakas", eapCount: 3),
                    Course(name: "Anatoomia-füsioloogia I", eapCount: 4),
                ]
            ),
            Module(
                module: "Emadushooldus I",
                courses: [
                    Course(name: "Normaalne rasedus", eapCount: 5),
                    Course(name: "Normaalne sünnitus", eapCount: 6),
                    Course(name: "Normaalne puerpeerium", eapCount: 2),
                    Course(name: "Imetusõpetus", eapCount: 1),
                    Course(name: "Praktika Emadushooldus I", eapCount: 20),
                ]
            ),
            Module(
                module: "Valikained",
                courses: [
                    Course(name: "Vabaaine III", eapCount: 0.5),
                    Course(name: "Sissejuhatus soouuringutesse", eapCount: 2),
                    Course(name: "Sissejuhatus anesteesiasse", eapCount: 2),
                    Course(name: "Rahvusvahelise üliõpilaskonverentsi modereerimine", eapCount: 1.5),
                    Course(name: "Teaduskonverents", eapCount: 1),
                    Course(name: "Teise kooli valikaine V", eapCount: 1),
                    Course(name: "Teise kooli valikaine IV", eapCount: 1),
                    Course(name: "Erialane vene keel", eapCount: 2),
                    Course(name: "Täiendav eesti keel/PRÕM", eapCount: 2),
                    Course(name: "Teise kooli valikaine III", eapCount: 1),
                    Course(name: "Erialane inglise keel", eapCount: 2),
                    Course(name: "Imetamisõpetus", eapCount: 3.5),
                    Course(name: "Vabaaine V", eapCount: 0.3),
                    Course(name: "Meditsiiniajalugu", eapCount: 2),
                    Course(name: "Keelteklubi/PRÕM", eapCount: 3),
                    Course(name: "Keemia alused", eapCount: 2),
                    Course(name: "Praktikajuhendamine", eapCount: 3),
                    Course(name: "Söömishäirete kognitiiv-käitumisteraapia", eapCount: 2),
                    Course(name: "Teenus kogukonnale: Perekool", eapCount: 1),
                    Course(name: "Õppekava arendus", eapCount: 1),
                    Course(name: "Teise kooli valikaine I", eapCount: 1),
                    Course(name: "Pervasiivsed arenguhäired", eapCount: 1),
                    Course(name: "Teise kooli valikaine VI", eapCount: 0.5),
                    Course(name: "Nõustamise alused", eapCount: 2),
                    Course(name: "Erialane vene keel", eapCount: 2),
                    Course(name: "Teise kooli valikaine VII", eapCount: 0.5),
                    Course(name: "Demograafia, rahvatervis ja rahvastikupoliitik", eapCount: 1),
                    Course(name: "Eesti keel", eapCount: 30),
                    Course(name: "Õppimine digiajastul I", eapCount: 1),
                    Course(name: "Õpiränne/PRÕM", eapCount: 1),
                    Course(name: "Teise kooli valikaine VIII", eapCount: 0.3),
                    Course(name: "Probleemsete jalgade hooldus", eapCount: 2),
                    Course(name: "Uurimistulemuste avalikustamine", eapCount: 1),
                    Course(name: "Imetamisnõustamine", eapCount: 3),
                    Course(name: "Täiendav vene keel/PRÕM", eapCount: 2),
                    Course(name: "Lapse ergonoomika ja turvavahendid", eapCount: 2),
                    Course(name: "Projektipõhine praktika", eapCount: 1),
                    Course(name: "Üliõpilasnõustamine", eapCount: 3),
                    Course(name: "Vabaaine IV", eapCount: 0.5),
                    Course(name: "Podiaatria", eapCount: 1),
                    Course(name: "Alternatiivkommunikatioon", eapCount: 1),
                    Course(name: "Sissejuhatav kursus e-õppesse", eapCount: 1),
                    Course(name: "Ergonoomika", eapCount: 2),
                    Course(name: "Vabaaine II", eapCount: 1),
                    Course(name: "Imetamisnõustamine I", eapCount: 3),
                    Course(name: "Keskkonna muutustest tulenevad terviseriskid", eapCount: 2),
                    Course(name: "Projektipõhine praktika", eapCount: 0.5),
                    Course(name: "Vabaaine I", eapCount: 1),
                    Course(name: "Teise kooli valikaine II", eapCount: 1),
                    Course(name: "Sissejuhatus muusikateraapiasse", eapCount: 1),
                    Course(name: "Imetamisõpetus", eapCount: 3),
                    Course(name: "Clinical counselling and therapeutic communication with patient", eapCount: 3)
                ]
            ),
            Module(
                module: "Farmakoloogia",
                courses: [
                    Course(name: "Farmakoloogia ja farmakoteraapia I", eapCount: 2),
                    Course(name: "Farmakoloogia ja farmakoteraapia II", eapCount: 4),
                    Course(name: "Farmakoloogia ja farmakoteraapia III", eapCount: 3),
                    Course(name: "Retseptuur I", eapCount: 1),
                    Course(name: "Retseptuur II", eapCount: 1)
                ]
            ),
            Module(
                module: "Kliiniline õendus",
                courses: [
                    Course(name: "Kirurgilise haige õendusabi", eapCount: 11),
                    Course(name: "Sissejuhatus kliinilisse õendusesse", eapCount: 2),
                    Course(name: "Sisehaige õendusabi", eapCount: 9),
                    Course(name: "Õendustoimingud I", eapCount: 2),
                    Course(name: "Õendustoimingud II", eapCount: 2),
                    Course(name: "Haige lapse õendusabi", eapCount: 6),
                    Course(name: "Psühhiaatriline õendusabi", eapCount: 3),
                    Course(name: "Kliiniline psühholoogia", eapCount: 1),
                    Course(name: "Praktika Psühhiaatriline õendusabi", eapCount: 7),
                    Course(name: "Praktika Intensiivõendus", eapCount: 8),
                    Course(name: "Praktika Kirurgia ja õendusabi", eapCount: 6),
                    Course(name: "Geriaatriline õendusabi", eapCount: 2),
                    Course(name: "Praktika Haige lapse õendusabi", eapCount: 8),
                    Course(name: "Komplitseeritud haigusjuhud ja intensiivõendus", eapCount: 3),
                    Course(name: "Sõja- ja katastroofimeditsiin", eapCount: 2),
                    Course(name: "Praktika Sisehaigused ja õendusabi", eapCount: 6)
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Füsioterapeut",
        level: .applied,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Erialakatse", percentage: 40),
            Requirements(term: "Gümnaasiumi füüsika, keemia ja bioloogia keskmine hinne", percentage: 30),
            Requirements(term: "Gümnaasiumi matemaatika lõpuhinne", percentage: 30)],
        description: ["Füsioterapeut on taastusravi spetsialist, kes aitab inimestel taastada või säilitada häirunud liikumis- ja tegevusvõimet ning selle kaudu osalemist tavapärases elus.", "Õpe täiskoormusega õppes kestab kolm aastat, osakoormusega õppes 4,5 aastat, selle aja jooksul tuleb koguda 180 EAP-d. Tartu Tervishoiu Kõrgkoolis füsioterapeudi õppe eeliseks on see, et  praktika moodustab ainepunktide kogumahust ligi kolmandiku. Rikkalikud praktikakogemused võimaldavad lõpetajatel tööturule suundudes end kindlalt tunda.", "Õppekava koosneb kolmest moodulist: füsioteraapia alusained, füsioteraapia erialaained,  kutsealane ja isiksuslik areng. Lõpetamiseks peab üliõpilane olema sooritanud kõik õppekavas ettenähtud eksamid, arvestused, kohustuslikud tööd ja praktikaõppe ning kaitsnud lõputöö, mis enamasti on uurimuslikku laadi."],
        outcomes: ["Üliõpilane:", "On võimeline töötama eksperdina nii individuaalselt kui ka interdisiplinaarses rehabilitatsioonimeeskonnas, vastavalt rahvusvaheliselt tunnustatud pädevustele", "Oskab teostada funktsionaalset füsioterapeutilist hindamist igas vanuses kliendile, püstitada füsioteraapia eesmärke ja leida parimad sobilikud füsioterapeutilise sekkumise viisid kliendi tervisliku seisundi säilitamiseks ja/või parandamiseks", "Oskab hinnata füsioteraapia protsessi mõjutavaid faktoreid ja analüüsida vastastikuseid mõjusid, näidustusi ja vastunäidustusi", "Oskab nõustada klienti tervist edendavates küsimustes ja teda motiveerida aktiivselt osalema rehabilitatsiooni protsessis", "Lähtub oma töös kliendikesksetest põhimõtetest, edastab kliendile informatsiooni, juhised ning nõuandeid didaktilisel moel ning seostab need kliendi psühhosotsiaalse ja kultuurikontekstiga", "On oma töös järjekindel ja korrektne, lähtub objektiivse ja õiglase kohtlemise reeglitest ning eetiliste normide läbipaistvuse põhimõtetest", "Hoiab end kursis uusimate arendustöödega oma valdkonnas, on teadlik ühiskonna vajadustest ning võimalustest parandada oma üldisi ja erialaseid oskusi ja teadmisi"],
        language: .eesti,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/rakenduskorgharidus/fusioterapeut",
        spots: 20,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "1 EAP/55€",
        modules: [
            Module(
                module: "Füsioteraapia alusained",
                courses: [
                    Course(name: "Patoloogia", eapCount: 3),
                    Course(name: "Terapeutiline harjutus I", eapCount: 4),
                    Course(name: "Kehaliste harjutuste füsioloogia ja treeningõpetus", eapCount: 3),
                    Course(name: "Töötervishoid ja -ohutus", eapCount: 3),
                    Course(name: "Terapeutiline harjutus II", eapCount: 3),
                    Course(name: "Esmaabi ja famakoloogia", eapCount: 4),
                    Course(name: "Tervishoiusüsteem ja tervisedendus", eapCount: 3),
                    Course(name: "Anatoomia ja füsioloogia I (sh kinesioloogia)", eapCount: 10),
                    Course(name: "Inimese liigutuslik areng", eapCount: 2),
                    Course(name: "Biokeemia ja dietoloogia", eapCount: 4),
                    Course(name: "Anatoomia ja füsioloogia II", eapCount: 3)
                ]
            ),
            Module(
                module: "Füsioteraapia erialaained",
                courses: [
                    Course(name: "Neoroloogiliste haigete füsioteraapia (sh õppepraktika 6 EAP)", eapCount: 12),
                    Course(name: "Traumatoloogiliste ja ortopeediliste haigete füsioteraapia (sh õppepraktika 6 EAP)", eapCount: 12),
                    Course(name: "Füüsikaline ravi (sh õppepraktika 4 EAP)", eapCount: 7),
                    Course(name: "Laste füsioteraapia (sh õppepraktika 6 EAP)", eapCount: 6),
                    Course(name: "Ravimassaaž (sh õppepraktika 4 EAP)", eapCount: 7),
                    Course(name: "Füsioteraapia sünnitusabis, günekoloogias ja andraloogias", eapCount: 4),
                    Course(name: "Psühhiaatriliste haigete füsioteraapia", eapCount: 4),
                    Course(name: "Füsioterapeutiline hindamine (sh õppepraktika 6 EAP)", eapCount: 11),
                    Course(name: "Füsioterapeutiline hindamine (sh õppepraktika 6 EAP)", eapCount: 4),
                    Course(name: "Geriaatriline füsioteraapia", eapCount: 3),
                    Course(name: "Sisehaigete füsioteraapia (sh õppepraktika 6 EAP)", eapCount: 12)
                ]
            ),
            Module(
                module: "Kutsealane ja isiksuslik areng",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Kohustuslikud ained",
                        courses: [
                            Course(name: "Psühholoogia", eapCount: 5),
                            Course(name: "Pedagoogika ja eripedagoogika", eapCount: 3),
                            Course(name: "Eetika ja filosoofia tervishoius", eapCount: 2),
                            Course(name: "Uurimistöö metoodika (sh lõputöö projekt) ja biostatistika", eapCount: 5),
                            Course(name: "Ettevõtlus ja karjääri planeerimine", eapCount: 3),
                            Course(name: "Õppepraktika: Lõpupraktika", eapCount: 12),
                            Course(name: "Lõputöö/Lõpueksam", eapCount: 9),
                            Course(name: "Infotund", eapCount: 0)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Füsioteraapia põletushaava korral", eapCount: 2),
                            Course(name: "Valuravi", eapCount: 2),
                            Course(name: "Erialane vene keel", eapCount: 2),
                            Course(name: "Onkoloogilise haige füsioteraapia", eapCount: 2),
                            Course(name: "Erialane inglise keel", eapCount: 2),
                            Course(name: "Seksuaalsus ja füsioteraapia", eapCount: 2),
                            Course(name: "Jalahooldus", eapCount: 2),
                            Course(name: "Meemassaaž", eapCount: 2)
                        ]
                    )
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Tervisekaitse Spetsialist",
        level: .applied,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Erialakatse", percentage: 40),
            Requirements(term: "Gümnaasiumi füüsika, keemia ja bioloogia keskmine hinne", percentage: 30),
            Requirements(term: "Gümnaasiumi matemaatika lõpuhinne", percentage: 30)],
        description: ["Tervisekaitse spetsialist tegeleb tervisliku elukeskkonna ja igapäevase heaolu tagamisega ning kontrollib tervisekaitsenõuetest kinnipidamist. Tervisekaitse spetsialistid õpivad mõõtma paljusid (sise)keskkonna näitajaid, näiteks süsihappegaasi sisaldus, õhu liikumiskiirus, suhteline õhuniiskus, mikroobide arvukus õhus jne ning hindama nende mõju inimese tervisele.", "Õppekava maht Tartu Tervishoiu Kõrgkoolis on 180 EAP-d, õppeaeg kolm aastat. Õpingutest pool on auditoorne töö, sellest neljandiku moodustavad praktikumid. Samuti on ette nähtud õppepraktika töökohtades.", "Õppekava sisaldab järgmisi mooduleid: kutsealane ja isiksuslik areng, inimeseõpetus, patoloogia ja haigusõpetus, järelevalve menetluse õiguslik regulatsioon, toiduohutus, laste- ja hooldekandeasutused, teenuste ja toodete terviseohutus, töötervishoid, rahvatervis, nakkushaigused ja epidemioloogia, väliskeskkonna saastumine, psühhosotsiaalsed ja füsioloogilised ohutegurid, füüsikalised ohutegurid, bioloogilised ohutegurid, keemilised ohutegurid, vesi.", "Tartu Tervishoiu Kõrgkoolis tuleb tervisekaitse spetsialisti diplomi saamiseks kaitsta uurimusliku sisu või praktilise suunitlusega lõputöö."],
        outcomes: ["Õppekava lõpetanu:","Mõistab inimest bio-psühho-sotsiaalse tervikuna ja keskkonna osana ning tuginedes kehtivatele eetikapõhimõtetele lähtub sellest oma kutsetegevuses.", "Mõistab tervisekaitsealase töö olulisust tervisekahjustuste ennetamisel ja vältimisel ning rahva tervise edendamisel", "Oskab teostada terviseohtude riskianalüüsi ja valdab riskijuhtimise meetmeid", "Tunneb kehtivaid õigusakte, on võimeline teostama järelevalvet aidates kaasa turvalise keskkonna tagamisele", "Osaleb interdistsiplinaarse meeskonna töös", "Oskab sõnastada erialaga seotud probleeme ning analüüsida ja hinnata erinevaid lahendusi", "Mõistab kutseala spetsiifikat, sealhulgas informatsiooni leviku piiramise vajalikkust ja järgib oma tegevuses seadusega sätestatud konfidentsiaalsusnõudeid", "Omab valmisolekut elukestvaks õppimiseks ja arenguks ning osalemiseks kutseala arendamises.","Tervisekaitse spetsialistil on võimalus tööle asuda mitmetes valdkondades, erinevates ettevõtetes ja asutustes. Tervisekaitse spetsialistid võivad töötada näiteks töökeskkonna spetsialistidena, terviseametis ja tööinspektsioonis nii inspektori kui spetsialistina, aga ka sotsiaalministeeriumis. Mitmed lõpetajad tegutsevad edukalt eraettevõtluses. Tööle saamise võimalused on head, kui inimene ise on aktiivne. Samas on Tartu Tervishoiu Kõrgkoolis omandatud tervisekaitse spetsialisti haridus väga laiapõhjaline ning võimaldab magistrantuuriõpinguid mitmes suunas – näiteks Tartu Ülikooli rahvatervise, Eesti Maaülikooli ergonoomika või Tallinna Tehnikaülikooli tervishoiutehnoloogia magistriõppes."],
        language: .eesti,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/rakenduskorgharidus/tervisekaitse-spetsialist",
        spots: 14,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Inimeseõpetus",
                courses: [
                    Course(name: "Ealised iseärasused", eapCount: 1.5),
                    Course(name: "Biokeemia", eapCount: 1.5),
                    Course(name: "Anatoomia-füsioloogia I", eapCount: 3),
                    Course(name: "Anatoomia-füsioloogia II", eapCount: 2),
                    Course(name: "Rakubioloogia, geneetika", eapCount: 2)
                ]
            ),
            Module(
                module: "Patoloogia ja haigusõpetus",
                courses: [
                    Course(name: "Lastehaigused", eapCount: 1),
                    Course(name: "Esmaabi", eapCount: 1.5),
                    Course(name: "Üldpatoloogia", eapCount: 2),
                    Course(name: "Sisehaigused", eapCount: 2.5),
                    Course(name: "Kirurgilised haigused", eapCount: 1)
                ]
            ),
            Module(
                module: "Järelevalve menetluse õiguslik regulatsioon",
                courses: [
                    Course(name: "Õiguskorra alused", eapCount: 2),
                    Course(name: "Haldusõigus", eapCount: 4),
                    Course(name: "Karistusõigus", eapCount: 1)
                ]
            ),
            Module(
                module: "Toiduohutus",
                courses: [
                    Course(name: "Toitumise alused", eapCount: 3),
                    Course(name: "Toiduhügieen", eapCount: 3),
                    Course(name: "Toiduainete tehnoloogia", eapCount: 3),
                    Course(name: "Toidumikrobioloogia", eapCount: 2),
                    Course(name: "Õppepraktika: Toiduhohutus", eapCount: 4.5),
                ]
            ),
            Module(
                module: "Laste- ja hoolekandeasutused",
                courses: [
                    Course(name: "Tervisekaitse laste- ja hoolekandeasutustes", eapCount: 5),
                    Course(name: "Õppepraktika: Laste ja -hoolekandeasutused", eapCount: 3)
                ]
            ),
            Module(
                module: "Teenuste ja toodete terviseohutus",
                courses: [
                    Course(name: "Tarbekaupade ja teenuste ohutus", eapCount: 4),
                    Course(name: "Meditsiiniseadmed", eapCount: 2),
                    Course(name: "Õppepraktika: Teenuste ja toodete terviseohutus", eapCount: 3)
                ]
            ),
            Module(
                module: "Töötervishoid",
                courses: [
                    Course(name: "Terapeutiline harjutus", eapCount: 2),
                    Course(name: "Ehitise projektid ja planeeringud", eapCount: 2),
                    Course(name: "Õppepraktika: Töötervishoid", eapCount: 4.5),
                    Course(name: "Riskianalüüs", eapCount: 3),
                    Course(name: "Kutsehaiguste ja tööõnnetuste uurimine", eapCount: 1.5)
                ]
            ),
            Module(
                module: "Rahvatervis",
                courses: [
                    Course(name: "Rahvatervis ja tervisedendus", eapCount: 3),
                    Course(name: "Õppepraktika: Tervisedendus", eapCount: 3)
                ]
            ),
            Module(
                module: "Valikained",
                courses: [
                    Course(name: "Alkohol ja tervis", eapCount: 0.3),
                    Course(name: "Podiaatria", eapCount: 1),
                    Course(name: "Teise kooli valikaine VII", eapCount: 0.5),
                    Course(name: "Sissejuhatus aroomteraapiasse", eapCount: 1),
                    Course(name: "Teise kooli valikaine VIII", eapCount: 0.3),
                    Course(name: "Inglise keel/kesktase/PRÕM", eapCount: 2),
                    Course(name: "Siseõhukvaliteet koolides", eapCount: 0.3),
                    Course(name: "Laboritöö alused", eapCount: 1),
                    Course(name: "Teise kooli valikaine III", eapCount: 1),
                    Course(name: "Uurimistulemuste avalikustamine", eapCount: 1),
                    Course(name: "Projektipõhine praktika", eapCount: 1),
                    Course(name: "Keemia alused", eapCount: 2),
                    Course(name: "Üliõpilaskonverentsi korraldamine", eapCount: 1),
                    Course(name: "Täiendav vene keel/PRÕM", eapCount: 2),
                    Course(name: "Keelteklubi/PRÕM", eapCount: 3),
                    Course(name: "Teise kooli valikaine VI", eapCount: 0.5),
                    Course(name: "Teise kooli valikaine IV", eapCount: 1),
                    Course(name: "Teise kooli valikaine V", eapCount: 1),
                    Course(name: "Teaduskonverents", eapCount: 1),
                    Course(name: "Tervisedendus praktikas", eapCount: 2),
                    Course(name: "Erinevate töökeskkondade ohutegurid", eapCount: 1.5),
                    Course(name: "Troopilised parasiidid", eapCount: 1),
                    Course(name: "Toidu laboratoorsed uuringud", eapCount: 1.5),
                    Course(name: "Akadeemiline kirjutamine algajatele", eapCount: 1),
                    Course(name: "Akadeemiline kirjutamine edasijõudnutele", eapCount: 1),
                    Course(name: "Ettevõtluse alused", eapCount: 2),
                    Course(name: "Õpiränne/PRÕM", eapCount: 1),
                    Course(name: "Klassikaline seljamassaaž", eapCount: 1),
                    Course(name: "Vabaaine II", eapCount: 1),
                    Course(name: "Imetamisõpetus", eapCount: 3),
                    Course(name: "Toiduohutus jaemüügis, teeninduses ja kodus", eapCount: 0.3),
                    Course(name: "Toiduohutus", eapCount: 1.5),
                    Course(name: "Tubakas ja tervis", eapCount: 0.3),
                    Course(name: "Toiduohutus", eapCount: 0.5),
                    Course(name: "Teise kooli valikaine II", eapCount: 1),
                    Course(name: "Disinfection processes in microbiology", eapCount: 0.3),
                    Course(name: "Keelekümblus/PRÕM", eapCount: 1)
                ]
            ),
            Module(
                module: "Kutsealane ja isiklik areng",
                courses: [
                    Course(name: "Eetika ja filosoofia tervishoius", eapCount: 2),
                    Course(name: "Sissejuhatus erialasse ( sh keskkonnatervise areng)", eapCount: 1.5),
                    Course(name: "Suhtlemise- ja üldpsühholoogia", eapCount: 2.5),
                    Course(name: "Kutse eetika", eapCount: 2),
                    Course(name: "Uurimistöö metoodika", eapCount: 4.5),
                    Course(name: "Erialane vene keel", eapCount: 2),
                    Course(name: "Erialane inglise keel", eapCount: 2),
                    Course(name: "Ettevõtlus ja karjääriplaneerimine", eapCount: 2),
                    Course(name: "Infootsingusüsteemid", eapCount: 0.5),
                    Course(name: "Statistika", eapCount: 1.5),
                    Course(name: "Õppepraktika spetsialiseerumine", eapCount: 6),
                    Course(name: "Lõputöö", eapCount: 9)
                ]
            ),
            Module(
                module: "Nakkushaigused ja epidemioloogia",
                courses: [
                    Course(name: "Nakkushaigused ja epidemioloogia (sh parasitoloogia)", eapCount: 7.5),
                    Course(name: "Õppepraktika: nakkushaigused ja epidemioloogia", eapCount: 4.5)
                ]
            ),
            Module(
                module: "Vesi",
                courses: [
                    Course(name: "Vee ohutus ja suplusvee kvaliteet", eapCount: 3),
                    Course(name: "Joogivee kvaliteet ja selle tagamine", eapCount: 4),
                    Course(name: "Õppepraktika: Vesi", eapCount: 4.5)
                ]
            ),
            Module(
                module: "Väliskeskkonna saastumine",
                courses: [
                    Course(name: "Jäätmemajandus", eapCount: 2),
                    Course(name: "Välisõhu ja pinnase saastumine", eapCount: 3),
                    Course(name: "Keskkonnakaitse", eapCount: 2)
                ]
            ),
            Module(
                module: "Psühhosotsiaalsed ja füsioloogilised ohutegurid",
                courses: [
                    Course(name: "Füsioloogilised ohutegurid ja ergonoomika", eapCount: 2),
                    Course(name: "Psühhosotsiaalsed ohutegurid", eapCount: 2)
                ]
            ),
            Module(
                module: "Bioloogilised ohutegurid",
                courses: [
                    Course(name: "Mikrobioloogia ja immunoloogia alused", eapCount: 3.5),
                    Course(name: "Kliiniline mikrobioloogia ja nakkushaiguste diagnostika", eapCount: 4),
                    Course(name: "Õppepraktika: Mirkobioloogia ja immunoloogia", eapCount: 3)
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Radioloogiatehnik",
        level: .applied,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Erialakatse", percentage: 40),
            Requirements(term: "Gümnaasiumi füüsika, keemia ja bioloogia keskmine hinne", percentage: 30),
            Requirements(term: "Gümnaasiumi matemaatika lõpuhinne", percentage: 30)],
        description: ["Radioloogiatehnik teostab radiodiagnostilisi ja -terapeutilisi protseduure, et edendada ja säilitada inimeste tervist ning ennetada ja diagnoosida haigusi.", "Õppekava maht Tartu Tervishoiu Kõrgkoolis on 210 EAP-d, õppeajaks kolm ja pool aastat. Õppekavas on kaheksa moodulit, mille läbimine on kohustuslik: inimkäsitlus, patsiendi hooldus, haigusõpetus, kiirgusbioloogia ja -kaitse, radiodiagnostilised meetodid, radiodiagnostilised meetodid organsüsteemide patoloogia diagnoosimisel, radioteraapia, kutsealane ja isiksuslik areng. Õpe toimub erinevates vormides − loengud, seminarid, e-õppe kursused, praktikumid jne.", "Eelkliinilisteks praktikumideks on olemas kaasaegse kõrgekvaliteetse radioloogilise aparatuuriga (täisdigitaalne röntgeniaparaat, mammograaf, ultraheliaparaat, ortopantomograaf jne) sisustatud õpperuumid. Erinevates haiglates läbiviidav individuaalne õppepraktika moodustab õppekava mahust ligi kolmandiku.", "Praktikakohad tagab üliõpilasele kõrgkool, lähtutakse põhimõttest, et samas valdkonnas korduvad õppepraktikad toimuvad võimalusel erinevates praktikabaasides. Praktikat on võimalik teha ka Erasmuse programmi kaudu mõnes Euroopa väliskõrgkooli praktikakeskuses, näiteks Maltal, Portugalis, Soomes, Saksamaal jm).", "Radioloogiatehniku õppe lõpetamise tingimuseks on edukas lõputöö kaitsmine. Seni puudub Eestis kutsealase magistriõppe võimalus, seda on võimalik omandada mitmetes Euroopa riikides, kus on avatud diagnostilise radiograafia magistriõppekava, näiteks Soomes, Ühendkuningriigis ja Hollandis. Eestis saab õpinguid jätkata meditsiinifüüsika, rahvatervise, majanduse jms valdkondades. Pooltel Tartu Tervishoiu Kõrgkoolis erialaaineid õpetavatest õppejõududest on  magistrikraad."],
        outcomes: ["Õppekava edukal läbimisel üliõpilane:", "Mõistab radiograafia, kiirguskaitse, holistliku inimkäsituse, patsiendi hoolduse, haigusõpetuse, patsiendiõpetuse põhimõisteid, teoreetilisi põhimõtteid ning lähtub neist oma kutsealases tegevuses", "Oskab kasutada erinevaid radiograafilisi uurimistehnikaid erinevate organsüsteemide patoloogia diagnoosimisel järgides kiirguskaitse ja ohutuse ning kvaliteedi tagamise nõudeid", "Omab põhiteadmisi radioteraapia meetodite kohta ja oskab neid rakendada kiirguskaitse nõudeid järgides", "Mõistab, et radiodiagnostiliste uuringute ja radioteraapia eesmärk on kvaliteetsete ja tõeste uuringutulemuste ning raviga kaasa aidata inimese tervise ja elukvaliteedi parendamisele", "Määratleb ennast radioloogiatehnikuna, juhindudes oma igapäevatöös patsiendikesksuse, kutseetika, meeskonnatöö ja tõenduspõhisuse põhimõtetest", "Oskab määratleda ja põhjendada oma arengu ja õppimise vajadusi ja võimalusi","Tartu Tervishoiu Kõrgkoolis radioloogiatehniku õppe lõpetanutest 90-95% on asunud erialasele tööle.  Eriala on perspektiivikas ja leiab üha suuremat rakendust nii haiguste diagnoosimisel kui ka ravis. Enamik radioloogiatehnikuid töötab haiglate radioloogiateenistustes või −osakondades. Tööleasumise võimalusi on ka väljaspool tervishoiuasutusi, näiteks veterinaarmeditsiinis, ülikoolide teaduslaborites, tööstusliku kompuutertomograafia vladkonnas ja mujal."],
        language: .eesti,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/rakenduskorgharidus/radioloogiatehni",
        spots: 20,
        duration: 3.5,
        studyLocation:  ["Tartu"],
        eap: 210,
        cost: "0€",
        modules: [
            Module(
                module: "Lõputöö",
                courses: [
                    Course(name: "Kiiritusravi", eapCount: 3),
                    Course(name: "Õppepraktika kiiritusravis", eapCount: 3),
                    Course(name: "Kiirguskaitse kiiritusravis", eapCount: 1),
                    Course(name: "Kiiritusravi füüsika ja aparatuur", eapCount: 1),
                ]
            ),
            Module(
                module: "Radiodiagnostilised meetodid organsüsteemide patoloogia diagnoosimisel",
                courses: [
                    Course(name: "Õppepraktika radiodiagnostilised meetodid organsüsteemide patoloogia diagnoosimisel: kompuutertomograafias", eapCount: 6),
                    Course(name: "Õppepraktika radiodiagnostilised meetodid lapseea organsüsteemide patoloogia diagnoosimisel: konventsionaalses radiograafias ja ultrahelis", eapCount: 3),
                    Course(name: "Õppepraktika radiodiagnostilised meetodid organsüsteemide patoloogia diagnoosimisel: konventsionaalses radiograafias", eapCount: 3),
                    Course(name: "Närvisüsteemi patoloogia radiodiagnostika", eapCount: 3.5),
                    Course(name: "Lapseea patoloogia radiodiagnostika", eapCount: 2.5),
                    Course(name: "Erakorraliste, ägedate seisundite radiodiagnostika", eapCount: 3),
                    Course(name: "Urogenitaalsüsteemi radiodiagnostika", eapCount: 2),
                    Course(name: "Rindkere elundite patoloogia radiodiagnostika", eapCount: 2),
                    Course(name: "Kõhukoopa elundite patoloogia radiodiagnostika", eapCount: 2),
                    Course(name: "Rinnanäärme patoloogia radiodiagnostika", eapCount: 1.5),
                    Course(name: "Luulihaskonna patoloogia radiodiagnostika", eapCount: 3),
                    Course(name: "Õppepraktika radiodiagnostilised meetodid organsüsteemide patoloogia diagnoosimisel: magnetresonantstomograafias", eapCount: 6),
                    Course(name: "Õppepraktika radiodiagnostilised meetodid organsüsteemide erakorralise patoloogia diagnoosimisel: kompuutertomograafias, konventsionaalses radiograafias", eapCount: 3)
                ]
            ),
            Module(
                module: "Patsiendi hooldus ja ohutus radiograafias",
                courses: [
                    Course(name: "Patsiendi hooldus ja ohutus I: füüsiline, psühholoogiline, juriidiline kaitse", eapCount: 4.5),
                    Course(name: "Patsiendi hooldus ja ohutus II: a- ja antiseptika, infektsiooni ennetamine ja leviku tõkestamine", eapCount: 2),
                    Course(name: "Õppepraktika patsiendi hoolduses ja ohutuses intensiivravi osakonnas/palatis siivravi", eapCount: 3),
                    Course(name: "Patsiendi hooldus ja ohutus III: invasiivsed protseduurid", eapCount: 2.5)
                ]
            ),
            Module(
                module: "Kutsealane- ja isiksuslik areng",
                courses: [
                    Course(name: "Lõpupraktika", eapCount: 6),
                    Course(name: "Uurimistöö alused I: uurimisartikli kriitiline hindamine", eapCount: 3),
                    Course(name: "Kutsealane areng IV: arendusprojekt", eapCount: 3),
                    Course(name: "Uurimistöö alused II: kvalitatiivne ja kvantitatiivne uurimisviis, statistiline analüüs", eapCount: 5),
                    Course(name: "Enesejuhtimine", eapCount: 4),
                    Course(name: "Kutsealane areng III: kutsealane eetika, väärtused, patsiendi õigused", eapCount: 1.5),
                    Course(name: "Kutsealane areng V: kvaliteet, organisatsioonikultuur, juhtimine", eapCount: 5),
                    Course(name: "Suhtlemine ja eneseväljendamine", eapCount: 7),
                    Course(name: "Uurimistöö alused III: uurimisprotsess ja selle kriitiline hindamine", eapCount: 1),
                    Course(name: "Kutsealane areng I: radioloogiatehniku roll, kiirguskaitse, tõenduspõhisus, patsiendi ohutus, rahvusvahelistumine", eapCount: 3),
                    Course(name: "Kutsealane areng II: meeskonnatöö, interprofessionaalsus", eapCount: 1.5)
                ]
            ),
            Module(
                module: "Kiirgusbioloogia, -füüsika, -aparatuur, -kaitse",
                courses: [
                    Course(name: "Piltdiagnostika füüsika ja aparatuur I", eapCount: 2),
                    Course(name: "Kiirgusbioloogia", eapCount: 2),
                    Course(name: "Kiirguskaitse piltdiagnostikas I", eapCount: 2),
                    Course(name: "Piltdiagnostika füüsika ja aparatuur II", eapCount: 2),
                    Course(name: "Kiirguskaitse piltdiagnostikas II", eapCount: 2)
                ]
            ),
            Module(
                module: "Inimkäsitus",
                courses: [
                    Course(name: "Anatoomia-füsioloogia ladinakeelse terminoloogiaga", eapCount: 6.5),
                    Course(name: "Inimkäsituse filosoofilis-sotsioloogilised alused", eapCount: 3.5)
                ]
            ),
            Module(
                module: "Valikained",
                courses: [
                    Course(name: "Õppimine digiajastul I", eapCount: 1),
                    Course(name: "Vene keel I", eapCount: 1.5),
                    Course(name: "Embrüoloogia", eapCount: 1),
                    Course(name: "Patsiendi intervjueerimise tehnika", eapCount: 1.5),
                    Course(name: "Rahvatervis", eapCount: 0.5),
                    Course(name: "Nukleaarmeditsiin, edasijõudnutele", eapCount: 0.5),
                    Course(name: "Projektipõhine kutseala arendamine", eapCount: 1),
                    Course(name: "Õppekava arendus", eapCount: 1),
                    Course(name: "Teise kooli valikaine X", eapCount: 3),
                    Course(name: "Teise kooli valikaine VIII", eapCount: 0.3),
                    Course(name: "Teise kooli valikaine IX", eapCount: 2),
                    Course(name: "Patsiendi intervjueerimise tehnika", eapCount: 1),
                    Course(name: "Teise kooli valikaine V", eapCount: 1),
                    Course(name: "Eesti keel I", eapCount: 1.5),
                    Course(name: "Teise kooli valikaine I", eapCount: 1),
                    Course(name: "Ladina keel", eapCount: 1.5),
                    Course(name: "Radioloogiatehnikute Ühing - kellele?milleks?", eapCount: 0.5),
                    Course(name: "Kriisipsühholoogia", eapCount: 1),
                    Course(name: "Patsiendi seisundi hindamine", eapCount: 0.5),
                    Course(name: "Teise kooli valikaine VII", eapCount: 0.5),
                    Course(name: "Terviseergonoomika", eapCount: 1.5),
                    Course(name: "Sissejuhatus epidemioloogiasse", eapCount: 0.5),
                    Course(name: "Podiaatria", eapCount: 1),
                    Course(name: "Hammaste röngtenülesvõtete kvaliteedi tagamine", eapCount: 3),
                    Course(name: "Vene keel II", eapCount: 1.5),
                    Course(name: "Teise kooli valikaine II", eapCount: 1),
                    Course(name: "Eesti keel/kesktase/PRÕM", eapCount: 2),
                    Course(name: "Patsiendi surm tervishoiuasutuses", eapCount: 1),
                    Course(name: "Projektipõhine praktika", eapCount: 1),
                    Course(name: "Vene keel", eapCount: 1.5),
                    Course(name: "Demograafia, rahvatervis ja rahvastikupoliitik", eapCount: 1),
                    Course(name: "Magnetresonantstomograafia füüsikalised alused", eapCount: 0.5),
                    Course(name: "Kompuutertomograafia edasijõudnutele", eapCount: 0.5),
                    Course(name: "Onkoloogilised haigused", eapCount: 0.5),
                    Course(name: "Vabaaine I", eapCount: 1),
                    Course(name: "Keelteklubi/PRÕM", eapCount: 3),
                    Course(name: "Projektipõhine praktika", eapCount: 2),
                    Course(name: "Arengupsühholoogia ja lastehaigused", eapCount: 1),
                    Course(name: "Teise kooli valikaine VI", eapCount: 0.5),
                    Course(name: "Praktikandi juhendamine", eapCount: 2),
                    Course(name: "Kutsealane enesereflektsioon", eapCount: 1),
                    Course(name: "Täiendav eesti keel/PRÕM", eapCount: 2),
                    Course(name: "Lapspatsiendi ettevalmistamine protseduurideks", eapCount: 0.5),
                    Course(name: "Arengupsühholoogia, lapse ettevalmistamine protseduurideks lasteradioloogias", eapCount: 1.5),
                    Course(name: "Patsiendiõpetus", eapCount: 1.5),
                    Course(name: "Meditsiiniline eesti keel", eapCount: 1.5),
                    Course(name: "Teaduskonverents", eapCount: 1),
                    Course(name: "Vene keel/algtase/PRÕM", eapCount: 2),
                    Course(name: "Eesti Keel", eapCount: 1.5),
                    Course(name: "Meditsiiniline vene keel", eapCount: 1.5),
                    Course(name: "Teise kooli valikaine III", eapCount: 1),
                    Course(name: "Sissejuhatav kursus e-õppes", eapCount: 1),
                    Course(name: "Projektipõhine praktika", eapCount: 3),
                    Course(name: "Sissejuhatus kohtumeditsiini radiograafiasse", eapCount: 2),
                    Course(name: "Radiograafia kui rahvusvaheline kutseala", eapCount: 1),
                    Course(name: "Teise kooli valikaine IV", eapCount: 1),
                    Course(name: "Kutsekvalifikatsioonid radiograafias", eapCount: 0.5),
                    Course(name: "Kriisipsüholoogia", eapCount: 1.5),
                    Course(name: "Teise kooli valikaine", eapCount: 5),
                    Course(name: "Üliõpilasnõustamine", eapCount: 3),
                    Course(name: "Eesti keel", eapCount: 30)
                ]
            ),
            Module(
                module: "Lõputöö",
                courses: [Course(name: "Lõputöö", eapCount: 9)]
            )
        ]
    ),
    majorsMinors(
        name: "Bioanalüütik",
        level: .applied,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Erialakatse", percentage: 40),
            Requirements(term: "Gümnaasiumi füüsika, keemia ja bioloogia keskmine hinne", percentage: 30),
            Requirements(term: "Gümnaasiumi matemaatika lõpuhinne", percentage: 30)],
        description: ["Bioanalüütik töötab laborites, kus uuritakse organismi seisundit ning organite, kudede, rakkude, molekulide ehitust ja funktsiooni, mikrobioloogilist kooslust ja inimorganismi mõjutavaid tegureid. Bioanalüütiku ülesandeks on uurida koeproove, kehavedelikke, teha kindlaks organismi tervislik seisund ja monitoorida patsiendi ravi kulgu. Töös tuleb muuhulgas kokku puutuda selliste materjalidega nagu veri, uriin, röga, mäda, koed, liikvor jne. Samas ei ole töö iseloom enam väga iseloomulik tavaarusaamale laboritööst – vaikne nokitsemine. Pigem on bioanalüütik meditsiiniasutuse meeskonnas lisaks usaldusväärsele analüüside teostajale aktiivselt inimestega suhtlev ja nõustav töötaja.", "Õppe kestus bioanalüütiku õppekaval on kolm ja pool aastat, õppekava kogumaht on 210 EAP-d. Kõrgkoolil on head sidemed rahvusvahelise assotsiatsiooniga EPBS (European Association for Professions in Biomedical Science), tänu millele on bioanalüütiku õpe kõrgkoolis kooskõlas bioanalüütiku eriala rahvusvaheliste arengusuunadega.", "Õppekava koosneb 13 moodulist: kutsealane ja isiksuslik areng, anatoomia-füsioloogia, laboritöö alused ja keemia, labori töökeskkond, haigusõpetus, mikrobioloogia, immunoloogia, patoloogia, kliiniline keemia, hematoloogia, farmakoloogia ja toksikoloogia, rahvatervis; rakubioloogia, molekulaardiagnostika alused ja geneetika.", "Stuudium lõpeb lõputööga, mis üldjuhul on empiiriline. Üliõpilastel on võimalik lõputöö teostada mõne rakendusuuringu või meditsiinilaborites tehtava suurema uuringu raames."],
        outcomes: ["Mõistab inimest kui tervikut ja oma kutsetegevuses lähtub sellest, bioanalüütiku kutse-eetikast ning tunnustatud eetikapõhimõtetest.", "Mõistab, et biomeditsiiniliste laboriuuringute eesmärk on kvaliteetse ja tõese uuringutulemuse kaudu kaasa aidata inimese tervise ning elukvaliteedi paremaks muutmisele.", "Mõistab laboriuuringu protsessi tervishoiu süsteemi integreerunud osana.", "Valdab biomeditsiiniliste laboriuuringute tehnoloogiat, analüüsib ja hindab kriitiliselt uuringuprotsessi, andes selle kaudu oma panuse tõese uuringutulemuse saamisse.", "Suudab rakendada meeskonnatöös analüüsi ja otsustusvõimet vastutades pädevuse piires oma tegevuse eest.", "Omab valmisolekut elukestvaks õppimiseks ja arenguks ning osalemiseks kutseala arendamises.","Erialasele tööle suundumise võimalused on väga head. Juba teise kursuse üliõpilased on saanud tööd laborites  puhkuse ajal asendajatena. Kõrgkooli lõpetajad on väga edukad bioanalüütikutena nii siin kui ka mujal Euroopas. Paljud neist jätkavad õpinguid nii magistrantuuris kui ka pärast seda doktorantuuris."],
        language: .eesti,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/rakenduskorgharidus/bioanaluutik",
        spots: 26,
        duration: 3.5,
        studyLocation:  ["Tallinn"],
        eap: 210,
        cost: "0€",
        modules: [
            Module(
                module: "Kutsealane ja isiksuslik areng",
                courses: [
                    Course(name: "Filosoofia ja eetika", eapCount: 2),
                    Course(name: "Konfliktipsühholoogia", eapCount: 1),
                    Course(name: "Uurimistöö metoodika I", eapCount: 1.5),
                    Course(name: "Uurimistöö metoodika II", eapCount: 4),
                    Course(name: "Sotsiaalpsühholoogia", eapCount: 1),
                    Course(name: "Bioinformaatika", eapCount: 2),
                    Course(name: "Juhtimisõpetus", eapCount: 1),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 1.5),
                    Course(name: "Projektijuhtimine, majandusalused", eapCount: 1),
                    Course(name: "Akadeemiline lugemine ja kirjutamine", eapCount: 1.5),
                    Course(name: "Ladina keel", eapCount: 1),
                    Course(name: "Kvaliteedi juhtimine laboris", eapCount: 2),
                    Course(name: "Kutsealane inglise keel", eapCount: 3.5),
                    Course(name: "Infotund", eapCount: 0),
                    Course(name: "Uurimistöö metoodika III", eapCount: 3),
                    Course(name: "Õppepraktika - spetsialiseerumine, juhtimine", eapCount: 4.5)
                ]
            ),
            Module(
                module: "Anatoomia-füsioloogia",
                courses: [
                    Course(name: "Anatoomia-füsioloogia", eapCount: 5)
                ]
            ),
            Module(
                module: "Mikrobioloogia",
                courses: [
                    Course(name: "Õppepraktika – Üldmikrobioloogia", eapCount: 3),
                    Course(name: "Parasitoloogia", eapCount: 4),
                    Course(name: "Õppepraktika III - erimikrobioloogia II", eapCount: 3),
                    Course(name: "Üldmikrobioloogia", eapCount: 4),
                    Course(name: "Erimikrobioloogia I", eapCount: 5),
                    Course(name: "Õppepraktika: erimikrobioloogia I", eapCount: 4.5),
                    Course(name: "Erimikrobioloogia II", eapCount: 5.5),
                    Course(name: "Antibiootikumresistentsus I", eapCount: 1)
                ]
            ),
            Module(
                module: "Labori töökeskkond",
                courses: [
                    Course(name: "Ergonoomika", eapCount: 1),
                    Course(name: "Esmaabi", eapCount: 1),
                    Course(name: "Töökeskkond", eapCount: 2),
                    Course(name: "Laboritöö alused", eapCount: 7.5)
                ]
            ),
            Module(
                module: "Farmakoloogia, toksikoloogia",
                courses: [
                    Course(name: "Toksikoloogia", eapCount: 1),
                    Course(name: "Toksikoloogia", eapCount: 1),
                    Course(name: "Farmakoloogia", eapCount: 3)
                ]
            ),
            Module(
                module: "Rahvatervis",
                courses: [
                    Course(name: "Terviseedendus", eapCount: 2),
                    Course(name: "Sotsioloogia ja rahvatervis", eapCount: 2)
                ]
            ),
            Module(
                module: "Valikained",
                courses: [
                    Course(name: "Vabaaine I", eapCount: 1),
                    Course(name: "Teise kooli valikaine V", eapCount: 1),
                    Course(name: "Vabaaine II", eapCount: 1),
                    Course(name: "Seljamassaaž", eapCount: 2),
                    Course(name: "Immuniseerimine", eapCount: 1),
                    Course(name: "Vabaaine III", eapCount: 0.5),
                    Course(name: "Saksa keel edasijõudnutele", eapCount: 1),
                    Course(name: "Vabaaine V", eapCount: 0.3),
                    Course(name: "Surm ja lein", eapCount: 1),
                    Course(name: "Mõõtmistäpsus algajatele", eapCount: 1.5),
                    Course(name: "Teise kooli valikaine IV", eapCount: 1),
                    Course(name: "Teaduskonverents", eapCount: 1),
                    Course(name: "Projektipõhine praktika", eapCount: 1),
                    Course(name: "Biokeemia alused", eapCount: 2),
                    Course(name: "Meditsiiniline vene keel", eapCount: 1.5),
                    Course(name: "Teise kooli valikaine II", eapCount: 1),
                    Course(name: "Sissejuhatus soouuringutesse", eapCount: 2),
                    Course(name: "Sissejuhatus muusikateraapiasse", eapCount: 1),
                    Course(name: "Teise kooli valikaine", eapCount: 5),
                    Course(name: "Troopilised parasiidid", eapCount: 1),
                    Course(name: "Mõõtmistäpsus edasijõudnutele", eapCount: 1.5),
                    Course(name: "Labori infosüsteemid", eapCount: 1.5),
                    Course(name: "Sissejuhatus bioenergeetikasse", eapCount: 1.5),
                    Course(name: "Aroomiteraapia alused", eapCount: 1.5),
                    Course(name: "Teise kooli valikaine X", eapCount: 3),
                    Course(name: "Projektipõhine praktika", eapCount: 0.5),
                    Course(name: "Teise kooli valikaine VII", eapCount: 0.5),
                    Course(name: "Sissejuhatus antibiootikumiravi põhimõtetesse", eapCount: 0.5),
                    Course(name: "Teise kooli valikaine IX", eapCount: 2),
                    Course(name: "Teise kooli valikaine III", eapCount: 1),
                    Course(name: "Teise kooli valikaine I", eapCount: 1),
                    Course(name: "Teise kooli valikaine VI", eapCount: 0.5),
                    Course(name: "Toidu laboratoorsed uuringud", eapCount: 1.5),
                    Course(name: "Epigeneetika", eapCount: 2),
                    Course(name: "Sissejuhatus pro- ja prebiootikumidesse", eapCount: 1),
                    Course(name: "Vabaaine IV", eapCount: 0.5),
                    Course(name: "Esitlustehnika ja avalik esinemine", eapCount: 2),
                    Course(name: "Õppimine digiajastul I", eapCount: 1),
                    Course(name: "Teise kooli valikaine VIII", eapCount: 0.3)
                ]
            ),
            Module(
                module: "Laboritöö alused ja keemia",
                courses: [
                    Course(name: "Orgaaniline keemia", eapCount: 2),
                    Course(name: "Õppepraktika: laboritöö alused", eapCount: 0.5)
                ]
            ),
            Module(
                module: "Immunoloogia",
                courses: [
                    Course(name: "Üldimmunoloogia", eapCount: 3),
                    Course(name: "Eriimmunoloogia", eapCount: 4),
                    Course(name: "Õppepraktika - immunoloogia", eapCount: 1.5)
                ]
            ),
            Module(
                module: "Patoloogia",
                courses: [
                    Course(name: "Histoloogia", eapCount: 3),
                    Course(name: "Patoloogia labori tehnoloogia - histopatoloogia", eapCount: 4.5),
                    Course(name: "Patoloogia labori tehnoloogia - tsütopatoloogia", eapCount: 1.5),
                    Course(name: "Patoloogia", eapCount: 1.5),
                    Course(name: "Patoloogia labori tehnoloogia", eapCount: 6),
                    Course(name: "Tsütoloogia", eapCount: 3)
                ]
            ),
            Module(
                module: "Kliiniline keemia",
                courses: [
                    Course(name: "Biokeemia", eapCount: 2),
                    Course(name: "Õppepraktika - kliiniline keemia eriosa II", eapCount: 3),
                    Course(name: "Kliiniline keemia eriosa I", eapCount: 2),
                    Course(name: "Õppepraktika: kliiniline keemia eriosa I", eapCount: 4.5),
                    Course(name: "Kliiniline keemia üldosa I", eapCount: 2),
                    Course(name: "Kliiniline keemia üldosa II", eapCount: 2),
                ]
            ),
            Module(
                module: "Hematoloogia",
                courses: [
                    Course(name: "Hematoloogia üldosa I", eapCount: 2),
                    Course(name: "Hematoloogia üldosa II", eapCount: 2),
                    Course(name: "Õenduse alused, veenivere võtmine", eapCount: 1),
                    Course(name: "Laboridiagnostika patsiendikeskne käsitlemine", eapCount: 1.5),
                    Course(name: "Õppepraktika - hematoloogia eriosa I", eapCount: 3),
                    Course(name: "Õppepraktika - hematoloogia eriosa II", eapCount: 3),
                    Course(name: "Immuunhematoloogia", eapCount: 1),
                    Course(name: "Hematoloogia eriosa I", eapCount: 2),
                    Course(name: "Hematoloogia eriosa II", eapCount: 4),
                    Course(name: "Õppepraktika kliinilise keemia ja hematoloogia üldosa", eapCount: 4.5)
                ]
            ),
            Module(
                module: "Rakubioloogia, molekulaardiagnostika alused ja geneetika",
                courses: [
                    Course(name: "Geneetika- ja molekulaardiagnostika I", eapCount: 3.5),
                    Course(name: "Molekulaar- ja rakubioloogia", eapCount: 4),
                    Course(name: "Geneetika ja molekulaardiagnostika II", eapCount: 3.5),
                    Course(name: "Geneetika ja molekulaardiagnostika III", eapCount: 2),
                    Course(name: "Õppepraktika: geneetika-, immuun- ja molekulaardiagnostika", eapCount: 6)
                ]
            ),
            Module(
                module: "Haigusõpetus",
                courses: [
                    Course(name: "Haigusõpetus ja laboratoorne diagnostika I", eapCount: 3),
                    Course(name: "Haigusõpetus ja laboratoorne diagnostika II", eapCount: 4),
                    Course(name: "Nakkushaigused", eapCount: 3),
                    Course(name: "Üldpatoloogia, haige uurimise meetodid", eapCount: 2)
                ]
            ),
        ]
    ),
]
