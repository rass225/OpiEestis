let maaülikoolRaka = [
    majorsMinors(
        name: "Puidutöötlemise tehnoloogia",
        level: .applied,
        type: .metsandus,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne")
        ],
        description: ["Puidutöötlemise tehnoloogia rakenduskõrghariduse õppekava lõpetajana omandad süsteemsed alusteadmised ja oskused puidu esmaseks töötlemiseks, projekteerimises ja disainimiseks ning puittoodete lõppviimistlemiseks.", "Õpingud on huvitavad ja mitmekesised, sisaldades loenguid, seminare ning mitmekülgseid praktikume. Lisaks saad tudengina praktilisi oskusi praktikamooduli läbimisel, mis lisaks ülevaatele ettevõtte töökorraldusest ja tootmisettevõtte spetsiifikast, struktuurist ning juhtimisest, annab võimaluse ülikoolis omandatud teadmisi ja oskusi töökeskkonnas järele proovida.", "Õpe toimub päevases õppevormis ja kestab kokku neli aastat. Peamine õppetöö toimub Tartus, kuid osaliselt ka Võrumaal.  Õppejõud on oma eriala tippspetsialistid, lisaks kaasatakse õppetöösse praktikuid era- ja avalik-õiguslikust sektorist.", "Lõpetajana võid asuda tööle puidutöötlemise ja mööblitootmise valdkonna keskastme spetsialisti, puidutehnoloogi, konstruktori või projekteerijana. Samuti on võimalik jätkata õpinguid magistriõppes."],
        outcomes: ["Omab süsteemseid baasteadmisi puidutöötlemise ja mööblitootmise põhimõtetest ning puidu jätkusuutlikust ja ökonoomsest kasutamisest", "Omab ülevaadet puidutöötlemise ja mööblitööstuse arengust ja riskidest ning tunneb meetodeid nende hindamiseks, ennetamiseks ja lahendamiseks", "Tunneb tootearenduse ja innovatsiooni põhimõtteid ning rakendab neid puittoodete ja -detailide projekteerimisel ja disainimisel", "Tunneb puittoodete ja -detailide töötlemise ja viimistlemise tehnoloogiaid ning rakendab tootmisülesande keerukusastmest lähtuvalt vastavaid töötlemise ja viimistlemise võtteid", "Järgib töö- ja keskkonnaohutuse nõudeid", "Oskab korraldada enda ja teiste tööd ning juhendada kaastöötajaid", "Mõistab ja kasutab erialateavet suuliselt ja kirjalikult eesti ja võõrkeeles, osaleb erialastes aruteludes."],
        language: .eesti,
        majorWebsite: "http://mi.emu.ee/",
        spots: 25,
        duration: 4,
        studyLocation:  [.tartu],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [
                    Course(name: "Inglise erialakeel", eapCount: 4),
                    Course(name: "Metsatööstusliku andmetöötluse põhikursus", eapCount: 4),
                    Course(name: "Puidutööstus Eestis", eapCount: 3),
                    Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                    Course(name: "Sissejuhatus õpingutesse", eapCount: 1),
                    Course(name: "Tööohutus puidutööstuses", eapCount: 1),
                    Course(name: "Uurimistöö alused", eapCount: 3),
                    Course(name: "Õigusõpetus", eapCount: 3)
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
                name: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Puiduteadus ja puitmaterjali omadused",
                        courses: [
                            Course(name: "Kõrgema matemaatika põhikursus", eapCount: 4),
                            Course(name: "Materjalide keemia I", eapCount: 3),
                            Course(name: "Metsanduse alused insenerierialadele", eapCount: 4),
                            Course(name: "Puidu mõõtmine ja hindamine. Teooria ja õppepraktika", eapCount: 3),
                            Course(name: "Puidukaitse", eapCount: 3),
                            Course(name: "Puiduteadus", eapCount: 4),
                            Course(name: "Teoreetilise mehaanika lühikursus", eapCount: 4),
                            Course(name: "Tugevusõpetuse lühikursus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Puidu mehaaniline töötlemine",
                        courses: [
                            Course(name: "Puidu kuivatamise üldkursus", eapCount: 3),
                            Course(name: "Puidu lõikeinstrumendid ja masinad", eapCount: 4),
                            Course(name: "Puidu modifitseerimine", eapCount: 4),
                            Course(name: "Puidutöötlemise alused", eapCount: 5),
                            Course(name: "Saetööstuse alused", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Puittoodete ja mööblitööstuse tehnoloogia",
                        courses: [
                            Course(name: "Mööblitööstuse tehnoloogia", eapCount: 5),
                            Course(name: "Puittoodete viimistlemine", eapCount: 4),
                            Course(name: "Spooni, vineeri ja puitplaatide tehnoloogia", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Robootika ja raalvalmistamine",
                        courses: [
                            Course(name: "Arvjutimisega tööpingid", eapCount: 5),
                            Course(name: "CAM süsteemid I", eapCount: 5),
                            Course(name: "Elektrotehnika", eapCount: 5),
                            Course(name: "Robotitehnika", eapCount: 4),
                            Course(name: "Tööstuskontrollerid", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Tootearendus ja tootmise juhtimine",
                        courses: [
                            Course(name: "Innovatsioon ja tootearendus", eapCount: 2),
                            Course(name: "Tootedisain", eapCount: 3),
                            Course(name: "Tootmise juhtimine, tootmisprotsesside efektiivsus", eapCount: 3),
                            Course(name: "Tootmislogistika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Projekteerimine ja konstrueerimine",
                        courses: [
                            Course(name: "CAD-süsteemid (2D)", eapCount: 3),
                            Course(name: "CAD-süsteemid (3D)", eapCount: 3),
                            Course(name: "Insenerigraafika I", eapCount: 3),
                            Course(name: "Puittoodete konstrueerimine", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ettevõtte ja personali juhtimine", eapCount: 4),
                            Course(name: "ideest äriplaanini", eapCount: 4),
                            Course(name: "Maaettevõtluse alused", eapCount: 4),
                            Course(name: "Raamatupidamine mittemajanduserialadele", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Ettevõttepraktika", eapCount: 12),
                    Course(name: "Materjalide tehnoloogia praktika", eapCount: 3),
                    Course(name: "Puidu ja puidupõhiste materjalide katsetamine", eapCount: 4),
                    Course(name: "Puidu käsitsitöötlemise praktika", eapCount: 7),
                    Course(name: "Puidu masintöötlemise praktika", eapCount: 10),
                    Course(name: "Puittoodete viimistlemise praktika", eapCount: 3),
                    Course(name: "Sissejuhatav ettevõttepraktika", eapCount: 3)
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "CAM süsteemid II", eapCount: 4),
                    Course(name: "Dendroloogia. Teooria ja õppepraktika", eapCount: 4),
                    Course(name: "Ehituskonstruktsioonide lühikursus", eapCount: 3),
                    Course(name: "Ehitusõpetus", eapCount: 4),
                    Course(name: "Hüdraulika- ja pneumaatika alused", eapCount: 4),
                    Course(name: "Intellektuaalse omandi õiguskaitse", eapCount: 3),
                    Course(name: "Keskkonnaprojektide juhtimine", eapCount: 3),
                    Course(name: "Materjalide tehnoloogia õppepraktika", eapCount: 3),
                    Course(name: "Materjaliõpetus", eapCount: 3),
                    Course(name: "Metsakasvatus. Teooria ja õppepraktika", eapCount: 4),
                    Course(name: "Raietöö alused. Teooria ja õppepraktika", eapCount: 4),
                    Course(name: "Robotitehnika II", eapCount: 4),
                    Course(name: "Standardiseerimise põhikursus", eapCount: 3),
                    Course(name: "Tõste- ja edastusmasinad", eapCount: 2)
                ]
            ),
            Module(name: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest", eapCount: 8)]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 15)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tehnotroonika",
        level: .applied,
        type: .tehnika,
        requirements: [
            Requirements(term: "Eesti keele riigieksam"),
            Requirements(term: "Matemaatika riigieksam"),
            Requirements(term: "Gümnaasiumi tunnistuse keskmine hinne"),
            Requirements(term: "Vastuvõtukatse")
        ],
        description: ["Tehnotroonika on multidistsiplinaarne eriala, mis moodustub neljast tehnikavaldkonna suunast: arvutustehnika, elektrotehnika, elektroonika ja mehaanika. Nelja-aastasel rakenduskõrghariduse õppekaval saad alusteadmised inseneriasjandusest. Õppekava läbinuna omistatakse Sulle mehhatroonikainseneri esmakutse (tase 6).", "Tehnotroonika õppekaval on võimalik spetsialiseeruda järgmistele erialadele:", "• Elektroonika suuna läbinuna tunned arvuti põhikomponentide ning mikrokontrollerite ehitust ja tööpõhimõtet, oskad kontrollereid programmeerida, suudab projekteerida ning reaalselt käivitada riistvarasüsteeme, tunned telekommunikatsiooni aluseid ja reaalajasüsteemide tööd. Moodul lõpeb riistvaraprojekti koostamisega.", "• Mehaanika suunale spetsialiseerudes õpid tundma elektri-, pneumo- ja hüdroajameid, erinevaid materjalide töötlemistehnoloogiaid ning arvprogrammjuhtimisega (CNC) tööpinke. Moodul lõpeb tooteprojekti koostamisega.", "Rakenduskõrgharidusõppe vältel omandad süvendatud teadmised insenerigraafikast, visuaal­programmeerimisest, raalprojekteerimisest, elektriahelatest, elektroonikast, elektrimõõtmistest, diferentsiaal- ja integraalarvutusest, inseneri- ja masinamehaanikast, majandusteaduse alustest, protsesside juhtimisest, masinaelementidest ning robotitehnikast.", "Õpingud on huvitavad ja mitmekesised, sisaldades nii loenguid kui seminare. Olulise osa õppemahust moodustavad tehnotroonika õppekaval erinevad praktikad, nagu materjalide töötlemise tehnoloogiapraktika, sissejuhatav erialapraktika, pingipraktika ning toomist- ja diplomipraktika.", "Õpe toimub päevases õppevormis ja kestab kokku neli aastat. Õppejõud on noored innovaatilise mõtlemisviisiga eriala tippspetsialistid, lisaks kaasatakse õppetöösse ka praktikuid era- ja avalik-õiguslikust sektorist. Üha populaarsem on õppimine või ettevõtluspraktika ERASMUS-vahetusüliõpilasena välismaal."],
        outcomes: ["Omab süsteemseid alusteadmisi täppisteadustest ja inseneriasjanduse põhialustest sellises sisus ja mahus, et olla valmis alustama õppekava läbimisel erialast tööd mehhatroonikainseneri või ettevõtjana tööstus- või arendusettevõttes", "On võimeline õpinguid jätkama õpinguid magistriõppes ja eriala lõpetanul on väljakujunenud tahe elukestvaks õppeks", "Tunneb oma erialaga seotud kesksete tehnikavaldkondade, nagu arvutustehnika, elektrotehnika, elektroonika ja mehaanika, interdistsiplinaarseid seoseid ja oskab õppe käigus omandatud teadmiste ja oskuste baasil analüüsida tehnilisi süsteeme, neid ka luua ja korraldada nende käitu ja hooldust", "Tunneb oma erialaga seotud riske nii inimeste kui keskkonna suhtes", "Tunneb erialaga seotud aktuaalseid probleeme, analüüsib neid ja oskab neid lahendada praktikas", "Väärtustab kvaliteetset elu- ja töökeskkonda, on ettevõtlik, näitab üles initsiatiivi ja aktiivseid meeskonnatöö oskusi", "Väärtustab erialaga seotud eetilisi aspekte ja ühiskondlikku rolli, omab tolerantsust ühiskonna suhtes, mida tingib selle mitmekesisus ning rakendab teadlikult erialases töös keskkonda säästvaid töötlemistehnoloogiaid", "Omab erialaseks tööks vajalikke suhtlusoskusi, tunneb kommunikatsioonitehnoloogiaid ja valdab vähemalt ühte erialast võõrkeelt."],
        language: .eesti,
        majorWebsite: "http://te.emu.ee/",
        spots: 35,
        duration: 4,
        studyLocation:  [.tartu],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Matemaatika",
                        courses: [
                            Course(name: "Kõrgem matemaatika I", eapCount: 5),
                            Course(name: "Kõrgem matemaatika II", eapCount: 5),
                            Course(name: "Statistika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Füüsika",
                        courses: [
                            Course(name: "Digitaalelektroonika", eapCount: 4),
                            Course(name: "Elektroonika", eapCount: 5),
                            Course(name: "Füüsika alused", eapCount: 6),
                            Course(name: "Mõõtmised ja andmetöötlus", eapCount: 6)
                        ]
                    ),
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
                            Course(name: "Maaettevõtluse alused", eapCount: 4),
                            Course(name: "Riskianalüüs ja töökeskkonna ohutus", eapCount: 3),
                            Course(name: "Startup-ettevõtlus biomajandustehnoloogiates", eapCount: 4),
                            Course(name: "Õigusõpetus", eapCount: 3)
                        ]
                    ),
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Tehnika ja uurimistöö",
                        courses: [
                            Course(name: "Inglise erialakeel", eapCount: 4),
                            Course(name: "Sissejuhatus erialasse", eapCount: 1),
                            Course(name: "Tehnika kiirkursus", eapCount: 4),
                            Course(name: "Uurimistöö metodoloogia ja inseneritarkvara", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Materjaliõpetus",
                        courses: [
                            Course(name: "Materjaliõpetus", eapCount: 5),
                            Course(name: "Tugevusõpetuse lühikursus", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Tehnoloogia projekteerimine",
                        courses: [
                            Course(name: "Insenerigraafika", eapCount: 4),
                            Course(name: "Insenerimehaanika", eapCount: 5),
                            Course(name: "Masinamehaanika", eapCount: 5),
                            Course(name: "Raalprojekteerimine I", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Robootika",
                        courses: [
                            Course(name: "Robotitehnika", eapCount: 4),
                            Course(name: "Tööstuskontrollerid", eapCount: 4)
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
                ]
            ),
            Module(
                name: "Spetsialiseerumine: Mehaanika",
                courses: [
                    Course(name: "Analüütiline mehaanika", eapCount: 4),
                    Course(name: "Arvjuhtimisega tööpingid", eapCount: 5),
                    Course(name: "CAM süsteemid I", eapCount: 5),
                    Course(name: "Elektrotehnika", eapCount: 6),
                    Course(name: "Kompleksprojekt", eapCount: 3),
                    Course(name: "Liikurmasinate diagnostika", eapCount: 5),
                    Course(name: "Materjalide töötlemistehnoloogia", eapCount: 6),
                    Course(name: "Pneumo- ja hüdrosüsteemid", eapCount: 5),
                    Course(name: "Protsesside juhtimine", eapCount: 6),
                    Course(name: "Standardiseerimise põhikursus", eapCount: 3)
                ]
            ),
            Module(
                name: "Spetsialiseerumine: Elektroonika",
                courses: [
                    Course(name: "Arvuti arhitektuur ja riistvara", eapCount: 6),
                    Course(name: "Arvutiriistvara praktikum", eapCount: 3),
                    Course(name: "Automaatika", eapCount: 3),
                    Course(name: "Digitaane loogika", eapCount: 6),
                    Course(name: "Elektroonikaseadmete disain ja tootmine", eapCount: 3),
                    Course(name: "Mikroprotsessortehnika", eapCount: 6),
                    Course(name: "Nutilahenduste praktikum", eapCount: 3),
                    Course(name: "Riistvaraprojekt", eapCount: 6),
                    Course(name: "Süsteemide modelleerimine", eapCount: 6),
                    Course(name: "Teoreetiline elektrotehnika", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "Arvuti arhitektuur ja riistvara II", eapCount: 6),
                    Course(name: "Arvutijuhitavad mõõtmised", eapCount: 3),
                    Course(name: "Automaatjuhtimine", eapCount: 4),
                    Course(name: "CAM süsteemid II", eapCount: 4),
                    Course(name: "Elektriajamite põhikursus", eapCount: 5),
                    Course(name: "Energia salvestustehnoloogiad", eapCount: 4),
                    Course(name: "Ergonoomika ja tootedisain", eapCount: 5),
                    Course(name: "Ettevõtte juhtimise üldkursus", eapCount: 3),
                    Course(name: "Füüsikalised materjalitehnoloogiad", eapCount: 3),
                    Course(name: "Hooneautomaatika", eapCount: 4),
                    Course(name: "Hüdraulika ja pneumaatika II", eapCount: 4),
                    Course(name: "Manussüsteemid", eapCount: 3),
                    Course(name: "Militaar- ja sisekaitsetehnoloogiad", eapCount: 3),
                    Course(name: "Projektide koostamine ja juhtimine", eapCount: 3),
                    Course(name: "Raamatupidamine mittemajanduserialadele", eapCount: 3),
                    Course(name: "Robotitehnika II", eapCount: 4),
                    Course(name: "Soojustehnika", eapCount: 5),
                    Course(name: "Tootmislogistika", eapCount: 3)
                ]
            ),
            Module(
                name: "Mehaanika eriala praktika",
                courses: [
                    Course(name: "Materjalide tehnoloogia praktika", eapCount: 3),
                    Course(name: "Pingipraktika", eapCount: 8),
                    Course(name: "Sissejuhatav erialapraktika ettevõttes", eapCount: 3),
                    Course(name: "Tootmispraktika", eapCount: 16),
                    Course(name: "Uurimistöö praktika", eapCount: 9)
                ]
            ),
            Module(
                name: "Elektroonika eriala praktika",
                courses: [
                    Course(name: "Erialapraktika", eapCount: 8),
                    Course(name: "Materjalide tehnoloogia praktika", eapCount: 3),
                    Course(name: "Sissejuhatav erialapraktika ettevõttes", eapCount: 3),
                    Course(name: "Tootmispraktika", eapCount: 16),
                    Course(name: "Uurimistöö praktika", eapCount: 9)
                ]
            ),
            Module(name: "Vabaained", courses: [Course(name: "Üliõpilane valib vabaaineid nii oma ülikoolist kui ka teistest (välis)kõrgkoolidest", eapCount: 9)]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 15)
                ]
            )
        ]
    ),
]
