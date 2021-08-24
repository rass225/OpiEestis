let ttüInter = [
    majorsMinors(
        name: "Arhitektuur",
        level: .integrated,
        type: .insener,
        requirements: [
            Requirements(term: "Matemaatika Riigieksam või TalTech Matemaatikakatse"),
            Requirements(term: "Eesti Keele Riigieksam"),
            Requirements(term: "Erialakatse")
        ],
        description: ["Soovid kujundada meid ümbritsevat linnaruumi ja tulevast elukeskkonda? Oled unistanud projekteerida kõrghooneid või disainida peensusteni läbimõeldud arhitektuurseid detaile? Sind huvitavad ruum, vorm ja valgus ning sooviksid siduda oma loomingulised ideed kaasaegsete innovaatiliste lahendustega? Kui nii, siis tule uuri lähemalt, mida TalTechi arhitektuuri erialal sinu tulevikule pakkuda on!", "Tallinna Tehnikaülikooli arhitektuuriõpe pöörab võrdselt tähelepanu nii loomingulisusele kui tugevatele praktilistele oskustele. Viieaastase õppe järel antakse sulle arhitektuurimagistri kraad. Õpingud koonduvad kolme stuudio ja kahe meistriklassi ümber. Nende raames teed mitmeid praktilisi töid, kus saad teoorias õpitut ellu rakendada.", "• Elamute projekteerimise stuudio projekte tehes saad praktikas kasutada teadmisi, mida oled õppinud ainetes nagu puit -ja kivikonstruktsioonid, tehnosüsteemid ja välistrassid.", "• Ühiskondlike hoonete projekteerimise stuudio projektid nõuavad sinult teadmisi teras- ja betoonkonstruktsioonide, ehitusakustika, energiatõhususe, sisekliima jm valdkondades.", "• Linnaehituse projektide stuudio raames tehtavaid töid toetavad näiteks linnaplaneerimise teooriad ja 21. sajandi linnaehituse arengusuunad, linna- ja eluasemesotsioloogia, ehitusõigus, keskkonnapoliitika ja liikluse erialaained."],
        outcomes: ["Lõpetajad on oodatud tööle nii suurtesse kui väikestesse arhitektuuri- ja projekteerimisbüroodesse. Riigiasutustes ning kohalikes omavalitsustes töötavad samuti arhitektid, kes tegelevad (näiteks linna) planeerimist ja ehitamist puudutavate küsimustega. Kogenud arhitektina võid aga tulevikus asutada oma büroo.", "Peale viieaastast õpet on sul Tallinna Tehnikaülikooli magistrikraad ning oled diplomeeritud arhitekt. Vastava tasemega spetsialist koostab ehitusprojekte siiski kogenuma arhitekti juhendamisel ega tee iseseisvalt otsuseid. Kui oled piisava töökogemuse saanud, on sul võimalik taotleda volitatud arhitekti kutset, kellel on luba omal vastutusel projekte kavandada.", "Pärast magistrikraadi saamist soovitame jätkata õpinguid doktorantuuris, sest doktorikraadi ja piisava töökogemusega on sul edaspidi võimalik taotleda volitatud arhitekti-eksperdi taseme kutsetunnistust. Volitatud arhitekt-ekspert on juba tippspetsialist, kes peale eelneva annab keerulisemaid eksperdihinnanguid ja osaleb rahvusvaheliste arhitektuurivõistluste žüriides."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/sisseastujale/abituriendile/erialad/inseneriteaduskonna-erialad/arhitektuur/#ulevaade-11",
        spots: 0,
        duration: 5,
        studyLocation:  [.tallinn],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kultuurifilosoofia ja tehiskeskkonna eetika", eapCount: 6),
                    Course(name: "Kunsti ja arhitektuuri ajalugu (klassitsismini)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Workshop I", eapCount: 3),
                            Course(name: "Workshop II", eapCount: 3),
                            Course(name: "Keskkonnakaitse ja säästva arengu alused", eapCount: 3),
                            Course(name: "Juhtimisstrateegiate simulatsioon ehituses", eapCount: 6),
                            Course(name: "Liikuvuskorraldus linnades ja liikluse modelleerimine", eapCount: 6),
                            Course(name: "Eesti keele suuline ja kirjalik väljendusõpetus", eapCount: 3),
                            Course(name: "Akadeemiline suhtlus inglise keeles", eapCount: 3),
                            Course(name: "Akadeemiline kirjutamine inglise keeles", eapCount: 3),
                            Course(name: "IT alused I", eapCount: 3),
                            Course(name: "Tõenäosusteooria ja matemaatiline statistika", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Insenertehniline moodul",
                courses: [
                    Course(name: "Kujutav geomeetria", eapCount: 6),
                    Course(name: "Keskkonna mõjud arhitektuuris ja linnaplaneerimises", eapCount: 6),
                    Course(name: "Ehitusfüüsika alused", eapCount: 6),
                    Course(name: "Heliisolatsioon ja ruumiakustika", eapCount: 6),
                    Course(name: "Ehituskonstruktsioonid arhitektidele I", eapCount: 6),
                    Course(name: "Ehituskonstruktsioonid arhitektidele II", eapCount: 6),
                    Course(name: "Energiatõhusus ja sisekliima hoonete planeerimisel", eapCount: 6),
                    Course(name: "Hoonete tehnovõrgud ja seadmed", eapCount: 6),
                    Course(name: "Tugevusõpetuse alused", eapCount: 6),
                    Course(name: "Ehitusmaterjalid", eapCount: 6),
                    Course(name: "Ehitusökonoomika ja ettevõtluse alused", eapCount: 6),
                    Course(name: "Loodusteaduste alused ja säästlik areng", eapCount: 6),
                    Course(name: "Kõrgem matemaatika I", eapCount: 6)
                ]
            ),
            Module(
                name: "Visuaalmoodul",
                courses: [
                    Course(name: "Esitlustehnikad 1 - joonistamine ja värvusõpetus", eapCount: 6),
                    Course(name: "Esitlustehnikad 2 - joonistamine ja vormiõpetus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Esitlustehnikad 3 - fotograafia ja 3D programmid", eapCount: 6),
                            Course(name: "Maalimise stuudio", eapCount: 3),
                            Course(name: "Joonistamise stuudio", eapCount: 3),
                            Course(name: "Interdistsiplinaarne ruumiprojekt", eapCount: 3),
                            Course(name: "Arhitektuurne mudelprojekteerimine (BIM) II", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Arhitektuuriprojektide stuudio",
                courses: [
                    Course(name: "Arhitektuurne projekt I. Alustusprojekt", eapCount: 6),
                    Course(name: "Arhitektuurne projekt II. Väike ühiskondlik hoone", eapCount: 6),
                    Course(name: "Arhitektuurne projekt III. Puitkonstruktsioonis eramu", eapCount: 6),
                    Course(name: "Arhitektuurne projekt IV. Kivikonstruktsioonis korterelamu", eapCount: 6),
                    Course(name: "Arhitektuurne projekt V. Avaliku kasutusega hoone", eapCount: 9)
                ]
            ),
            Module(
                name: "Erialapraktika",
                courses: [
                    Course(name: "Loominguline välipraktika", eapCount: 6),
                    Course(name: "Büroopraktika (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Meistriklass arhitektuurses projekteerimises ja linnaehituslikus planeerimises",
                courses: [
                    Course(name: "Arhitektuurne projekt VII. Saalehitus", eapCount: 9),
                    Course(name: "Linnaehituslik planeerimine. Planeerimisprojekt IV. Energiatõhus linnakvartal", eapCount: 9)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Interjööri projekt", eapCount: 3),
                            Course(name: "Arhitektuurne projekt VIII. Olulise linnaehitusliku tähtsusega objekt", eapCount: 9),
                            Course(name: "Linnaehituslik planeerimine. Planeerimisprojekt V. Olulise tähtsusega linnaehituslik liiklusprojekt", eapCount: 9)
                        ]
                    )
                ]
            ),
            Module(
                name: "Planeerimisprojektide stuudio",
                courses: [
                    Course(name: "Linnaehituse projektide stuudio. Planeerimisprojekt I. Madaltihe linnakvartal, linnatänavad", eapCount: 6),
                    Course(name: "Planeerimisprojekt II. Avaliku ruumi planeering koos maastikuehitusega", eapCount: 9),
                    Course(name: "Planeerimisprojekt III. Üldplaneering. Linnasotsioloogiline perspektiiv", eapCount: 9)
                ]
            ),
            Module(
                name: "Teoreetiline moodul",
                courses: [
                    Course(name: "Kunsti ja arhitektuuri ajalugu 19. saj. teisest poolest tänapäevani", eapCount: 6),
                    Course(name: "Kaasaegse arhitektuuri- ja linnaplaneerimise teooriad", eapCount: 6),
                    Course(name: "Eesti arhitektuuri ja linnaplaneerimise ajalugu", eapCount: 6),
                    Course(name: "Hoonete piirdetarindid", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Elektervalgustus arhitektidele", eapCount: 3),
                            Course(name: "Arhitektuurialase uurimistöö metoodika", eapCount: 3),
                            Course(name: "Linna juhtumiuuring", eapCount: 3),
                            Course(name: "Vertikaalplaneerimine", eapCount: 3),
                            Course(name: "Ehitustehnoloogia ja ehitusmaksumuse plaanimine arhitektidele", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõppe moodul",
                courses: [
                    Course(name: "Vabaained", eapCount: 12)
                ]
            ),
            Module(
                name: "Lõputöö moodul",
                courses: [
                    Course(name: "Lõputöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Ehitiste projekteerimine ja juhtimine",
        level: .integrated,
        type: .insener,
        requirements: [
            Requirements(term: "Matemaatika Riigieksam või TalTech Matemaatikakatse"),
            Requirements(term: "Eesti Keele Riigieksam")
        ],
        description: ["Ehitusinseneri töö on kodude ja töökohtade rajamine. Ehitiste projekteerimise ja ehitusjuhtimise eriala lõpetajana saad hakkama kõigega: väikeelamutest pilvelõhkujate ning keerukate tööstushooneteni. Kui sind tõmbab ehitusvaldkonna poole ja sulle meeldib näha oma mõtteid realiseerumas siis sellele erialale õppima tulek on kindel ja tulus investeering sinu tulevikku.", "Ehitus on maailma suurim majandusharu ja ehitusinseneri valikute mõju loodusele on märkimisväärne. Ehitatud keskkonna kujundamine on vastutusrikas töö, kuna hooned peavad olema vastupidavad ning ehitatud loodusressursse mõttetult raiskamata. Eesti vajab rohelise mõtteviisiga insenere.", "• Ehitiste projekteerimisele spetsialiseerumisel õpid süvendatult hoonete kandekonstruktsioone. Ainult kõige kõrgemate kutsetega spetsialistid võivad võtta vastutuse hoonete ja rajatiste projekteerimisel ning ehitamisel, kuna ehitusinseneri töö peab tagama inimeste turvalisuse, tervise ja mugavuse ehitatud keskkonnas. Õppetöö toimub Tallinna Tehnikaülikoolis Tallinnas.", "• Iga ehitusprojekt on ühtlasi investeerimisprojekt, mis algab eelseisvate kulude kalkuleerimisega ning ehitise tellijale eelarvete koostamisega. Lisaks insenerioskustele vajab iga ehitusprojekt teadmisi juhtimisstrateegiatest, juhtimispsühholoogiast, juriidikast ning kinnisvara ökonoomikast ja haldamisest. Seda kõike on võimalik õppida just ehitusjuhtimise spetsialiseerumissuunal. Õppetöö toimub Tallinna Tehnikaülikoolis Tallinnas.", "• Kuigi ühiskonna areng toob trendide muutudes ning vajaduste uuenedes kaasa üha moodsamate ja modernsemate ehitiste rajamise, on ajaloo seisukohalt äärmiselt vajalik ka vanade hoonete säilitamine ja taastamine. Ehitiste restaureerimise õpe valmistab ette ehitusinsenere, kes on võimelised rajama nii uusi ehitisi kui ka taastama eelnevate põlvkondade loodud väärtuslikke hooneid. Õppetöö toimub Tallinna Tehnikaülikooli Tartu kolledžis.", "• Projekteerimise ja arhitektuuri õppesuund ühendab endas nii inseneri kui arhitekti töö. Sinust saab loov insener, kes mõistab mõlema valdkonna väärtusi ning oskab neid teadmisi edukalt koos rakendada, et kujundada meile parem elukeskkond. Õppetöö toimub Tallinna Tehnikaülikooli Tartu kolledžis."],
        outcomes: ["Kui oled valinud spetsialiseerumiseks ehitiste projekteerimise suuna, leiad lõpetajana tööd näiteks mõnes projekteerimisbüroos või ehitusfirmas. Samuti võid vastutada suuremate ehitus- ja kinnisvaraprojektide arenduse eest või nõustada ehitushangete korraldamist. Kui sind kontoritöö eriti ei paelu, siis oled vägagi oodatud hoonete püstitamisega tegelevatesse ehitusettevõtetesse, kus saad juhtida reaalseid ehitustöid. Ka avalik sektor ehk ministeeriumid, linnad ja ametkonnad vajavad spetsialiste, kes korraldaksid ehituse valdkonda.", "Ehitusjuhtimisele spetsialiseerumine valmistab sind ette tööks ehitustööde juhina, ehituse eelarvestajana ja ökonomistina, ehituse tellijana, järelevalve insenerina või kinnisvara arendajana. Põhjalikult erinevaid ehitusmaterjale uurinud lõpetaja on oodatud ehitusmaterjalide tööstuses juhtivale positsioonile kvaliteedijuhiks, tootmisettevõtte juhiks, laboratooriumi juhatajaks või sarnasele vastutavale ametikohale. Võimalikud töökohad on ka riigiasutustes, mis on seotud ehitusmaterjalide tootmise juhtimise või kontrolliga.", "Ehitiste restaureerimise peaeriala lõpetajana oled sa ehitusinsener, kellel on lisaks ehitusalastele oskustele ka teadmised restaureerimisest, muinsuskaitse alustest ning arhitektuuriajaloost. Sinu tulevasteks tööandjateks on nii ehitus-, restaureerimis- ja projekteerimisfirmad kui ka kohalikud omavalitsused ja erinevad riigiasutused. Pärast lõpetamist ja ettenähtud töökogemuse omandamist saad muinsuskaitseametilt taotleda pädevustunnistust töötamaks ehitusmälestistel ja isegi UNESCO maailmapärandi nimekirja kuuluvatel objektidel.", "Ehitiste projekteerimise ja arhitektuuri peaeriala lõpetanuna oled ehitusinsener, kellel on lisaks teadmised arhitektuurist ning praktilised oskused erinevate hoonete projekteerimiseks ning esteetika eest vastutamiseks. Võid töötada iseseisvalt ehitusinsenerina või suuremates meeskondades koos disainerite, arhitektide ja teiste inseneridega. Ehitiste projekteerimise ja arhitektuuri suund on analoogne vastavate õppekavadega mitmetes Euroopa ülikoolides, näiteks Taani Tehnikaülikoolis, Praha Tehnikaülikoolis ja Edinburgh´i Ülikoolis."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 5,
        studyLocation: [.tallinn, .tartu],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldained",
                courses: [
                    Course(name: "Kultuurifilosoofia ja tehiskeskkonna eetika", eapCount: 6),
                    Course(name: "IT alused I", eapCount: 3),
                    Course(name: "IT alused II", eapCount: 3),
                    Course(name: "Matemaatiline analüüs", eapCount: 6),
                    Course(name: "Lineaaralgebra", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Eesti keele suuline ja kirjalik väljendusõpetus", eapCount: 3),
                            Course(name: "Vene keele suhtluskursus", eapCount: 3),
                            Course(name: "Akadeemiline kirjutamine inglise keeles", eapCount: 3),
                            Course(name: "Lõputöö seminar", eapCount: 6),
                            Course(name: "Mõõtmine, tõenäosus ja matemaatiline statistika", eapCount: 6),
                            Course(name: "Matemaatika ehitusinseneridele", eapCount: 6),
                            Course(name: "Teadusvõõrkeel", eapCount: 3),
                            Course(name: "Empiiriliste uuringute metodoloogia", eapCount: 6),
                            Course(name: "Statistika", eapCount: 6),
                            Course(name: "Matlab ja numbrilised meetodid", eapCount: 3)
                        ]
                    )
                ]
            ),
//            Module(
//                name: "Ehituse taustsüsteem ja arhitektuuri ajalugu",
//                courses: [
//                    Course(name: "Ehitusökonoomika ja ettevõtluse alused", eapCount: 6),
//                    Course(name: "Arhitektuuri ajalugu I", eapCount: 6),
//                    Course(name: "Arhitektuuri ajalugu II", eapCount: 6),
//                    Course(name: "Geodeesia", eapCount: 6),
//                    Course(name: "Insenerigraafika", eapCount: 6),
//                    Course(name: "Ehitus- ja arvutigraafika", eapCount: 6)
//                ],
//                submodules: [
//                    Submodule(
//                        name: "Valikained",
//                        courses: [
//                            Course(name: "Geodeesia õppepraktika", eapCount: 3),
//                            Course(name: "Hoonete tehnosüsteemid", eapCount: 6),
//                            Course(name: "Arvutigraafika 2D", eapCount: 3),
//                            Course(name: "AutoCAD'i praktilised rakendused", eapCount: 3),
//                            Course(name: "Joonistamine, kompositsioon, värvus- ja vormiõpetus", eapCount: 6),
//                            Course(name: "Elektrivarustus ja elektripaigaldised", eapCount: 6),
//                            Course(name: "Plaanimine ja teed", eapCount: 3)
//                        ]
//                    )
//                ]
//            ),
            Module(
                name: "Loodusteadused ja mehaanika",
                courses: [
                    Course(name: "Tugevusõpetus I", eapCount: 6),
                    Course(name: "Tugevusõpetus II", eapCount: 6),
                    Course(name: "Ehitusmehaanika I", eapCount: 6),
                    Course(name: "Ehitusmehaanika II", eapCount: 6),
                    Course(name: "Ehituskeemia", eapCount: 6),
                    Course(name: "Insenerifüüsika", eapCount: 9)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnakaitse ja säästev areng", eapCount: 6),
                            Course(name: "Ehitusmehaanika III", eapCount: 6),
                            Course(name: "Elastsusõpetus", eapCount: 6),
                            Course(name: "Hüdro- ja aeromehaanika", eapCount: 6),
                            Course(name: "Hüdraulika alused ja pumbad", eapCount: 6),
                            Course(name: "Hüdraulika alused", eapCount: 3),
                            Course(name: "Keskkonnapsühholoogia", eapCount: 3),
                            Course(name: "Keemia", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehitusprotsess",
                courses: [
                    Course(name: "Ehitushanke juhtimine", eapCount: 6),
                    Course(name: "Ehitustehnoloogia alused ja ehitusmaksumuse plaanimine", eapCount: 9),
                    Course(name: "Ehituspraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Ehitusinformatsiooni modelleerimine (BIM)", eapCount: 6),
                            Course(name: "Ehitusinvesteeringud ja projektijuhtimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehituse sidusained ja arhitektuur",
                courses: [
                    Course(name: "Elektrivarustus ja elektripaigaldised", eapCount: 6),
                    Course(name: "Kujutav geomeetria. Arvutigraafika 2D", eapCount: 6),
                    Course(name: "Ehitusjoonis. Arvutigraafika 3D", eapCount: 6),
                    Course(name: "Hoonete tehnosüsteemid", eapCount: 6),
                    Course(name: "Ehitusökonoomika ja ettevõtluse alused", eapCount: 6),
                    Course(name: "Geodeesia", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Arhitektuurne projekt I. Väiksemahuline korterelamu", eapCount: 6),
                            Course(name: "Esitlustehnikad ja vormiõpetus inseneridele", eapCount: 6),
                            Course(name: "Graafika ja digitaalsed esitlustehnikad inseneridele", eapCount: 6),
                            Course(name: "Arhitektuuri ja linnaehituse ajalugu inseneridele", eapCount: 6),
                            Course(name: "Ehituse alused", eapCount: 6),
                            Course(name: "Geodeesia õppepraktika", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Kandekonstrktsioonid: Ehitiste projekterimise eriala",
                courses: [
                    Course(name: "Betoonkonstruktsioonid I", eapCount: 6),
                    Course(name: "Betoonkonstruktsioonid II", eapCount: 6),
                    Course(name: "Teraskonstruktsioonid I", eapCount: 6),
                    Course(name: "Teraskonstruktsioonid II", eapCount: 6),
                    Course(name: "Pinnasemehaanika ja ehitusgeoloogia alused", eapCount: 6),
                    Course(name: "Vundamendid", eapCount: 6),
                    Course(name: "Puitkonstruktsioonid", eapCount: 6),
                    Course(name: "Kivikonstruktsioonid", eapCount: 6),
                    Course(name: "Projekteerimispraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Raalprojekteerimine", eapCount: 6),
                            Course(name: "Puitkonstruktsioonide erikursus", eapCount: 6),
                            Course(name: "Vesiehitiste projekteerimine", eapCount: 6),
                            Course(name: "Ehituskonstruktsioonide erikursus", eapCount: 6),
                            Course(name: "Sillakonstruktsioonid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Kandekonstrktsioonid: Ehitusjuhtimise eriala",
                courses: [
                    Course(name: "Betoonkonstruktsioonid I", eapCount: 6),
                    Course(name: "Teraskonstruktsioonid I", eapCount: 6),
                    Course(name: "Pinnasemehaanika ja ehitusgeoloogia alused", eapCount: 6),
                    Course(name: "Vundamendid", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Puitkonstruktsioonid", eapCount: 6),
                            Course(name: "Kivikonstruktsioonid", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehitusprojekti juhtimine: Ehitiste projekterimise eriala",
                courses: [
                    Course(name: "Ehitusettevõtlus ja äriplaan", eapCount: 6),
                    Course(name: "Ehituse juhtimine", eapCount: 6),
                    Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                    Course(name: "Juhtimisstrateegiate simulatsioon ehituses", eapCount: 6)
                ]
            ),
            Module(
                name: "Ehitusprojekti juhtimine: Ehitusjuhtimise eriala",
                courses: [
                    Course(name: "Ehitusinvesteeringud ja projektijuhtimine", eapCount: 9),
                    Course(name: "Ehituse juhtimine", eapCount: 6),
                    Course(name: "Kinnisvara korrashoid ja ökonoomika", eapCount: 9),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Ehitusettevõtlus ja äriplaan", eapCount: 6),
                            Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                            Course(name: "Juhtimisstrateegiate simulatsioon ehituses", eapCount: 6),
                            Course(name: "Õiguse alused ja ehitusõigus", eapCount: 6),
                            Course(name: "Juhtimise psühholoogilised alused", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehitusmaterjalid ja ehitusfüüsika: Ehitiste projekterimise eriala",
                courses: [
                    Course(name: "Hoonete piirdetarindid", eapCount: 6),
                    Course(name: "Ehitusfüüsika alused", eapCount: 6),
                    Course(name: "Hoonete renoveerimine", eapCount: 6),
                    Course(name: "Ehitusmaterjalid", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Soojus- ja niiskuslevi modelleerimine", eapCount: 6),
                            Course(name: "Niiskuskahjustuste vältimine ehituses", eapCount: 6),
                            Course(name: "Heliisolatsioon ja ruumiakustika", eapCount: 6),
                            Course(name: "Hoonete energiatõhususe arvutuse alused ja majanduslik hindamine", eapCount: 6),
                            Course(name: "Mineraalsed sideained", eapCount: 6),
                            Course(name: "Betooniõpetus", eapCount: 6),
                            Course(name: "Korrosioonikaitse ehituses", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehitusmaterjalid ja ehitusfüüsika: Ehitusjuhtimise eriala",
                courses: [
                    Course(name: "Hoonete piirdetarindid", eapCount: 6),
                    Course(name: "Ehitusfüüsika alused", eapCount: 6),
                    Course(name: "Ehitusmaterjalid", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Soojus- ja niiskuslevi modelleerimine", eapCount: 6),
                            Course(name: "Niiskuskahjustuste vältimine ehituses", eapCount: 6),
                            Course(name: "Heliisolatsioon ja ruumiakustika", eapCount: 6),
                            Course(name: "Hoonete renoveerimine", eapCount: 6),
                            Course(name: "Hoonete energiatõhususe arvutuse alused ja majanduslik hindamine", eapCount: 6),
                            Course(name: "Mineraalsed sideained", eapCount: 6),
                            Course(name: "Betooniõpetus", eapCount: 6),
                            Course(name: "Korrosioonikaitse ehituses", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaained", eapCount: 12)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    
    majorsMinors(
        name: "Hoonete sisekliima ja veetehnika",
        level: .integrated,
        type: .insener,
        requirements: [
            Requirements(term: "Matemaatika Riigieksam või TalTech Matemaatikakatse"),
            Requirements(term: "Eesti Keele Riigieksam")
        ],
        description: ["Ühe hoone sileda fassaadi all vonkleb sadu torusid, mis keerulisi süsteeme moodustades juhivad puhast vett sisse ja reovett välja, ventileerivad õhku ja reguleerivad temperatuuri. Need keerulised süsteemid tagavad, et inimesed üldse majades tegutseda ja tervislikult elada saaksid. Kas sulle meeldiks olla insener, kes oskab selliseid süsteeme projekteerida ning annab seeläbi hoonele elamisväärse sisu? Uuri lähemalt, mida hoonete sisekliima ja veetehnika erialal õpetatakse ning kes sinust saab!", "Hoonete sisekliima ja veetehnika õppimine annab sulle laiapõhjalised teadmised, kuidas hoonete tehnosüsteemid toimivad ja kuidas mõjutada hoonete energiatarbimist. Õpe hõlmab nii hoonete sisekliima tagamist kütte, jahutuse ja ventilatsiooniga kui ka veevarustuse, reovee ja keskkonnatehnikaga seotud teemasid.", "Koos üldiste insenerioskuste omandamisega saad oskused, kuidas kavandada hea sisekliimaga energiatõhusaid hooneid, mida pole võimalik saavutada ilma oskuslikult kavandatud, ehitatud ja hooldatud kütte-, ventilatsiooni- ning jahutussüsteemideta. Hoone tehnosüsteemide ja energiatõhususe arendamine on üks ehitussektori kiiremini arenevaid valdkondi.", "Vee ja keskkonnatehnika õppimine annab väga head teadmised sellest, kuidas saadakse tarbimiskõlbulik vesi ning kuidas see peale kasutamist keskkonda kahjustamata tagasi loodusesse juhitakse. Veevarustuse- ja kanalisatsiooniinsenerid on tegevad pea kõikide hoonete kavandamisel ja ehitamisel ning linnade ja asulate vee- ja reoveepuhastite, välisvõrkude planeerimisel, projekteerimisel, rajamisel ja uuendamisel."],
        outcomes: ["Linnastumise tõttu vajatakse eriala spetsialiste järjest rohkem. Puhta joogivee ja hästitoimivate vee- ja reovee puhastussüsteemide tagamine on tervisliku elukeskkonna säilimiseks esmatähtsusega. Hoonete sisekliima ja energiatõhususe parandamine on vältimatu, kui soovime võidelda kliimasoojenemisega ning tagada meeldiv ja tervislik keskkond nii toas kui ka õues. Lisaks uute hoonete ehitamisele tuleb vanu süsteeme rekonstrueerida ja olemasolevaid hooneid hooldada. Meie lõpetajad töötavad kesktaseme, tippjuhi või spetsialistina. Nad teostavad omanikujärelevalvet, on projekteerijad, ehitus-, objekti- või projektijuhid ning konsultandid. Meie vilistlaste stardipalk on suurem Eesti keskmisest palgast.", "Tuleviku tööandjatena võib nimetada suuri ehitusfirmasid nagu Merko, Astlanda, Nordecon, K-Projekt, Sweco või YIT, Uponor Eesti, PipeLife või ETSNord. Samuti vajatakse meie eriala spetsialiste, vee-ettevõtetes, näiteks AS Tallinna Vesi või AS Rakvere Vesi, avalikus sektoris Keskkonnaministeeriumis ja Keskkonnaametis ning kohalikus omavalitsuses.", "Hoonete tehnosüsteemide ehk kütte, ventilatsiooni ja jahutuse ning hoonesisese ja –välise veevarustuse ja kanalisatsiooni valdkonna spetsialistina on sinu töövõimalused järgnevad:", "Projekteerija ja konsultandi esmane ülesanne on osaleda hoonete kavandamise protsessis, et tagada nende toimimine ja energiatõhusus. Lisaks tuleb arvutada, kavandada ja kirjeldada projektis tehnosüsteemid, mille alusel need valmis ehitatakse", "Tehnosüsteemide ehitamine ja hoonete energiatõhusaks rekonstrueerimine", "Süsteemide rajamise järelevalve ülesandeks on teha kindlaks, et kõik süsteemid on välja ehitatud vastavalt projektile", "Seadmete ja materjalide müügitöö", "Süsteemide hoolduse ja häälestamise spetsialsti tööks on tehnosüsteemide hooldamine, parandamine ja seadistamine", "Tootearendaja tööks on paremini toimivate tehnosüsteemide komponentide välja arendamine ja katsetamine.", "Hoonete sisekliima ja veetehnika õppekaval kestab õpe viis aastat. Lõpetamisel saad magistrikraadi ja diplomeeritud veevarustus- ja kanalisatsiooni- ning kütte-, ventilatsiooni- ja jahutusinseneri esmakutse (7. tase). See tähendab, et tohid töötada vaid volitatud inseneri juhendamisel ega tee iseseisvaid otsuseid. Seetõttu soovitame esmase kutse tasandilt end edasi arendada volitatud veevarustus- ja kanalisatsiooniinseneriks, et saaksid iseseisvalt töötada keerukamate ja huvitavamate projektidega. Igal juhul tagab kutsestandardi omamine seda, et sinu teadmised ja oskused on võrdselt hinnatud nii siin kui seal pool piiri."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 5,
        studyLocation:  [.tallinn],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldained",
                courses: [
                    Course(name: "Kujutav geomeetria. Arvutigraafika 2D", eapCount: 6),
                    Course(name: "Kultuurifilosoofia ja tehiskeskkonna eetika", eapCount: 6),
                    Course(name: "IT alused I", eapCount: 3),
                    Course(name: "IT alused II", eapCount: 3),
                    Course(name: "Ehituskeemia", eapCount: 6),
                    Course(name: "Insenerifüüsika", eapCount: 9),
                    Course(name: "Matemaatiline analüüs", eapCount: 6),
                    Course(name: "Lineaaralgebra", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Ehitusjoonis. Arvutigraafika 3D", eapCount: 6),
                            Course(name: "Keskkonnakaitse ja säästev areng", eapCount: 6),
                            Course(name: "Eesti keele suuline ja kirjalik väljendusõpetus", eapCount: 3),
                            Course(name: "Vene keele suhtluskursus", eapCount: 3),
                            Course(name: "Akadeemiline suhtlus inglise keeles", eapCount: 3),
                            Course(name: "Inglise erialakeel", eapCount: 3),
                            Course(name: "Akadeemiline kirjutamine inglise keeles", eapCount: 3),
                            Course(name: "Elektromagnetism", eapCount: 6),
                            Course(name: "Tõenäosusteooria ja matemaatiline statistika", eapCount: 3),
                            Course(name: "Matlab ja numbriline modelleerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehituse sidusained",
                courses: [
                    Course(name: "Elektrivarustus ja elektripaigaldised", eapCount: 6),
                    Course(name: "Termodünaamika ja energiatootmine", eapCount: 6),
                    Course(name: "Ehitusfüüsika alused", eapCount: 6),
                    Course(name: "Pinnasemehaanika ja ehitusgeoloogia alused", eapCount: 6),
                    Course(name: "Õhutöötlusprotsessid ja seadmed", eapCount: 6),
                    Course(name: "Hüdrogeoloogia", eapCount: 6),
                    Course(name: "Tugevusõpetuse alused", eapCount: 6),
                    Course(name: "Hüdraulika ja pumbad", eapCount: 9),
                    Course(name: "Ehitusökonoomika ja ettevõtluse alused", eapCount: 6),
                    Course(name: "Ehitusinfo modelleerimise alused (BIM I)", eapCount: 6),
                    Course(name: "Geodeesia", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Hoonete piirdetarindid", eapCount: 6),
                            Course(name: "Soojus- ja niiskuslevi modelleerimine", eapCount: 6),
                            Course(name: "Heliisolatsioon ja ruumiakustika", eapCount: 6),
                            Course(name: "Hoonete renoveerimine", eapCount: 6),
                            Course(name: "Keskkonnamõju hindamine ja keskkonnaaudit", eapCount: 6),
                            Course(name: "Sissejuhatus sisekliimatehnikasse ja veeinseneeriasse", eapCount: 6),
                            Course(name: "Hoonete tehnosüsteemide mudelprojekteerimine ja projekteerimise juhtimine", eapCount: 6),
                            Course(name: "Geoinformaatika", eapCount: 6),
                            Course(name: "Hüdro- ja aeromehaanika", eapCount: 6),
                            Course(name: "Hüdrauliliste võrkude vabavaraliste arvutusprogrammide programmeerimine", eapCount: 6),
                            Course(name: "Ehitusettevõtlus ja äriplaan", eapCount: 6),
                            Course(name: "Geodeesia õppepraktika", eapCount: 3),
                            Course(name: "Õiguse alused ja ehitusõigus", eapCount: 6),
                            Course(name: "Eraisiku rahandus", eapCount: 3),
                            Course(name: "Tehnosüsteemide elektromagnetväljad ja õhuionisatsioon", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Hoonete sisekliima ja veetehnika",
                courses: [
                    Course(name: "Veevärk", eapCount: 6),
                    Course(name: "Reoveepuhastus", eapCount: 6),
                    Course(name: "Veetorustikud ja modelleerimine", eapCount: 6),
                    Course(name: "Hoonete energiatõhususe arvutuse alused ja majanduslik hindamine", eapCount: 6),
                    Course(name: "Hoonete energiasimulatsioon", eapCount: 6),
                    Course(name: "Vee keemia ja mikrobioloogia", eapCount: 6),
                    Course(name: "Küte I", eapCount: 6),
                    Course(name: "Küte II", eapCount: 6),
                    Course(name: "Ventilatsioon I", eapCount: 6),
                    Course(name: "Jahutus- ja külmatehnika", eapCount: 6),
                    Course(name: "Energiatõhusus ja sisekliima hoonete planeerimisel", eapCount: 6),
                    Course(name: "Tehnosüsteemide koostoimimine ja -juhtimine", eapCount: 6),
                    Course(name: "Elamute, avalike ja tootmishoonete veevärk ja kanalisatsioon", eapCount: 9),
                    Course(name: "Väliskanalisatsioonivõrk", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Arukate hoonete automaatika", eapCount: 3),
                            Course(name: "Hüdroloogia ja vesiehitised", eapCount: 6),
                            Course(name: "Ventilatsioon II", eapCount: 6),
                            Course(name: "Hoonete sisekliima", eapCount: 6),
                            Course(name: "Gaasivarustus", eapCount: 6),
                            Course(name: "Kinnisvara arendamine ja energia", eapCount: 3),
                            Course(name: "Jäätmekäitlus", eapCount: 6),
                            Course(name: "Sademevee äravoolu korraldus", eapCount: 6),
                            Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                            Course(name: "Infrastruktuuri modelleerimise (InfraBIM) alused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Ehituspraktika või tootmispraktika (praktika)", eapCount: 6),
                    Course(name: "Projekteerimispraktika (praktika)", eapCount: 6),
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaained", eapCount: 12)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    
    
    
    majorsMinors(
        name: "Teedeehitus ja geodeesia",
        level: .integrated,
        type: .insener,
        requirements: [
            Requirements(term: "Matemaatika Riigieksam või TalTech Matemaatikakatse"),
            Requirements(term: "Eesti Keele Riigieksam")
        ],
        description: ["Võib öelda, et riigi majanduse aluseks on ennekõike infrastruktuur: teed, sillad, tunnelid, raudteed, lennujaamad ja sadamad, milleta ei pääse inimesed liikuma ega jõua kaubad tarbijani. Eesti teedevõrk on küll piisavalt tihe, kuid sellel ohutu ja sujuva liiklemise tagamine nõuab pidevat tööd. Infrastruktuur on ja jääb meie igapäevase toimetuleku esmaseks eelduseks.", "Kindel on, et hea haridusega insener leiab alati hea tasuga tööd, sest nii nagu Tallinn ei saa kunagi valmis, ei kao kunagi vajadus ehitusinseneride ja -geodeetide järele.", "Majanduse arengu tagab kaasaegse taristu olemasolu, mille üheks tähtsamaks osaks on piisava tihedusega ja heas seisukorras teedevõrk. Just sina võiksid olla uus teedeinsener. Teedeehituse ja geodeesia õppekavas saad valida kahe peaeriala vahel.", "Teedeehituse peaerialal saad omakorda spetsialiseeruda teedeehitusele või sillaehitusele. Teede- ja sillaehitus käsitlevad nende projekteerimist, ehitamist ning hooldamist, ehitustööde juhtimist, liikluskorraldust ja –ohutust ning teedevõrgu planeerimist.", "Ehitusgeodeesia valdkond tegeleb nii teede kui hoonete ehituses vajalike mõõdistustega, juba projekteeritud ehitise ja selle osade loodusesse märkimisega ning ehitise valmimisel ka jooksvate kontrollmõõdistustega."],
        outcomes: ["Alustava inseneri töötasu on üle Eesti keskmise, oma oskusi ja võimeid arendades on aga võimalik see üsna kiire ajaga kasvatada kahekordseks.", "Teede- ja sillaehituse eriala lõpetanuna on sul võimalus töötada järgmistel ametialadel:", "Teede- või sillaehitusprojektide planeerimine ja projekteerimine", "Teede- või sillaehituse juhtimine kõige erinevamatel tasemetel alates meistrist ehitusobjektil kuni ehitusfirma juhini", "Teede ja sildade korrashoid", "Ehitusjärelevalve", "Liiklusohutuse auditeerimine ja hindamine", "Kohalikes omavalitsustes teedeehituse tellija ülesandeid täitev spetsialist", "Inseneride koolitamine", "Ettevõtliku lõpetajana on sul võimalus luua oma ettevõte.", "Geodeedina oskad töötada mõõtetehnoloogiaga ning tead, mida teha olukorras, kui GPS meid aidata ei suuda (näiteks metsaaladel ning linnadžunglites). Samuti on sul vajalikud teadmised geoinformaatika, satelliittehnoloogia ja geograafiliste infosüsteemidega (GIS) seotud ülesannete lahendamiseks. Nii saad abiks olla hoopis teiste eluvaldkondade ülesannete lahendamisel nagu kliimamuutuste uurimine, Maa masside liikumine, maavärinate ennustamine jne.", "Sinu karjäärivõimalused on laiad, hõlmates nii geodeesiaettevõtteid, Maa-ametit ja teisi riigiasutusi, ehitusettevõtteid, kaardistusettevõtteid, ruumiandmetega seotud infrastruktuuri ettevõtteid kui ka ülikoole ning teadusasutusi. Geodeetide oskuste järele on vajadus suur - paljud meie üliõpilased on juba enne lõpetamist leidnud huvitava erialase töö!"],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 5,
        studyLocation:  [.tallinn],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Info ja kommunikatsionnitehnoloogia",
                courses: [
                    Course(name: "IT alused I", eapCount: 3),
                    Course(name: "IT alused II", eapCount: 3)
                ]
            ),
            Module(
                name: "Keele- ja väljendusõpe",
                courses: [
                    Course(name: "Eesti keele suuline ja kirjalik väljendusõpetus", eapCount: 3 )
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Joonistamise baaskursus insenerile I", eapCount: 3),
                            Course(name: "Graafika ja digitaalsed esitlustehnikad inseneridele", eapCount: 6),
                            Course(name: "Vene keele suhtluskursus", eapCount: 3),
                            Course(name: "Inglise keele eelkursus 2: Grammatika e-kursus", eapCount: 3),
                            Course(name: "Akadeemiline suhtlus inglise keeles", eapCount: 3),
                            Course(name: "Inglise erialakeel", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Matemaatika",
                courses: [
                    Course(name: "Matemaatiline analüüs", eapCount: 6),
                    Course(name: "Lineaaralgebra", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Arvutusmeetodid", eapCount: 6),
                            Course(name: "Tõenäosusteooria ja matemaatiline statistika", eapCount: 3),
                            Course(name: "Matlab ja numbriline modelleerimine", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Sotsiaalteadused ja ettevõtlus",
                courses: [
                    Course(name: "Kultuurifilosoofia ja tehiskeskkonna eetika", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Ehitusökonoomika ja ettevõtluse alused", eapCount: 6),
                            Course(name: "Ehitusettevõtlus ja äriplaan", eapCount: 6),
                            Course(name: "Õiguse alused ja ehitusõigus", eapCount: 6),
                            Course(name: "Juhtimise psühholoogilised alused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Geodessia",
                courses: [
                    Course(name: "Geodeesia I", eapCount: 3),
                    Course(name: "Geodeesia II ja välipraktika", eapCount: 6)
                ]
            ),
            Module(
                name: "Insenerigraafika",
                courses: [
                    Course(name: "Kujutav geomeetria. Ehitusjoonis", eapCount: 9),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Esitlustehnikad 3 - fotograafia ja 3D programmid", eapCount: 6),
                            Course(name: "Esitlustehnikad ja vormiõpetus inseneridele", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehituse taustsüsteem: Ehitusgeodessia eriala",
                courses: [
                    Course(name: "Hoonete piirdetarindid", eapCount: 6),
                    Course(name: "Pinnasemehaanika ja ehitusgeoloogia alused", eapCount: 6),
                    Course(name: "Hüdraulika ja hüdromeetria", eapCount: 6),
                    Course(name: "Sissejuhatus peaerialadesse", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Arhitektuuri ja linnaehituse ajalugu inseneridele", eapCount: 6),
                            Course(name: "Ehitusmaterjalid", eapCount: 6),
                            Course(name: "Teede ehituse ja -korrashoiu masinad ja seadmed", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehituse taustsüsteem: Teede- ja sillaehitus eriala",
                courses: [
                    Course(name: "Hoonete piirdetarindid", eapCount: 6),
                    Course(name: "Pinnasemehaanika ja ehitusgeoloogia alused", eapCount: 6),
                    Course(name: "Hüdraulika ja hüdromeetria", eapCount: 6),
                    Course(name: "Ehitusmaterjalid", eapCount: 6),
                    Course(name: "Teede ehituse ja -korrashoiu masinad ja seadmed", eapCount: 6),
                    Course(name: "Geoinfosüsteemide alused", eapCount: 6),
                    Course(name: "Sissejuhatus peaerialadesse", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Elektrivarustus ja elektripaigaldised", eapCount: 6),
                            Course(name: "Arhitektuuri ja linnaehituse ajalugu inseneridele", eapCount: 6),
                            Course(name: "Korrosioonikaitse ehituses", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Loodusteadused ja mehaanika: Ehitusgeodessia eriala",
                courses: [
                    Course(name: "Tugevusõpetus I", eapCount: 6),
                    Course(name: "Tugevusõpetus II", eapCount: 6),
                    Course(name: "Insenerimehaanika", eapCount: 6),
                    Course(name: "Füüsika II", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnakaitse ja säästev areng", eapCount: 6),
                            Course(name: "Ehituskeemia", eapCount: 6),
                            Course(name: "Loodusteaduste alused ja säästlik areng", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Loodusteadused ja mehaanika: Teede- ja sillaehitus eriala",
                courses: [
                    Course(name: "Tugevusõpetus I", eapCount: 6),
                    Course(name: "Tugevusõpetus II", eapCount: 6),
                    Course(name: "Ehitusmehaanika I", eapCount: 6),
                    Course(name: "Ehituskeemia", eapCount: 6),
                    Course(name: "Insenerifüüsika", eapCount: 9)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnakaitse ja säästev areng", eapCount: 6),
                            Course(name: "Ehitusmehaanika II", eapCount: 6),
                            Course(name: "Elastsusõpetus", eapCount: 6),
                            Course(name: "Loodusteaduste alused ja säästlik areng", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehitusgeodeesia: Ehitusgeodessia eriala",
                courses: [
                    Course(name: "Ehitusgeodeesia I", eapCount: 6),
                    Course(name: "Ehitusgeodeesia II", eapCount: 6),
                    Course(name: "Geodeetilised instrumendid", eapCount: 6)
                ]
            ),
            Module(
                name: "Ehitusgeodeesia: Teede- ja sillaehitus eriala",
                courses: [
                    Course(name: "Ehitusgeodeesia I", eapCount: 6),
                    Course(name: "Geodeetilised instrumendid", eapCount: 6),
                    Course(name: "Teegeodeesia", eapCount: 6)
                ]
            ),
            Module(
                name: "Tee- ja sillaehitus: Ehitusgeodessia eriala",
                courses: [
                    Course(name: "Teeprojekteerimine", eapCount: 9),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Sillad ja sillasambad", eapCount: 9),
                            Course(name: "Arvutikasutus teedeasjanduses", eapCount: 6),
                            Course(name: "Liiklusuuringud ja teeprojekt", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Tee- ja sillaehitus: Teede- ja sillaehitus eriala",
                courses: [
                    Course(name: "Sillad ja sillasambad", eapCount: 9),
                    Course(name: "Teeprojekteerimine", eapCount: 9),
                    Course(name: "Teekonstruktsioonid ja nende ehitus", eapCount: 9),
                    Course(name: "Teetööde korraldus ja kasutatavad materjalid", eapCount: 6),
                    Course(name: "Teedeehituse ökonoomika ja juhtimine", eapCount: 6),
                    Course(name: "Arvutikasutus teedeasjanduses", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Linnaehituse projektide stuudio. Planeerimisprojekt I. Madaltihe linnakvartal, linnatänavad", eapCount: 6),
                            Course(name: "Sillasambad - projekt", eapCount: 3),
                            Course(name: "Terassillad", eapCount: 6),
                            Course(name: "Raudbetoonsillad", eapCount: 9),
                            Course(name: "Puitsillad", eapCount: 6),
                            Course(name: "Sildade korrashoid", eapCount: 6),
                            Course(name: "Sildade erikursus", eapCount: 9),
                            Course(name: "Tee korrashoid", eapCount: 6),
                            Course(name: "Tee-ehitusmaterjalid", eapCount: 6),
                            Course(name: "Katendikonstruktsiooni projekteerimine", eapCount: 6),
                            Course(name: "Liiklusuuringud ja teeprojekt", eapCount: 6),
                            Course(name: "Infrastruktuuri modelleerimise (InfraBIM) alused", eapCount: 6),
                            Course(name: "Liikuvuskorraldus linnades ja liikluse modelleerimine", eapCount: 6),
                            Course(name: "Liiklussõlmede projekteerimine", eapCount: 6),
                            Course(name: "Veeristete projekteerimine", eapCount: 6),
                            Course(name: "Liikluskorraldus ja -ohutus", eapCount: 6),
                            Course(name: "Rööbasteed ja raudteetehnika", eapCount: 9)
                        ]
                    )
                ]
            ),
            Module(
                name: "Tööpraktika: Ehitusgeodessia eriala",
                courses: [
                    Course(name: "Ehitusgeodeesia praktika I (praktika)", eapCount: 6),
                    Course(name: "Ehitusgeodeesia praktika II (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Tööpraktika: Teede- ja sillaehitus eriala",
                courses: [
                    Course(name: "Töökeskkonna praktika (praktika)", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tee-ehitustööde juhi praktika (praktika)", eapCount: 6),
                            Course(name: "Teede projekteerimise praktika (praktika)", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ruumiandmete kogumine ja visualiseerimine: Ehitusgeodessia eriala",
                courses: [
                    Course(name: "Topograafiline mõõdistamine", eapCount: 6),
                    Course(name: "Satelliitgeodeesia ja projekt", eapCount: 6),
                    Course(name: "Kõrgem geodeesia", eapCount: 6),
                    Course(name: "Kaugseire alused", eapCount: 6),
                    Course(name: "Mõõdistusandmete automatiseeritud töötlus ja visualiseerimine", eapCount: 6),
                    Course(name: "CAD programmeerimine geodeetilisteks rakendusteks", eapCount: 6),
                    Course(name: "Geodeetiline referentssüsteem", eapCount: 6),
                    Course(name: "Geograafiline infosüsteem GIS", eapCount: 9),
                    Course(name: "Geodeetiliste mõõtmiste andmetöötluse teooria", eapCount: 3),
                    Course(name: "Infrastruktuuri modelleerimise (InfraBIM) alused", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                            Course(name: "Insener-tehnilised geodeesiatööd", eapCount: 6),
                            Course(name: "Teegeodeesia", eapCount: 6),
                            Course(name: "Maa kaugseire rakendused", eapCount: 3),
                            Course(name: "Kartograafia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaained", eapCount: 12)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
]
