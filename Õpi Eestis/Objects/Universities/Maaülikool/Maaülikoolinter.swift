let maaülikoolInter = [
    majorsMinors(
        name: "Maaehitus",
        level: .integrated,
        type: .metsandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam või vastuvõtukatse"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Maaehituse õppekava valmistab ette magistrikraadiga ehitusinsenere 5-aastases integreeritud magistriõppes. Õppekava läbinuna omistatakse Sulle vastavalt Kutsekoja kutsestandardile „Diplomeeritud ehitusinseneri esmakutse“ (EKR 7. tase). Esmakutse tõendab, et õpitud eriala vastab valdkonna nõuetele ning lubab koheselt insenerina tööle asuda.", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid kui ka praktikume ja laboratoorseid töid. Väga palju külastusi tehakse õpingute käigus ehitusobjektidele ning ehitusmaterjale tootvatesse ettevõtetesse. Lisaks saad tudengina praktilisi oskusi suviste praktikumide käigus.", "Paljud meie õppejõud tegelevad õpetamisele lisaks ka praktilise erialase tööga, eelkõige projekteerimise ja ehitusekspetiisidega, olles seetõttu kursis Eesti ehitusmaastikul toimuvaga, samuti kaasaegsete ehitusmaterjalide omadustega, uudsete ehituslahenduste ning kehtiva seadusandlusega.", "Lõpetajana võid tööle minna nii avalikku- kui erasektorisse: projekteerimis- ja ehitusfirmadesse, ehitusnõunikuks kohalikku omavalitsusse, lektoriks kõrgkooli õpetama ehituserialadega seotud aineid. Tööpõld on lai ja insenerikutse toob alati leiva lauale. Edukalt magistrikraadi kaitsnuna on Sul võimalik õpinguid jätkata 4-aastases doktoriõppes."],
        outcomes: ["Omab süsteemset ülevaadet ja teadmisi ehitusinseneri baasainetest (matemaatika, füüsika, tugevusõpetus, ehitusmehaanika) ja oskab kirjeldada ehitusvaldkonna põhimõisteid, selgitada teooriaid ning rakendada uurimismeetodeid", "Kasutab kaasaegseid meetodeid, IT-lahendusi ja tehnoloogiaid ehitusjuhtimises ja projekteerimisülesannete täitmisel", "Omab põhjalikke teadmisi ehituseriala mõnes kitsamas valdkonnas ning oskab luua ja rakendada interdistsiplinaarseid seoseid", " Mõistab ehitustegevuse mõjusid inimesele, sotsiaalsfäärile, muinsuskaitse alustele objektidele ja keskkonnale ning arvestab sellega oma töös", "Lahendab iseseisvalt ehituserialaga seotud probleeme olukorrale sobivate meetoditega, kasutades selleks vajadusel teiste valdkondade spetsialistide abi", "Rakendab säästva ning keskkonnasõbraliku arengu innovaatilisi lahendusi", "Kavandab ehitisi vastavalt arhitektuuri ja hea ehitustava nõuetele lähtudes looduskeskkonna ja maaelu eripäradest ning kasutades selleks klassikalisi ja kaasaegseid graafilise vormistamisemeetodeid", "Suudab analüüsida, põhjendada ja kriitiliselt hinnata oma tegevust ehituseriala probleemide lahendamisel", "On valmis edastama oma teadmisi õpetamise, juhendamise või publitseerimise teel", "Suudab nii eesti keeles kui ka ühes olulises võõrkeeles ehituserialaga seonduvaid teooriaid, probleeme ja järeldusi vajalikus vormis esitada, kirjutada ja argumenteerida ning osaleda nii erialaspetsialistide kui ka erialaväliste inimeste sellekohastes aruteludes", "Väärtustab elukestva õppe vajadust erialaseks arenguks ning valdab iseseisvaks täiendõppimiseks vajalikke efektiivseid meetodeid", "On võimeline eetiliselt tegutsema ehitusala spetsialisti või arendajana, osalema uurimistegevuses või töötama eriala õppejõuna ja jätkama õpinguid doktoriõppes."],
        language: .eesti,
        majorWebsite: "http://mi.emu.ee/",
        spots: 35,
        duration: 5,
        studyLocation:  [.tartu],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Sissejuhatus inseneriõpingutesse ja insenerieetika", eapCount: 2),
                    Course(name: "Teadustöö ja ehitusalased katsed", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Matemaatika ja füüsika",
                        courses: [
                            Course(name: "Algebra ja diferentsiaalarvutus", eapCount: 6),
                            Course(name: "Füüsika inseneridele I", eapCount: 6),
                            Course(name: "Matemaatiline analüüs II", eapCount: 6),
                            Course(name: "Matemaatiline statistika insenerierialadele", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ideest äriplaanini", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Graafika",
                        courses: [
                            Course(name: "CAD-süsteemid (2D)", eapCount: 3),
                            Course(name: "CAD-süsteemid (3D)", eapCount: 3),
                            Course(name: "Ehituste BIM-projekteerimine ja analüüs", eapCount: 3),
                            Course(name: "Ehitusgraafika", eapCount: 4),
                            Course(name: "Kujutav geomeetria", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Ehitusmaterjalid ja ehitusfüüsika",
                        courses: [
                            Course(name: "Ehitusfüüsika I", eapCount: 4),
                            Course(name: "Ehitusfüüsika II", eapCount: 3),
                            Course(name: "Ehituskeemia", eapCount: 3),
                            Course(name: "Ehitusmaterjalid", eapCount: 6),
                            Course(name: "Ehituspuit", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Arhitektuur",
                        courses: [
                            Course(name: "Arhitektuuri ajalugu ja ehituskonstruktsioonid", eapCount: 4),
                            Course(name: "Ehitiste tüpoloogia", eapCount: 2),
                            Course(name: "Hoone konstruktsioonid ja kavandamine", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Ehitusmehaanika",
                        courses: [
                            Course(name: "Ehitusmehaanika I", eapCount: 5),
                            Course(name: "Ehitusmehaanika II", eapCount: 5),
                            Course(name: "Teoreetilise mehaanika lühikursus", eapCount: 4),
                            Course(name: "Tugevusõpetus I", eapCount: 4),
                            Course(name: "Tugevusõpetus II", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Kandekonstruktsioonid",
                        courses: [
                            Course(name: "Ehituskonstruktsioonide projekteerimise alused", eapCount: 3),
                            Course(name: "Geotehnika", eapCount: 6),
                            Course(name: "Kivikonstruktsioonid", eapCount: 4),
                            Course(name: "Puitkonstruktsioonid I", eapCount: 7),
                            Course(name: "Puitkonstruktsioonid II", eapCount: 3),
                            Course(name: "Rakendusgeoloogia", eapCount: 3),
                            Course(name: "Raudbetoonkonstruktsioonid I", eapCount: 6),
                            Course(name: "Teraskonstruktsioonid", eapCount: 7)
                        ]
                    ),
                    Submodule(
                        name: "Ehitusprotsessid",
                        courses: [
                            Course(name: "Ehituskorraldus ja projektijuhtimine", eapCount: 6),
                            Course(name: "Ehitusmasinad", eapCount: 3),
                            Course(name: "Ehitustehnoloogia", eapCount: 6),
                            Course(name: "Ehitustööde ohutus", eapCount: 2),
                            Course(name: "Ehitusökonoomika", eapCount: 3),
                            Course(name: "Puitmajade ja -konstruktsioonide tootmise tehnoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Põllumajandushoonete",
                        courses: [
                            Course(name: "Loomapidamisehitiste mehhaniseerimine", eapCount: 2),
                            Course(name: "Maaehitiste projekteerimine", eapCount: 5),
                            Course(name: "Põllumajandushooned", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Ehitise tehnosüsteemid",
                        courses: [
                            Course(name: "Elektri- ja automaatikaseadmete montaaž", eapCount: 3),
                            Course(name: "Hoonete ventilatsioon ja energiavarustus", eapCount: 3),
                            Course(name: "Hüdraulika üldkursus", eapCount: 4),
                            Course(name: "Veevarustus ja kanalisatsioon I", eapCount: 4),
                            Course(name: "Ventilatsioon ja küte. Kursuseprojekt", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Ehitusgeodeesia ja ehitiste mõõdistamine",
                        courses: [
                            Course(name: "Ehitiste mõõdistamine õppepraktika", eapCount: 2),
                            Course(name: "Ehitusgeodeesia alused. Teooria ja õppepraktika", eapCount: 3),
                            Course(name: "Maamõõtmise alused. Teooria ja õppepraktika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Erialapraktika",
                        courses: [
                            Course(name: "Ehituseriala diplomipraktika", eapCount: 3),
                            Course(name: "Ehituseriala menetluspraktika", eapCount: 3),
                            Course(name: "Ehitustehnoloogia menetluspraktika", eapCount: 2)
                        ]
                    )
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "Ehitusalane õigus", eapCount: 2),
                    Course(name: "Ehitusmaksumuse ja hankemenetluse õppepraktika", eapCount: 3),
                    Course(name: "Ehitusmehaanika III", eapCount: 4),
                    Course(name: "Ehitustarindite analüüs lõplike elementide meetodiga", eapCount: 4),
                    Course(name: "Erikonstruktsioonid", eapCount: 3),
                    Course(name: "Filosoofia", eapCount: 3),
                    Course(name: "Geotehnika II", eapCount: 3),
                    Course(name: "Informaatika", eapCount: 2),
                    Course(name: "Palkmaja ehituse üldkursus", eapCount: 3),
                    Course(name: "Projekteerimise õppepraktika", eapCount: 3),
                    Course(name: "Raudbetoonkonstruktsioonid II", eapCount: 4),
                    Course(name: "Sillad", eapCount: 2),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 3),
                    Course(name: "Vesiehitised I", eapCount: 5)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest.", eapCount: 12)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 30)
                ]
            )
        ]
    ),
    
    majorsMinors(
        name: "Vesiehitus ja veekaitse",
        level: .integrated,
        type: .metsandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam või vastuvõtukatse"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Iga maja vajab veevärki ja iga tööstusettevõte tarbib vett. Paisjärved vajavad nutikaid lahendusi, mis võimaldaks kaladel üles- ja allavoolu liikuda ka siis, kui soovime toota hüdroenergiat. Vahel on vaja liigveest vabaneda või rajada silmailuks purskkaev. Vett on vaja õiges kohas, õigel hulgal, õigel ajal ja õige kvaliteediga – see on veeinseneri ülesanne. Vajame projekteerijaid, ehitustegevuse juhtijaid, aga ka neid, kes korraldavad veemajanduse arengut riigiametites. Lisavõimalusi leidub valdkonnaga seotud tootmises ja äritegevuses.", "Vesiehituse ja veekaitse hüdrotehnikainseneri kutsestandardile vastavat haridust on Eestis võimalik omandada ainult Eesti Maaülikoolis. Õppekava valmistab ette magistrikraadiga vesiehitusinsenere 5-aastases integreeritud õppes. Lisaks kraadile omistad lõpetajana kaks ehitusinseneri valdkonna – hüdrotehnikainseneri (NB! ainsana Eestis) ning diplomeeritud veevarustus- ja kanalisatsiooniinseneri (EKR 7. tase) – esmakutset. Esmakutse tõendab, et õpitud eriala vastab valdkonna nõuetele ning lubab koheselt insenerina tööle asuda. Lisaks võimaldab aastatega kogunev praktiline töökogemus peagi taotleda diplomeeritud ja volitatud inseneri kutset.", "Õppekavas on olulisel kohal nii ehitusinseneri baasharidus (õpe koos maaehituse õppekava üliõpilastega), kui sellele lisanduvad veeinseneeriaga seotud erialaaineid. Baasharidus põhineb matemaatikal, füüsikal, tugevusõpetusel, ehitusmehaanikal, ehitusmaterjalide õpetusel ning puit-, teras- ja raudbetoontarindite CAD-projekteerimisel. Erialaõpe tugineb hüdraulika, hüdroloogia ja hüdrogeoloogia heal tundmisel, kus tähtsal kohal on vesiehitised, vooluhulga reguleerimine, kuivendus ja niisutus, veevarustus ja kanalisatsioon, reovee puhastamine ning jäätmetega seotud keskkonnaprobleemide lahendamine.", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid, seminare kui ka praktikume. Õpinguteks vajalikud laborid on Lõuna-Eesti parimad, samuti on arvutiklassides olemas tulevaste projekteerijate jaoks vajalikud CAD jm tarkvara. Magistri- ja doktoritöö tegemist soodustab uus hüdraulikalabor, kus saab uurida ja katsetada vesiehitiste, sh kalapääsude ja väikese veejõujaamade tehnilisi lahendusi.", "Õppejõud on oma eriala tippspetsialistid (sh teaduskraadiga, kutset omavad tegevinsenerid), keda kutsutakse loenguid pidama ka teistese Eesti ülikoolidesse. Traditsiooniliselt kaasatakse õppetöösse ka praktikuid era- ja avalik-õiguslikust sektorist. Samuti on Sul võimalus oma praktika teha eriala parimate ettevõtete juures."],
        outcomes: ["Omab süsteemset ülevaadet ja laiapõhjalisi teadmisi veemajanduse (sh vesiehitiste, veevarustuse ja kanalisatsiooni, reovee puhastamise ja maaparanduse ning jäätmekäitluse) valdkonna mõistetest, teooriatest ja uurimismeetoditest", "Oskab analüüsida vesiehituse ja veekaitse aktuaalseid probleeme ning neid lahendada, tundes eriala arengusuundi", "Oskab koostada vesiehituse ja veekaitse alaseid projekte, rakendades ehitusinsenerivaldkonna (sh teoreetiline mehaanika, tugevusõpetus, materjalid ja konstruktsioonid) aluspõhimõtteid", "Oskab analüüsida keskkonna ja inimese vahelisi suhteid ning luua interdistsiplinaarseid seoseid ökoloogia, veekogudes ja pinnases toimuvate protsesside ning tehniliste lahenduste vahel, prognoosides lahenduste keskkonna- ja sotsiaalmajanduslikku mõju", "Oskab loovalt ja iseseisvalt ära tunda vesiehituse ja veekaitsega seotud probleeme ning uurimist vajavaid küsimusi, neid sõnastada ja asjakohaste meetoditega lahendada, kasutades vajadusel teiste valdkondade spetsialistide abi", "Oskab valida vesiehitiste ja veekaitseobjektide projekteerimise ja ehitusjuhtimise jaoks sobivaid meetodeid ja tehnoloogiad, koguda projekteerimiseks vajalikke andmeid", "Tunneb projekteerimist ja ehitamist reguleerivaid õigusakte", "Suudab nii eesti kui ka ühes olulises võõrkeeles vajalikus vormis esitada, kirjutada ja argumenteerida oma erialaga seonduvaid teooriaid, probleeme ja järeldusi ning osaleda nii erialaspetsialistide kui ka erialaväliste inimeste sellekohastes aruteludes", "On valmis võtma vastutust, mis kaasneb töötamisega vesiehituse ja veekaitse valdkonna spetsialistina erasektoris, riiklikes organisatsioonides või ettevõtetes", "Oskab tegutseda eetiliselt keerulistes olukordades, on teadlik oma tegevuse eetilistest aspektidest", "On valmis aktiivselt osalema kodanikuühiskonnas, sallivalt suhtuma hoiakute ja väärtuste mitmekesisusse ning arvestama neid tehniliste lahenduste väljatöötamisel", "On võimeline jätkama õpinguid doktoriõppes, osalema uurimistegevuses ja tegutsema oma eriala spetsialisti või arendajana.", "Lõpetajad leiavad endale töö nii era- kui ka avalikus sektoris üle kogu Eesti. Omandatud erialased teadmised võimaldavad lõpetanutel tööle asuda vesiehituse, veevarustuse, kanalisatsiooni, jäätmemajanduse ja maakuivenduse korraldamisega tegelevates projekteerimis- ja ehitusettevõtetes, veeprobleemidega tegelevates riigiasutustes, ettevõtetes ja ühistutes, maakondade keskkonnateenistustes, omavalitsustes ning Euroopa Liidu institutsioonides."],
        language: .eesti,
        majorWebsite: "http://mi.emu.ee/",
        spots: 20,
        duration: 5,
        studyLocation:  [.tartu],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Sissejuhatus õpingutesse", eapCount: 1),
                    Course(name: "Teadustöö alused ja üliõpilastööde koostamine", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ideest äriplaanini", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Matemaatika ja füüsika",
                        courses: [
                            Course(name: "Algebra ja diferentsiaalarvutus", eapCount: 6),
                            Course(name: "Füüsika alused", eapCount: 6),
                            Course(name: "Matemaatiline analüüs II", eapCount: 6),
                            Course(name: "Matemaatiline statistika insenerierialadele", eapCount: 4),
                        ]
                    ),
                    Submodule(
                        name: "Graafika",
                        courses: [
                            Course(name: "CAD-süsteemid (2D)", eapCount: 3),
                            Course(name: "Ehitusgraafika", eapCount: 4),
                            Course(name: "Infrastruktuuri projekteerimine AutoCAD-is", eapCount: 2),
                            Course(name: "Kujutav geomeetria", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Geodessia ja GIS",
                        courses: [
                            Course(name: "Ehitusgeodeesia alused. Teooria ja õppepraktika", eapCount: 3),
                            Course(name: "Geoinformaatika alused", eapCount: 5),
                            Course(name: "Informaatika insenerierialadele", eapCount: 4),
                            Course(name: "Maamõõtmise alused. Teooria ja õppepraktika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Ehitusmehaanika",
                        courses: [
                            Course(name: "Ehitusmehaanika I", eapCount: 5),
                            Course(name: "Ehitusmehaanika II", eapCount: 5),
                            Course(name: "Teoreetilise mehaanika lühikursus", eapCount: 4),
                            Course(name: "Tugevusõpetus I", eapCount: 4),
                            Course(name: "Tugevusõpetus II", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Ehitiste projekteerimine",
                        courses: [
                            Course(name: "Ehitusfüüsika I", eapCount: 4),
                            Course(name: "Ehituskonstruktsioonide projekteerimise alused", eapCount: 3),
                            Course(name: "Ehitusmaterjalid", eapCount: 6),
                            Course(name: "Ehitusõpetus", eapCount: 4),
                            Course(name: "Elektri- ja automaatikaseadmete montaaž", eapCount: 3),
                            Course(name: "Hoonete ventilatsioon ja energiavarustus", eapCount: 3),
                            Course(name: "Puit- ja metallkonstruktsioonid", eapCount: 5),
                            Course(name: "Raudbetoonkonstruktsioonid", eapCount: 5),
                            Course(name: "Ventilatsioon ja küte. Kursuseprojekt", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Veevarustus ja kanalisatsioon",
                        courses: [
                            Course(name: "Hüdraulika üldkursus", eapCount: 4),
                            Course(name: "Pumbad", eapCount: 4),
                            Course(name: "Pumplad", eapCount: 3),
                            Course(name: "Veepuhastus", eapCount: 4),
                            Course(name: "Veevarustus ja kanalisatsioonid I", eapCount: 4),
                            Course(name: "Veevarustus ja kanalisatsioonid I. Kursuseprojekt", eapCount: 4),
                            Course(name: "Veevarustus ja kanalisatsioonid II", eapCount: 4),
                            Course(name: "Veevarustus ja kanalisatsioonid III", eapCount: 4),
                        ]
                    ),
                    Submodule(
                        name: "Vesiehitus",
                        courses: [
                            Course(name: "Geoloogia ja hüdrogeoloogia", eapCount: 4),
                            Course(name: "Geotehnika", eapCount: 6),
                            Course(name: "Hüdraulika erikursus", eapCount: 5),
                            Course(name: "Hüdroloogia ja hüdromeetria", eapCount: 6),
                            Course(name: "Hüdroloogiliste ja hüdrauliliste protsesside modelleerimine", eapCount: 3),
                            Course(name: "Vesiehitised I", eapCount: 5),
                            Course(name: "Vesiehitised II", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Maaparandus ja niisutus",
                        courses: [
                            Course(name: "Ehitusmasinad", eapCount: 3),
                            Course(name: "Kuivendus", eapCount: 7),
                            Course(name: "Maaparanduslik mullateadus", eapCount: 4),
                            Course(name: "Niisutus", eapCount: 3),
                            Course(name: "Teede üldkursus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Keskkond ja veekaitse",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Jäätmekäitlus", eapCount: 3),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4),
                            Course(name: "Keskkonnakeemia", eapCount: 3),
                            Course(name: "Maa- ja veeõigus", eapCount: 2),
                            Course(name: "Veekaitse", eapCount: 8)
                        ]
                    ),
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Veemajanduse erialapraktika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "Ehituskorraldus ja projektijuhtimine", eapCount: 6),
                    Course(name: "Ettevõtte juhtimise üldkursus", eapCount: 3),
                    Course(name: "Keskkonnamõjude hindamine", eapCount: 5),
                    Course(name: "Kivikonstruktsioonid", eapCount: 4),
                    Course(name: "Rakendushüdrobioloogia", eapCount: 3),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 3),
                    Course(name: "Tiigid ja paisjärved", eapCount: 3),
                    Course(name: "Turba kaevandamine ja kasutamine", eapCount: 2),
                    Course(name: "Veejõu kasutamine", eapCount: 3),
                    Course(name: "Vesiviljeluse alused", eapCount: 3)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest.", eapCount: 12)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Veterinaarmeditsiin",
        level: .integrated,
        type: .veterinaaria,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Esimestel aastatel õpivad tudengid veterinaarmeditsiini alusteadusi, terve looma ehitust ja funktsioone ning ka loomakasvatuse põhitõdesid. Veterinaarmeditsiini alusteadusteks on mitmed bioloogiaharud, nagu zooloogia, botaanika, geneetika ja rakubioloogia, aga ka keemia, biofüüsika, mikrobioloogia, viroloogia ja parasitoloogia.", "Teise aasta kevadsemestril tehakse algust haigusprotsesside tundmaõppimisega loomorganismis ehk patoloogilise anatoomia ja -füsioloogiaga., mis juhatab sisse loomaarstiõppe teise etapi. Prekliinilised ained annavad üliõpilasele teadmisi haige looma organismis toimuvatest protsessidest, samuti esmaseid oskusi nende avastamiseks. Loomaarstiõppe teises etapis tehakse sissejuhatus veterinaarse rahvatervishoiu temaatikasse ja pööratakse tähelepanu looma ja inimese tervise seostele.", "Kolmas etapp ehk kliiniline õpe annab tudengitele põhjalikke teadmisi loomaliikide (k.a. linnud ja kalad) olulisematest haigustest ning oskusi nende diagnoosimiseks, raviks ja ennetamiseks. Praktilist õpet saavad tudengid maaülikooli loomakliinikus. Kolmandas etapis saavad üliõpilased ka põhjalikke teadmisi veterinaarsest rahvatervishoiust, riiklikust veterinaarjärelevalvesüsteemist ning veterinaarsest seadusandlusest.", "Kuuendal õppeaastal, loomarstiõppe kolmandas etapis, võib üliõpilane valida süvendatud õppe kahe suuna vahel:", "• Põllumajandusloomade ja hobuse meditsiin", "• Väikeloomameditsiin"],
        outcomes: ["Omab piisavaid teoreetilisi teadmisi veterinaarmeditsiiniga seotud alusteadustest", "Tunneb loomade anatoomiat ja füsioloogiat", "Tunneb loomakasvatuse, loomatervishoiu, sigimise ja söötmise aluseid ning loomaliigi vajadustele vastava sööda tootmise ja säilitamise tehnoloogiaid", "Tunneb loomade käitumist, heaolu ja loomakaitse põhimõtteid", "Teab peamiste loomadel esinevate (sh inimestele edasi kanduda võivate) haiguste põhjuseid, laadi, kulgu, toimet ehk patogeneesi", "Tunneb loomade haiguste diagnoosimist, ravimist ja ennetamist üksikisendi või loomarühma tasemel", "Tunneb toiduainete tootmise, töötlemise ja turustamisega seotud toiduhügieeni ning toiduohutuse järelevalve nõudeid", "Tunneb veterinaaria valdkonnaga seotud seadusandlust", "Omab loomade haiguste diagnoosimiseks, ravimiseks ja ennetamiseks vajalikke kliinilisi ja muid praktilisi oskusi ning kog"],
        language: .eesti,
        majorWebsite: "http://vl.emu.ee/",
        spots: 34,
        duration: 6,
        studyLocation:  [.tartu],
        eap: 360,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [
                    Course(name: "Informaatika ja biomeetria", eapCount: 4),
                    Course(name: "Inglise erialakeel", eapCount: 3),
                    Course(name: "Loomaökoloogia", eapCount: 2),
                    Course(name: "Raku- ja molekulaarbioloogia", eapCount: 3),
                    Course(name: "Sissejuhatus veterinaaria õpingutesse", eapCount: 2),
                    Course(name: "Tõenduspõhise veterinaarmeditsiini alused", eapCount: 2)
                ]
            ),
            Module(
                name: "Erialamoodul (1..5. õppeaasta)",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Prekliinilised teadused",
                        courses: [
                            Course(name: "Erimikrobioloogia", eapCount: 4),
                            Course(name: "Eriviroloogia", eapCount: 3),
                            Course(name: "Koduloomade anatoomia I", eapCount: 5),
                            Course(name: "Koduloomade anatoomia II", eapCount: 5),
                            Course(name: "Koduloomade anatoomia III", eapCount: 4),
                            Course(name: "Loomafüsioloogia I", eapCount: 4),
                            Course(name: "Loomafüsioloogia II", eapCount: 4),
                            Course(name: "Patoloogiline morfoloogia I", eapCount: 4),
                            Course(name: "Patoloogiline morfoloogia II", eapCount: 3),
                            Course(name: "Seemendus ja sigimisõpetus I", eapCount: 3),
                            Course(name: "Seemendus ja sigimisõpetus II", eapCount: 3),
                            Course(name: "Tsütoloogia, embrüoloogia ja histoloogia I", eapCount: 4),
                            Course(name: "Tsütoloogia, embrüoloogia ja histoloogia II", eapCount: 4),
                            Course(name: "Veterinaarepidemioloogia", eapCount: 4),
                            Course(name: "Veterinaarimmunoloogia", eapCount: 4),
                            Course(name: "Veterinaarne biokeemia", eapCount: 11),
                            Course(name: "Üldfarmakoloogia", eapCount: 4),
                            Course(name: "Üldhaigusõpetus (patoloogiline füsioloogia)", eapCount: 6),
                            Course(name: "Üldmikrobioloogia", eapCount: 4),
                            Course(name: "Üldviroloogia", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Loomakasvatuse",
                        courses: [
                            Course(name: "Agronoomia alused loomaarstidele", eapCount: 2),
                            Course(name: "Eriloomakasvatus", eapCount: 6),
                            Course(name: "Etoloogia", eapCount: 2),
                            Course(name: "Loomade heaolu ja kaitse", eapCount: 2),
                            Course(name: "Loomakasvatusettevõtte praktika", eapCount: 3),
                            Course(name: "Loomatervishoid", eapCount: 5),
                            Course(name: "Põllumajandusökonoomika loomaarstidele", eapCount: 2),
                            Course(name: "Söötmisõpetus", eapCount: 5),
                            Course(name: "Veterinaargenetika ja aretus", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Toiduhügieen ja veterinaarne rahvatervis",
                        courses: [
                            Course(name: "Keskkonna- ja toidutoksikoloogia", eapCount: 3),
                            Course(name: "Lihainspektsioon", eapCount: 5),
                            Course(name: "Lihainspektsiooni praktika", eapCount: 2),
                            Course(name: "Lihatoodete tehnoloogia, ohutus ja kvaliteet", eapCount: 4),
                            Course(name: "Piima ja piimatoodete kvaliteet ning ohutus", eapCount: 5),
                            Course(name: "Toidu- ja tootmishügieen", eapCount: 6),
                            Course(name: "Veterinaarjärelevalve praktika", eapCount: 2),
                            Course(name: "Veterinaarse rahvatervise ja toiduhügieeni alused", eapCount: 4),
                            Course(name: "Veterinaarteenistuse korraldus ja seadusandlus", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Kliinilised teadus",
                        courses: [
                            Course(name: "Anestesioloogia ja intensiivravi", eapCount: 4),
                            Course(name: "Dermatoloogia ja allergoloogia", eapCount: 2),
                            Course(name: "Eksootiliste loomade meditsiin", eapCount: 2),
                            Course(name: "Endokrinoloogia", eapCount: 3),
                            Course(name: "Hobusemeditsiini õppepraktika", eapCount: 4),
                            Course(name: "Hobuste kliiniline meditsiin", eapCount: 4),
                            Course(name: "Hobuste kliinilis-laboratoorne diagnostika", eapCount: 2),
                            Course(name: "Karja tervis ja keskkond", eapCount: 2),
                            Course(name: "Kirurgia I", eapCount: 3),
                            Course(name: "Kirurgia II", eapCount: 4),
                            Course(name: "Kirurgia III", eapCount: 3),
                            Course(name: "Kliniiline farmakoloogia", eapCount: 4),
                            Course(name: "Kohtuveterinaaria", eapCount: 1),
                            Course(name: "Kutse-eetika", eapCount: 1),
                            Course(name: "Lindude haigused", eapCount: 3),
                            Course(name: "Loomade infektsioonhaigused I", eapCount: 3),
                            Course(name: "Loomade infektsioonhaigused II", eapCount: 3),
                            Course(name: "Mäletsejaliste kliiniline meditsiin", eapCount: 7),
                            Course(name: "Neuroloogia", eapCount: 2),
                            Course(name: "Oftalmoloogia", eapCount: 2),
                            Course(name: "Parasitoloogia ja invasioonihaigused", eapCount: 5),
                            Course(name: "Patoloogiline morfoloogia ja lahanguõpetus", eapCount: 3),
                            Course(name: "Produktiivloomade kliinilis-laboratoorne diagnostika", eapCount: 2),
                            Course(name: "Produktiivloomade meditsiini õppepraktika", eapCount: 6),
                            Course(name: "Seemenduse ja loomaarsti abilise praktika", eapCount: 3),
                            Course(name: "Sigade kliiniline meditsiin", eapCount: 3),
                            Course(name: "Sünnitusabi ja günekoloogia I", eapCount: 4),
                            Course(name: "Sünnitusabi ja günekoloogia II", eapCount: 4),
                            Course(name: "Uurmistöö metoodika veterinaarmeditsiinis", eapCount: 1),
                            Course(name: "Vesiviljelustehnoloogiad, kalade ja vähkide haigused ning tervishoid", eapCount: 3),
                            Course(name: "Veterinaarpraksise korraldus ja majandamine", eapCount: 3),
                            Course(name: "Veterinaarradioloogia", eapCount: 5),
                            Course(name: "Veterinaarsed kliinilised oskused", eapCount: 1),
                            Course(name: "Väikeloomade erakorralise meditsiini õppepraktika", eapCount: 3),
                            Course(name: "Väikeloomade kliinilis-laboratoorne diagnostika", eapCount: 2),
                            Course(name: "Väikeloomade meditsiini õppepraktika", eapCount: 10),
                            Course(name: "Väikeloomade sisehaigused I", eapCount: 4),
                            Course(name: "Väikeloomade sisehaigused II", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                name: "6. õppeaasta kohustuslik",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Produktiivloomade ja hobusemeditsiin",
                        courses: [
                            Course(name: "Hobusemeditsiini erikursus", eapCount: 6),
                            Course(name: "Seakarja tervishoiu korraldus", eapCount: 4),
                            Course(name: "Suurloomakliiniku kliiniline praktika", eapCount: 20),
                            Course(name: "Veisekarja tervishoiu korraldus", eapCount: 9),
                            Course(name: "Väikemäletsejaliste tervishoiu korraldus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Väikeloomameditsiin",
                        courses: [
                            Course(name: "Väikeloomade meditsiin", eapCount: 19),
                            Course(name: "Väikeloomakliiniku kliiniline praktika", eapCount: 24)
                        ]
                    ),
                    Submodule(
                        name: "Veterinaarmeditsiini lõputöö",
                        courses: [
                            Course(name: "Lõputöö", eapCount: 15)
                        ]
                    )
                ]
            ),
            Module(
                name: "Eriala valikained ja vabaained",
                courses: [
                    Course(name: "Akvaristika alused ja kalad kui katseloomad", eapCount: 2),
                    Course(name: "Koerakasvatus", eapCount: 4),
                    Course(name: "Küülikute ja karusloomade haigused", eapCount: 2),
                    Course(name: "Laborloomade meditsiin", eapCount: 2),
                    Course(name: "Loomaaia- ja metsloomade meditsiin", eapCount: 2),
                    Course(name: "Mesilaste haigused", eapCount: 2),
                    Course(name: "Sigimise biotehnoloogia", eapCount: 2),
                    Course(name: "Spordifüsioloogia ja doping", eapCount: 2),
                    Course(name: "Terraariumiloomade pidamine ja tervishoid", eapCount: 2)
                ],
                submodules: [
                    Submodule(name: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid Eesti Maaülikoolist ja/või teistest (välis)kõrgkoolidest.", eapCount: 11)])
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Veterinaarmeditsiin (Inglise Keel)",
        level: .integrated,
        type: .veterinaaria,
        requirements: [
            Requirements(term: "SAT test tulemus"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Estonian University of Life Sciences is the only university in the Baltic countries accredited by the EAEVE (European Association of Establishments for Veterinary Education) providing full-time six-year education in the field of veterinary medicine. Practical training which is crucial to all veterinarians takes place in the Animal Clinic of the Estonian University of Life Sciences, located conveniently in the university campus. Completion of the study program provides a qualification corresponding to the MSc.", "Veterinary studies can be divided into three periods:", "• In the first years the students study the foundations of veterinary medicine, anatomy and functions of animals as well as the fundamentals of animal husbandry. Several branches of biology, zoology, botany, genetics and cell biology as well as chemistry, biophysics, microbiology, virology and parasitology can be considered the foundation of veterinary studies.", "In the spring semester of the second year students are taught diseases in animals, they take up pathological anatomy and physiology, which constitutes an introduction to the second period of the veterinary studies. Pre clinical studies give the student an insight into the processes going on in the organism of the diseased animal, as well as elementary skills in disease detection.", "The second phase concentrates on the relations between human and animal health and an introduction into the public health issues is made.", "In the third phase or clinical studies lecturers communicate students profound knowledge on the most common diseases of different animal species (including birds and fish) with an empahis on their diagnosis, treatment and prevention.", "Practical training takes place in the animal clinic of Estonian University of Life Sciences. Students also gain extensive knowledge of veterinary public health, veterinary legislation and state veterinary control system.", "In the sixth year the student can focus on one of the three main tracks:", "• large animal and equine medicine", "• small-animal medicine"],
        outcomes: ["Has theoretical knowledge of the sciences on which the activities of the veterinary surgeon are based", "Knows the anatomy and physiology of animals", "Knows animal husbandry, animal reproduction and hygiene in general, as well as their feeding, including the technology for the manufacturing and preservation of feeds corresponding to animal needs", "Knows animal behaviour and the field of animal protection", "Knows the pathogenesis, i.e. causes, nature, course, effects, of the diseases of animals (including the diseases which may be transmitted to humans)", "Knows the diagnosis, treatment and prevention of the diseases of animals, whether considered individually or in groups", "Knows the food hygiene and food safety requirements related to the production, manufacturing and marketing of animal foodstuffs or foodstuffs of animal origin intended for human consumption", "Knows the laws, regulations and administrative provisions related to the field of veterinary medicine", "Has relevant clinical and other practical experience and skills required for the diagnosis, treatment and prevention of animal diseases", "Is supporting his/her professional activities with contemporary scientific methods and high ethical principles"],
        language: .inglise,
        majorWebsite: "http://vl.emu.ee/",
        spots: 38,
        duration: 6,
        studyLocation:  [.tartu],
        eap: 360,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [
                    Course(name: "Informaatika ja biomeetria", eapCount: 4),
                    Course(name: "Eesti keel võõrkeelena", eapCount: 3),
                    Course(name: "Loomaökoloogia", eapCount: 2),
                    Course(name: "Raku- ja molekulaarbioloogia", eapCount: 3),
                    Course(name: "Sissejuhatus veterinaaria õpingutesse", eapCount: 2),
                    Course(name: "Tõenduspõhise veterinaarmeditsiini alused", eapCount: 2)
                ]
            ),
            Module(
                name: "Erialamoodul (1..5. õppeaasta)",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Prekliinilised teadused",
                        courses: [
                            Course(name: "Erimikrobioloogia", eapCount: 4),
                            Course(name: "Eriviroloogia", eapCount: 3),
                            Course(name: "Koduloomade anatoomia I", eapCount: 5),
                            Course(name: "Koduloomade anatoomia II", eapCount: 5),
                            Course(name: "Koduloomade anatoomia III", eapCount: 4),
                            Course(name: "Loomafüsioloogia I", eapCount: 4),
                            Course(name: "Loomafüsioloogia II", eapCount: 4),
                            Course(name: "Patoloogiline morfoloogia I", eapCount: 4),
                            Course(name: "Patoloogiline morfoloogia II", eapCount: 3),
                            Course(name: "Seemendus ja sigimisõpetus I", eapCount: 3),
                            Course(name: "Seemendus ja sigimisõpetus II", eapCount: 3),
                            Course(name: "Tsütoloogia, embrüoloogia ja histoloogia I", eapCount: 4),
                            Course(name: "Tsütoloogia, embrüoloogia ja histoloogia II", eapCount: 4),
                            Course(name: "Veterinaarepidemioloogia", eapCount: 4),
                            Course(name: "Veterinaarimmunoloogia", eapCount: 4),
                            Course(name: "Veterinaarne biokeemia", eapCount: 11),
                            Course(name: "Üldfarmakoloogia", eapCount: 4),
                            Course(name: "Üldhaigusõpetus (patoloogiline füsioloogia)", eapCount: 6),
                            Course(name: "Üldmikrobioloogia", eapCount: 4),
                            Course(name: "Üldviroloogia", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Loomakasvatuse",
                        courses: [
                            Course(name: "Agronoomia alused loomaarstidele", eapCount: 2),
                            Course(name: "Eriloomakasvatus", eapCount: 6),
                            Course(name: "Etoloogia", eapCount: 2),
                            Course(name: "Loomade heaolu ja kaitse", eapCount: 2),
                            Course(name: "Loomakasvatusettevõtte praktika", eapCount: 3),
                            Course(name: "Loomatervishoid", eapCount: 5),
                            Course(name: "Põllumajandusökonoomika loomaarstidele", eapCount: 2),
                            Course(name: "Söötmisõpetus", eapCount: 5),
                            Course(name: "Veterinaargenetika ja aretus", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Toiduhügieen ja veterinaarne rahvatervis",
                        courses: [
                            Course(name: "Keskkonna- ja toidutoksikoloogia", eapCount: 3),
                            Course(name: "Lihainspektsioon", eapCount: 5),
                            Course(name: "Lihainspektsiooni praktika", eapCount: 2),
                            Course(name: "Lihatoodete tehnoloogia, ohutus ja kvaliteet", eapCount: 4),
                            Course(name: "Piima ja piimatoodete kvaliteet ning ohutus", eapCount: 5),
                            Course(name: "Toidu- ja tootmishügieen", eapCount: 6),
                            Course(name: "Veterinaarjärelevalve praktika", eapCount: 2),
                            Course(name: "Veterinaarse rahvatervise ja toiduhügieeni alused", eapCount: 4),
                            Course(name: "Veterinaarteenistuse korraldus ja seadusandlus", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Kliinilised teadus",
                        courses: [
                            Course(name: "Anestesioloogia ja intensiivravi", eapCount: 4),
                            Course(name: "Dermatoloogia ja allergoloogia", eapCount: 2),
                            Course(name: "Eksootiliste loomade meditsiin", eapCount: 2),
                            Course(name: "Endokrinoloogia", eapCount: 3),
                            Course(name: "Hobusemeditsiini õppepraktika", eapCount: 4),
                            Course(name: "Hobuste kliiniline meditsiin", eapCount: 4),
                            Course(name: "Hobuste kliinilis-laboratoorne diagnostika", eapCount: 2),
                            Course(name: "Karja tervis ja keskkond", eapCount: 2),
                            Course(name: "Kirurgia I", eapCount: 3),
                            Course(name: "Kirurgia II", eapCount: 4),
                            Course(name: "Kirurgia III", eapCount: 3),
                            Course(name: "Kliniiline farmakoloogia", eapCount: 4),
                            Course(name: "Kohtuveterinaaria", eapCount: 1),
                            Course(name: "Kutse-eetika", eapCount: 1),
                            Course(name: "Lindude haigused", eapCount: 3),
                            Course(name: "Loomade infektsioonhaigused I", eapCount: 3),
                            Course(name: "Loomade infektsioonhaigused II", eapCount: 3),
                            Course(name: "Mäletsejaliste kliiniline meditsiin", eapCount: 7),
                            Course(name: "Neuroloogia", eapCount: 2),
                            Course(name: "Oftalmoloogia", eapCount: 2),
                            Course(name: "Parasitoloogia ja invasioonihaigused", eapCount: 5),
                            Course(name: "Patoloogiline morfoloogia ja lahanguõpetus", eapCount: 3),
                            Course(name: "Produktiivloomade kliinilis-laboratoorne diagnostika", eapCount: 2),
                            Course(name: "Produktiivloomade meditsiini õppepraktika", eapCount: 6),
                            Course(name: "Seemenduse ja loomaarsti abilise praktika", eapCount: 3),
                            Course(name: "Sigade kliiniline meditsiin", eapCount: 3),
                            Course(name: "Sünnitusabi ja günekoloogia I", eapCount: 4),
                            Course(name: "Sünnitusabi ja günekoloogia II", eapCount: 4),
                            Course(name: "Uurmistöö metoodika veterinaarmeditsiinis", eapCount: 1),
                            Course(name: "Vesiviljelustehnoloogiad, kalade ja vähkide haigused ning tervishoid", eapCount: 3),
                            Course(name: "Veterinaarpraksise korraldus ja majandamine", eapCount: 3),
                            Course(name: "Veterinaarradioloogia", eapCount: 5),
                            Course(name: "Veterinaarsed kliinilised oskused", eapCount: 1),
                            Course(name: "Väikeloomade erakorralise meditsiini õppepraktika", eapCount: 3),
                            Course(name: "Väikeloomade kliinilis-laboratoorne diagnostika", eapCount: 2),
                            Course(name: "Väikeloomade meditsiini õppepraktika", eapCount: 10),
                            Course(name: "Väikeloomade sisehaigused I", eapCount: 4),
                            Course(name: "Väikeloomade sisehaigused II", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                name: "6. õppeaasta kohustuslik",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Produktiivloomade ja hobusemeditsiin",
                        courses: [
                            Course(name: "Hobusemeditsiini erikursus", eapCount: 6),
                            Course(name: "Seakarja tervishoiu korraldus", eapCount: 4),
                            Course(name: "Suurloomakliiniku kliiniline praktika", eapCount: 20),
                            Course(name: "Veisekarja tervishoiu korraldus", eapCount: 9),
                            Course(name: "Väikemäletsejaliste tervishoiu korraldus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Väikeloomameditsiin",
                        courses: [
                            Course(name: "Väikeloomade meditsiin", eapCount: 19),
                            Course(name: "Väikeloomakliiniku kliiniline praktika", eapCount: 24)
                        ]
                    ),
                    Submodule(
                        name: "Veterinaarmeditsiini lõputöö",
                        courses: [
                            Course(name: "Lõputöö", eapCount: 15)
                        ]
                    )
                ]
            ),
            Module(
                name: "Eriala valikained ja vabaained",
                courses: [
                    Course(name: "Akvaristika alused ja kalad kui katseloomad", eapCount: 2),
                    Course(name: "Koerakasvatus", eapCount: 4),
                    Course(name: "Küülikute ja karusloomade haigused", eapCount: 2),
                    Course(name: "Laborloomade meditsiin", eapCount: 2),
                    Course(name: "Loomaaia- ja metsloomade meditsiin", eapCount: 2),
                    Course(name: "Mesilaste haigused", eapCount: 2),
                    Course(name: "Sigimise biotehnoloogia", eapCount: 2),
                    Course(name: "Spordifüsioloogia ja doping", eapCount: 2),
                    Course(name: "Terraariumiloomade pidamine ja tervishoid", eapCount: 2)
                ],
                submodules: [
                    Submodule(name: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid Eesti Maaülikoolist ja/või teistest (välis)kõrgkoolidest.", eapCount: 11)])
                ]
            )
        ]
    ),
]
