let maaülikoolBaka = [
    majorsMinors(
        name: "Maamajanduslik Ettevõtlus",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Maamajandusliku ettevõtluse ja finantsjuhtimise õppekaval saad suurepäraste teoreetiliste teadmistega spetsialistiks. Ühtlasi saad ka praktilised oskused ettevõtte tegevuse korraldamiseks, analüüsimiseks ja arendamiseks. Selline kombinatsioon võimaldab sul tööle asuda nii era- kui avalikus sektoris.", "Bakalaureuseõppes omandatakse põhiteadmised ökonoomikast (rõhuga maamajandusele), rahandusest ja finantsjuhtimisest, õpitakse tundma maamajanduse arengusuundi ja aktuaalseid probleeme. Õppekava annab akadeemilise lugemisoskuse ja oskuse mõelda analüütiliselt. Õpe on praktiline, mis annab hea ettevalmistuse ning aitab lõpetamise järel kiiresti tööellu siirduda.", "Õpingud annavad mitmekesise õppekogemuse: teadmisi omandatakse loengutes, seminarides ja praktikumides. Lisaks arendavad kodutööd iseseisva töö oskust, meeskonnatöö-, koostöö- ja läbirääkimisoskust ning ettekanded esinemisoskust. Suvine ettevõttepraktika annab ka praktilise töökogemuse, mis tuleb pärast ülikooli lõpetamist kasuks tööle kandideerimisel.", "Maamajandusliku ettevõtluse ja finantsjuhtimise õppekava on pälvinud rahvusvahelise tunnustuse. Õppejõud on oma ala eksperdid, kes osalevad teadusprojektides ning kujundavad põllumajanduspoliitika üldsuundi. Õpetamisse on kaasatud ka praktikud nii era- kui ka avalikust sektorist. Siinne õpikeskkond on sõbralik ja teineteist toetav."],
        outcomes: ["On maamajandust tundev bakalaureusekraadiga spetsialist, kes omab süsteemset ülevaadet majanduslike protsesside üldistest seaduspärasustest ja oskusi ärivaldkonnas tegutsemiseks", "Tunneb ökonoomika põhimõisteid, ja omab teadmisi ökonoomilise analüüsi teostamiseks ja ettevõtte majandustegevuse tulemuste hindamiseks rõhuga maamajandusele, sh põllumajandusele", "Tunneb arvestuse aluseid ja rahanduse alusteooriaid, korraldab arvestust ja finantsjuhtimist ettevõtetes", "Oskab erialastele teadmistele tuginedes asutada ja majandada ettevõtet", "Oskab erialaste ülesannete ja probleemide lahendamiseks valida sobivaid meetodeid ning on valmis osalema vastavasisulistes aruteludes", "Tunneb maamajanduse arengusuundi ja aktuaalseid probleeme maaelus ja on orienteeritud panustama maamajanduse arendamisse", "Omab valmisolekut õpingute jätkamiseks ning iseseisvaks erialaseks ja tööalaseks täiendamiseks", "Osaleb aktiivselt kodanikuühiskonnas ning väärtustab oma eriala eetilisi aspekte ja ühiskondlikku rolli."],
        language: .eesti,
        majorWebsite: "http://ms.emu.ee/",
        spots: 48,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Filosoofia", eapCount: 3),
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Kõrgem matemaatika", eapCount: 7),
                    Course(name: "Maasotsioloogia üldkursus", eapCount: 4),
                    Course(name: "Majandusinformaatika", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Teadustöö alused", eapCount: 3),
                    Course(name: "Õigusõpetus", eapCount: 3)
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Majandusteaduse alused",
                        courses: [
                            Course(name: "Makroökonoomika", eapCount: 5),
                            Course(name: "Mikroekonoomika", eapCount: 5),
                            Course(name: "Rahvusvaheline majandus", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Põlluimajandusökonoomika",
                        courses: [
                            Course(name: "Loomakasvatuse alused", eapCount: 4),
                            Course(name: "Põllumajandusökonoomika põhikursus", eapCount: 5),
                            Course(name: "Põllumajandusökonoomika üldkursus", eapCount: 5),
                            Course(name: "Taimekasvatus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Statistika ja ökonomeetria",
                        courses: [
                            Course(name: "Operatsioonianalüüs", eapCount: 5),
                            Course(name: "Tõenäosusteooria ja statistika", eapCount: 5),
                            Course(name: "Ökonomeetria", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Majandusarvestus",
                        courses: [
                            Course(name: "Finantsraamatupidamine üldkursus", eapCount: 6),
                            Course(name: "Füüsilisest isikust ettevõtja arvestus", eapCount: 2),
                            Course(name: "Juhtimisraamatupidamine", eapCount: 6),
                            Course(name: "Raamatupidamise alused", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Maksud ja rahandus",
                        courses: [
                            Course(name: "Euroopa Liidu rahandus ja poliitika", eapCount: 3),
                            Course(name: "Maksud", eapCount: 3),
                            Course(name: "Rahandus", eapCount: 4),
                            Course(name: "Ärirahandus ja finantseerimine", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Logistika maamajanduses", eapCount: 3),
                            Course(name: "Maaettevõtluse põhikursus", eapCount: 3),
                            Course(name: "Maaettevõtluse üldkursus", eapCount: 2),
                            Course(name: "Ühistegevuse alused", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Turundus ja juhtimine",
                        courses: [
                            Course(name: "Ettevõtte juhtimise üldkursus", eapCount: 3),
                            Course(name: "Hinnapoliitika ja -streteegia", eapCount: 3),
                            Course(name: "Turundus", eapCount: 4)
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
                        name: "Ettevõttepraktika",
                        courses: [
                            Course(name: "Ettevõttepraktika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                module: "Valikmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Tarbija ja põllumajandustootja",
                        courses: [
                            Course(name: "Põllumajandus- ja toidusüsteemiturundus", eapCount: 3),
                            Course(name: "Põllumajandusturundus", eapCount: 3),
                            Course(name: "Tarbijakäitumine", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtluse õiguslikud ja eetilised alused",
                        courses: [
                            Course(name: "Majandusõigus", eapCount: 4),
                            Course(name: "Ärieetika", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Bioloogilise vara ja avaliku sektori arvestus",
                        courses: [
                            Course(name: "Avaliku sektori arvestus ja finantsjuhtimine", eapCount: 3),
                            Course(name: "Bioloogilise vara arvestus ja hindamine", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Maaelu juhtimine",
                        courses: [
                            Course(name: "Avalik esinemine", eapCount: 3),
                            Course(name: "Maaelu arendamine ja juhtimine", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                module: "Vabaained",
                courses: [
                    Course(name: "Vabaainete valiku teeb üliõpilane vastavalt oma huvidele Eesti Maaülikooli või teiste kõrgkoolide õppeainete hulgast, soovituslikult erialamoodulis antavate teadmiste täienduseks.", eapCount: 8)
                ]
            ),
            Module(
                module: "Bakalaureusetöö/eksam",
                courses: [
                    Course(name: "Bakalraureuseeksam", eapCount: 10),
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Geodeesia, Kinnisvara- ja Maakorraldus",
        level: .bachelor,
        type: .metsandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Eestis ja kogu maailmas vajatakse üha enam spetsialiste, kes oskavad koguda ruumiinfot ning seda visualiseerida geoinfosüsteemides (GIS) ja 3D mudelites. Kinnisvara hindade tõus ning kinnisvara arendamine suurendab nõudlust kõrgharitud spetsialistide järele, kes oskaks anda nõu kinnisvara- ja maakorralduslikes küsimustes, lahendada maavaidlusi ning vormistada vastavasisulisi dokumente.Geodeesia, kinnisvara- ja maakorralduse õppekavas õpetatavad ained jagunevad laias laastus kaheks – tehnilisteks ja õiguslik/majanduslikeks. Ühest küljest saad teadmisi seadmetest, millega looduses mõõtmisi teha, informatsiooni koguda ning seda visualiseerida, mistõttu on rõhk kaasaegsete tehnoloogiate (GPS-id, laserid, droonid) tundmaõppimisel. Teisalt saad aga teadmised maa kui kinnisvara õiguslikest, majanduslikest ja tehnilistest omadustest, mis võimaldavad hoida kätt kinnisvara arengute tuiksoonel. Kahe suuna kombineerimisel on Sinu töö tulevikus väga vaheldusrikas, innovatiivne, põnev ja tulus. Geodeesia, kinnisvara- ja maakorralduse lõpetajana kujundad maailma enda ümber.", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid, seminare, praktikume ja laboratoorseid töid kui ka ekskursioone. Samuti on Sul võimalus oma praktika teha eriala parimate ettevõtete juures.", "Õpe toimub päevases õppevormis ja kestab kokku kolm aastat. Õppejõud on oma eriala tippspetsialistid, lisaks kaasatakse õppetöösse ka praktikuid era- ja avalik-õiguslikust sektorist.", "Lõpetajana leiad tööd geodeesia, kinnisvara või maakorralduse valdkonnas nii avalikus- kui erasektoris: geodeesia- ja kartograafiafirmades, maakorralduse ja planeerimisega tegelevates firmades, kinnisvara arendamise, hindamise ja vahendamisega tegelevates ettevõtetes, kinnisvara haldusfirmades, linna- ja vallavalitsustes või riigiasutustes (Maa-amet, PRIA, Riigi Kinnisvara AS, Lennuamet, Keskkonnaministeerium, Kaitseministeerium jt)."],
        outcomes: ["Teab geodeesia, aerofotogeodeesia, maakorralduse ja maakatastri, maakasutuse planeerimise CAD ja GIS, kinnisvara ökonoomika ja hindamise põhimõisteid ja oskab selgitada vastavaid teoreetilisi printsiipe", "Oskab ära tunda ja kirjeldada geomaatika valdkonna siseseid ja väliseid interdistsiplinaarseid seoseid", "Oskab kirjeldada geodeesia, kinnisvara ja maakorralduse teoreetilisi koolkondi, arengusuundi ja aktuaalseid probleeme", "Oskab analüüsida geodeesia, maakorralduse ja kinnisvara planeerimisega seotud probleeme, rakendada vastavaid meetodeid ja hinnata erinevaid lahendusi", "Oskab iseseisvalt rakendada geomaatika valdkonna tehnikaid ja meetodeid erialaste ülesannete lahendamiseks vajaliku informatsiooni kogumisel ning hinnata saadud teabe väärtust ja kvaliteeti", "Evib erialaseks tööks vajalikku suhtlusoskust ning oskab kasutada kaasaegseid info- ja kommunikatsioonitehnoloogia vahendeid", "Oskab oma õppekeeles ja ühes võõrkeeles erialaga seonduvaid probleeme suuliselt ja kirjalikult selgitada ja osaleda vastavates aruteludes", "Suudab jätkata õpinguid magistritasemel ja elukestvas õppes", "Oskab rakendada omandatud geomaatika alaseid teadmisi ja oskusi erialases töös, suudab jätkata õpinguid ning ennast iseseisvalt erialaselt täiendada", "On valmis aktiivselt osalema kodanikuühiskonnas ning suhtub sallivalt hoiakute ja väärtuste mitmekesisusse", "Mõistab geomaatika alaste teadmiste ühiskondlikku tähtsust ning maamõõdu, maakorralduse ja kinnisvara planeerimise alase tegevuse tagajärgi", "On valmis meeskonnatööks ja ühistegevuseks."],
        language: .eesti,
        majorWebsite: "http://mi.emu.ee/",
        spots: 30,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Keskkonnafüüsika", eapCount: 3),
                    Course(name: "Korrektne eesti keel", eapCount: 2),
                    Course(name: "Kõrgem matemaatika geomaatika erialale", eapCount: 8),
                    Course(name: "Riskianalüüs ja töökeskonna ohutus", eapCount: 3),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ideest äriplaanini", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Sissejuhatus erialasse",
                        courses: [
                            Course(name: "Erialapraktika", eapCount: 6),
                            Course(name: "Matemaatiline statistika", eapCount: 2),
                            Course(name: "Sissejuhatus erialasse", eapCount: 1),
                            Course(name: "Uurimistöö", eapCount: 2),
                            Course(name: "Uurimistöö alused", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Juriidika",
                        courses: [
                            Course(name: "Kinnisvaraõigus I", eapCount: 4),
                            Course(name: "Tsiviilõigus", eapCount: 3),
                            Course(name: "Õigusõpetus", eapCount: 3),
                        ]
                    ),
                    Submodule(
                        name: "Infotehnoloogia",
                        courses: [
                            Course(name: "CAD-süsteemid geomaatikas", eapCount: 4),
                            Course(name: "Geoinformaatika alused", eapCount: 5),
                            Course(name: "Infotehnoloogia geodeesias", eapCount: 3),
                            Course(name: "Insenerigraafika ja CAD", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Rakendusgeodeesia ja kaugseire",
                        courses: [
                            Course(name: "Droonimõõdistus ja laserskanneerimine", eapCount: 4),
                            Course(name: "Elektrontahhümeetria", eapCount: 4),
                            Course(name: "Fotogramm-meetria ja kugseire alused", eapCount: 7),
                            Course(name: "Geodeesia I", eapCount: 9),
                            Course(name: "Satelliitmõõdistamine", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Maakorraldus ja maakataster",
                        courses: [
                            Course(name: "Maakasutuse planeerimise põhikursus", eapCount: 3),
                            Course(name: "Maakataster ja maainfosüsteemid I", eapCount: 4),
                            Course(name: "Maakorraldus- ja katastritoimingud", eapCount: 4),
                            Course(name: "Maakorralduse põhikursus", eapCount: 5),
                            Course(name: "Mullateadus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Kinnisvarakorraldus ja hindamine",
                        courses: [
                            Course(name: "Ehitusõpetus", eapCount: 4),
                            Course(name: "Kinnisvara arendus", eapCount: 2),
                            Course(name: "Kinnisvara hindamine I", eapCount: 4),
                            Course(name: "Kinnisvara ökonoomika I", eapCount: 2),
                            Course(name: "Metsanduse alused insenerierialadele", eapCount: 4),
                            Course(name: "Sissejuhatus hinnisvaraõpetusse", eapCount: 2),
                            Course(name: "Veevarustus ja kanalisatsioon", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                module: "Eriala valikainete moodul",
                courses: [
                    Course(name: "Digitaalsed instrumendid geodeesias", eapCount: 4),
                    Course(name: "Ehitiste tehnilise seisukorra hindamine", eapCount: 4),
                    Course(name: "Ehitusgeodeesia alused", eapCount: 3),
                    Course(name: "Ehituskonstruktsioonide lühikursus", eapCount: 3),
                    Course(name: "Füüsika ja elektrotehnika alused", eapCount: 5),
                    Course(name: "Geodeesia II", eapCount: 5),
                    Course(name: "Kinnisvara haldamine", eapCount: 2),
                    Course(name: "Maakorralduse projekt", eapCount: 3),
                    Course(name: "Metsade väärtuse hindamine", eapCount: 2),
                    Course(name: "Planeerimise meetodid", eapCount: 2),
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest.", eapCount: 8)]
            ),
            Module(module: "Bakalaureusetöö", courses: [Course(name: "Bakalaureusetöö", eapCount: 10)])
        ]
    ),
    majorsMinors(
        name: "Metsandus",
        level: .bachelor,
        type: .metsandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Metsanduse õppijad on oma olemuselt keskkonda väärtustavad, laiemalt maaelu ja taastuvaid ressursse hindavad inimesed. Metsanduse valdkond on üheks Eesti majanduse ja meie rahva heaolu nurgakiviks. Tark ressursikasutus ja teadlikud otsused saavad alguse maaülikoolist. Õpingud annavad tugevad baasteadmised ning võimaluse alustada spetsialiseerumist metsamajanduse ja metsatööstuse erialadele.", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid kui seminare. Lisaks saavad tudengid praktilisi oskusi suviste metsapraktikumide käigus spetsiaalses praktikabaasis Järvselja õppe- ja katsemetskonnas.", "Õpe toimub päevases õppevormis ja kestab kokku kolm aastat. Õppejõud on oma eriala tippspetsialistid, lisaks kaasatakse õppetöösse ka praktikuid era- ja avalik-õiguslikust sektorist.", "Lõpetajana võid asuda tööle metsniku või metsaülemana nii riigi- kui erafirmades, spetsialistina puukoolides, puidutöötlemisettevõtetes ning riigiametites, spetsialistina metsavarumis- või puidutöötlemisettevõtetes, metskondades, riigiametites ning erametsaettevõtetes. Üliõpilaste seltsielu eest kannab hoolt MTÜ Eesti Metsaüliõpilaste Selts, mis on tänaseks metsandusüliõpilasi koondanud üle 20 aasta ning mille vilistlaste seas leidub mitmeid tänaseid valdkonna tipptegijaid."],
        outcomes: ["Omab baasteadmisi metsabioloogiast, metsaökoloogiast, metsakasvatusest, dendroloogiast, metsamullateadusest, metsatakseerimisest, metsakorraldusest, metsandusökonoomikast, metsa- ja puidukasutusest, puiduteadusest ning puidutöötlemise tehnoloogiatest", "Omab alusteadmisi Eestimaa metsa- ja puiduressurssidest, nende hindamise meetoditest ja kasutamise tööstuslikest võimalustest", "Oskab siduda oma teadmisi metsade jätkusuutliku majandamise ning elurikkuse säilitamise ja kaitsega", "Oskab iseseisvalt koguda ning matemaatilise statistika meetoditele tuginedes analüüsida metsanduslikke andmestikke tabelarvutuse, andmebaasisüsteemide ja GIS tarkvara keskkonnas", "Oskab suuliselt ja kirjalikult selgitada erialaga seotud probleeme ning osaleb sellekohastes aruteludes nii eesti keeles kui ka erialal olulises võõrkeeles", "On valmis õpingute jätkamiseks magistriõppes", "On valmis võtma vastutust, mis kaasneb töötamisega keskastme metsandusspetsialistina erasektoris, riiklikes organisatsioonides või ettevõtetes", "Omab valmisolekut meeskonnatööks ja ühistegevuseks"],
        language: .eesti,
        majorWebsite: "http://mi.emu.ee/",
        spots: 50,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Insenerigraafika ja CAD (2D)", eapCount: 3),
                    Course(name: "Maamõõtmise alused", eapCount: 2),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Sissejuhatus õpingutesse", eapCount: 1),
                    Course(name: "Uurimistöö alused", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ideest äriplaanini", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Metsa ja puidu mõõtmine",
                        courses: [
                            Course(name: "Metsa mõõtmine ja hindamine", eapCount: 5),
                            Course(name: "Puidu mõõtmine ja hindamine", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Metsade haldamine ja korraldamine",
                        courses: [
                            Course(name: "Geograafilised informatsioonisüsteemid", eapCount: 4),
                            Course(name: "Metsakorraldus", eapCount: 4),
                        ]
                    ),
                    Submodule(
                        name: "Metsaökoloogia",
                        courses: [
                            Course(name: "Metsabotaanika", eapCount: 3),
                            Course(name: "Metsamullateadus", eapCount: 5),
                            Course(name: "Metsaökoloogia", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Metsanduslik andmebaasid ja andmetöötlus",
                        courses: [
                            Course(name: "Loodusressursside andmebaasid", eapCount: 3),
                            Course(name: "Metsanduslik andmetöötlus", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Metsa- ja puidukaitse",
                        courses: [
                            Course(name: "Metsa- ja puidu patogeenid", eapCount: 4),
                            Course(name: "Metsaentomoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Metsanduslik taristu ja puidu varumine",
                        courses: [
                            Course(name: "Metsakuivendus ja -teed", eapCount: 4),
                            Course(name: "Puiduvarumine ja logistika", eapCount: 7)
                        ]
                    ),
                    Submodule(
                        name: "Puidu töötlemine",
                        courses: [
                            Course(name: "Puidu keemiline töötlemine", eapCount: 4),
                            Course(name: "Puidu mehhaaniline töötlemine", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Puiduteadus ja puidutehnoloogiad",
                        courses: [
                            Course(name: "Puiduteadus", eapCount: 4),
                            Course(name: "Saetööstuse tehnoloogia", eapCount: 4),
                            Course(name: "Spooni, vineeri ja puitplaatide tehnoloogia", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Metsade elurikkus ja mitmekülgne kasutamine",
                        courses: [
                            Course(name: "Metsa funktsioonid ja mittepuidulised väärtused", eapCount: 2),
                            Course(name: "Metsade elurikkus", eapCount: 3),
                            Course(name: "Ulukite bioloogia ja majandus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Metsapoliitika ja metsaökonoomika",
                        courses: [
                            Course(name: "Metsandusökonoomika", eapCount: 5),
                            Course(name: "Metsapoliitika", eapCount: 3),
                            Course(name: "Sissejuhatus metsamajandusse ja puidutööstusesse", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõttepraktika",
                        courses: [
                            Course(name: "Sissejuhatav ettevõttepraktika", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                module: "Eriala valkiainete moodul",
                courses: [
                    Course(name: "Dendrokronoloogia", eapCount: 3),
                    Course(name: "Erametsandus Eestis", eapCount: 3),
                    Course(name: "Ettevalmistus metsakorraldaja eksamiks", eapCount: 4),
                    Course(name: "Haljastus ja linnametsandus", eapCount: 4),
                    Course(name: "Ideest äriplaanini", eapCount: 4),
                    Course(name: "Innovatsioon ja totearendus", eapCount: 2),
                    Course(name: "Keskkonnaprojektide juhtimine", eapCount: 3),
                    Course(name: "Keskkonnaseire", eapCount: 4),
                    Course(name: "Keskkonnaõigus ja avalik haldus", eapCount: 3),
                    Course(name: "Looduse kaugseire", eapCount: 4),
                    Course(name: "Metsamarjakasvatus", eapCount: 2),
                    Course(name: "Metsasertifitseerimine", eapCount: 3),
                    Course(name: "Puidu ja puidupõhiste materjalide katsetamine", eapCount: 4),
                    Course(name: "Puidu modifitseerimine", eapCount: 4),
                    Course(name: "Puidutööstus Eestis", eapCount: 3),
                    Course(name: "Raietöö alused", eapCount: 4),
                    Course(name: "Raietööde õppepraktika", eapCount: 4),
                    Course(name: "Riigimetsandus Eestis", eapCount: 3),
                    Course(name: "Seenekasvatus", eapCount: 3),
                    Course(name: "Tisleritöö alused", eapCount: 4)
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: " Üliõpilased valivad vabaaineid nii oma ülikoolist kui ka teistest kõrgkoolidest. Õppeainete sisule piiranguid ei seata.", eapCount: 8)]
            ),
            Module(module: "Bakalaureusetöö", courses: [Course(name: "Bakalaureusetöö", eapCount: 10)])
        ]
    ),
    majorsMinors(
        name: "Aiandus",
        level: .bachelor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Aianduse eriala saab Eestis õppida ainult Eesti Maaülikoolis. Aianduse õppijad on oma olemuselt loodussäästlikku mõtteviisi hindavad ning viljelevad inimesed.", "Õpingud on huvitavad ja mitmekesised, sisaldades praktikume katseaedades, laborites ja tuntud aiandusfirmades. Vabaained annavad võimaluse saada osa teistegi valdkondade ainekursustest. Aianduse õppekava on pälvinud rahvusvahelise tunnustuse (positiivselt akrediteeritud õppekava). Õpe toimub päevases õppevormis ja kestab kokku kolm aastat. Õppejõud on oma eriala eksperdid, kes osalevad teadusprojektides ning kujundavad aianduse arengusuundi Eestis"],
        outcomes: ["Tunneb aiasaaduste tootmist ja haljasalade kujundamist ning teab erialatermineid", "Oskab hankida ja kriitiliselt hinnata teavet aia- ja põllusaaduste tootmise kohta eesti ja võõrkeeles", "Omab teadmisi ja oskusi säästva ja jätkusuutliku aianduse ja põllumajandustootmise planeerimiseks ja korraldamiseks", "Suudab omandatud erialateadmisi praktikas kasutada", "Oskab kasvatada aiakultuure avamaal ja katmikalal", "Oskab kasutada kaasaegseid tehnoloogiaid aiasaaduste ja istikute tootmisel katmikalal ja puukoolis", "Oskab kujundada, majandada ja hooldada koduaedu ja haljasalasid", "On valmis teaduslikuks mõtlemiseks, pidevõppeks ja magistriastme läbimiseks", "On valmis võtma vastutust, mis kaasneb töötamisega aianduse spetsialistina erasektoris, riiklikes organisatsioonides ja asutustes", "Oskab hinnata oma tegevuse mõju keskkonnale, evib loodussäästlikku mõtteviisi ja suhtub sallivalt hoiakute ja väärtuste mitmekesisusse", "Tunneb oma tegevuse eetilisi aspekte ja oma ühiskondlikku rolli"],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 20,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Informaatika ja biomeetria", eapCount: 4),
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Sissejuhatus erialasse ja teadustöö alused", eapCount: 3)
                ],
                submodules: [
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
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Muld ja väetamine",
                        courses: [
                            Course(name: "Agrokeemia", eapCount: 6),
                            Course(name: "Eesti mullastik", eapCount: 4),
                            Course(name: "Muldade väliuurimine", eapCount: 3),
                            Course(name: "Mullateaduse alused", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Haljastus",
                        courses: [
                            Course(name: "Haljasalade kujundamine", eapCount: 5),
                            Course(name: "Maastikuehitus", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Aia- ja põllukultuurid ning kasvutingimused",
                        courses: [
                            Course(name: "Geneetika", eapCount: 4),
                            Course(name: "Ilutaimed", eapCount: 6),
                            Course(name: "Kvaliteetne saak ja põllumajandustaimede areng", eapCount: 3),
                            Course(name: "Põllumajandustaimed", eapCount: 4),
                            Course(name: "Taimefüsioloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Aia- ja põllukultuuride kasvatustehnoloogiad",
                        courses: [
                            Course(name: "Aiakultuuride paljundamine", eapCount: 7),
                            Course(name: "Aianduse tehnoloogiad", eapCount: 7),
                            Course(name: "Katmikaiandus", eapCount: 7),
                            Course(name: "Köögiviljandus", eapCount: 7),
                            Course(name: "Maaviljelus", eapCount: 5),
                            Course(name: "Puuviljandus", eapCount: 7),
                            Course(name: "Taimekasvatus II", eapCount: 7)
                        ]
                    ),
                    Submodule(
                        name: "Taimetervis",
                        courses: [
                            Course(name: "Taimekahjustajad ja nende tõrje", eapCount: 13)
                        ]
                    ),
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Praktika ettevõttes", eapCount: 10)
                        ]
                    )
                ]
            ),
            Module(
                module: "Eriala valikained",
                courses: [
                    Course(name: "Agrometeoroloogia", eapCount: 2),
                    Course(name: "Maitsetaimed ja metsamarjad", eapCount: 4),
                    Course(name: "Põllumajandusökonoomika", eapCount: 4),
                    Course(name: "Raamatupidamine mittemajanduserialadele", eapCount: 3),
                    Course(name: "Rohumaaviljelus", eapCount: 7),
                    Course(name: "Taimede stressibioloogia", eapCount: 7),
                    Course(name: "Taimekasvatuse masintehnoogiad", eapCount: 3),
                    Course(name: "Viinamarjakasvatus", eapCount: 5),
                    Course(name: "Üldmikrobioloogia", eapCount: 3)
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: " Üliõpilased valivad vabaaineid nii oma ülikoolist kui ka teistest kõrgkoolidest. Õppeainete sisule piiranguid ei seata.", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10),
                    Course(name: "Bakalaureuseeksam", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Kalandus ja Rakendusökoloogia",
        level: .bachelor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Säästva arengu põhimõtted suunavad inimkonna tegemisi nüüd ja edasipidi. Meil õpid, kuidas looduselt mitte ainult võtta, vaid ka loodusele tagasi anda ja seda taastada. Ajastul, kus intensiivpõllumajandus on oma arengupiire saavutamas ja ületamas, on uus paradigma suunatud rohe- ja sinimajanduslikule säästvale arengule ning jätkusuutlikule toidutootmisele ilma elukeskkonda ja elukvaliteeti halvendamata.", "Õppekaval on kolm suunavalikut:", "• Kalandus ja vesiviljelus", "Kalanduse globaalsel ülepüügi ajastul on kala- ja vähivarude kaitse ja taastamine järjest olulisemal kohal. Kestlik sinimajandus on tõusev trend maailmas, aga ka Eestis, kus seda soosivad meie looduslikud tingimused. Vesiviljeluse plahvatuslik areng tuleb hoida säästva arengu radadel, et mõju looduskeskkonnale oleks jätkusuutlik.", "• Veekogude ökosüsteemid", "Eesti on erakordselt rikas siseveekogude ja mageveevarude poolest. Kõik need toimivad ökosüsteemid rikastavad elukeskkonda ja inimese elukvaliteeti. Kahjuks ei ole kõigi veekogude seisund selline nagu sooviksime. Tulles õppima saad teada, kuidas veekogude liigirikkust ja ökosüsteeme kaitsta ning taastada nii, et rikkus säiliks ka tulevastele põlvedele. Suur osa õppest toimub Võrtsjärve kaldal asuvas moodsas limnoloogiakeskuses.", "• Maismaa ökosüsteemid", "Metsa-, põllu- ja poollooduslikud maastikud pakuvad ökosüsteemihüvesid, millest sõltub inimkonna eksistents. Säästva arengu eesmärgid seavad tavapärasest erinevad nõuded maismaa ökosüsteemide majandamisele, liigirikkuse säilitamisele ning inimtegevuse sobitamisele looduskeskkonda. Meil õpid Eesti metsade ja poollooduslike koosluste keskkonnakaitselist ja mitterahalist väärtust, kaitse vajadusi ning säästliku majandamise võimalusi. Suur osa õppest toimub välibaasides merekaldal Virtsu lähedal Puhtus ning Peipsi järve lähedal Järvseljal."],
        outcomes: ["On omandanud alusteadmised ja oskused põllumajandusmaastike, metsade, märgalade ja veekogude bioressursside kasutamises, majandamises ja kaitses, ning biomajanduslikus ettevõtluses", "Oskab arvestada põllumajanduse, metsanduse, kalanduse ja vesiviljeluse mõju keskkonnale, elurikkusele ja ökosüsteemi hüvedele", "Oskab hinnata globaalse muutuse mõju põllumajandusele, metsandusele, kalandusele, elurikkusele ja bioressursside jätkusuutlikule kasutamisele", "Tunneb kalanduse, vesiviljeluse, veekogude ja maismaa rakendusbioloogia põhimõisteid, teoreetilisi printsiipe, rakendusalasid ja interdistsiplinaarseid seoseid ning seadusandlikke regulatsioone", "Oskab iseseisvalt analüüsida suuliselt ja kirjalikult eesti ja inglise keeles vee ja maismaa bioressursside kasutamise probleeme, hankida ja hinnata erialalisi teadmisi teadusliku metoodika alusel ning rakendada kohaseid meetodeid ja vahendeid lahenduste leidmiseks ning osaleda vastavates aruteludes", "Oskab rakendada omandatud teadmisi ja oskusi oma valdkonna töös, juurutada ökoloogilise majandamise printsiipe ja leevendada inimtegevuse mõju, arvestada eetilisi aspekte ja toimida ühiskonnas nendest lähtudes", "On valmis võtma vastutust, mis kaasneb töötamisega keskastme spetsialistina riiklikes organisatsioonides ja ettevõtetes või erasektoris kalanduse ja vesiviljeluse, elustiku ja ökosüsteemide kaitse, majandamise või taastamise valdkondades", "Evib meeskonnatöös vajalikku suhtlusoskust ning kasutab info- ja kommunikatsioonitehnoloogiaid", "Omab teadmisi ja oskusi õpingute jätkamiseks magistriastmes ning pidevaks iseseisvaks erialaseks ja tööalaseks täiendamiseks."],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 15,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Akadeemiline edukas ja õpioskused", eapCount: 2),
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Teadustöö metodoloogia", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4),
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
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Ökoloogia, evolutsioon ja elustiku kaitse",
                        courses: [
                            Course(name: "Evolutsiooni mehhanismid", eapCount: 3),
                            Course(name: "Looduskaitsebioloogia", eapCount: 5),
                            Course(name: "Loomade ökofüsioloogia", eapCount: 4),
                            Course(name: "Loomaökoloogia", eapCount: 4),
                            Course(name: "Produktsiooniökoloogia", eapCount: 4),
                            Course(name: "Sisevete ökoloogia", eapCount: 4),
                            Course(name: "Sissejuhatus biosüstemaatikasse", eapCount: 3),
                            Course(name: "Ökoloogia", eapCount: 4),
                            Course(name: "Ökoloogiline taastamine", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Elustiku tundmine",
                        courses: [
                            Course(name: "Eesti imetajad", eapCount: 3),
                            Course(name: "Eesti kalad, kahepaiksed ja roomajad", eapCount: 4),
                            Course(name: "Eesti taimestik, taimkate ja selle kaitse", eapCount: 5),
                            Course(name: "Eesti veekogude floora", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Kalandus ja hüdrobioloogia",
                        courses: [
                            Course(name: "Kalade bioloogia", eapCount: 4),
                            Course(name: "Kalade geneetika, biotehnoloogia ja aretus", eapCount: 4),
                            Course(name: "Kalade toitumine", eapCount: 3),
                            Course(name: "Kalade ökoloogia", eapCount: 2),
                            Course(name: "Rakendushüdrobioloogia I ", eapCount: 5),
                            Course(name: "Vee mikrobioloogia I", eapCount: 2),
                            Course(name: "Veekogude ökotoksikoloogia ja kalade füsioloogia", eapCount: 5),
                            Course(name: "Vesiviljeluse alused", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Maateadus ja geokeemia",
                        courses: [
                            Course(name: "Geoinformaatika I", eapCount: 4),
                            Course(name: "Geoloogia ja hüdrogeoloogia", eapCount: 4),
                            Course(name: "Hüdrokeemia", eapCount: 4),
                            Course(name: "Keskkonnakeemia", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Metoodika",
                        courses: [
                            Course(name: "Biomeetria", eapCount: 6),
                            Course(name: "Eluslooduse mitmekesisuse andmebaasid", eapCount: 2),
                            Course(name: "Kalanduse ja rakendusökoloogia uurimise meetodid", eapCount: 4),
                        ]
                    ),
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Ettevõtluspraktika", eapCount: 7)
                        ]
                    )
                ]
            ),
            Module(
                module: "Eriala valikmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "kalandus ja vähimajandus",
                        courses: [
                            Course(name: "Kalade käitlemine ja turustamine", eapCount: 2),
                            Course(name: "Kalapüük", eapCount: 3),
                            Course(name: "Vähimajandus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Vesiviljelus",
                        courses: [
                            Course(name: "Kalade paljunemine", eapCount: 3),
                            Course(name: "Mikro- ja makrovetikate kasvatamine masskultuuris", eapCount: 2),
                            Course(name: "Vesiviljeluse tehnoloogiad I", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Kalade tervis ja heaolu",
                        courses: [
                            Course(name: "Ihtüopatoloogia", eapCount: 3),
                            Course(name: "Kalade heaolu", eapCount: 3),
                            Course(name: "Kalade söötmine", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Limnoloogia ja okeanograafia",
                        courses: [
                            Course(name: "Limnoloogia", eapCount: 4),
                            Course(name: "Mereteadus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Hüdrobioloogia",
                        courses: [
                            Course(name: "Hüdrobioloogia suvepraktika", eapCount: 3),
                            Course(name: "Üldine hüdrobioloogia", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Veekogude elustik ja eutrofeerumine",
                        courses: [
                            Course(name: "Veekogude elustik", eapCount: 4),
                            Course(name: "Veekogude eutrofeerumine", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Metsad ja pärandkooslused",
                        courses: [
                            Course(name: "Metsaökoloogia ja majandamine", eapCount: 5),
                            Course(name: "Pärandkooslused", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Taimed ja taimestik",
                        courses: [
                            Course(name: "Eesti taimestik - praktika", eapCount: 3),
                            Course(name: "Taimede ökofüsioloogia", eapCount: 3),
                            Course(name: "Taimeökoloogia", eapCount: 2)
                        ]
                    ),
                    Submodule(
                        name: "Maismaa elustik",
                        courses: [
                            Course(name: "Eesti linnud", eapCount: 6),
                            Course(name: "Eesti putukad", eapCount: 5),
                            Course(name: "Mükoloogia ja seenetundmise praktikum", eapCount: 5)
                        ]
                    ),
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: " Üliõpilased valivad vabaaineid oma ülikoolist või ka teistest kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10),
                    Course(name: "Bakalaureuseeksam", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Keskkonnakaitse",
        level: .bachelor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Keskkonnakaitse õppijatel on süsteemne arusaamine keskkonnakaitse teoreetilistest printsiipidest ja uurimismeetoditest, arusaamine looduslike protsesside ning inimtegevuse mõjust elurikkusele, maastikele ja inimeste elukeskkonnale.", "Meil õpid:", "• Keskkonnakaitset ja –poliitikat, keskkonnakorraldust, keskkonnamõjude hindamist", "• Looduskaitset ja maastikuhoidu, säästlikku metsa- ja põllumajandust, veekaitset", "• Maateadusi, geoloogiat, mullateadust, hüdroloogiat, üldbioloogiat, ökoloogiat, Eesti loodust ja floorat", "• Geoinfosüsteeme, info- ja kommunikatsioonitehnoloogiaid (GIS, CAD, fototöötlus)", "• Ühiskonnateaduslikke aineid, nagu majanduse ja ettevõtluse alused, projektijuhtimine ning erialaseks tööks vajalikke suhtlusoskusi.", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid, seminare kui ka praktikume. Samuti on Sul võimalus oma praktika teha eriala parimate ettevõtete juures. Õpe toimub päevases õppevormis ja kestab kokku kolm aastat. Õppejõud on oma eriala tippspetsialistid, lisaks kaasatakse õppetöösse ka praktikuid era- ja avalik-õiguslikust sektorist."],
        outcomes: ["Omab süsteemset ülevaadet keskkonnakaitse ja maastikuarhitektuuri põhimõistetest, teoreetilistest printsiipidest ja uurimismeetoditest ja oskab ära tunda interdistsiplinaarseid seoseid", "Tunneb keskkonnakaitse ja maastikuarhitektuuri erialade olulisemaid arengusuundi ja aktuaalseid probleeme", "Oskab kirjeldada keskkonnakaitse ja maastikuarhitektuuri erialadega seotud probleeme ning analüüsida ja hinnata erinevaid lahendusi", "Oskab kohaseid meetodeid ja vahendeid kasutades iseseisvalt informatsiooni koguda", "Oskab keskkonnakaitse ja maastikuarhitektuuri erialade ülesannete lahendamisel valida ja kasutada sobivaid meetodeid, muu hulgas on valmis osalema meeskonnatöös", "Valdab erialaseks tööks vajalikke suhtlusoskusi ning info- ja kommunikatsioonitehnoloogiaid (GIS, CAD, fototöötlus)", "Oskab oma õppekeeles ja vähemalt ühes võõrkeeles oma erialaga seonduvaid probleeme suuliselt, graafiliselt ja kirjalikult selgitada ning erialastes aruteludes osaleda", "On valmis aktiivselt osalema kodanikuühiskonnas arvestades üldlevinud eetilisi aspekte ja toimib nendest lähtudes", "Oskab hinnata teadmiste rolli ning oma erialase tegevuse tagajärgi ühiskonnas", "On suuteline omandatud teadmisi ja oskusi töös rakendama, õpinguid jätkama oma eriala magistriõppes ning ennast pidevalt iseseisvalt erialaselt ja tööalaselt täiendama", "Oskab planeerida säästlikku ja kvaliteetset elukeskkonda", "Oskab tulemuslikult juurutada jätkusuutliku arengu printsiipe ja leevendada inimtegevuse mõju maastikel", "On valmis tööks erialast kvalifikatsiooni nõudval tegevusalal, näidates seejuures algatusvõimet, vastutustunnet, juhtimis- ja meeskonnatööoskusi", "Omab pädevust töötamiseks keskkonnakaitse spetsialisti kvalifikatsiooni või maastikuarhitekti pädevust nõudval ametikohal keskkonnakorralduse, maastikuarhitektuuri ja planeerimise valdkonnas vastutava spetsialisti juhendamisel."],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 34,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Andmetöötluse alused", eapCount: 4),
                    Course(name: "Biomajanduse alused", eapCount: 4),
                    Course(name: "Geoinformaatika I", eapCount: 4),
                    Course(name: "Keskkonnafilosoofia ja -eetika", eapCount: 3),
                    Course(name: "Maamõõtmine ja kartograafia", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Teadustöö metodoloogia", eapCount: 3),
                    Course(name: "Inglise erialakeel", eapCount: 4)
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
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Eesti elurikkus ja maastikud",
                        courses: [
                            Course(name: "Eesti biotoobid ja nende elustik", eapCount: 3),
                            Course(name: "Eesti kultuurmaastike ja asutuse kujunemine", eapCount: 4),
                            Course(name: "Eesti loomastik", eapCount: 4),
                            Course(name: "Eesti taimestik, taimekate ja selle kaitse", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Keskkonnakaitse",
                        courses: [
                            Course(name: "Jäätmekäitlus", eapCount: 3),
                            Course(name: "Keskkonnafüüsika", eapCount: 3),
                            Course(name: "Keskkonnakaitse ja maastikuhoiu erialapraktika", eapCount: 6),
                            Course(name: "Keskkonnakaitse üldkursus", eapCount: 4),
                            Course(name: "Keskkonnakorralduse meetmed", eapCount: 3),
                            Course(name: "Keskkonnapoliitika ja -korraldus", eapCount: 5),
                            Course(name: "Keskkonnaökoloogia", eapCount: 3),
                            Course(name: "Keskkonnaökonoomika üldkursus", eapCount: 3),
                            Course(name: "Saasteained keskkonnas", eapCount: 3),
                            Course(name: "Sissejuhatus keskkonnaõigusesse", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Loodusressurside säästlik kasutamine ja planeerimine",
                        courses: [
                            Course(name: "Eesti majandusgeograafia", eapCount: 4),
                            Course(name: "Linnaökoloogia ja planeerimine", eapCount: 4),
                            Course(name: "Maastikuhooldus", eapCount: 6),
                            Course(name: "Metsaökoloogia ja majandamine", eapCount: 5),
                            Course(name: "Rakendushüdroloogia ja hüdromeetria", eapCount: 4),
                            Course(name: "Ruumiline planeerimine", eapCount: 4),
                            Course(name: "Ökoloogiline taastamine", eapCount: 3),
                        ]
                    ),
                    Submodule(
                        name: "Üldine ökoloogia",
                        courses: [
                            Course(name: "Eesti loodusgeograafia", eapCount: 4),
                            Course(name: "Geoloogia ja hüdrogeoloogia", eapCount: 4),
                            Course(name: "Looduskaitse alused", eapCount: 3),
                            Course(name: "Maastikuökollogia ja -analüüs", eapCount: 5),
                            Course(name: "Maateaduse alused", eapCount: 4),
                            Course(name: "Mullateadus", eapCount: 5),
                            Course(name: "Ökoloogia", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                module: "Eriala valikainete moodul",
                courses: [
                    Course(name: "Akadeemiline edukus ja õpioskused", eapCount: 2),
                    Course(name: "Keskkonnanäidikud ja andmebaasid", eapCount: 2),
                    Course(name: "Keskkonnasotsioloogia", eapCount: 3),
                    Course(name: "Looduse kaugseire", eapCount: 4),
                    Course(name: "Looduse vahendamise metoodika", eapCount: 4),
                    Course(name: "Loodusturismi alused", eapCount: 4),
                    Course(name: "Projektide koostamine ja juhtimine", eapCount: 3),
                    Course(name: "Ruraalgeograafika", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 3),
                    Course(name: "Veevarustus ja veekaitse alused", eapCount: 4)
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: " Üliõpilased valivad vabaaineid oma ülikoolist või ka teistest kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10),
                    Course(name: "Bakalaureuseeksam", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Keskkonnaplaneerimine",
        level: .bachelor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne"),
            Requirements(term: "Vastuvõtueksam")
        ],
        description: ["Maastikuarhitektuuri pärusmaa on erinevate välisruumide kujundamine. Nii nagu arhitekt kavandab hooneid, kus inimestel oleks hea elada ja töötada, loob maastikuarhitekt mugavaid, turvalisi ja huvitavaid maastikuruume – nii elamupiirkondi kui ka puhke- ja mängualasid, nii avalikke linnaruume kui ka privaatseid välisruume eraklientidele. Lisaks osalevad maastikuarhitektid üld- ja detailplaneeringute koostamises, hindavad maastiku visuaalset kvaliteeti ning koostavad kavasid maastikuhoolduseks, haljasalade hooldamiseks ja maastikuväärtuste hoidmiseks. Maastikuarhitekt oskab hästi suhelda ja kaasata erinevaid osapooli oma lahenduste väljatöötamisel.", "Maastikuarhitektuuri alusõpingud annavad mitmekesise õppekogemuse: teadmisi omandad läbi stuudioprojektide, loengute, välitööde ja ekspeditsioonide, seminaride, rollimängude ja avalike esitluste. Lisaks arendavad õpingud meeskonnatöö- ja läbirääkimisoskusi ning esinemisjulgust. Oskusi saad täiendada praktika raames mõnes maastikuarhitektuuri büroos või teises erialases asutuses.", "Õpe toimub päevases õppevormis ja kestab kokku kolm aastat. Õppetöösse kaasatakse praktikuid era- ja avalik-õiguslikust sektorist. Õppimise ajal töötad sageli üheskoos välistudengitega ning Sul on võimalik minna vahetustudengina õppima mõnda teise ülikooli Eestis või välismaal.", "Bakalaureuseastmes omandatud teadmised ja oskused võimaldavad Sul tööle asuda vastutava spetsialisti juhendamisel nii era- kui ka avalikus sektoris maastikukujunduse, keskkonnakorralduse, ruumilise planeerimise, parkide ja teiste haljasalade hooldamise valdkondades."],
        outcomes: ["Alusteadmised ja arusaamise looduslike protsesside ning inimtegevuse mõjust elurikkusele, maastikele ja inimeste elukeskkonnale, sh maastiku- ja loodusressursside kasutusviisidest, maastiku- ja ruumilisest planeerimisest, maastikukujundusest, keskkonnakorraldusest, loodushoiust, keskkonnaseisundit parendavatest ruumilistest meetmetest", "Pädevuse töötamiseks keskkonnaplaneerimise või maastikukujunduse spetsialisti kvalifikatsiooni nõudval ametikohal keskkonnakorralduse, ruumilise planeerimise, haljasalade hooldamise ja maastikukujunduse (sh pargi- ja teiste avalike alade kujunduse) valdkondades vastutava spetsialisti juhendamisel", "Alusteadmised ja -oskused õpingute jätkamiseks maastikuarhitekti kutse omandamiseks või teiste lähedaste erialade omandamiseks magistriõppes."],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 20,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Looduskeskkond ja biomajandus",
                        courses: [
                            Course(name: "Biomajandus ja looduspõhised lahendused", eapCount: 4),
                            Course(name: "Keskkonnakaitse üldkursus", eapCount: 4),
                            Course(name: "Maateaduse alused", eapCount: 4),
                            Course(name: "Mullateadus", eapCount: 5),
                            Course(name: "Ökoloogia", eapCount: 4),
                            Course(name: "Üldmetsakasvatus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus ja töökeskkond",
                        courses: [
                            Course(name: "Ettevõtlus maastikuarhitektuuris", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4),
                            Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Loovtöö alused ja graafiline kommunikatsioon",
                        courses: [
                            Course(name: "Digitaalne projektgraafika", eapCount: 3),
                            Course(name: "Joonistamine", eapCount: 6),
                            Course(name: "Vormi-, kompositsiooni- ja värviõpetus", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Maastikuarhitektuuri ajalugu ja maastikupärand",
                        courses: [
                            Course(name: "Eesti kultuurmaastike ja asutuse kujunemine", eapCount: 4),
                            Course(name: "Maastikuarhitektuuri ajalugu I", eapCount: 3),
                            Course(name: "Maastikuarhitektuuri ajalugu II", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Kartograafia ja GIS",
                        courses: [
                            Course(name: "Geoinformaatika I", eapCount: 4),
                            Course(name: "Maamõõtmine ja kartograafia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Välisruumi kujundamine ja projekteerimine",
                        courses: [
                            Course(name: "Avalikke alade kujundamine", eapCount: 5),
                            Course(name: "Linnaruumi kujundamine", eapCount: 5),
                            Course(name: "Maastikuarhitetuuri üldkursus", eapCount: 6),
                            Course(name: "Maastikuehitus", eapCount: 4),
                            Course(name: "Projekteerimis- ja planeerimisõigus", eapCount: 2),
                            Course(name: "Uurimistöö alused ja linnaruumi analüüs", eapCount: 3),
                            Course(name: "Väikeste välialade kujundamine", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Taimed ja nende kasutamine",
                        courses: [
                            Course(name: "Eesti taimestik, taimekate ja selle kaitse", eapCount: 5),
                            Course(name: "Ilutaimede kasutamine", eapCount: 6),
                            Course(name: "Kujundamine taimedega", eapCount: 3),
                            Course(name: "Puittaimed ja haljastuses", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Ruumiline planeerimine ja maastik",
                        courses: [
                            Course(name: "Eesti loodusgeograafia", eapCount: 4),
                            Course(name: "Elukeskkonna detailplaneerimine", eapCount: 9),
                            Course(name: "Maastikuökoloogia ja -analüüs", eapCount: 5),
                            Course(name: "Ruumiline planeerimine", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Maastikuarhitektuuri erialapraktika", eapCount: 6)
                        ]
                    ),
                ]
            ),
            Module(
                module: "Eriala valikained",
                courses: [
                    Course(name: "Aiakujundus", eapCount: 6),
                    Course(name: "Keskkonnafilosoofia ja -eetika", eapCount: 3),
                    Course(name: "Maastikuhooldus", eapCount: 6),
                    Course(name: "Rohealade haldamine ja hooldamine", eapCount: 3),
                    Course(name: "Tehnogeensete maastike kujundamine I", eapCount: 3),
                    Course(name: "Tehnogeensete maastike kujundamine II", eapCount: 3),
                    Course(name: "Ökoloogiline taastamine", eapCount: 3)
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Loodusturism",
        level: .bachelor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Eesti on tuntud oma eripärase ja mitmekesise looduse poolest – siis võivad loodushuvilised näha nii haruldasi taimi ja loomi, puutumata rabamaastikke kui ka puisniite. Loodusturismi pärusmaa on looduse mitmekesisuse tutvustamine keskkonda säästval moel. Kasvav turistide arv on oht meie üsna puutumata loodusele, mistõttu vajab turismikorraldus ja planeerimine arukaid spetsialiste.", "Meil õpid:", "• Loodusturismi aluseid, toimimispõhimõtteid ja korraldust nii Eestis kui ka välismaal, jahi- ja kalaturismi, turismiettevõtlust, projektijuhtimist ja -kirjutamist", "• Turismivaldkonna mõistmist akadeemilises kontekstis, teaduskirjanduse analüüsimise, lugemise ja esitlemise oskust ning seostamist teooria ja praktikaga turunduse aluseid", "• Loodusgiidi tööks vajalikke oskusi: võõrkeeli, suhtlemispsühholoogiat, riske ja tööohutust loodusturismis, fotograafiat, looduse vahendamise metoodikat, klienditeekonna kujundamist, külastajate sihtgruppide ja eripärade tundmist", "• Keskkonnafilosoofiat ja -eetikat, keskkonnasotsioloogiat, ökoloogiat, üldbioloogiat, geoinfosüsteeme", "Looduskaitset ja keskkonnakorralduse põhimõtteid", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid, seminare kui ka hulgaliselt välipraktikume. Samuti on Sul võimalus oma praktika sooritada eriala parimate ettevõjate juures, nagu 360 kraadi või Soomaa.com.", "Õpe toimub päevases õppevormis ja kestab kokku kolm aastat. Õppejõud on oma eriala tippspetsialistid, lisaks kaasatakse õppetöösse ka praktikuid era- ja avalik-õiguslikust sektorist."],
        outcomes: ["Bakalaureuseastmes omandatud teadmised ja oskused võimaldavad tööle asuda riigimetsamajandamise keskuses, keskkonnaametis, keskkonnaagentuuris, keskkonnainspektsioonis, omavalitsustes, turismiorganisatsioonides, turismiettevõtetes, turismitaludes, loodushariduskeskustes ja mujal. Lisaks on Sul suurepärane ettevalmistus iseendale töökoha loomiseks.", "Oskab kirjeldada loodusteaduste ja sotsiaalmajanduse põhimõisteid, selgitada teoreetilisi printsiipe ja rakendada uurimismeetodeid", "Tunneb keskkonnakaitse rakendusalasid ja interdistsiplinaarseid seoseid", "Orienteerub loodusturismi arengusuundades ja aktuaalsetes probleemides", "Oskab analüüsida turismi ja ettevõtluse arenguga seotud probleeme ja hinnata erinevaid lahendusi", "Oskab iseseisvalt erialaste ülesannete lahendamiseks informatsiooni koguda, analüüsida ja hinnata, kasutades kohaseid meetodeid, tehnoloogiaid ja vahendeid", "Oskab kasutada tööks vajalikke info-, esitlus- ja kommunikatsioonitehnoloogiaid ning omab head suhtlusoskust", "Oskab erialaga seonduvaid probleeme suuliselt ja kirjalikult selgitada eesti keeles ning kahes võõrkeeles", "Omab valmisolekut töötamaks nii era- (turismiettevõtted, turismiarendus-organisatsioonid jt.) kui riigi ja kohaliku omavalitsuse sektoris", "Suudab rakendada omandatud teadmisi ja oskusi töös ning jätkata õpinguid magistritasemel ning mõistab elukestva õppe vajadust", "On valmis aktiivselt osalema kodanikuühiskonnas ning suhtuma sallivalt hoiakute ja väärtuste mitmekesisusse", "Vastutab oma erialase tegevuse tagajärgede eest ühiskonnas", "Omab valmisolekut meeskonnatööks ja ühistegevuseks."],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 20,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Geoinformaatika I", eapCount: 4),
                    Course(name: "Infootsingud ja andmebaaside kasutamine", eapCount: 3),
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Loodusturismi alused", eapCount: 4),
                    Course(name: "Loodusturismi uurijaseminar", eapCount: 2),
                    Course(name: "Põllumajandus Eestis", eapCount: 3),
                    Course(name: "Teadustöö metodoloogia", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Arendusprojektide koostamine ja juhtimine", eapCount: 2),
                            Course(name: "Turismiettevõtlus", eapCount: 5),
                            Course(name: "Turunuduse alused", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Eluslooduse mitmekesisuse andmebaasid", eapCount: 2),
                            Course(name: "Keskkonnafilosoofia ja -eetika", eapCount: 3),
                            Course(name: "Keskkonnakaitse üldkursus", eapCount: 4),
                            Course(name: "Keskkonnasotsioloogia", eapCount: 3),
                            Course(name: "Sissejuhatus keskkonnaõigusesse", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Üldine ökoloogia",
                        courses: [
                            Course(name: "Eesti loodusgeograafia", eapCount: 4),
                            Course(name: "Geoloogia ja hüdrogeoloogia", eapCount: 4),
                            Course(name: "Looduskaitse alused", eapCount: 3),
                            Course(name: "Maastikuökoloogia ja -analüüs", eapCount: 5),
                            Course(name: "Mullateadus", eapCount: 5),
                            Course(name: "Ökoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Elurikkus",
                        courses: [
                            Course(name: "Eesti imetajad", eapCount: 3),
                            Course(name: "Eesti kalad, kahepaiksed ja roomajad", eapCount: 4),
                            Course(name: "Eesti linnud", eapCount: 6),
                            Course(name: "Eesti putukad", eapCount: 5),
                            Course(name: "Eesti taimestik - praktika", eapCount: 3),
                            Course(name: "Eesti taimestik, taimkate ja selle kaitse", eapCount: 5),
                            Course(name: "Mükoloogia ja Eesti seenestik", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Koosluste majandamine",
                        courses: [
                            Course(name: "Eesti kultuurimaastike ja asustuse kujundamine", eapCount: 4),
                            Course(name: "Metsaökoloogia ja majandamine", eapCount: 5),
                            Course(name: "Pärandkooslused", eapCount: 3),
                            Course(name: "Rakendushüdrobioloogia I", eapCount: 5),
                            Course(name: "Sooteadus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Turismi ja loodusharidus",
                        courses: [
                            Course(name: "Ettevõttepraktika", eapCount: 6),
                            Course(name: "Giiditeenus ja tööohutus loodusturismis", eapCount: 5),
                            Course(name: "Jahi- ja kalaturism", eapCount: 3),
                            Course(name: "Looduse vahendamise metoodika", eapCount: 4),
                            Course(name: "Loodusturism maailmas", eapCount: 4)
                        ]
                    ),
                ]
            ),
            Module(
                module: "Eriala valikainete moodul",
                courses: [
                    Course(name: "Akadeemiline edukus ja õpioskused", eapCount: 2),
                    Course(name: "Ettevõtte juhtimise üldkursus", eapCount: 3),
                    Course(name: "Fotograafia", eapCount: 2),
                    Course(name: "Keskkonnapoliitika ja -korraldus", eapCount: 5),
                    Course(name: "Maateaduse alused", eapCount: 4),
                    Course(name: "Mereteadus", eapCount: 5),
                    Course(name: "Pärimuskultuur ja loodusturism", eapCount: 3),
                    Course(name: "Ruraalgeograafia", eapCount: 4),
                    Course(name: "Seene- ja metsamarjakasvatus, metade kõrvalkasutus", eapCount: 5),
                    Course(name: "Seenepraktikum", eapCount: 2),
                    Course(name: "Turismi väikeprojektide elluviimine", eapCount: 2),
                    Course(name: "Veekogude eutrofeerumine", eapCount: 4),
                    Course(name: "Ökoloogiline taastamine", eapCount: 3)
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Põllumajandussaaduste Tootmine/Turundus",
        level: .bachelor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Kogu maailmas muutuv kliima ja keskkond nõuab uusi teadmisi, kuidas kasvatada tervislikku toitu keskkonnasäästlikul moel.", "• Millised kultuurid sobivad Eesti kliimasse, kuidas neid kasvatada ja kaitsta uute haiguste ja kahjurite eest?", "• Kuidas anda kasvatatud saagile suuremat väärtust ja saada suuremat tulu?", "• Kas ja kuidas täppisviljelus, sh GPS-süsteemid, sensorid ja andurid koos IT-lahendustega aitavad tootmise muuta vähem töömahukaks, vähem kulukaks ja keskkonnasõbralikumaks?", "• Kuidas tagada söögiks piisava toidu olemasolu igas olukorras ehk toidujulgeolek?", "Õpingutes on teooria kõrval olulisel kohal praktika ülikooli praktikabaasides, ettevõtetes ja riigiasutustes, soovi korral ka välismaal. Õpingud teeb mõnusaks moodne ja mugav ülikoolilinnak, spordihoone, spordirajad ja jõerand. Loodud on sõbralik õpikeskkond, mida kannab roheline mõtteviis.", "Eesti tööturu prognoos näitab, et tulevikus napib selles valdkonnas kõrgharidusega töötajaid. Põllumajandussaaduste tootmise ja turustamise eriala lõpetajana leiad tööd", "• Taimekasvatusjuhi, tootmis- või turustusspetsialisti või konsulendina põllumajandusettevõtetes ja -ühistutes", "• Tootmis-, turustus-, ostuspetsialistina või müügijuhina erasektoris, põllumajandustarvikute edasimüüjate, vahendajate ja kokkuostjate juures", "• Ettevõtja või talunikuna oma ettevõttes", "• Arenduseksperdi või spetsialistina põllumajanduse, maaelu ning keskkonnaga seotud riigi- või kohaliku omavalitsuse asutustes ja MTÜdes. "],
        outcomes: ["Tunneb põllusaaduste tootmist ja teab erialatermineid", "Oskab hankida ja kriitiliselt hinnata teavet põllusaaduste tootmise ja turustamise kohta eesti ja võõrkeeles", "Oskab analüüsida maamajandusliku tootmise tasuvust ja jätkusuutlikkust ning on võimeline osalema ettevõtete, ühistute, talude ja regioonide arendustegevuse planeerimises", "Omab esmaseid teadmisi ja oskusi säästva ja jätkusuutliku põllumajandustootmise planeerimiseks ja korraldamiseks", "Oskab erialateadmisi praktikas kasutada", "Oskab kasutada infotehnoloogia võimalusi erialases töös", "On valmis teaduslikuks mõtlemiseks, pidevõppeks ja magistriastme läbimiseks", "On valmis võtma vastutust, mis kaasneb töötamisega põllumajanduse spetsialistina erasektoris, riiklikes organisatsioonides ja asutustes", "Oskab hinnata oma tegevuse mõju keskkonnale, evib loodussäästlikku mõtteviisi ja suhtub sallivalt hoiakute ja väärtuste mitmekesisusse", "Tunneb oma tegevuse eetilisi aspekte ja oma ühiskondlikku rolli."],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 45,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Informaatika ja biomeetria", eapCount: 4),
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Sissejuhatus erialasse ja teadustöö alused", eapCount: 3)
                ],
                submodules: [
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
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Muld ja väetamine",
                        courses: [
                            Course(name: "Agrokeemia", eapCount: 6),
                            Course(name: "Eesti mullastik", eapCount: 4),
                            Course(name: "Muldade väliuurimine", eapCount: 3),
                            Course(name: "Mullateaduse alused", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Maaviljelus ja masintehnoloogiad",
                        courses: [
                            Course(name: "Aianduse tehnoloogiad", eapCount: 7),
                            Course(name: "Maaviljelus", eapCount: 5),
                            Course(name: "Taimekasvatuse masintehnoloogiad", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Taimekasvatus",
                        courses: [
                            Course(name: "Geneetika", eapCount: 4),
                            Course(name: "Kvaliteetne saak ja põllumajandustaimede areng", eapCount: 3),
                            Course(name: "Põllumajandustaimed", eapCount: 4),
                            Course(name: "Rohumaaviljelus", eapCount: 7),
                            Course(name: "Sordiarendus ja seemnekasvatus", eapCount: 4),
                            Course(name: "Taimefüsioloogia", eapCount: 4),
                            Course(name: "Tamekasvatus I", eapCount: 3),
                            Course(name: "Tamekasvatus II", eapCount: 7),
                            Course(name: "Tamekasvatus III", eapCount: 6),
                        ]
                    ),
                    Submodule(
                        name: "Taimetervis",
                        courses: [
                            Course(name: "Taimekahjustajad ja nende tõrje", eapCount: 13)
                        ]
                    ),
                    Submodule(
                        name: "Loomakasvatus",
                        courses: [
                            Course(name: "Eriloomakasvatus", eapCount: 6),
                            Course(name: "Söötmisõpetus toitumise alustega", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Majandus ja turundus",
                        courses: [
                            Course(name: "Põllumajandusökonoomika", eapCount: 4),
                            Course(name: "Turundus põllumajandusturunduse alused", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Praktika ettevõttes", eapCount: 10)
                        ]
                    )
                ]
            ),
            Module(
                module: "Eriala valikained",
                courses: [
                    Course(name: "Agrometeoroloogia", eapCount: 2),
                    Course(name: "Aretusõpetus", eapCount: 4),
                    Course(name: "Kuivenduse ja niisutuse alused", eapCount: 3),
                    Course(name: "Raamatupidamine mittemajanduserialadele", eapCount: 3),
                    Course(name: "Taimede stressibioloogia", eapCount: 7),
                    Course(name: "Õigusõpetus", eapCount: 3),
                    Course(name: "Ühistegevuse alused", eapCount: 3),
                    Course(name: "Üldmikrobioloogia", eapCount: 3)
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tehnika ja Tehnoloogia",
        level: .bachelor,
        type: .tehnika,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne"),
            Requirements(term: "Vastuvõtukatse")
        ],
        description: ["Õppekava  lõpetanutel on laiapõhjalised tehnikaalased teadmised tootmistehnikast, ergonoomikast ja energiamajandusest. Tudengitel on kasutada parimad erialalaboratooriumid ja õppejõududeks on noored innovaatilise mõtlemisviisiga õppejõud. Õppekava raames on võimalik spetsialiseeruda järgmistele erialadele:", "• Energiakasutuse eriala bakalaureuseastmes õpivad tudengid infotehnoloogiat, matemaatikat, füüsikat, elektrotehnikat, automaatikat ja soojusõpetust. Lõpetanud tunnevad arvutus- ja mikroprotsessortehnikat ning suudavad luua uut tarkvara, neil on head teadmised energiakasutuse, taastuvenergeetika ja energiasäästu valdkonnas. Lõpetanud võivad tööle asuda energeetikaettevõtetes keskastme juhtidena, energiasüsteemide projekteerijatena ning infotehnoloogia- ja arvutispetsialistidena. Energeetikaspetsialistide järele on suur nõudlus.", "• Ergonoomika eriala uurib inimest ja inimrühmi tööprotsessis töövahendite ja -tingimuste optimeerimise ning ettevõtte töökvaliteedi parendamise eesmärgil. Ergonoomika eesmärgiks on uurida ja luua ergonoomilis-majanduslikku tootmis- ja töötehnoloogiat. Tudengid uurivad tööstus- ja põllu­majandusettevõtetes töökeskkonda, töötamiskohtade ergonoomikat, mikrokliimat, valgustatust, müra, vibratsiooni ja teisi ohutegureid. Lõpetanud võivad tööle asuda töökeskkonna, -tervishoiu ja -ohutuse spetsialistina, riskianalüütikuna ning  konsultandina.", "• Tootmistehnika valdkonnas on nõutud spetsialistid, kes on pädevad nii põllumajandustehnika  kui ka masinaehituse  valdkonnas, tunnevad arvutiga  juhitavaid seadmeid masinaehituseettevõttes, loomafarmis ja põllul. Tudengid õpivad autode ja traktorite konstruktsiooni, automaatikat, elektroonikat, insenerigraafikat, raalprojekteerimist, materjalide töötlemistehnoloogiat. Lõpetanud võivad asuda tööle joonestaja, tehniku või esmatasandi tootmisjuhina."],
        outcomes: ["Omab süsteemset ülevaadet maamajanduslikust tootmisest ja tehnikast", "Tunneb tehnikateaduse koolkondi ja arengut", "Oskab selgitada tehnika ja tootmistehnoloogia teoreetilisi põhimõtteid", "Oskab rakendada tehnoloogia ja tehnika uurimismeetodeid", "Mõistab tootmistehnika, energeetika ja ergonoomika vahelisi seoseid", "Oskab seostada omandatud teadmisi jätkusuutliku majandamisega tehnika ja tehnoloogia valdkonnas", "Oskab iseseisvalt koguda ning matemaatilise statistika meetoditele tuginedes analüüsida tehnika ja tehnoloogia andmestikke tabelarvutuse ja andmebaasisüsteemide keskkonnas", "Oskab suuliselt ja kirjalikult selgitada erialaga seotud probleeme ning osaleda sellekohastes aruteludes eesti ja võõrkeeles", "On valmis õpingute jätkamiseks magistriõppes ning elukestvaks eri- ja tööalaseks enesetäiendamiseks", "On valmis võtma vastutust, mis kaasneb töötamisega keskastme spetsialistina (tehnik, esmatasandi tootmisjuht, projekti koordinaator)", "Omab valmisolekut meeskonnatööks ja ühistegevuseks", "Väärtustab oma eriala eetilisi aspekte ja ühiskondlikku rolli."],
        language: .eesti,
        majorWebsite: "http://te.emu.ee/",
        spots: 75,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Maaettevõtluse alused", eapCount: 4),
                            Course(name: "Startup-ettevõtlus biomajandustehnoloogiates", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4),
                            Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Matemaatika ja füüsika",
                        courses: [
                            Course(name: "Füüsika", eapCount: 10),
                            Course(name: "Kõrgem matemaatika I", eapCount: 5),
                            Course(name: "Kõrgem matemaatika II", eapCount: 5),
                            Course(name: "Statistika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Uurimistöö ja õiguse alused",
                        courses: [
                            Course(name: "Filosoofia", eapCount: 3),
                            Course(name: "Inglise erialakeel", eapCount: 4),
                            Course(name: "Uurimistöö metodoloogia ja inseneritarkvara", eapCount: 4),
                            Course(name: "Õigusõpetus", eapCount: 3)
                        ]
                    ),
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Elektroonika ja elektrotehnika",
                        courses: [
                            Course(name: "Elektroonika", eapCount: 5),
                            Course(name: "Nõrkvoolusüsteemid", eapCount: 3),
                            Course(name: "Teoreetiline elektrotehnika", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Infotehnoloogia",
                        courses: [
                            Course(name: "Programmeerimine I", eapCount: 3),
                            Course(name: "Programmeerimine II", eapCount: 3),
                            Course(name: "Sissejuhatus digitehnoloogiatesse", eapCount: 2),
                            Course(name: "Visuaalprogrammeerimine", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Mehaanika",
                        courses: [
                            Course(name: "Insenerimehaanika", eapCount: 5),
                            Course(name: "Masinamehaanika", eapCount: 5),
                            Course(name: "Materjaliõpetus", eapCount: 5),
                            Course(name: "Tugevusõpetus", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Tehnika",
                        courses: [
                            Course(name: "Automaatika", eapCount: 3),
                            Course(name: "Mootorikütused ja määrdeained", eapCount: 3),
                            Course(name: "Pneumo- ja hüdrosüsteemid", eapCount: 5),
                            Course(name: "Soojustehnika", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Tehnoloogia projekteerimise alused",
                        courses: [
                            Course(name: "Insenerigraafika ja kujundustehnoloogia", eapCount: 6),
                            Course(name: "Sissejuhatus erialasse", eapCount: 2),
                            Course(name: "Standardiseerimise põhikursus", eapCount: 3),
                            Course(name: "Tehnoloogia projekteerimine", eapCount: 3)
                        ]
                    ),
                ]
            ),
            Module(
                module: "Spetsialiseerumine",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Energiakasutus",
                        courses: [
                            Course(name: "Elektri ja automaatikaseadmete montaaž", eapCount: 3),
                            Course(name: "Elektrimasinad ja -ajamid", eapCount: 6),
                            Course(name: "Elektriseadmete kasutamine ja ohutus", eapCount: 6),
                            Course(name: "Energia kasutamine ja asjade internet", eapCount: 3),
                            Course(name: "Energiakasutuse tehnoloogiapraktika", eapCount: 6),
                            Course(name: "Soojusgeneraatorid", eapCount: 3),
                            Course(name: "Valgustusseadised", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Tootmistehnika",
                        courses: [
                            Course(name: "Autod-traktorid", eapCount: 5),
                            Course(name: "Materjalide töötlemistehnoloogia", eapCount: 6),
                            Course(name: "Materjalide töötlemistehnoloogia õppepraktika", eapCount: 4),
                            Course(name: "Põllundusmasinad", eapCount: 6),
                            Course(name: "Sissejuhatus biokütustesse", eapCount: 3),
                            Course(name: "Tehnoloogiapraktika", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Ergonoomika",
                        courses: [
                            Course(name: "Inimkeskne tootedisain", eapCount: 5),
                            Course(name: "Mõõteseadmete kursuseprojekt", eapCount: 2),
                            Course(name: "Tehnika ja ohutushoid", eapCount: 6),
                            Course(name: "Tootmisergonoomika", eapCount: 5),
                            Course(name: "Töökeskkond tööstuses ja põllumajanduses", eapCount: 6),
                            Course(name: "Tööohutustehnoloogia praktika", eapCount: 6)
                        ]
                    ),
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Loomakasvatus",
        level: .bachelor,
        type: .veterinaaria,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Huvitud koduloomadest, nende heaolust ja füsioloogiast? Sulle pakuvad põnevust põllumajandus ja ettevõtlus? Tahad olla osa tuleviku põllumajandusest? Meilt saad teoreetilised teadmised ja praktilised oskused loomakasvatuse valdkondade arendamiseks ja majandamiseks. Loomakasvatus on praktiline, põnev ja väljundite rohke eriala – loomakasvatusspetsialistid on tööturul järjest rohkem hinnatud. See eriala annab hea aluse, et luua kasulikke kontakte ning kindlustada oma tulevik.", "Tubliks praktikuks ja valdkonna tipptegijaks ei saa ilma akadeemiliste alusteadmisteta, sest igapäevatöös saadavat ja kasutada olevat infot on vaja osata analüüsida ja lahti mõtestada, et tulemuslikumalt otsuseid langetada. Õppekava annab akadeemilise lugemisoskuse ja arendab analüüsivõimet. Õppe käigus on Sul palju võimalusi omandada teadmisi läbi praktika, muu hulgas Märja katsefarmis ning erinevates loomakasvatusettevõtetes.", "Õpingud annavad mitmekesise õppekogemuse: teadmisi omandatakse loengutes, seminarides ja praktikumides. Lisaks arendavad kodutööd iseseisva töö, meeskonnatöö - ja läbirääkimisoskust ning ettekanded esinemisjulgust.", "Loomakasvatuse eriala bakalaureuseõppekaval saab õppida päevaõppevormis. Bakalaureuse õppekava kestab kolm aastat ning paljud lõpetanud jätkavad oma õpinguid sessioonõppena magistriõppes."],
        outcomes: ["Meie lõpetajad leiavad endale töö nii era- kui ka avalikus sektoris. Omandatud erialased teadmised võimaldavad lõpetanutel tööle asuda loomakasvatus- või turustusettevõtetes, erialaorganisatsioonides või riigiasutustes.", "Õppekavajärgne kvalifikatsioon eeldab lõpetajalt järgmisi pädevusi:", "Omab alusteadmisi bioloogiast, keemiast, kõrgemast matemaatikast, biomeetriast, koduloomade morfoloogiast, füsioloogiast ja biokeemilistest protsessidest loomorganimis, mikrobioloogiast ja põllumajandustaimedest tasemel, mis võimaldab jätkata erialaainete omandamist", "Tunneb põllumajandusloomade- ja lindude ning kalade bioloogilisi iseärasusi, geneetikat, aretust, söötmist, pidamist, tervishoidu, loomakasvatussaaduste säästliku tootmise korraldamist ja ökonoomikat", "Tunneb loomsete toiduainete valmistamise, hindamise, säilitamise ning toiduohutusega seotud põhimõtteid lähtuvalt inimese toitumisest", "Oskab rakendada õpitud eriala teadmisi praktikas", "Oskab hankida ja hinnata kriitiliselt oma valdkonna teadmisi ning mõistab teadusliku meetodi olemust", "Suudab analüüsida suuliselt ja kirjalikult oma erialaga seonduvaid probleeme ning osaleda vastavates aruteludes", "Valdab põhilisi erialatermineid ühes võõrkeeles", "Oskab teaduslikke, ühiskondlikke ja eetilisi aspekte arvesse võttes hinnata õppekava läbimisel omandatud teadmiste ja oskuste teoreetilist ning rakenduslikku väärtust nii enda kui ka ühiskonna seisukohast", "Kalakasvatuse suuna lõpetanu omab lisaks loomakasvatusele teadmisi vesiviljelustehnoloogiast", "On valmis õpingute jätkamiseks magistriõppes", "On valmis võtma vastutust, mis kaasneb töötamisega keskastme spetsialistina erasektoris, riiklikes organisatsioonides või ettevõtetes", "Omab valmisolekut meeskonnatööks ja ühistegevuseks", "Väärtustab oma eriala eetilisi aspekte ja ühiskondlikku rolli"],
        language: .eesti,
        majorWebsite: "http://vl.emu.ee/",
        spots: 20,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Sissejuhatus loomakasvatuse õpingutesse", eapCount: 1),
                    Course(name: "Teadustöö alused", eapCount: 2),
                    Course(name: "Üldkeemia", eapCount: 5)
                ],
                submodules: [
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Loomade kehaehitus ja talitus",
                        courses: [
                            Course(name: "Biokeemia ja olekulaarbioloogia alused", eapCount: 7),
                            Course(name: "Koduloomade morfoloogia", eapCount: 3),
                            Course(name: "Loomafüsioloogia alused", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Tõuaretus",
                        courses: [
                            Course(name: "Aretusõpetus", eapCount: 7),
                            Course(name: "Informaatika ja biomeetria", eapCount: 4),
                            Course(name: "Loomageneetika", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Söödatootmine ja söötmisteadus",
                        courses: [
                            Course(name: "Agronoomia alused ja söödatootmine", eapCount: 6),
                            Course(name: "Põllumajandustaimed", eapCount: 3),
                            Course(name: "Söötmisõpetus", eapCount: 7)
                        ]
                    ),
                    Submodule(
                        name: "Loomade heaolu, tervis ja sigimine",
                        courses: [
                            Course(name: "Loomade käitumine, heaolu ja kaitse", eapCount: 3),
                            Course(name: "Loomatervishoid ja veterinaaria alused", eapCount: 5),
                            Course(name: "Mikrobioloogia ja immunoloogia", eapCount: 3),
                            Course(name: "Sigimisõpetus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Loomakasvatussaaduste tootmine",
                        courses: [
                            Course(name: "Hobusekasvatus", eapCount: 5),
                            Course(name: "Küülikukasvatus", eapCount: 2),
                            Course(name: "Lamba- ja kitsekasvatus", eapCount: 5),
                            Course(name: "Lihatehnoloogia alused", eapCount: 2),
                            Course(name: "Linnukasvatus", eapCount: 5),
                            Course(name: "Loomakasvatuse õppepraktika", eapCount: 2),
                            Course(name: "Loomakasvatusettevõtte praktika", eapCount: 8),
                            Course(name: "Loomapidamise mehhaniseerimise alused", eapCount: 4),
                            Course(name: "Maheloomakasvatus", eapCount: 4),
                            Course(name: "Piimatehnoloogia alused", eapCount: 2),
                            Course(name: "Seakasvatus", eapCount: 6),
                            Course(name: "Veisekasvatus", eapCount: 6),
                            Course(name: "Üldloomakasvatus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Maaettevõtlus",
                        courses: [
                            Course(name: "Ideest äriplaanini", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4),
                            Course(name: "Põllumajandusökonoomika", eapCount: 4)
                        ]
                    ),
                ]
            ),
            Module(
                module: "Eriala valikainete moodul",
                courses: [
                    Course(name: "Inimese toitumisõpetus", eapCount: 4),
                    Course(name: "Karusloomakasvatus", eapCount: 2),
                    Course(name: "Koerakasvatus", eapCount: 4),
                    Course(name: "Maailma loomakasvatus", eapCount: 2),
                    Course(name: "Mesindus", eapCount: 4),
                    Course(name: "Toiduohutuse juhtimissüsteem toiduainete töötlemisel", eapCount: 4),
                    Course(name: "Veiste kunstlik seemendamine", eapCount: 3)
                ]
            ),
            Module(module: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Toiduainete Tehnoloogia",
        level: .bachelor,
        type: .veterinaaria,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne"),
            Requirements(term: "Motivatsioonikiri")],
        description: ["Meil õpid otstarbekalt lahendama toiduainete tehnoloogias ja toidu tooteahelas esile kerkivaid probleeme. Sa omandad süsteemse ülevaate toidutoorme tootmisest ning oskad hinnata toidu tooteahela terviklikkust toorme tootmisest toiduainete tarbimiseni.Lõpetajana asud tööle tööstusharus, mille toodang moodustab ligi 30% kogu Eesti tööstustoodangust.", "Toiduainetööstus on Eesti üks olulisemaid tööstusharusid, mis annab tööd ligi 22 000 inimesele. Toiduainete tehnoloogi elukutse on elulähedane ja selle sisu võib lühidalt kirjeldada kui keemia, füüsika, bioloogia, mikrobioloogia ja tehnikaalaste teadmiste rakendamist selleks, et toota tööstuslikult joogi-, liha- piima-, pagari- ja kondiitritooteid, maiustusi ning konserve – kõike seda, millest kodus toitu tehakse või mida tarbitakse valmisproduktina.", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid, seminare, praktikume kui ka laboratoorseid töid. Kaasaegse õpikeskkonna tagab äsjaloodud Eestis unikaalne laborikompleks, sh uuenenud mikromeierei, lihatehnoloogia, jookide-, pagari- ja kondiitritoodete tehnoloogia ning teadusuuringute laboratooriumid, mis võimaldavad õpitut kohe praktiliselt ellu viia. Samuti on Sul võimalus oma praktika sooritada valdkonna parimates ettevõtetes. Õpe toimub päevases õppevormis ja kestab kokku kolm aastat. Õppejõud on oma eriala tippspetsialistid, lisaks kaasatakse õppetöösse ka praktikuid era- ja avalik-õiguslikust sektorist."],
        outcomes: ["Lõpetajana leiad tööd toiduainete tehnoloogina, töötades vastutusrikastel ametikohtadel toiduainetööstuses (piima-, liha-, jookide-, konservi- ning pagari- ja kondiitritööstustes) jt toidukäitlemise ettevõtetes. Samuti on võimalik tööle asuda mitmesugustes toiduainete järelevalve, hariduse ning tarbijakaitse organisatsioonides.", "Õppekava edukalt läbinu:", "Omab süsteemset ülevaadet toidutoorme tootmisest, ning oskab hinnata toidu toote-ahela terviklikkust toorme tootmisest toiduainete tarbimiseni", "Tunneb toiduainete töötlemise üldist ajalugu, erialaseid arengusuundi ja oskab neid seostada teaduse ja tehnika progressi, kultuuriliste eripärade ning ühiskondlike ja eetiliste aspektidega", "Omab süsteemset ülevaadet toiduainete tehnoloogia põhimõistetest, teoreetilistest ja tehnilistest printsiipidest, erialase uurimistöö meetoditest ning oskab neid seostada siduserialadega", "Tunneb üldisel tasemel erinevate toiduainete tootmise tehnoloogiaid, neis kasutatavaid protsesse ja seadmeid ning toiduainete kvaliteedi ja ohutusega seotud aspekte", "Suudab individuaalselt või meeskonnatööna otstarbekalt lahendada toiduainete tehnoloogias ja toidu tooteahelas esile kerkivaid probleeme", "Mõistab teadmiste olulisust, oskab rakendada tehnoloogia ja tehnika uurimismeetodeid, koguda ja kriitiliselt hinnata erialast informatsiooni, on võimeline suuliselt ja kirjalikult selgitama toidu tooteahela ja toiduainete tootmisega seotut eesti või mõnes eriala jaoks olulises võõrkeeles", "On valmis ühistegevuseks, elukestvaks enesetäiendamiseks ja õpingute jätkamiseks magistriõppes."],
        language: .eesti,
        majorWebsite: "http://vl.emu.ee/",
        spots: 25,
        duration: 3,
        studyLocation:  ["Tartu"],
        eap: 180,
        cost: "0€",
        modules: [
            Module(
                module: "Üldmoodul",
                courses: [
                    Course(name: "Informaatika ja biomeetria", eapCount: 4),
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Kõrgema matemaatika alused", eapCount: 3),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Üldkeemia", eapCount: 5)
                ],
                submodules: [
                    Submodule(
                        name: "Keskkonnakorraldus ja biomajandus",
                        courses: [
                            Course(name: "Biomajanduse alused", eapCount: 4),
                            Course(name: "Keskkonnakaitse ja -korraldus", eapCount: 4),
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ideest õriplaanini", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4)
                        ]
                    )
                ]
            ),
            Module(
                module: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Toiduteaduse alused",
                        courses: [
                            Course(name: "Biokeemia ja olekulaarbioloogia alused", eapCount: 7),
                            Course(name: "Füüsikaline ja kolloidkeemia", eapCount: 3),
                            Course(name: "Sissejuhatus toiduainete tehnoloogiasse", eapCount: 4),
                            Course(name: "Uurmistöö alused toiduainete tehnoloogias", eapCount: 3),
                            Course(name: "Üldmikrobioloogia", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Toidutoore",
                        courses: [
                            Course(name: "Toiduainete loomne toore", eapCount: 5),
                            Course(name: "Toiduainete taimne toore", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Toidutöötlemise protsessid ja seadmed",
                        courses: [
                            Course(name: "Füüsika ja elektrotehnika alused", eapCount: 5),
                            Course(name: "Insenerigraafika I", eapCount: 3),
                            Course(name: "Toiduainetööstuse protsessid ja üldseadmed", eapCount: 7),
                            Course(name: "Toiduainetööstuse tehnoloogiliste liinide projekteerimise alused", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Toiduainete tehnoloogia",
                        courses: [
                            Course(name: "Jookide tehnoloogia alused", eapCount: 6),
                            Course(name: "Kalatoodete tehnoloogia alused", eapCount: 3),
                            Course(name: "Pagari- ja kondiitritoodete tehnoloogia alused", eapCount: 6),
                            Course(name: "Piimatoodete tehnoloogia alused", eapCount: 9),
                            Course(name: "Taimsete toiduainete tehnoloogia alused", eapCount: 5),
                            Course(name: "Tapa- ja lihasaaduste tehnoloogia alused", eapCount: 9),
                            Course(name: "Toiduainete tehnoloogia erialapraktika", eapCount: 12),
                            Course(name: "Tööstuslikud mikroobid ja juuretised", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Toiduainete kvaliteet ja ohutus",
                        courses: [
                            Course(name: "Toiduainete pakendamine", eapCount: 3),
                            Course(name: "Toiduainete sensoorse hindamise alused", eapCount: 3),
                            Course(name: "Toiduainete säilitamine ja konserveerimise alused", eapCount: 4),
                            Course(name: "Toiduohutuse juhtiissüsteem toiduainete töötlemisel", eapCount: 4)
                        ]
                    ),
                ]
            ),
            Module(
                module: "Eriala valikained ja vabaained",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Eriala valikained",
                        courses: [
                            Course(name: "Eesti traditsioonilised kääritatud joogid", eapCount: 3),
                            Course(name: "Mikroobigeneetika", eapCount: 2),
                            Course(name: "Toiduainetööstuse tootearenduse alused", eapCount: 2),
                            Course(name: "Toitumise ja kulinaaria alused", eapCount: 4),
                            Course(name: "Uurimistöö jookide tehnoloogias", eapCount: 5),
                            Course(name: "Uurimistöö lihatehnoloogias", eapCount: 5),
                            Course(name: "Uurimistöö pagari- ja kondiitritoodete tehnoloogias", eapCount: 5),
                            Course(name: "Uurimistöö piimatehnoloogias", eapCount: 5),
                            Course(name: "Uurimistöö taimsete toiduainete tehnoloogias", eapCount: 5),
                            Course(name: "uurimistöö toiduainete mikrobioloogias", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Vabaained",
                        courses: [
                            Course(name: "Üliõpilased võivad valida vähemalt 8 EAP mahus vabaaineid nii oma ülikoolist kui ka teistest kõrgkoolidest. Õppeainete sisule mingit piirangut ei seata.", eapCount: 8)
                        ]
                    ),
                ]
            ),
            Module(
                module: "Bakalaureusetöö",
                courses: [
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
]
