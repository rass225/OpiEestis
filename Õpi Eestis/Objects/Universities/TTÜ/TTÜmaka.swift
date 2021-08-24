let ttüMaka = [
    majorsMinors(
        name: "Disaini ja tehnoloogia tulevik",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Disaini või Tehnoloogia Valdkonnas"),
            Requirements(term: "Portfoolio ja CV"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Motivatsioonikiri")
        ],
        description: ["Disaini ja tehnoloogia tulevik on Eestis ainulaadne rahvusvaheliselt hinnatud õppekava, mis käsitleb disainist juhitud innovatsiooni laiemalt. See sobib nii disaini kui erinevate tehnoloogiahariduse taustaga tudengitele. Disainioskuste omandamine on oluliseks eelduseks innovatiivsete toote- ja teenusearendusprotsesside juhtimiseks ja elluviimiseks.","Õppekava on Eesti Kunstiakadeemia ja TalTechi koostöös valminud unikaalne rahvusvaheline magistriprogramm, mis koolitab multitalente rakendama disainerlikku lähenemist kaasaegsete komplekssete probleemide lahendamisel. Eduka innovatsiooni eelduseks on loov ja avatud maailmavaade kombineerituna erialase, kultuurilise ja intellektuaalse mitmekesisusega. Just seda kooslust me tudengile pakumegi.", "Õppekava annab valdkondadeülese hariduse sidudes omavahel tehnoloogia ja disaini. Julgustame tudengeid avastama, kompama toote- ja teenusarenduse piire, mõtestama ümber tuttavaid probleeme ning looma uusi väärtusi. Õppetöö käigus õpib tudeng märkama inimeste muutuvaid vajadusi ja looma ise uusi võimalusi probleemide lahendamiseks, toetudes tehnoloogia viimasele sõnale.", "Õppetöös on suur rõhk loovusel ning eksperimenteerimisel. Tudeng õpib analüüsima probleeme, genereerima visioone, looma prototüüpe ning hindama kontseptsioone. Õppetöö käigus teeme koostööd meie partneritega nii ettevõtlusest kui avalikust sektorist, omandades nii suurepärase koostöövõime reaalsete komplekssete olukordade käsitlemisel."],
        outcomes: ["Valmistame ette innovaatoreid, disaini ja inseneeria professionaale, kes on võimelised algatama ja ellu viima sotsiaalset ning majanduslikku kasu loovaid uute toote- või teenusekontseptsioonide arendusprotsesse.", "Lõpetajate tegevusvaldkond sõltub eelnevast haridusest, ulatudes üle kogu innovatsioonivälja. Sinust võib saada teadur uurimisasutuses, disainer-konsultant disainibüroos, arendusinsener, arendus- või disainijuht ettevõtluses, vabakutseline looja või ettevõtja."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldained",
                courses: [
                    Course(name: "Kultuuriteooria ja visuaalne kirjaoskus", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tehnoloogilis-majanduslikud paradigmad ja tehnoloogilised muutused", eapCount: 6),
                            Course(name: "Tehnoloogia, ühiskond ja tulevik", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Disain",
                courses: [
                    Course(name: "Inimkeskne disain", eapCount: 6),
                    Course(name: "Korporatiivne ettevõtlus ja disain", eapCount: 6)
                ]
            ),
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Tehnoloogia",
                courses: [
                    Course(name: "Samaaegne tootearendus", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Inseneriõppe põhialused", eapCount: 6),
                            Course(name: "Tootmise digitaliseerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Valikõpe",
                courses: [
                    Course(name: "Asjade internet tööstusele", eapCount: 6),
                    Course(name: "Tootmistehnika - planeerimine ja kontroll", eapCount: 6),
                    Course(name: "Eesti keel ja kultuur", eapCount: 6),
                    Course(name: "Sotsiaalne ettevõtlus", eapCount: 6),
                    Course(name: "Ettevõtte loomine", eapCount: 6),
                    Course(name: "Kestlikkusele suunatud disain", eapCount: 6),
                    Course(name: "20. ja 21. sajandi disainiprobleeme", eapCount: 6)
                ]
            ),
            Module(
                name: "Süvendatud õpe",
                courses: [
                    Course(name: "Disaini Stuudio 3: süsteem", eapCount: 12),
                    Course(name: "Disaini stuudio 2: kontekst", eapCount: 12),
                    Course(name: "Magistritöö seminar", eapCount: 6),
                    Course(name: "Disaini stuudio 1: isiklik", eapCount: 12)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Elektroenergeetika",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Vestlus")
        ],
        description: ["Elektroenergeetika käsitleb elektrienergia tootmist, ülekandmist, jaotamist, müümist ja kasutamist. Uuritakse ja lahendatakse elektrijaamade, -võrkude ja energiasüsteemide tehnilisi, majanduslikke ning nende optimaalse juhtimise probleeme. Uued suunad on elektrienergia hajatootmine ja uute energiaallikate (tuul ja päike) kasutamine ning ühendamine elektrivõrguga. Valdkond hõlmab ka majanduslikke aspekte nagu avatud elektrituru korraldamine, suurte süsteemide optimeerimine, energeetika arengu plaanimine ja energiasüsteemide digitaliseerimine.", "Elektroenergeetika magistriõppes on põhirõhk valdkonna süvateadmiste omandamisel ja nende rakendamisel tänapäeva energiasüsteemides. Saad laialdased teadmised tänapäeva energiasüsteemide kasutamisest, juhtimisest, kaitsmisest ja arengusuundadest tulevikus. Võimalik on spetsialiseeruda kahele peaerialale: elektroenergeetika ja energiasüsteemide digitaliseerimine.", "Õppetööd viivad läbi Eesti energeetika tippspetsialistid. Meil on unikaalne kõrgepingelabor, kus on võimalik uurida välgulahendusi, samuti elektrimaterjalide ning uued elektrisüsteemide ja releekaitse laborid. Harjutustundides õpetatakse elektrivõrkude, elektrijaamade ja energiasüsteemide modelleerimistarkvarade kasutamist. Võimalik on osaleda instituudi teadus- ja arendustegevuses.", "Riiklike õppetoetuste kõrval on võimalik saada ka ettevõtete stipendiume (Eesti Energia, Narva Elektrijaamad, Harju Elekter, Elering jne). Õppida ja praktikat sooritada saab ka välismaal, tihedad sidemed on eelkõige Soome, Taani ja Rootsi ülikoolide ja ettevõtetega."],
        outcomes: ["Peaerialal uuritakse ja lahendatakse elektrijaamade, -võrkude ja -süsteemide tehnilisi, majanduslikke ning nende optimaalse juhtimise probleeme. Tänapäeva süsteemides on olulisel kohal taastuvenergeetika, sh tuul ja päike, sidumine olemasoleva süsteemiga ning alalisvoolul põhinevate lahenduste järjest suurenev kasutuselevõtt. Olulist mõju avaldavad ka energiaturud ja energiapoliitika.", "Peaeriala käsitleb põhjalikult energia hajatootmise ja võrgu digitaliseerimise küsimusi ning nendega kaasnevaid väljakutseid. Olulisel kohal on hajaenergeetikaressursside mõistmine ja kasutamine tänapäeva elektrisüsteemides. Elektrivõrgu digitaliseerimise all mõistetakse üldistatult elektrivõrkudes kasutatavate info- ja andmesidesüsteemide võimalusi, küberturvalisust, andmehaldust- ja töötlust ning majanduslikke ja juriidilisi küsimusi."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Energiasüsteemide juhtimine",
                courses: [
                    Course(name: "Energeetika arengu plaanimine", eapCount: 6),
                    Course(name: "Automaatika ja releekaitse", eapCount: 6),
                    Course(name: "Energiasüsteemide optimaaljuhtimine", eapCount: 6),
                    Course(name: "Elektrijaotustehnika", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Infosüsteemid energeetikas", eapCount: 6),
                            Course(name: "Elektromagnetseadmete modelleerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Elektroenergeetika",
                courses: [
                    Course(name: "Kõrgepingeseadmed", eapCount: 6),
                    Course(name: "Alajaamad - projekt", eapCount: 6),
                    Course(name: "Elektrivõrgud - projekt", eapCount: 6),
                    Course(name: "Elektrisüsteemi stabiilsus", eapCount: 6),
                    Course(name: "Praktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Alalisvoolurakendused elektrisüsteemides", eapCount: 6),
                            Course(name: "Elektrivõrkude projekteerimine", eapCount: 6),
                            Course(name: "Tuule- ja päikeseenergeetika", eapCount: 6),
                            Course(name: "Energia hajatootmine digitaliseeritud elektrivõrkudes", eapCount: 6),
                            Course(name: "Energiasüsteemide ökonoomika", eapCount: 6),
                            Course(name: "Energiaturud", eapCount: 6),
                            Course(name: "Energiahaldus elektri tarkvõrkudes", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Energiasüstemmide",
                courses: [
                    Course(name: "Energia hajatootmine digitaliseeritud elektrivõrkudes", eapCount: 6),
                    Course(name: "Energiasüsteemide ökonoomika", eapCount: 6),
                    Course(name: "Energiasüsteemide digitaliseerimine", eapCount: 6),
                    Course(name: "Hajaenergeetika - projekt", eapCount: 6),
                    Course(name: "Praktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tuule- ja päikeseenergeetika", eapCount: 6),
                            Course(name: "Puitkütuste ressurss ja tootmistehnoloogiad", eapCount: 6),
                            Course(name: "Energiaturud", eapCount: 6),
                            Course(name: "Energiahaldus elektri tarkvõrkudes", eapCount: 6),
                            Course(name: "Elektertransport", eapCount: 6),
                            Course(name: "Mikro- ja väike koostootmine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Energiamuundus- ja juhtimissüsteemid",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Vestlus")
        ],
        description: ["Tänu tehnoloogia arengule, elektri hajatootmisele ja taastuvenergia kasutuselevõtule on energeetikas tekkimas tarkvõrgud, mis ühendavad endas elektri ja infotehnoloogia ning muudavad kogu energiamaailma üheks tervikuks.", "Energiamuunduse ja juhtimise laiapõhjaline õppekava ühendab teadmised energia- ja mehhaanilistest, tööstus- ning olmesüsteemidest, elektrotehnikast ja elektroonikast, automatiseerimisest ning IT-st. Käsitleme elektritarbimist energeetikas, tööstuses, transpordis, avalikus ruumis ja hoonetes. Samuti vaatleme elektri muundamist liikumiseks, soojuseks, valguseks ning uurime vastavaid tehnoloogilisi lahendusi. Lisaks õpid tundma elektrimasinaid, - ajameid ja muundureid. Need on tööstus- ja hooneautomaatika, robotite, elektertranspordi ning olmetehnika loomulik osa, ning tagavad energiamuunduse juhtimise ja energia tõhusa kasutamise.", "Pane tähele, et osad loengud toimuvad inglise keeles, näiteks kohustuslik erikursus jõuelektroonikast. Valikainetena saab inglise keeles õppida robotite ja masinate dünaamikat, elektertransporti ning mehhatroonikasüsteemide modelleerimist ja juhtimist.", "TalTechis on elektri- ja energeetikaalane haridus ja teadus pikkade traditsioonidega, ulatudes ülikooli asutamisaega 1918. aastal. Täna on TalTech selles valdkonnas Eesti juhtiv ülikool ja kompetentsikeskus."],
        outcomes: ["Energeetika on valdkond, mis on riigi ja majanduse toimimise alustala. Lisaks majanduslikule otstarbekusele on vaja arvestada riigi julgeoleku-, keskkonna- kui sotsiaalpoliitiliste otsustega, aga ka Euroopa Liidu poliitikatega. Energiamuunduse ja juhtimise eriala lõpetajate rakendusvaldkond ja võimalus Eesti arengusuundi mõjutada on väga avar.", "Erialal on kinnitatud kutsestandardid ja lõpetaja saab diplomeeritud elektriinseneri 7. taseme esmase kutse.", "Pärast magistriõppe lõpetamist oled oodatud elektroenergeetika, elektroonika, elektrotehnika, mehhatroonika, masinaehituse, automaatikaga tegelevatesse ettevõtetesse või mujale töötleva tööstuse ettevõtetesse juhiks või inseneriks. Meie lõpetajatest saavad ka elektriala ettevõtetes töötavad projekteerijad, planeerijad või elektrisüsteemide hooldust korraldavad käidujuhid. Võid tööle asuda elektri-, elektroonika- ja robootikasüsteemide arendajana, valgustite ja valgustuse valdkonnas, automaatikainsenerina või hoopis tootmisliinide insenerina erinevates töötleva tööstuse ettevõtetes.", "Enamus magistriõppe üliõpilasi leiavad töökoha juba õpingute vältel ning paljud tööandjad soosivad magistriõpingute lõpetamist töötamise käigus."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Energiatehnika",
                courses: [
                    Course(name: "Elektrijaotustehnika", eapCount: 6),
                    Course(name: "Elektromagnetiline mõjutus, müra ja mõõtmine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tuule- ja päikeseenergeetika", eapCount: 6),
                            Course(name: "Energiahaldus elektri tarkvõrkudes", eapCount: 6),
                            Course(name: "Elektertransport", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Automaatika ja elektroonika",
                courses: [
                    Course(name: "Tööstusautomaatika ja elektriajamid", eapCount: 6),
                    Course(name: "Jõuelektroonika erikursus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Robotite ja masinate dünaamika", eapCount: 6),
                            Course(name: "Mehhatroonikasüsteemide modelleerimine ja juhtimine", eapCount: 6),
                            Course(name: "Infosüsteemid energeetikas", eapCount: 6),
                            Course(name: "Automaatikasüsteemide projekteerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Elektrienergia tarbimine",
                courses: [
                    Course(name: "Elektervalgustus", eapCount: 6),
                    Course(name: "Elektripaigaldiste projekteerimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Elektrivõrkude projekteerimine", eapCount: 6),
                            Course(name: "Energia hajatootmine digitaliseeritud elektrivõrkudes", eapCount: 6),
                            Course(name: "Elektromagnetseadmete modelleerimine", eapCount: 6),
                            Course(name: "Elektriseadmete tõrked ja töökindlus6", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Praktika", eapCount: 6),
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Energiatehnoloogia ja soojusenergeetika",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Vestlus")
        ],
        description: ["Meie kliimas on normaalseks elutegevuseks vaja soojus- ja elektrienergiat. See eriala annab kõik vajalikud alus- ja inseneriteadmised nii elektrijaamade, soojusvarustussüsteemide kui energiat kasutatavate seadmete töö kohta.", "Õppekava on seotud nii energia tootmisega (kütused, katlad, põlemine, termiline oksüdatsioon, sh nii taastuv- kui ka põlevkivienergeetika) kui ka jaotamisega (kaugküttevõrgud, soojusvahetid ja tööstusettevõtete soojustarve). Eriala toetub termiliste protsesside füüsikaliste ja keemiliste seaduspärasuste tundmisele. Käsitleme ka energeetikavaldkonna uusi suundi – kaugjahutus, biogaas ja biometaan.", "Energeetika puhul tuleb arvestada ka selle eripärase positsiooniga majandusstruktuuris: andes elektri- ja soojusenergia näol vajaliku sisendi teistele majandusharudele (ning kogu ühiskonnale), on energeetika tootmismahud seotud majanduse energiamahukusega ning energiavajaduse dünaamikaga, sh sõltuvalt majandustsüklist.", "Saad ülevaate soojuselektrijaama tehnoloogiatest, protsessidest, seadmetest ja soojusskeemidest ning teadmised tööstustorustike ja kaugküttevõrkude ja energiakadude kohta. Sulle saavad tuttavaks katlad ja katlamajade soojusskeemid, põletite konstruktsioonid ning kütteturba ja puiduhakke põletamise tehnoloogiad. Ülevaate saad soojuse ja elektrienergia tootmise keskkonnamõjudest ja saastumisprobleemidest ning strateegilise arengu probleemidest energiasüsteemis. Põhjalikumalt õpid tundma põlevkivi: selle termilise töötlemise tehnoloogiad, õpid ette valmistama kütuseid ja korraldama laomajandust. Lisaks saad ülevaate riikide energiapoliitikast ning põhiteadmised energiatootmise efektiivsusest ja hinnapoliitikast ning taastuvenergiaallikate kasutusvõimalustest."],
        outcomes: ["Soojusenergeetikainsenerid töötavad soojuse elektrienergiaks muundamise, soojusallikate energiakasutuse, kütuste ning kütusemajanduse alal ning töötavad soojusenergeetika seadmete, soojus- ja gaasivõrkude ning -süsteemide projekteerimise, ehitamise ning käitamisega. Soojusenergeetikainsener hoiab käigus ja optimeerib olemasolevaid tehnoloogiaid, rakendab uusi teadmisi ja tehnoloogiaid ning toetab tehnoloogiasiiret.", "Tööpuudust ja igavust karta pole. Töökohti jagub üle terve Eesti ja tegutsetakse ka Baltikumis ning Põhjamaades, ees ootavad huvitavad ja suured väljakutsed. Valdkonnas on suur spetsialistide puudus ja pea kõik vilistlased töötavad erialasel kohal ning palgad on oluliselt üle Eesti keskmise."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Energiaressursid ja keskkond",
                courses: [
                    Course(name: "Energiatõhusus ja protsesside optimeerimine", eapCount: 6),
                    Course(name: "Energiaressursid, planeerimine ja keskkond", eapCount: 6),
                    Course(name: "Soojus- ja massilevi", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Energiaprotsesside termodünaamika", eapCount: 6),
                            Course(name: "Energia muundamisprotsessid", eapCount: 6),
                            Course(name: "Taastuvenergiaallikad", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Eriõpe",
                courses: [
                    Course(name: "Säästev energeetika, jätkusuutliku energeetika alused", eapCount: 6),
                    Course(name: "Soojusmajandus", eapCount: 6),
                    Course(name: "Soojus- ja külmavarustussüsteemid", eapCount: 6),
                    Course(name: "Tööstusahjud ja kuivatustehnoloogia", eapCount: 6),
                    Course(name: "Magistripraktika (praktika)", eapCount: 6),
                    Course(name: "Kütused, kütuste põletustehnoloogiad, katelseadmed", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Biomassi termokeemiline muundamine", eapCount: 6),
                            Course(name: "Põlevkivi termilise töötlemise tehnoloogiad", eapCount: 6),
                            Course(name: "Mikro- ja väike koostootmine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Hooned ja rajatised",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Ehituse või Tehnika Valdkonnas"),
            Requirements(term: "Vestlus")
        ],
        description: ["Ehitus on majandusharu, kus insenerimõte ja –ettevalmistus omavad eriti olulist tähendust. Laiapõhjaliste teadmiste ja praktilise ettevalmistusega insener on suuteline leidma lahendusi ka ebastandardsetes olukordades, mis sageli iseloomustavad tänapäevaste keerukate ehitusprotsesside kulgemist.", "Õppekaval on võimalik valida kaheksa peaeriala vahel:", "• Hoonete energiatõhusus", "• Hoonete sisekliima ja tehnosüsteemid", "• Kinnisvara korrashoid", "• Teede- ja sillaehitus", "• Vee- ja keskkonnatehnika", "• Ehitusgeodeesia", "• Ehitiste projekteerimine", "• Ehitusjuhtimine", "Õppetöös kasutame tipptasemel simulatsioonitarkvarasid, laboreid ja katsemajasid – need kõik on TalTechi linnakus sind ootamas. Õpid töötama FEM, CAD, BIM, ehitusfüüsika- ja energiasimulatsioonitarkvaradega, mille valdamine on ehitusinseneri elementaarne kirjaoskus.", "Suuremõõtmelisi konstruktsioone katsetad Mäepealse katselaboris, liginullenergiahoonete tehniliste lahendustega tutvud ja teed mõõtmisi liginullenergia testhoones. Mäepealse eksperimentaaluuringute tuumiktaristus sisalduvad ka mitmed eriotstarbelised katseseadmed konstruktsioonidele, ehitusfüüsika kliimakambrid ja õhupidavuse stendid. Veevõrkusid katsetad ja modelleerid hüdromehaanika laboris ning veekvaliteedi uuringutega teed tutvust veekvaliteedi laboris. Teede- ja ehitusmaterjalide laborites määrad erinevate ehitusmaterjalide omadusi.", "Meil on tihe koostöö paljude ehitusfirmadega, mis võimaldab üliõpilastel külastada ehitusplatse ja infrastruktuuriobjekte, mille abil kinnistada teoreetilisi teadmisi ning analüüsida reaalsete projektide elluviimist.Tudengid saavad kandideerida mitmetele ehitusfirmade ja eraisikute nimelistele stipendiumitele. Välisõpingutest ja -praktikast huvitatutel on võimalus õppida vahetustudengina erinevates välisülikoolides ning leida kontakte praktika sooritamiseks välisriikides."],
        outcomes: ["Hoonete energiatõhusus", "Sinu tulevikutööks on kavandada energiatõhusaid ja jätkusuutlikke hooneid, mida ei ole võimalik saavutada ilma oskuslikult analüüsitud hoone piirete, tehnosüsteemide ja taastuvenergiasüsteemideta. Lõpetamisel saad magistrikraadi ja inseneri 7. taseme esmakutse. Hooned tarbivad Eestis hetkel poole kogu energiast, mis seab suure väljakutse meie eesmärgile saavutada aastaks 2050 süsinikuneutraalsus. Hoonete energiatõhus ja jätkusuutlik renoveerimine on eesmärkide saavutamisel ülioluline ning vajalike tööde maht on lähikümnenditel ülisuur väljakutse ehitussektorile. Märkimist väärib ka see, et meie vilistlaste stardipalk on suurem Eesti keskmisest palgast.", "Hoonete sisekliima ja tehnosüsteemid", "Sinu tulevikutööks on kavandada hea sisekliimaga energiatõhusaid hooneid, mida ei ole võimalik saavutada ilma oskuslikult kavandatud, ehitatud ja hooldatud kütte-, ventilatsiooni- ning õhukonditsioneerimise süsteemideta. Lõpetamisel saad magistrikraadi ja inseneri 7. taseme esmakutse. Süsteemide hooldus ja rekonstrueerimine tagab töö järjepidevuse, see ei sõltu oluliselt majandustrendidest ega tsüklitest, kuna lisaks uute hoonete ehitamisele tuleb vanu süsteeme rekonstrueerida ja olemasolevaid hooneid hooldada. Märkimist väärib ka see, et meie vilistlaste stardipalk on suurem Eesti keskmisest palgast.", "Kinnisvara korrashoid", "Kinnisvara korrashoid on interdistsiplinaarne tegevusvaldkond, mille puhul eeldame põhiteadmisi paljudest eluvaldkondadest. Mugav, puhas ja korras elu- ja töökeskkond ei tule iseenesest. Kuigi professionaalsed arhitektid kavandavad ja kvalifitseeritud ehitajad ehitavad maju ning nende juurde vajalikku infrastruktuuri (teid, parklaid, erinevaid tehnovõrke), on kõigi nende ehitiste kasutusajad küllaltki pikad. Eriti on seda näha kodude puhul, kus sageli vanavanemate poolt loodud hooneid antakse edasi järeltulijatele ning iga uus põlvkond teeb seal muudatusi tulenevalt oma vajadustest ning arvestades ja muutusi ühiskonnas. Sarnast põhimõtet on näha ka erinevate ühiskondlike ning tootmishoonete puhul. Kasutajad (organisatsioonid, asutused, ettevõtted) muutuvad, kunagi loodud ehitis koos krundiga (so kinnisvara) säilib, mida tuleb aga kohandada vastavalt muutunud oludele. Kinnisvara korrashoid ei ole (ainult) koristamine, see on haldamine ja hooldamine, et tagada kinnisvara selline seisund, mis sobib kasutajale, olgu selleks õpilane koolis, ametnik kontoris, tööline tehases või patsient haiglas. Üha enam hakatakse arvestama kinnisvara korrashoidja oskuste ja kogemustega uute kinnisvaraobjektide arendamisel – hästi korrashoitava kinnisvara väärtus on suurem, see on atraktiivsem ka investeeringuna. Kui Tallinna Tehnikaülikoolis alustati kinnisvara korrashoiu rakenduskõrghariduse õppega, leidsid esimesed lõpetajad endale tööd pankades, keskasutustes ning ettevõtetes, kellel oli suur kinnisvaraportfell ning vara, mis vajas professionaalset korrashoiu korraldamist. Lõpetajad on läinud kinnisvara korrashoiuga tegelevatesse firmadesse, aga samas paljud lõpetanud on loonud ise oma firma ning hakanud pakkuma erinevaid valdkonnale vajalikke teenuseid. Uus kinnisvara korrashoiu magistriõpe on valdkonnas samm edasi. Eelkõige ootavad spetsialiste suurorganisatsioonid, kellel on hulgaliselt erinevaid kinnisvaraobjekte ning nende objektide edukas haldamine ning väärtus sõltuvad just korrashoiupersonali professionaalsusest. Kuigi praegu (2019.a.) on kutsesüsteemis veel sisustamata kinnisvara korrashoidja 7. kutsetase, toimub ka see lähiajal. Magistriõppe lõpetajaid ootabki ees 7. kutsetase ning üldjuhul kinnisvara juhi amet erinevates organisatsioonides.", "Teede- ja sillaehitus", "Suuremate linnade lähistel on probleemiks kooskõla saavutamine intensiivsema maakasutuse ja suurenenud liikluskoormusele vastava teevõrgustiku rajamise vahel, mis nõuab senisest teistsuguseid lahendusi. Sellest lähtuvalt ei ole karta, et tee-ehituse eriala lõpetanut ootaks ees tööpuudus. Seoses vajadusega suurendada kaubavedusid eri piirkondade vahel vajab Eesti teedevõrk pidevat uuendamist, neil olevate vanade sildade rekonstrueerimist ja uute, kaasaegsele suurenenud liikluskoormusele vastavate sildade rajamist. Avanenud on rahvusvaheline tööturg, mis ühelt poolt annab juurde võimalusi, kuid teiselt poolt sunnib inseneri end pidevalt täiendama, tagamaks nii ettevõtete kui ka iseenda konkurentsivõime. Tee-ehitust on oodatud õppima kõik, kellel on huvi mitmekesise ja dünaamilise töö vastu. Pärast ülikooli lõpetamist omandatakse 7. taseme inseneri esmakutse, misjärel on vaja vähemalt kaks aastat töötada kogenenud kolleegide käe all ja koguda praktilisi kogemusi. Peale seda on võimalik taotleda diplomeeritud inseneri kutset ning asuda iseseisva töö juurde, millega kaasneb ka vastutus. Sõltumata konkreetsest valikust saab tulevikutöö olema seotud kaunis ülla eesmärgiga – tagada inimestele võimalikult sujuvad ja ohutud liikumisevõimalused lähtudes nende vajadustest ning soovidest. Ohutus väljendub väga konkreetselt liikluses hukkunute ja vigastatute arvus ning teedeinseneri püüd on neid arve oluliselt vähendada – lisaks inimlikule soovile seda saavutada, peetakse seda ülioluliseks ka kogu Euroopa Liidu tasandil.", "Vee- ja keskkonnatehnika", "Veetehnika eriala hõlmab veehaarete, vee edastamise, jaotamise ja vee töötlemise ning reovee, ka sademevee, ärajuhtimise ja puhastamise arendamist. Veevarustus- ja kanalisatsiooniinsenerid on tegevad pea kõikide hoonete kavandamisel ja ehitamisel ning linnade vee- ja reoveepuhastite, samuti välisvõrkude projekteerimisel ja rajamisel. Tuleviku inseneridel peavad olema head teadmised võrkude modelleerimise, juhtimise ja kontrolli alal, mis võimaldab integreerida neid muude targa linna lahendustega. TalTechist saab tuleviku insenerile vajalikud teadmised. Lõpetamisel saad magistrikraadi ja diplomeeritud veevarustus- ja kanalisatsiooniinseneri 7. taseme esmakutse, mis märgitakse akadeemilisele õiendile. Eriala lõpetajad töötavad kesktasemejuhina või spetsialistina, olles kas projekteerija, omanikujärelevalve tegija, ehitusjuht, objektijuht, projektijuht, konsultant. Veevarustus- ja kanalisatsioonisüsteemide projekteerimine, ehitus, hooldus ja hilisem rekonstrueerimine tagab töö järjepidevuse sõltumata majanduse tõusudest ja mõõnadest.", "Ehitusgeodeesia", "Igasuguse ehitustegevusega kaasnevad alati mõõtmised ja märkimised. Ehitusgeodeetilised tööd algavad ehitise jaoks planeeritud maa-ala mõõdistamisega ja suuremõõtkavalise täpse detailse topograafilise plaani koostamisega, mis on projekteerijate töö aluseks. Peale projekti valmimist märgib geodeet ehitise loodusesse ja teeb kogu ehitustegevuse vältel vajalikke märkimistöid ja kontrollmõõtmisi. Seoses vanade ehitiste hoogustunud rekonstrueerimisega tuleb sageli mõõdistada ka olemasolevaid ehitisi ja uurida ehitise ekspluatatsiooniaegseid deformatsioone. Tänapäeval on ehitustegevus väga intensiivne ja seetõttu on ka ehitusgeodeetilisi töid palju. Unikaalsete ja keeruliste objektide, näiteks mitmesuguste kõrghoonete püstitamisel on vaja eriti hoolikaid ja täpseid geodeetilisi töid.", "Edukal lõpetamisel saadakse magistrikraad ning ka geodeedi esmane kutsekvalifikatsioon. Sinust saab eriala tunnustatud spetsialist. Ehitusgeodeesia lõpetanu ei ole piiritletud ehitussektoris töötamisega. Vajalikud teadmised omandatakse ka kõigi teiste geodeesia, geoinformaatika, satelliittehnoloogia ja geograafiliste infosüsteemidega (GIS) seotud ülesannete lahendamiseks, samuti saab abiks olla hoopis teiste eluvaldkondade ülesannete lahendamisel nagu kliimamuutuste uurimine, Maa masside liikumine, maavärinate ennustamine jne. Tehnika ja arvutusvõimsuse arenguga seoses koguneb üha rohkem informatsiooni arvutitesse ja andmebaasidesse. Asukohapõhise info haldamine ja otstarbekas kasutamine saab üha vajalikumaks (näiteks mobiilse positsioneerimise tulemusel inimestele saadetav reklaam).", "Ehitiste projekteerimine", "Ehitiste projekteerimise spetsialiseerumisel õpetatakse konstruktsioonide, ehitusmaterjalide, ehitusfüüsika ja energiatõhususe aineid. Õppetöö käigus saad vajalikud teoreetilised ja praktilised põhiteadmised betoon-, puit-, metall- ja kivikonstruktsioonidest, modelleerimise ja projekteerimise tarkvaradest (FEM, CAD ja BIM), samuti piirdetarindite soojus- ja niiskusfüüsikast, akustikast ja energiasimulatsioonidest. Ehitiste projekteerija tulevik on liginullenergiahoonete ehitamine ning olemasolevate hoonete terviklik rekonstrueerimine. Eesti pingutab oma jõudude ja ELi vahenditega, et 2030. aastaks oleks olemasolev hoonefond muudetud kaasaegselt mugavaks, tervislikuks ja energiatõhusaks nutikate kõrgtehnoloogiliste ja pikaealiste tehniliste lahendustega. Sinul võib olla harukordne võimalus tulla tegema ehitussektoris murrangut üleminekul uutele tehnoloogiatele ja kvaliteeditasemetele.", "Ehitusjuhtimine", "Iga ehitusprojekt on eelkõige investeerimisprojekt, mis algab eelseisvate kulude kalkuleerimisega ning eelarvete koostamisega ehitise tellijale. Ehitusprotsesski on otseselt seotud kulutuste jälgimisega ning tehtud tööde mahtude kontrollimisega. Lisaks inseneriteadmistele vajab iga ehitusprojekt juhtimise ning korraldusoskusi, mida on võimalik õppida ehitusmajandusele ja juhtimisele spetsialiseerudes. Lõpetanud leiavad tööd erinevates majandussektorites, kes kõik vajavad sobivaid ja kaasaegseid ehitisi, samuti ka riigi ning kohaliku omavalitsuse struktuurides ehitusvaldkonna strateegiliste planeerijatena.", "Ehitusjuhtimisele spetsialiseerumine valmistab ette tööks ehitustööde juhtidena, ehituse eelarvestajatena ja ökonomistidena, ehituse tellijatena, ehituse järelevalve inseneridena, kinnisvara arendajatena.", "Põhjalikumalt ehitusmaterjale uurinud lõpetaja on oodatud ehitusmaterjalide tööstuses juhtivale positsioonile kvaliteedijuhiks, tootmisettevõtte juhiks, laboratooriumi juhatajaks või sarnasele vastutavale ametikohale. Võimalikud töökohad on ka riiklikes asutustes, mis on seotud ehitusmaterjalide tootmise juhtimise või kontrolliga."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Keele- ja väljendusõpe",
                courses: [
                    Course(name: "Inglise teaduskeel", eapCount: 6),
                ]
            ),
            Module(
                name: "Ehituse sidusained",
                courses: [
                    Course(name: "Hoonete piirdetarindid", eapCount: 6),
                    Course(name: "Energiatõhusus ja sisekliima hoonete planeerimisel", eapCount: 6),
                    Course(name: "Ehitusettevõtlus ja äriplaan", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Arukate hoonete automaatika", eapCount: 3),
                            Course(name: "Ehitusfüüsika alused", eapCount: 6),
                            Course(name: "Hüdraulika ja pumbad", eapCount: 9),
                            Course(name: "Süvendatud IT alused II", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Hoonete energiatõhusus",
                courses: [
                    Course(name: "Elektrivarustus ja elektripaigaldised", eapCount: 6),
                    Course(name: "Hoonete renoveerimine", eapCount: 6),
                    Course(name: "Hoonete energiatõhususe arvutuse alused ja majanduslik hindamine", eapCount: 6),
                    Course(name: "Hoonete energiasimulatsioon", eapCount: 6),
                    Course(name: "Küte I", eapCount: 6),
                    Course(name: "Ventilatsioon I", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Soojus- ja niiskuslevi modelleerimine", eapCount: 6),
                            Course(name: "Küte II", eapCount: 6),
                            Course(name: "Ventilatsioon II", eapCount: 6),
                            Course(name: "Termodünaamika ja energiatootmine", eapCount: 9),
                            Course(name: "Jahutus- ja külmatehnika", eapCount: 6),
                            Course(name: "Õhutöötlusprotsessid ja seadmed", eapCount: 6),
                            Course(name: "Tehnosüsteemide koostoimimine ja -juhtimine", eapCount: 6),
                            Course(name: "Hoonete tehnosüsteemide mudelprojekteerimine ja projekteerimise juhtimine", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Ehituspraktika või tootmispraktika (praktika)", eapCount: 6),
                            Course(name: "Projekteerimispraktika (praktika)", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Hoonete sisekliima ja tehnosüsteemid",
                courses: [
                    Course(name: "Hoonete energiasimulatsioon", eapCount: 6),
                    Course(name: "Küte I", eapCount: 6),
                    Course(name: "Küte II", eapCount: 6),
                    Course(name: "Ventilatsioon I", eapCount: 6),
                    Course(name: "Ventilatsioon II", eapCount: 6),
                    Course(name: "Jahutus- ja külmatehnika", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Ehituspraktika või tootmispraktika (praktika)", eapCount: 6),
                            Course(name: "Projekteerimispraktika (praktika)", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Arukate hoonete automaatika", eapCount: 3),
                            Course(name: "Elektrivarustus ja elektripaigaldised", eapCount: 6),
                            Course(name: "Hoonete renoveerimine", eapCount: 6),
                            Course(name: "Hoonete energiatõhususe arvutuse alused ja majanduslik hindamine", eapCount: 6),
                            Course(name: "Gaasivarustus", eapCount: 6),
                            Course(name: "Kinnisvara arendamine ja energia", eapCount: 3),
                            Course(name: "Hoonete tehnosüsteemide mudelprojekteerimine ja projekteerimise juhtimine", eapCount: 6),
                            Course(name: "Elamute, avalike ja tootmishoonete veevärk ja kanalisatsioon", eapCount: 9),
                            Course(name: "Ehitusinfo modelleerimise alused (BIM I)", eapCount: 6),
                            Course(name: "Külmutusautomaatikaseadmed ja süsteemid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Kinnisvara korrashoid",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Ehitusmaterjalid ja ehitusfüüsika",
                        courses: [
                            Course(name: "Hoonete piirdetarindid", eapCount: 6),
                        ]
                    ),
                    Submodule(
                        name: "Ehitusprotsess ja ehitusprojekti juhtimine",
                        courses: [
                            Course(name: "Kinnisvara korrashoid ja ökonoomika", eapCount: 9),
                            Course(name: "Kinnisvara korrashoiu erialapraktika (praktika)", eapCount: 6),
                            Course(name: "Ehitustööde- ja maksumuse plaanimine", eapCount: 9)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Niiskuskahjustuste vältimine ehituses", eapCount: 6),
                            Course(name: "Heliisolatsioon ja ruumiakustika", eapCount: 6),
                            Course(name: "Hoonete renoveerimine", eapCount: 6),
                            Course(name: "Hoonete energiatõhususe arvutuse alused ja majanduslik hindamine", eapCount: 6),
                            Course(name: "Ehitusmaterjalid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Teede- ja sillaehitus",
                courses: [
                    Course(name: "Arvutikasutus teedeasjanduses", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Tee-ehitustööde juhi praktika (praktika)", eapCount: 6),
                            Course(name: "Teede projekteerimise praktika (praktika)", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Linnaehituse projektide stuudio. Planeerimisprojekt I. Madaltihe linnakvartal, linnatänavad", eapCount: 6),
                            Course(name: "Geoinfosüsteemide alused", eapCount: 6),
                            Course(name: "Sillad ja sillasambad", eapCount: 9),
                            Course(name: "Sillasambad - projekt", eapCount: 3),
                            Course(name: "Terassillad", eapCount: 6),
                            Course(name: "Raudbetoonsillad", eapCount: 9),
                            Course(name: "Puitsillad", eapCount: 6),
                            Course(name: "Sildade korrashoid", eapCount: 6),
                            Course(name: "Sildade erikursus", eapCount: 9),
                            Course(name: "Teetööde korraldus ja kasutatavad materjalid", eapCount: 6),
                            Course(name: "Teedeehituse ökonoomika ja juhtimine", eapCount: 6),
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
                name: "Peaeriala: Vee- ja keskkonnatehnika",
                courses: [
                    Course(name: "Veevärk", eapCount: 9),
                    Course(name: "Elamute, avalike ja tootmishoonete veevärk ja kanalisatsioon", eapCount: 9),
                    Course(name: "Väliskanalisatsioonivõrk", eapCount: 6),
                    Course(name: "Reoveepuhastus", eapCount: 9),
                    Course(name: "Sademevee äravoolu korraldus", eapCount: 6),
                    Course(name: "Veetorustikud ja modelleerimine", eapCount: 9)
                ],
                submodules: [
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Ehituspraktika või tootmispraktika (praktika)", eapCount: 6),
                            Course(name: "Projekteerimispraktika (praktika)", eapCount: 6),
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Vee keemia ja mikrobioloogia", eapCount: 6),
                            Course(name: "Keskkonnamõju hindamine ja keskkonnaaudit", eapCount: 6),
                            Course(name: "Küte I", eapCount: 6),
                            Course(name: "Ventilatsioon I", eapCount: 6),
                            Course(name: "Jäätmekäitlus", eapCount: 6),
                            Course(name: "Hüdroloogia ja vesiehitised", eapCount: 9),
                            Course(name: "Hüdrauliliste võrkude vabavaraliste arvutusprogrammide programmeerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Ehitusgeodeesia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Praktika",
                        courses: [
                            Course(name: "Ehitusgeodeesia praktika II (praktika)", eapCount: 6),
                        ]
                    ),
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Ehitusgeodeesia I", eapCount: 6),
                            Course(name: "Ehitusgeodeesia II", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Ruumiandmete kogumine ja visualiseerimine",
                        courses: [
                            Course(name: "Satelliitgeodeesia ja projekt", eapCount: 6),
                            Course(name: "Kaugseire alused", eapCount: 6),
                            Course(name: "Mõõdistusandmete automatiseeritud töötlus ja visualiseerimine", eapCount: 6),
                            Course(name: "Geodeetiline referentssüsteem", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Geodeetilised instrumendid", eapCount: 6),
                            Course(name: "Teegeodeesia", eapCount: 6),
                            Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                            Course(name: "Topograafiline mõõdistamine", eapCount: 6),
                            Course(name: "Kõrgem geodeesia", eapCount: 6),
                            Course(name: "CAD programmeerimine geodeetilisteks rakendusteks", eapCount: 6),
                            Course(name: "Geograafiline infosüsteem GIS", eapCount: 6),
                            Course(name: "Insener-tehnilised geodeesiatööd", eapCount: 6),
                            Course(name: "Maa kaugseire rakendused", eapCount: 3),
                            Course(name: "Kartograafia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Ehitiste projekteerimine",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Ehitusprotsess ja ehitusprojekti juhtimine",
                        courses: [
                            Course(name: "Ehituse juhtimine", eapCount: 6),
                            Course(name: "Ehitustehnoloogia", eapCount: 6),
                            Course(name: "Ehitustööde- ja maksumuse plaanimine", eapCount: 9),
                            Course(name: "Ehituskorraldus", eapCount: 6),
                            Course(name: "Ehitusinfo modelleerimise alused (BIM I)", eapCount: 6),
                            Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                            Course(name: "Juhtimisstrateegiate simulatsioon ehituses", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Kandekonstruktsioonid, ehitusmaterjalid ja ehitusfüüsika",
                        courses: [
                            Course(name: "Hoonete piirdetarindid", eapCount: 6),
                            Course(name: "Betoonkonstruktsioonid I", eapCount: 6),
                            Course(name: "Betoonkonstruktsioonid II", eapCount: 6),
                            Course(name: "Teraskonstruktsioonid II", eapCount: 6),
                            Course(name: "Vundamendid", eapCount: 6),
                            Course(name: "Projekteerimispraktika (praktika)", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Soojus- ja niiskuslevi modelleerimine", eapCount: 6),
                            Course(name: "Niiskuskahjustuste vältimine ehituses", eapCount: 6),
                            Course(name: "Heliisolatsioon ja ruumiakustika", eapCount: 6),
                            Course(name: "Hoonete renoveerimine", eapCount: 6),
                            Course(name: "Teraskonstruktsioonid I", eapCount: 6),
                            Course(name: "Pinnasemehaanika ja ehitusgeoloogia alused", eapCount: 6),
                            Course(name: "Raalprojekteerimine", eapCount: 6),
                            Course(name: "Puitkonstruktsioonid", eapCount: 6),
                            Course(name: "Puitkonstruktsioonide erikursus", eapCount: 6),
                            Course(name: "Kivikonstruktsioonid", eapCount: 6),
                            Course(name: "Ehituskonstruktsioonide erikursus", eapCount: 6),
                            Course(name: "Betooniõpetus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Ehitusjuhtimine",
                courses: [
                    Course(name: "Ehitusinvesteeringud ja projektijuhtimine", eapCount: 9),
                    Course(name: "Ehituse juhtimine", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6),
                    Course(name: "Ehitustööde- ja maksumuse plaanimine", eapCount: 9)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kinnisvara korrashoid ja ökonoomika", eapCount: 9),
                            Course(name: "Ehitustehnoloogia", eapCount: 6),
                            Course(name: "Ehituskorraldus", eapCount: 6),
                            Course(name: "Ehitusinfo modelleerimise alused (BIM I)", eapCount: 6),
                            Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                            Course(name: "Juhtimisstrateegiate simulatsioon ehituses", eapCount: 6),
                            Course(name: "Õiguse alused ja ehitusõigus", eapCount: 6),
                            Course(name: "Juhtimise psühholoogilised alused", eapCount: 6),
                        ]
                    ),
                    Submodule(
                        name: "Kandekonstruktsioonid, ehitusfüüsika ja ehitusmaterjalid",
                        courses: [
                            Course(name: "Hoonete piirdetarindid", eapCount: 6),
                            Course(name: "Soojus- ja niiskuslevi modelleerimine", eapCount: 6),
                            Course(name: "Niiskuskahjustuste vältimine ehituses", eapCount: 6),
                            Course(name: "Hoonete renoveerimine", eapCount: 6),
                            Course(name: "Betoonkonstruktsioonid I", eapCount: 6),
                            Course(name: "Teraskonstruktsioonid I", eapCount: 6),
                            Course(name: "Puitkonstruktsioonid", eapCount: 6),
                            Course(name: "Kivikonstruktsioonid", eapCount: 6),
                            Course(name: "Betooniõpetus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Keemia- ja keskkonnakaitse tehnoloogia",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Ehituse või Tehnika Valdkonnas"),
            Requirements(term: "Vestlus")
        ],
        description: ["Me elame ajastul, mil keskkonnakaitse on põletav teema. Kuidas balansseerida sellel piiril, et loodus oleks kaitstud, teadus arendatud, ühiskond rahul ja elu kõikidele ohutu? Kui sul on soov anda oma panus keskkonnakaitsesse ning lahendada olemasolevaid probleeme uusimate tehnoloogiatega, siis oled meie õppekava valides õigel teel.", "Ootame õppima TTÜ ja teiste Eesti ülikoolide tehnika- või loodusteaduste valdkonna bakalaureusekavade lõpetajaid. Eriala tugevus seisneb keskkonnakaitse tehnoloogia ja keemiainseneriteaduse tihedas seoses.", "Saad teadmisi ja oskusi, mis hõlmavad nii keemilis-tehnoloogilisi protsesse kui ka keskkonnakaitse tehnoloogias kasutatavate protsesside eripära. Saad head baasteadmised keskkonna-, orgaanilisest ja anorgaanilisest keemiast.", "Olulisteks erialaaineteks on näiteks keskkonnasaaste, -analüüs ja –seire; keskkonnapoliitika, keskkonnatehnoloogia eriprotsessid; orgaanilise keemia materjalid ja tehnoloogiad; anorgaaniliste materjalide keemia ja tehnoloogia; leviprotsessid keemiatehnoloogias ja keskkonnas."],
        outcomes: ["Erialal on unikaalne koht loodus- ja tehnikateaduste piiril - saadud teadmised võimaldavad edukalt töötada erinevates teadus- ja majandusvaldkondades. Juba õppimise ajal on paljud üliõpilased leidnud endale perspektiivse, erialaga seotud töökoha, kus läbitakse ka tööstuspraktika.", "Meie lõpetajad leiavad tööd hinnatud spetsialistidena (teadushuvilisemad saavad jätkata õpinguid doktoriõppes nii Eestis kui välismaal). Nii võibki meie vilistlasi leida keskkonnaministeeriumist, keskkonnauuringute keskusest ning valdade ja maakondade keskkonnaametitest, uurimisinstituutidest, projekteerimis- ja konsultatsioonifirmadest, erinevatest keemia-, toiduainetetööstuse ja energiatootmise ettevõtetest (näiteks Akzo Nobel Baltics AS, AS Viru Keemia Grupp, AS Tallinna Vesi, AS Eesti Energia, Sweco Projekt AS)."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Keskkonnasaaste, -analüüs ja -seire", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnahindamine ja süsteemanalüüs", eapCount: 6),
                            Course(name: "Keskkonnapoliitika", eapCount: 6),
                            Course(name: "Keskkonnatehnoloogia", eapCount: 6),
                            Course(name: "Keemiatehnika alused keemikutele", eapCount: 6),
                            Course(name: "Keskkonna ja säästva arengu ökonoomika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Keemiatehnoloogia",
                courses: [
                    Course(name: "Protsesside projekteerimine", eapCount: 6),
                    Course(name: "Orgaanilise keemia materjalid ja tehnoloogiad", eapCount: 6),
                    Course(name: "Säästlik/puhtam tootmine", eapCount: 6),
                    Course(name: "Anorgaaniliste materjalide keemia ja tehnoloogia", eapCount: 6)
                ]
            ),
            Module(
                name: "Keskkonnatehnoloogia",
                courses: [
                    Course(name: "Magistripraktika (praktika)", eapCount: 6),
                    Course(name: "Keemia- ja keskkonnatehnoloogia praktikum ja projekt", eapCount: 6),
                    Course(name: "Keskkonnatehnoloogia eriprotsessid", eapCount: 6),
                    Course(name: "Leviprotsessid keemiatehnoloogias ja keskkonnas", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Keskkonnatehnika ja juhtimine",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "kõrgharidus Tehnika, Tootmise või Ehituse Valdkonnas"),
            Requirements(term: "Vestlus")
        ],
        description: ["Kumb on loodusele halvem: võtta jõuluks metsast maha kuusk või panna püsti tehas plastmasskuuskede tootmiseks? Tootmise mõju loodusele on suur ning seetõttu on tööstuses väga vaja selliseid spetsialiste, kel teadmised nii inseneri- kui keskkonnakaitse vallast.", "Õppekava keskmes ongi keskkonnakaitseprobleemid, aga süvendame ka õppija insener-tehnilisi ja majandusalaseid teadmisi. Keskkonnajuhtimise vallas on õppeainete põhirõhk keskkonnakaitse prioriteetse valdkonna - saaste ennetamise ehk keskkonnasõbraliku tootmise - põhitõdedel. Samuti pöörame tähelepanu tootmises tekkinud heidetele, jäätmete käitlemisele, nende puhastamise ja korduvkasutuse probleemidele. Õppekavas leiavad kajastamist ka keskkonnaseire, keskkonnamõjude hindamine ja keskkonnakaitset puudutav seadusandlus.", "Majandusvaldkonna õppeainetes saad rohkem teada tootmise juhtimisest, ärikorraldusest, ärieetikast ja statistilisest analüüsist. Olulised erialaained on näiteks: keskkonnajuhtimissüsteemid, õhusaaste vältimine ja juhtimine, säästlik/puhtam tootmine, veekogude veekvaliteet ja veesääst, muda ja prügikäitluse teooria ja seadmed, reovee puhastamine ja seadmed, keskkonnamõju hindamine ja keskkonnaaudit, keskkonnahindamine ja süsteemanalüüs, ettevõtlus ja äri planeerimine."],
        outcomes: ["Lõpetajat ootavad hästitasustatud töökohad keskkonnanõunikuna ettevõtetes või keskkonnaspetsialistina kohalikes omavalitsustes, keskkonnaametites, keskkonnainspektsioonis,veeteenust osutavates ettevõtetes, konsultatsioonifirmades, riigiasutustes, uurimis/arendus- ja teadusasutuses. Võimalik on ka jätkata doktoriõppes Eestis või välismaal."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Keskkonnahindamine ja süsteemanalüüs", eapCount: 6),
                    Course(name: "Vee keemia ja mikrobioloogia", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6),
                            Course(name: "Statistika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Keskkonnajuhtimine",
                courses: [
                    Course(name: "Elutsükli analüüs", eapCount: 6),
                    Course(name: "Ökodisain", eapCount: 6),
                    Course(name: "Keskkonnapoliitika", eapCount: 6),
                    Course(name: "Keskkonnamõju hindamine ja keskkonnaaudit", eapCount: 6)
                ]
            ),
            Module(
                name: "Keskkonnatehnika",
                courses: [
                    Course(name: "Ametipraktika (praktika)", eapCount: 6),
                    Course(name: "Muda- ja prügikäitluse teooria ning seadmed", eapCount: 6),
                    Course(name: "Õhusaaste vältimine ja juhtimine", eapCount: 6),
                    Course(name: "Keskkonnatehnoloogia", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Reoveepuhastus ja seadmed", eapCount: 6),
                            Course(name: "Veevärgi- ja kanalisatsiooniteenus", eapCount: 6),
                            Course(name: "Veekogude veekvaliteet ja veesääst", eapCount: 6),
                            Course(name: "Säästlik veemajandus", eapCount: 6),
                            Course(name: "Keskkonnajuhtimissüsteemid", eapCount: 6),
                            Course(name: "Säästlik/puhtam tootmine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Kütuste keemia ja tehnoloogia",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Vestlus")
        ], description: ["Kütuse- ja keemiatööstus on Eesti üks olulisemaid majandusharusid ja annab arvestatava osa riigi ekspordist. Põlevkivi töötlemise mahud, sh kõrgeväärtuslike põlevkiviõlitoodete valmistamiseks, laienevad pidevalt ning tulevikus on vaja arendada keskkonnasõbralikke ja tõhusaid tehnoloogiaid, mis suudavad põlevkivist saada maksimaalselt kasumit. Seetõttu on teaduse ja põlevkivitööstuse tihe koostöö väga tähtis.", "Õppekava valmistab ette kõrgelt kvalifitseeritud spetsialiste nii teadusuuringute kui ka innovaatilise tootmise valdkonnas. Saad põhjalikud teadmised ja oskused fossiilkütuste (nafta, kivisüsi, maagaas) valdkonnas. Suurt tähelepanu pöörame Eesti tähtsama maavara põlevkivi parimate võimalike töötlemistehnoloogiate tundmaõppimisele. Peale keemia- ja tehnoloogiaalaste kompetentside annab õppekava ettevalmistuse tootearendusprojektide koostamiseks ja läbiviimiseks, tootmise kavandamiseks ja kütuste tehnoloogia valdkonna keskkonnaprobleemide ennetamiseks. Põhilised õpivaldkonnad on: protsesside termodünaamika, leviprotsessid, fossiilkütuste töötlemisprotsessid, keskkonnakaitse ja säästlik tootmine.", "Õppekava arvestab paindlikult üliõpilaste huve ja vajadusi: valikained võimaldavad süveneda erinevatesse kütuste keemia ja tehnoloogia valdkondadesse, keskendudes kas teadus- ja uurimistööle või uutele tehnoloogiatele. Suurt tähelepanu pööratakse ka kaasaegsetele IKT- rakendustele ning interdistsiplinaarsele õppele, nt keemiainseneride, -tehnoloogide ja IKT- spetsialistide koostööle ülesannete püstitamisel, lahenduste leidmisel ja testimisel."],
        outcomes: ["Magistriõppekava lõpetanud leiavad tööd kütuseid kasutavate ja töötlevate ettevõtete uute tehnoloogiate arendusgruppides, kütuste laboratooriumides ja teadusliku uurimise keskustes, ettevõtete, teadusasutuste jm organisatsioonide ning asutuste spetsialistidena kütuste keemia ja tehnoloogia valdkonnas. Saadav haridus võimaldab tööd leida ka muudes keemia- ja keemilise tehnoloogiaga seotud valdkondades.", "Potentsiaalsed tööandjad on Eesti suured kütusetööstuse ettevõtted (Eesti Energia Enefit Energiatootmine AS, Viru Keemia Grupp AS, Kiviõli Keemiatööstuse OÜ, Novotrade Invest AS jt), transpordiettevõtted kütusetoodete transpordiks, ladustamiseks ja turustamiseks (AS Alexela Oil, Muuga, Paldiski jt tööstuspargid), Kohtla-Järve Keemiatööstuspark, tolliamet (tollitöötajad) ja teised Eesti keemiatööstuse ettevõtted (Akzo Nobel Baltics AS jt).", "Magistrantuuri lõpetajad on võimelised tegelema teadustegevusega, ka kvaliteedi- ja teaduslaborites (nt Põlevkivi Kompetentsikeskus jms). Teadustöö suunad võivad olla seotud uuringutega kütuste keemia valdkonnas, uute efektiivsete materjalide kütusetööstuse kõrvalproduktide baasil (näiteks, põlevkivi polükondensatsiooni vaigud) loomine jm."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation: [.kohtlaJärve],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja ettevõttemajandus", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Teadustöö alused ja akadeemiline eneseväljendamine", eapCount: 6),
                            Course(name: "Intellektuaalomand, innovatsioon ja teadmuspõhine ärijuhtimine", eapCount: 6),
                            Course(name: "Mõõtmistulemuste töötlemine ja analüüs", eapCount: 6),
                            Course(name: "Projektijuhtimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Protsesside termodünaamika", eapCount: 6),
                    Course(name: "Orgaanilise keemia erikursus", eapCount: 6),
                    Course(name: "Leviprotsessid", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Instrumentaalanalüüsi erikursus", eapCount: 6),
                            Course(name: "Polümeeride erikursus", eapCount: 6),
                            Course(name: "Kütuste ja määrdeainete klassifitseerimine ja standardimine", eapCount: 6),
                            Course(name: "Kemikaalide riskide hindamine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Kütuste keemia ja tehnoloogia",
                courses: [
                    Course(name: "Kütuste keemia ja tehnoloogia I", eapCount: 6),
                    Course(name: "Kütuste keemia ja tehnoloogia II", eapCount: 6),
                    Course(name: "Arvutusmeetodid keemiatehnoloogias", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Tehnoloogiliste protsesside projekteerimine, visualiseerimine ja kontroll", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Katalüüs kütusetööstuses", eapCount: 6),
                            Course(name: "Protsesside projekteerimine kütuste tehnoloogias", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Magistripraktika", eapCount: 6),
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Logistika",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "kõrgharidus logistika, transpordi, tehnika, tootmise, infotehnoloogia, majanduse või nendega lähedasel erialal"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Erialatest")
        ],
        description: ["Logistika on mõttelaad, kompetentsus ja tegutsemisviis ettevõtte edukuse tagamiseks, ressursside paremaks kasutamiseks ja majanduse konkurentsivõime tõstmiseks. Praktikas mõistetakse logistika all maismaa-, lennu, mere- ja raudteetranspordi, kombineeritud vedude, laonduse, ostude ja hangete, jaotuse, klienditeeninduse ning informatsiooni liikumise korraldamist kogu tarneahela ulatuses, samuti linnaliikluse ja ühistranspordi planeerimist. Vajadus kaupade liigutamise ning inimeste liikumise järele eksisteerib kogu aeg ega kao kuskile.", "Kuidas leida parim viis tarneahela korraldamiseks? Kuidas tagada ummikuvaba linn? Head tarneahelajuhid, logistikud ja liikuvuskorraldajad garanteerivad, et tarneahela ja transpordivõrgu erinevad lülid suhtleksid omavahel koordineeritult, et kaubad ja inimesed saaksid liikuda kiirelt, mugavalt ja sujuvalt, et erinevate transpordiliikide infrastruktuur on omavahel ühendatud ning need ühendused toimivad plaanipäraselt."],
        outcomes: ["Logistika ja tarneahela juhtimine:", "Lõpetanu analüüsib ja tõhustab ettevõtte logistilisi ja tarneahela protsesse, sh määratleb nõuded eesmärkidele, tulemusnäitajatele ja kvaliteedile, selgitab välja klientide ootused ja kommunikeerib neid juhtkonnale.", "Lõpetanu kaasab ettevõtte osakonnad kliendi ootuste rahuldamiseks ettevõttele kõige kasulikumal moel, sh arendab tarneahela lülide vahelist koostööd ja usaldust.", "Lõpetanu viib läbi tarneahela tegevuste võrdlusuuringuid.", "Lõpetanu selgitab välja ettevõtte vajaduse logistikateenuste järele ja/või teostab nende ostu ja müüki.", "Lõpetanu selgitab välja ka transpordivaldkonna probleemid ettevõttes ja lahendab need.", "Lõpetanu teeb koostööd tarneahela teiste lülidega optimaalse varude taseme tagamiseks kogu ahelas."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Tehnoloogiapõhine ettevõtlus ja innovatsioon", eapCount: 6),
                    Course(name: "Äriprotsesside juhtimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Nõudluse planeerimine ja juhtimine", eapCount: 6),
                    Course(name: "Logistilised süsteemid", eapCount: 6),
                    Course(name: "Äriinfosüsteemid", eapCount: 6),
                    Course(name: "Finantsjuhtimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Logistika ja tarneahela juhtimine",
                courses: [
                    Course(name: "Majanduskeskkond ja logistika", eapCount: 6),
                    Course(name: "Tarneahela digitaliseerimine ja strateegia", eapCount: 6),
                    Course(name: "Hanke- ja ostujuhtimine", eapCount: 6),
                    Course(name: "Transport tarneahelas", eapCount: 6),
                    Course(name: "Töö- või õpetamispraktika (praktika)", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Liikuvuse korraldus ja taristu", eapCount: 6),
                            Course(name: "Logistika eriharud", eapCount: 6),
                            Course(name: "Kvaliteedijuhtimine", eapCount: 6),
                            Course(name: "Samaaegne tootearendus", eapCount: 6),
                            Course(name: "Liikuvuskorraldus linnades ja liikluse modelleerimine", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Organisatsiooni arendamine ja muutuste juhtimine", eapCount: 6),
                            Course(name: "Juhtimispsühholoogia", eapCount: 6),
                            Course(name: "Sadamate ekspluatatsioon ja juhtimise alused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Liikuvuskorraldus",
                courses: [
                    Course(name: "Liikuvuse korraldus ja taristu", eapCount: 6),
                    Course(name: "Liikuvuse planeerimine ja poliitika", eapCount: 6),
                    Course(name: "Liiklusohutus", eapCount: 6),
                    Course(name: "Sõidukite liikumisteooria", eapCount: 6),
                    Course(name: "Töö- või õpetamispraktika (praktika)", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Transpordi infosüsteem ja ühistransport", eapCount: 6),
                            Course(name: "Logistika eriharud", eapCount: 6),
                            Course(name: "Kaasaegne sõiduk", eapCount: 6),
                            Course(name: "Kvaliteedijuhtimine", eapCount: 6),
                            Course(name: "Samaaegne tootearendus", eapCount: 6),
                            Course(name: "Liikuvuskorraldus linnades ja liikluse modelleerimine", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Juhtimispsühholoogia", eapCount: 6),
                            Course(name: "Sadamate ekspluatatsioon ja juhtimise alused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Materjalid ja protsessid jätkusuutlikus energeetikas",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Bakalaureusekraad Loodus- või Tehnikateadustes"),
            Requirements(term: "Essee")
        ],
        description: ["Õppekaval on kaks peamist eesmärki: koolitame insenere, kes suudavad lahendada energia tootmise, transpordi, säilitamise ja kasutamisega seotud probleeme, ning valmistame ette teadlasi, kes suudavad luua ja rakendada uusi materjale jätkusuutliku energeetika arengu tagamiseks.", "Õppekava rõhuasetus on jätkusuutliku energeetika materjalidel. Eesmärgiks on õppida tundma materjale, mis on valmistatud konkreetsete omadustega reageerimaks ümbritseva keskkonna muutustele ning kajastades neid muutusi elektriliste, magnetiliste või muude füüsikaliste ja keemiliste omaduste kaudu.", "Samas annab õppekava võimaluse üldisemaks käsitluseks, energeetikas toimuvate protsesside analüüsimiseks ja planeerimiseks. Selline integreeritud lähenemine on uudne ja laiendab oluliselt lõpetajate võimalusi ja konkurentsivõimet tööturul.", "Tartu Ülikooli kompetentsi baasil käsitleme ka vesinikuenergeetika kasutamise võimalusi ning energia salvestamist superkondensaatoritega. Samas õpetatakse üliõpilasi kriitiliselt hindama praegu kasutusel olevaid fossiilseid energiatehnoloogiad, nagu näiteks energia tootmine põlevkivist."],
        outcomes: ["Energeetika ja kaevandamine on kiiresti arenev, kõrge lisandväärtusega, innovaatiline ning riigi ja majanduse toimimiseks väga oluline valdkond. Sektoris kasvab vajadus inseneride ja tehnikute järele, samas lihttöötajate arv väheneb; kasvab hõive taastuvenergeetikas, tarkade võrkude ehituses ja hoolduses ning energiasäästlike hoonete ehitamisega seotud elektripaigalduses.", "Antud õppekava on avanud ja avab ka paljudes teistes kõrgtehnoloogilistes materjalide tehnoloogia valdkondades täiendavaid võimalusi vajalike investeeringute toomiseks Eestisse.", "Õppekava lõpetanud spetsialistid moodustavad täna kõrgtehnoloogilise ettevõtte Crystalsol OÜ töötajaskonna tuumiku. Crystalsol toodab Eestis TTÜs väljatöötatud tehnoloogia alusel päikespaneele. Pärast õpingute lõpetamist on Eestisse tööle jäänud ka mujalt Euroopa riikidest siia õppima tulnud spetsialistid (näiteks ABB AS, Crystalsol OÜ, Eesti Energia AS)."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Sotsiaalained",
                courses: [
                    Course(name: "Inseneriteaduse sotsiaalsed ja eetilised aspektid", eapCount: 3),
                    Course(name: "Projekti- ja kvaliteedijuhtimine", eapCount: 3),
                    Course(name: "Intellektuaalne omand", eapCount: 3),
                    Course(name: "Tehnoloogiaettevõtluse baaskursus", eapCount: 6)
                ]
            ),
            Module(
                name: "Loodusteaduste ja inseneriõppe ained",
                courses: [
                    Course(name: "Termodünaamika", eapCount: 6),
                    Course(name: "Materjaliteaduse põhialused", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Insenerikeemia alused", eapCount: 6),
                            Course(name: "Inseneriõppe põhialused", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Jätkusuutlik energeetika",
                courses: [
                    Course(name: "Jätkusuutlik energeetika ja tehnoloogia", eapCount: 9),
                    Course(name: "Energia salvestamine", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Materjalid jätkusuutlikus energeetikas",
                courses: [
                    Course(name: "Materjalide tehnoloogia ja rakendused", eapCount: 6),
                    Course(name: "Materjalide uurimismeetodid", eapCount: 6),
                    Course(name: "Materjalide omadused", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Protsessid jätkusuutlikus energeetikas",
                courses: [
                    Course(name: "Energiamajandus ja plaanimine", eapCount: 6),
                    Course(name: "Päikeseelektri süsteemid", eapCount: 6),
                    Course(name: "Kütuseelementide ja patareide materjalid ja tehnoloogia", eapCount: 6)
                ]
            ),
            Module(
                name: "Uurimistöö ja magistripraktika",
                courses: [
                    Course(name: "Sissejuhatus õpingutesse ja uurimisprojekti", eapCount: 6),
                    Course(name: "Magistripraktika (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Mehhatroonika",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Vestlus")
        ],
        description: ["Mehhatroonika on sünergia infotehnoloogiast, elektroonikast, optikast ja mehaanikasüsteemidest ning üks dünaamilisemaid tehnikasuundi maailmas. Selle eesmärk on tehniliste süsteemide funktsionaalsete võimaluste täiustamine uute infotehnoloogiliste vahenditega ja uutel põhimõtetel töötavate seadmete loomine, rakendades tehisintellekti ja uusi andurite põhimõtteid ümbruse paremaks tajumiseks ja seadmete juhtimiseks programmeeritava elektroonika abil. Tuntud näited mehhatroonikasüsteemidest on robotid ja mitmesugused automaatikaseadmed nii kodus kui ka ettevõtetes, kus on rakendatud tänapäevaseid IT- lahendusi.", "IT-lahendused ja tarkvara integreerimine seadmetesse nii tööstuses kui ka sotsiaalsfääris muutub järjest olulisemaks, samuti IT, elektroonika ja mehaanika sügav integratsioon. Mehhatroonika paneb need kolm kokku ja nii sünnivadki arukad tulevikusüsteemid.", "IT-lahendused ja tarkvara integreerimine seadmetesse nii tööstuses kui ka sotsiaalsfääris muutub järjest olulisemaks, samuti IT, elektroonika ja mehaanika sügav integratsioon. Mehhatroonika paneb need kolm kokku ja nii sünnivadki arukad tulevikusüsteemid.", "Olulised erialaained on näiteks: automaatikavahendid, mehhatroonikasüsteemide modelleerimine ja juhtimine, mikroprotsessorsüsteemid, automaatikavahendid, kaasaegne robotitehnika, andmehõivesüsteemid, tarkade asjade võrgud, rakenduslik andmeside, küberturbe põhialused, arukad juhtimissüsteemid, raalintegreeritud tootmine, mehhatroonika ja arukate süsteemide projekt, masinnägemine, biosensoorika, säästev energeetika, jätkusuutliku energeetika alused."],
        outcomes: ["Eri valdkondade teadmistes orienteerumise ja seostamise oskus koos innovaatilise mõtlemisvõime ning ettevõtlikkusega on see, mis tagab edu tulevikus. Mehhatroonika eriala vilistalased on edukad nii suurettevõtete arendustegevuses kui ka ettevõtluses start-up’ide arendamisel", "Mehhatrooniku eelistatud töökohad on automaatika-, robootika ja elektroonikaspetsialistidena, samuti tootmises automaatseadmete, tehnoloogiliste liinide ning robotite ekspluatatsiooniinseneride või ettevõttejuhtidena."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kvaliteedijuhtimine", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Juhtimine ja eestvedamine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Mehhatroonika alused",
                courses: [
                    Course(name: "Kaasaegne robotitehnika", eapCount: 6),
                    Course(name: "Mehhatroonikasüsteemide modelleerimine ja juhtimine", eapCount: 6),
                    Course(name: "Automaatikavahendid", eapCount: 6),
                    Course(name: "Mikroprotsessorsüsteemid", eapCount: 6)
                ]
            ),
            Module(
                name: "Arukad süsteemid",
                courses: [
                    Course(name: "Masinnägemine", eapCount: 6),
                    Course(name: "Säästev energeetika, jätkusuutliku energeetika alused", eapCount: 6),
                    Course(name: "Raalintegreeritud tootmine", eapCount: 6),
                    Course(name: "Tootmise planeerimise ja juhtimise süsteemid", eapCount: 6),
                    Course(name: "Arukad juhtimissüsteemid", eapCount: 6),
                    Course(name: "Modelleerimine ja identifitseerimine", eapCount: 6),
                    Course(name: "Rakenduslik andmeside", eapCount: 6),
                    Course(name: "Robootika", eapCount: 6),
                    Course(name: "Biosensoorika", eapCount: 6),
                    Course(name: "Küberturbe põhialused", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriala üldteadmised",
                courses: [
                    Course(name: "Robotite ja masinate dünaamika", eapCount: 6),
                    Course(name: "Sardsüsteemide alused", eapCount: 6),
                    Course(name: "Objektorienteeritud programmeerimine", eapCount: 6),
                    Course(name: "Elektroonika", eapCount: 6),
                    Course(name: "Tarkade asjade võrgud", eapCount: 6),
                    Course(name: "Andmehõivesüsteemid", eapCount: 6)
                ]
            ),
            Module(
                name: "Mehhatroonika rakendused",
                courses: [
                    Course(name: "Mehhatroonika magistriseminar", eapCount: 6),
                    Course(name: "Tööstusautomaatika ja elektriajamid", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tööstuspraktika (praktika)", eapCount: 6),
                            Course(name: "Prototüüpimine", eapCount: 6),
                            Course(name: "Mehhatroonika ja arukate süsteemide projekt", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Puidu-, plasti- ja tekstiilitehnoloogia",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Läheasel Erialal"),
            Requirements(term: "Essee")
        ],
        description: ["Puidu-, plasti- ja tekstiilitehnoloogia (inglise keeles Technology of Wood, Plastics and Textiles) õppekava magistritasemel on võimalik spetsialiseeruda puidutehnoloogiale või plasti- ja tekstiilitehnoloogiale. Mõlemal suunal on tugev tööstus- ja tehnoloogiataust, sest 35% Eesti töötleva tööstuse müügimahust moodustavad just puidu- ja mööbli-, kummi- ja plasti- ning tekstiili- ja rõivatööstuse allharud. Ekspordimahtude kasvu tõttu investeerivad ettevõtted tootmise laiendamisse, tehnoloogia arendamisse ja efektiivsuse kasvatamisse, mis omakorda on toonud kaasa suure nõudluse erialaste teadmistega spetsialistide järele.", "Vastavalt valitud suunale saad põhjalikud teadmised puidu- või plasti- või tekstiili ja rõivatööstuse materjalide ehituse, omaduste ja tehnoloogiate kohta. Omandad põhiteadmised tehnoloogiaettevõtluse, projekti kavandamise, analüüsi ja juhtimise kohta, mida võid täiendada valikainetega. Tootearenduse ja innovatiivse tootmisega on seotud materjalide testimismeetodid, valdkonnaspetsiifilised (puit või tekstiil) CAD/CAM tehnoloogiad ja toodete modelleerimine ning tootmise digitaliseerimine."],
        outcomes: ["Puidutehnoloogia suunal õpetatavad puidutööstuse, mööblitööstuse, pehme mööbli ja puidust tehasemajade tehnoloogia õppeained on Eestis unikaalsed, sest nende õpetamisse on kaasatud praktiseerivad tootmisspetsialistid. Mööbli- ja pehmemööbli projektide raames tegeled praktiliste tootearendus- või tootmisprobleemide lahendamisega, mis nõuab mitmekülgseid teadmisi ja valmistab üliõpilasi tööeluks hästi ette.", "Plastitööstuse tehnoloogia alammooduli õppeained katavad plastide, polümeeride ja biopolümeeride ehituse, omaduste, tootmise, kasutamise ja ringlusesse võtmise teemasid. Need on olulised teadmised tehnoloogide, tootmisspetsialistide, ostu-, müügi-, kvaliteedi- või tootmisjuhtide jaoks. Olulised erialaained on näiteks polümeermaterjalid: saamine ja omadused, puitpolümeerkomposiidid, plastitööstuse tehnoloogiad 1 ja 2, biopolümeerid: põhiolemus, tootmine ja kasutamine.", "Tekstiili- ja rõivatootmise tehnoloogia alammoodulis saad olulised teadmised 2D- ja 3D modelleerimisest, rõivatööstuses kasutatavatest tehnoloogiatest ja seadmetest ning kvaliteedijuhtimisest. Teooriat saab praktikasse rakendada projektiõppeainetes tootearenduse või tootmisprobleemide lahendamisel. Uus põnev suund on targad ja funktsionaalsed tekstiiltooted."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Tehnoloogiaettevõtlus ja juhtimine",
                courses: [
                    Course(name: "Tehnoloogiaettevõtlus", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Säästlik/puhtam tootmine", eapCount: 6),
                            Course(name: "Biopolümeerid: põhiolemus, tootmine ja kasutamine", eapCount: 6),
                            Course(name: "Rohelise keemia meetrika biotoodete tootmiseks", eapCount: 6),
                            Course(name: "Rafineerimissüsteemid biotoodete tootmiseks", eapCount: 6),
                            Course(name: "Rohelise tehnoloogia elutsükli analüüs", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Tarneahela juhtimine", eapCount: 6),
                            Course(name: "Strateegiline ja finantsjuhtimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Uurimis- ja arendustöö",
                courses: [
                    Course(name: "Tööstuslikud materjalide liimimise ja viimistlemise tehnoloogiad", eapCount: 6),
                    Course(name: "Puitpolümeerkomposiidid", eapCount: 6),
                    Course(name: "Materjalide testimismeetodid", eapCount: 6),
                    Course(name: "CAD/CAM tehnoloogia mööbli-, plasti- ja rõivatööstuses", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kaasaegsed tekstiilmaterjalid", eapCount: 6),
                            Course(name: "Puidu ehitus ja omadused", eapCount: 6),
                            Course(name: "Tselluloosi tehnoloogiad", eapCount: 6),
                            Course(name: "Toodete ja protsesside modelleerimine", eapCount: 6),
                            Course(name: "Tootmise digitaliseerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Puidutehnoloogia",
                courses: [
                    Course(name: "Puidutööstuse tehnoloogia", eapCount: 6),
                    Course(name: "Mööblitööstuse tehnoloogia", eapCount: 6),
                    Course(name: "Pehme mööbli tehnoloogia", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Puidust tehasemajade tootmine", eapCount: 6),
                            Course(name: "Puidu-, tekstiili- ja plastijäätmete ringlussevõtt ja energiakasutus", eapCount: 6),
                            Course(name: "Materjalide biolagunemine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Plasti- ja tekstiilitehnoloogia",
                courses: [
                    Course(name: "Targad ja funktsionaalsed tekstiiltooted", eapCount: 6),
                    Course(name: "Puidu-, tekstiili- ja plastijäätmete ringlussevõtt ja energiakasutus", eapCount: 6),
                    Course(name: "Pehme mööbli tehnoloogia", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Alammoodul: Plastitehnoloogia",
                        courses: [
                            Course(name: "Plastitööstuse tehnoloogia 1", eapCount: 6),
                            Course(name: "Plastitööstuse tehnoloogia 2", eapCount: 6),
                            Course(name: "Polümeermaterjalid: saamine ja omadused", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Alammoodul: Tekstiil- ja rõivatootmise tehnoloogia",
                        courses: [
                            Course(name: "2D ja 3D tehnoloogiad rõivatööstuses", eapCount: 6),
                            Course(name: "Tekstiili- ja rõivatööstuse tehnoloogia ja seadmed", eapCount: 6),
                            Course(name: "Tootearendus tekstiili- ja rõivatööstuses", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Teadusprojektide metoodika ja teadustöö läbiviimine",
                courses: [
                    Course(name: "Projekt 1", eapCount: 6),
                    Course(name: "Projekt 2", eapCount: 6),
                    Course(name: "Projekt 3", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tootearendus ja tootmistehnika",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Erialakatse")
        ],
        description: ["Kas sul on tulnud ette olukordi, kus hoiad käes mõnda kasutajavaenulikult tehtud asjakest ning juurdled, kui palju paremini oleks võinud seda toodet konstrueerida? Samuti tead, et tööstuse tulevik on automatiseerimine ning soov selles innovatsioonis kaasa lüüa paneb sul silmad särama? Kui jah, siis ootame sind edasi õppima tootearenduse ja tootmistehnika magistrikavale. Läbid järgmised olulised erialaained, mis loovad sulle tugeva vundamendi: optimeerimismeetodid, X- keskne projekteerimine, tootmistehnoloogiad, tootmise planeerimine ja juhtimine, raalintegreeritud tootmine, materjalitehnika, kvaliteedijuhtimine, mehhatroonikasüsteemid, tööstusautomaatika ja elektriajamid. Peaerialasid on kaks, mõlemal saab õppida nii statsionaarses kui kaugõppes: tootearendus ning tootmistehnika ja robootika.", "Saad teadmised toote- ja tootmisseadmete projekteerimisest, samuti projektijuhtimisest. Õpid, kuidas konstrueerida toode nii, et see oleks uudne, mõistlikult valmistatav, tarbijale atraktiivne ja keskkonnasõbralik. Toote konstruktsiooni õpid disainima erinevate arvutustehnikate ja tarkvaradega.", "Õpid toodete valmistamise tehnikatest, seadmetest, materjalidest ja tehnoloogiatest, lisaks info- ja kommunikatsioonivahendeist ning tootmise korraldamisest ja majandamisest. Õpid tundma erinevate tehniliste süsteemide nagu robotid, manipulaatorid, autod, tööpingid jms ehitust ja muidugi nende otstarbekat kasutamist. Oluline rõhk on automatiseerimise õppimisel."],
        outcomes: ["Lõpetajad leiavad tööd tootearendajatena, projekteerijatena, tootmisjuhtidena, ekspertidena, firmajuhtidena. Tööd jagub kõikides majandusharudes, sest kes ei vajaks süsteemselt mõtlevaid spetsialiste, kes on võimelised looma uudseid tooteid ja rakendama uusi tehnoloogiaid ning arvutipõhiseid süsteeme."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldaine",
                courses: [
                    Course(name: "Kvaliteedijuhtimine", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Modelleerimine",
                courses: [
                    Course(name: "Tööstusautomaatika ja elektriajamid", eapCount: 6),
                    Course(name: "Toodete ja protsesside modelleerimine", eapCount: 6),
                    Course(name: "Optimeerimismeetodid", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Tootearendus",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Eritehnoloogia",
                        courses: [
                            Course(name: "Materjalitehnika II", eapCount: 6),
                            Course(name: "Raalintegreeritud tootmine", eapCount: 6),
                            Course(name: "Tööstusrobootika ja kaasaegne tootmine - projekt", eapCount: 6),
                            Course(name: "Tootmise planeerimise ja juhtimise süsteemid", eapCount: 6),
                            Course(name: "Hüdraulika ja pneumaatika", eapCount: 6),
                            Course(name: "Keevitustehnoloogia", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Projekteerimine I",
                        courses: [
                            Course(name: "Projekteerimise metoodika", eapCount: 6),
                            Course(name: "Tooteprojekt", eapCount: 6),
                            Course(name: "X-keskne projekteerimine", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Projekteerimine II",
                        courses: [
                            Course(name: "Mehhatroonikasüsteemid - projekt", eapCount: 6),
                            Course(name: "Raalkonstrueerimissüsteemid", eapCount: 6),
                            Course(name: "Tootmisseadmete integratsiooni praktika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Tootmistehnika ja robootika",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Eritehnika I",
                        courses: [
                            Course(name: "Materjalitehnika II", eapCount: 6),
                            Course(name: "Raalintegreeritud tootmine", eapCount: 6),
                            Course(name: "Metallide vormimistehnoloogiad", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Eritehnika II",
                        courses: [
                            Course(name: "Tööstusrobootika ja kaasaegne tootmine - projekt", eapCount: 6),
                            Course(name: "Tootmisseadmete integratsiooni praktika", eapCount: 6),
                            Course(name: "Tootmise planeerimise ja juhtimise süsteemid", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Eritehnika III",
                        courses: [
                            Course(name: "Mehhatroonikasüsteemid - projekt", eapCount: 6),
                            Course(name: "Projekteerimise metoodika", eapCount: 6),
                            Course(name: "Raalkonstrueerimissüsteemid", eapCount: 6),
                            Course(name: "X-keskne projekteerimine", eapCount: 6),
                            Course(name: "Hüdraulika ja pneumaatika", eapCount: 6),
                            Course(name: "Keevitustehnoloogia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tööstustehnika ja juhtimine",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus Tehnika, Tootmise, Tootearenduse, Majanduse või nendega lähedases valdkonnas"),
            Requirements(term: "Erialakatse")
        ],
        description: ["Kui töötad tööstusettevõttes ning vajad täiendavaid teadmisi tehnoloogiast ja juhtimisest, siis see õppekava on eeskätt Sinule. Õppekava on interdistsiplinaarne, mis ühendab majandus-, sotsiaal- ja tehnikavaldkonda ning on suunatud tööstusettevõtete tulevastele tootmisjuhtidele ja tippjuhtidele. Õppekava koosneb neljast moodulist, kus kaks moodulit „Ärijuhtimine“ ja „Äriprotsesside juhtimine“ sisaldavad majanduse valdkonna aineid ning kaks moodulit „Tööstustehnika“ ja „Tehnoloogiapõhine ettevõtlus“ inseneeria valdkonna aineid. Loengud toimuvad töötavale õppijale sobivalt õhtuti!", "Õppides saad süvendatud teadmised kaasaegsetest integreeritud tootmissüsteemidest ning oskused analüüsida ja sünteesida tehnilisi süsteeme. Samuti uurid põhjalikult tootmise juhtimise nüansse ja tootmise ning tootmissüsteemide projekteerimise meetodeid. Majanduse poole pealt saad teadmisi finantsplaneerimise, juhtimise ja personalijuhtimise valdkondadest ning ettevõtete, teadus- ja arendusasutuste koostöövõimalustest."],
        outcomes: ["Kui oled edukalt magistrikava läbinud, võid asuda tööle tootmisjuhina, projektijuhina, kvaliteedijuhina, tehnoloogiaspetsialistina, tootmise planeerijana või ettevõtte juhina.", "Kursusel õpivad paralleelselt nii Eesti kui välistudengid üle maailma, mis annab rahvusvahelise suhtlemise kogemuse ja väärtuslikke kontakte edaspidiseks. Tootmisjuhiks saadakse tavaliselt karjääriredelil edasi liikudes, kuid juhiks võib edukalt kandideerida omades ka head tehniliste teadmiste ja kogemuste pagasit ning organiseerimisvõimet, kuna tegemist on ühe nõutuma ametikohaga tööstuses."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ärijuhtimine",
                courses: [
                    Course(name: "Äriprotsesside juhtimine", eapCount: 6),
                    Course(name: "Strateegiline ja finantsjuhtimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Tööstuslik turundus", eapCount: 6),
                            Course(name: "Tehnoloogilis-majanduslikud paradigmad ja tehnoloogilised muutused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Technoloogiapõhine ettevõtlus",
                courses: [
                    Course(name: "Tööstusrobootika ja kaasaegne tootmine - projekt", eapCount: 6),
                    Course(name: "Tootmise digitaliseerimine", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Raalintegreeritud tootmine", eapCount: 6),
                            Course(name: "Toodete ja protsesside modelleerimine", eapCount: 6),
                            Course(name: "Raalprojekteerimine", eapCount: 6),
                            Course(name: "Küberturbe juhtimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Tööstustehnika",
                courses: [
                    Course(name: "Tootmistehnika - planeerimine ja kontroll", eapCount: 6),
                    Course(name: "Samaaegne tootearendus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Optimeerimismeetodid", eapCount: 6),
                            Course(name: "Asjade internet tööstusele", eapCount: 6),
                            Course(name: "Tehnoloogiapõhine ettevõtlus ja innovatsioon", eapCount: 6),
                            Course(name: "Tootmise planeerimise ja juhtimise süsteemid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Äriprotsesside juhtimine",
                courses: [
                    Course(name: "Kvaliteedijuhtimine", eapCount: 6),
                    Course(name: "Kulusäästlik tootmis- ja teeninduskorraldus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Juhtimispsühholoogia", eapCount: 6),
                            Course(name: "Tarneahela juhtimine", eapCount: 6),
                            Course(name: "Projektijuhtimine", eapCount: 6),
                            Course(name: "Innovatsioon ja uute tehnoloogiate juhtumiuuringud", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tööstusökoloogia",
        level: .masters,
        type: .insener,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "Erialakatse")
        ],
        description: ["Tööstusökoloogia magistriõppekaval koolitataksegi spetsialiste, kellel on laialdased teadmised tööstusökoloogia põhimõtetest, ringmajanduse ärimudelist; kes on ette valmistatud tööks nii suurtes kui väikestes tootmisettevõtetes ning kes suudavad läbi lüüa ka teistes lähedastes valdkondades.", "Tööstusökoloogia magistriõppe töökorraldus sobib hästi töötavale tudengile. Suur osakaal on e-õppel. Auditoorne õppetöö toimub tsükliõppena Tartus iga kahe nädala tagant nädalalõppudel (reedel ja laupäeval või kokkuleppel tudengitega). Kuna tudengite rühmad on väikesed, on õppejõududel võimalik üliõpilastega ka individuaalselt tegeleda. Samuti on Tallinna Tehnikaülikooli Tartu kolledžis erinevad laborid seadmetega, et viia läbi õppetööd kui teaduslikke uurimistöid. Pane tähele - parimatele õppuritele maksame ka täiendavat stipendiumi!"],
        outcomes: ["Euroopa ja Eesti majandus liigub ringmajanduse ärimudeli suunas, kus kaasatakse innovaatilisi lahendusi ja juba toote disainimisel arvestatakse kogu tema olelusringiga. Järjest enam suureneb vajadus spetsialistide järele, kes valdavad tööstusökoloogia põhimõtteid ja oskavad rakendada ringmajanduse mudelil põhinevaid meetodeid nii tootmises kui tarbimises. Tööstusökoloogia magistriõppekava on kooskõlas Euroopa Liidu ja Eesti ühiskondlike arengutega, tööstusökoloogid on juba praegu otsitud eksperdid ja tulevikus kasvab vajadus nende järgi tööturul veelgi. Meie lõpetajad töötavad tootmisettevõtetes, keskkonnaprobleemidega tegelevates ettevõtetes, kohalikes omavalitsustes ja keskkonnateenistustes."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tartu],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus", eapCount: 6),
                    Course(name: "Teadustöö alused ja akadeemiline väljendusoskus", eapCount: 6)
                ]
            ),
            Module(
                name: "Valikained",
                courses: [
                    Course(name: "Juhtimispsühholoogia", eapCount: 6),
                    Course(name: "Praktiline keskkonnaökonoomika", eapCount: 6),
                    Course(name: "Tööstusökoloogia alused", eapCount: 6),
                    Course(name: "Säästev areng ja globaalprobleemid", eapCount: 6),
                    Course(name: "Veereostus ja -kaitse", eapCount: 6),
                    Course(name: "Keskkonna 3D modelleerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Tehnoloogia",
                courses: [
                    Course(name: "Energiakasutus ja energeetilised ressursid", eapCount: 6),
                    Course(name: "Tootmisprotsessid ja logistika", eapCount: 6),
                    Course(name: "Keskkonnatehnoloogilised rakendused tööstusökoloogias", eapCount: 6),
                    Course(name: "Materjalide taaskasutuse tehnoloogiad", eapCount: 6)
                ]
            ),
            Module(
                name: "Tööstusökoloogia",
                courses: [
                    Course(name: "Ökodisain", eapCount: 6),
                    Course(name: "Olelusringi hindamine", eapCount: 6),
                    Course(name: "Tööstusökoloogia magistripraktika (praktika)", eapCount: 6),
                    Course(name: "Tööstuslikud ökosüsteemid", eapCount: 6),
                    Course(name: "Matemaatiliste andmete analüüs tööstusökoloogias", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Maapõueressursid",
        level: .masters,
        type: .loodusteadus,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Vestlus")
        ],
        description: ["Kõik seitse miljardit inimest sel planeedil on rohkemal või vähemal määral tarbijad ja suur osa vajalikest ressurssidest tuleb maakera seest. Kergesti kaevandatavate maavarade leiukohad on ammendumas ja maapõuespetsialistide järele on vajadus nii meil kui mujal.", "Siin õpivad tuleviku geoloogid ja mäenduse spetsialistid loodus- ja tehnikateadustele tuginedes juhtima ja arendama maapõueressursside kasutuselevõttu ja jätkusuutlikku tarbimist. Samuti avastama ja uurima uusi maapõueressursse, vähendama maapõuekasutuse keskkonnamõjusid ning leidma uusi ja planeerima asjakohaseid loovaid insenerilahendusi. Arvesta ka praktikatega ettevõtetes, looduskeskkonnas ja kaevanduses nii Eestis kui lähiriikides.", "Olulised erialaained: Eesti ja lähiriikide maavarad ning nende kasutussuunad; rakenduslik hüdrogeoloogia; kvaternaari- ja keskkonnageoloogia; maapõueressursside mudeldamine ja varuarvutused; geofüüsika ja kaugseire; maavarade väärindamine; allmaakaevandamine, allmaarajatised ja projekt; automaatika, robotid ja suurandmed mäenduses; kaevandamise tugiteenused ja -tehnoloogiad; markšeideriõpe.", "Meil õpetavad tippspetsialistid TalTechi geoloogia instituudist: geoloogid Alvar Soesoo, Olle Hints ja Siim Veski ning mäeinsenerid Erik Väli, Tõnu Tomberg ja Helena Gailan. 2018. aasta sügisel liitub rahvusvahelise kogemusega mäenduse professor ning külalisõppejõududena kaasatakse praktikuid väljastpoolt tehnikaülikooli."],
        outcomes: ["Omandad pädevuse geoloogiliste uuringutööde korraldamises ning asjakohaste andmete interpreteerimises GISile, toetudes erialatarkvaradele ja andmebaasilahendustele. Erialaste väljakutsete lahendamiseks õpid kombineerima uusimaid maapõue teaduskontseptsioone ja tipptehnoloogiaid. Sind ootab töö geoloogilisi uuringuid teostavates ettevõtetes, konsultatsiooni- ja mäendusettevõtetes ja riiklikes struktuurides, nagu geoloogiateenistus, maa-amet, keskkonnaamet ja ministeeriumid.", "Omandad oskused kaevanduste projekteerimiseks, mäetööde juhtimiseks, toormete rikastamiseks, mäemajanduse protsesside ohjamiseks ja keskkonnakaitsemeetmete rakendamiseks maapõueressursside kasutamisel. See on ainuke õppekava Eestis, mille lõpetanu saab taotleda diplomeeritud mäeinseneri kutset. Sind ootavad töökohad mäendusettevõtetes, mäeinseneribüroodes, konsultatsioonifirmades, ministeeriumides ja teedeehitusega seotud ettevõtetes."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/loodusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Maapõueressursid",
                courses: [
                    Course(name: "Geomehaanika ja insenerigeoloogia", eapCount: 6),
                    Course(name: "Kaevanduste haldamine ja mäemajandus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnariskide haldamine mäenduses ja geoloogias", eapCount: 6),
                            Course(name: "Maapõue seadusandlus ja rahvusvahelised nõuded", eapCount: 6),
                            Course(name: "Rakenduslik hüdrogeoloogia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Geoloogia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Geoloogilised uuringud",
                        courses: [
                            Course(name: "Magistritöö seminar", eapCount: 6),
                            Course(name: "Geoloogia erialapraktika (praktika)", eapCount: 6),
                            Course(name: "Regionaalgeoloogia ja geoloogiliste uuringute välipraktika (praktika)", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikmoodul",
                        courses: [
                            Course(name: "Keskkonnamõju hindamine ja keskkonnaaudit", eapCount: 6),
                            Course(name: "Rakenduslik paleontoloogia", eapCount: 6),
                            Course(name: "Maavarade väärindamine", eapCount: 6),
                            Course(name: "Maavara otsingu ja uuringu erikursus", eapCount: 6),
                            Course(name: "Paleoklimatoloogia ja paleoökoloogia", eapCount: 6),
                            Course(name: "Rakenduslik petroloogia", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Üldgeoloogia",
                        courses: [
                            Course(name: "Geodünaamika, struktuurigeoloogia ja geoloogiline kaardistamine", eapCount: 6),
                            Course(name: "Kvaternaari- ja keskkonnageoloogia", eapCount: 6),
                            Course(name: "Sedimentoloogia ja stratigraafia", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Geokeemia ja füüsikalis-keemilised analüüsimeetodid", eapCount: 6),
                            Course(name: "Geofüüsika ja kaugseire", eapCount: 6),
                            Course(name: "Maapõueressursside mudeldamine ja varuarvutused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Mäendus",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Mäenduslik projekteerimine ja praktika",
                        courses: [
                            Course(name: "Magistritöö seminar", eapCount: 6),
                            Course(name: "Allmaakaevandamine, allmaarajatised ja projekt", eapCount: 6),
                            Course(name: "Avakaevandamine ja projekt", eapCount: 6),
                            Course(name: "Mäenduse tootmispraktika (praktika)", eapCount: 6),
                            Course(name: "Kaevandamine globaalses keskkonnas", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Üldmäendus",
                        courses: [
                            Course(name: "Kaevandamise tugiteenused ja -tehnoloogiad", eapCount: 6),
                            Course(name: "Maavarade väärindamine", eapCount: 6),
                            Course(name: "Kivimite väljamine", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikmoodul",
                        courses: [
                            Course(name: "Mehhatroonika alused", eapCount: 6),
                            Course(name: "Geokeemia ja füüsikalis-keemilised analüüsimeetodid", eapCount: 6),
                            Course(name: "Geofüüsika ja kaugseire", eapCount: 6),
                            Course(name: "Lõhketööde erikursus", eapCount: 6),
                            Course(name: "Maapõueressursside mudeldamine ja varuarvutused", eapCount: 6),
                            Course(name: "Markšeideriõpe", eapCount: 6),
                            Course(name: "Regionaalgeoloogia ja geoloogiliste uuringute välipraktika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Rakendusfüüsika",
        level: .masters,
        type: .loodusteadus,
        requirements: [
            Requirements(term: "Kõrgharidus Loodus- või Tehnikateadustes"),
            Requirements(term: "Vestlus")
        ],
        description: ["Rakendusfüüsika magistrikava on mõeldud neile, kes on huvitatud innovatiivsete lahenduste loomisest teadusmahukates ettevõtetes ja projektides. Programm pakub interdistsiplinaarset haridust, mis sisaldab inseneriteadust, füüsikat, matemaatikat, füüsikalist okeanograafiat ja atmosfäärifüüsikat. Õpe ühendab seega teoreetilise teaduse praktiliste väljunditega. Valida saab kahe peaeriala vahel: matemaatika ja füüsika ning okeanograafia ja meteoroloogia.", "Meie lõpetajad töötavad uurimis- ja teadusasutustes, ettevõtetes ja teenistustes, mille peamised tegevusalad on seotud füüsika, matemaatika, okeanograafia ja/või meteoroloogiaga."],
        outcomes: ["Omab süsteemseid teadmisi reaalteadustes", "Oskab näha erialatöös esilekerkivaid probleeme, neid formuleerida ja valida lahendamiseks sobivad meetodid", "Omab teadusel baseeruvat mõtteviisi, tunneb eriala teoreetilisi arengusuundi, aktuaalseid probleeme, oskab ära tunda ja luua interdistsiplinaarseid seoseid", "Omab kvalifikatsiooni, mis võimaldab töötada spetsialistina ametikohtadel, mille põhitegevus on seotud matemaatika, füüsika, meteoroloogia ja/või okeanograafiaga", "Omab meeskonnatöö oskusi", "On võimeline jätkama õpinguid doktorantuuris ja/või osalema teadus- arendustegevuses.", "Matemaatika ja füüsika haru lõpetanud:", "Selle peaeriala lõpetanul on teadmised ja oskused, et olla nt insener või projektijuht kõrgtehnoloogiaga tegelevates start-up-ettevõtetes või firmades, mille tegevusalad on seotud energeetikaga, nanotehnoloogiaga, materjaliteadusega, andmekaevega, laboratoorsete mõõtmistega, rakendusmatemaatikaga, majandusfüüsikaga jne. Lõpetanud üliõpilased töötavad ka füüsika ja matemaatikaga seotud uurimisprojektides.", "Okeanograafia ja Meteoroloogia haru lõpetanu:", "Üha rohkem on vaja teadlasi ja insenere, kes tunnevad atmosfääri ja mere füüsikalisi aluseid ühes kaasaegsete seire- ja modelleerimismeetoditega. Võimalikke töövaldkondi on mitmeid: kliima muutuste uurimine, meteoroloogia, okeanograafia, kosmoseteadused. Programmi lõpetanuid vajavad Eestis näiteks riigi ilmateenistus, veeteede amet, keskkonnaministeerium, majandus- ja kommunikatsiooniministeerium, uurimisasutused ja ülikoolid ning tänapäeval üha enam ka erasektor. Ka rahvusvahelised koostööorganisatsioonid ja valitsustevahelised institutsioonid on väga huvitatud, et meie lõpetanud töötaksid nende juures spetsialistidena."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/loodusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Masinõpe sügavate närvivõrkudega", eapCount: 6),
                    Course(name: "Geofüüsikaline vedelike dünaamika", eapCount: 6),
                    Course(name: "Pideva keskkonna mehaanika", eapCount: 6),
                    Course(name: "Teadusarvutused", eapCount: 6),
                    Course(name: "Matemaatilise füüsika võrrandid", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Füüsika ja matemaatika",
                courses: [
                    Course(name: "Uurimustöö seminar", eapCount: 6),
                    Course(name: "Praktika (praktika)", eapCount: 6),
                    Course(name: "Kvantmehaanika", eapCount: 6),
                    Course(name: "Modelleerimise alused ja mittelineaarne dünaamika", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Turbulents ja segunemine", eapCount: 6),
                            Course(name: "Praktiline spektroskoopia", eapCount: 6),
                            Course(name: "Tahke keha ja pooljuhtide füüsika", eapCount: 6),
                            Course(name: "Sissejuhatus osakestefüüsikasse", eapCount: 6),
                            Course(name: "Rakendusmehaanika seminar", eapCount: 6),
                            Course(name: "Rakendusmatemaatika", eapCount: 9)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Okeanograafia ja meteoroloogia",
                courses: [
                    Course(name: "Atmosfäärifüüsika", eapCount: 6),
                    Course(name: "Numbriline modelleerimine okeanograafias ja meteoroloogias", eapCount: 6),
                    Course(name: "Kaugseire ja mereoptika", eapCount: 6),
                    Course(name: "Geofüüsikaline andmetöötlus", eapCount: 6),
                    Course(name: "Praktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Füüsikaline klimatoloogia", eapCount: 6),
                            Course(name: "Ilmaprognoosi alused (sünoptiline ja lennumeteoroloogia)", eapCount: 6),
                            Course(name: "Merekeskkonna kaitse meetodid", eapCount: 6),
                            Course(name: "Mereökoloogia alused", eapCount: 6),
                            Course(name: "Okeanograafilised ja meteoroloogilised rakendused", eapCount: 6),
                            Course(name: "Turbulents ja segunemine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Rakenduskeemia ja biotehnoloogia",
        level: .masters,
        type: .loodusteadus,
        requirements: [
            Requirements(term: "Kõrgharidus Loodus- või Tehnikateadustes"),
            Requirements(term: "Vestlus")
        ],
        description: ["Rakenduskeemia ja biotehnoloogia õppekava on mõeldud neile, kes on bakalaureuseõppes läbinud üldettevalmistuse keemia, biotehnoloogia, geenitehnoloogia, molekulaarbioloogia või biokeemia valdkonnas. Lisaks rakenduskeemia, toidu- ja geenitehnoloogia bakalauresekava lõpetanutele õpivad meil edukalt TalTechi keemia ja keskkonnatehnoloogia, Tartu ülikooli keemia ja geenitehnoloogia, Tallinna ülikooli bioloogia-keemia ja teiste õppekavade lõpetanud.", "Õppe põhirõhk on keemia ja bioteaduste valikainetel ning praktiliste oskuste omandamisel. Töö laboris ja lõputöö tegemine annavad sulle võimaluse põhjalikult tutvuda teadusliku uurimistööga. Lõpetajale antakse loodusteaduse magistrikraad – sellega oled tegija nii keemia kui ka biotehnoloogia valdkondades.", "Kaval on kaks peaeriala: keemia ja geenitehnoloogia, suur hulk valikaineid ja võimalus kitsamalt spetsialiseerida väga erinevates ning just sulle huvitavates valdkondades. Kaval on kolm kõigile kohustuslikku erialaainet: valkude keemia, meditsiiniline keemia ja kvaliteedisüsteem laboris.", "Valikainetena pakume loenguid kvant- ja arvutuskeemiast, orgaanilisest sünteesist, toksikoloogiast, bioinformaatikast ja -energeetinast ning -statistikast. Sul on võimalik õppida mudelorganismide molekulaarbioloogiat, immunoloogiat, molekulaarmeditsiini ja üldpatoloogiat, taimede molekulaarbioloogiat ja muidugi ka bioloogia ajalugu ja evolutsioonibioloogiat.", "Oluliseks osaks magistriõpingutest on lõputöö, mis sooritatakse teaduslaboriks. Õppekava koduinstituudiks on Keemia ja biotehnoloogia instituut (KBI), mille teadusgruppidega saad tutvuda siin. Nii KBI kui meie koostööpartnerite poolt üliõpilastele pakutavatest teemadest leiad ülevaate siit. Huvi korral võid võtta ühendust töögrupi juhiga."],
        outcomes: ["Tunneb keemia ja biotehnoloogia teoreetilisi koolkondi", "On kursis uuemate arengusuundade ja tulemustega oma kitsamas (uurimis)valdkonnas ja suudab kriitiliselt hinnata uut informatsiooni", "On võimeline kasutama omandatud teadmisi ja oskusi interdistsiplinaarselt uute probleemide tõstatamisel, analüüsimisel, lahenduste otsimisel ja uute ideede genereerimisel", "On valmis aktiivselt osalema kodanikuühiskonnas ja suhtub sallivalt hoiakute ja väärtuste mitmekesisusse", "On võimeline keemia ja geenitehnoloogiaga seonduvaid teaduslikke, ühiskondlikke ja eetilisi aspekte arvesse võttes hindama oma erialase tegevuse rolli ja tagajärgi ühiskonnas", "Valdab spetsialisti tööks vajalikke suhtlusoskusi ning info- ja kommunikatsioonitehnoloogiaid ja on valmis osalema meeskonnatöös ja seda juhtima", "On võimeline keemia ning molekulaarbioloogiaga seonduvaid probleeme eesti ja inglise keeles suuliselt ja kirjalikult selgitama ning erialastes aruteludes osalema ja oma teadmisi edasi andma, õpetama, juhendama ja oma ideid populariseerima."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/loodusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Valkude keemia ja struktuur", eapCount: 6),
                    Course(name: "Meditsiiniline keemia", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Automaatika alused", eapCount: 3),
                            Course(name: "Toksikoloogia alused", eapCount: 3),
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6),
                            Course(name: "Teadusarvutused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Keemia",
                courses: [
                    Course(name: "Füüsikalised analüüsimeetodid", eapCount: 6),
                    Course(name: "Anorgaaniline keemia II", eapCount: 6),
                    Course(name: "Füüsikaline orgaaniline keemia", eapCount: 6),
                    Course(name: "Metroloogia ja kvaliteedi tagamine keemialaboris", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Mikroelektromehaanika biomeditsiinis (BioMEMS)", eapCount: 6),
                            Course(name: "Inimese anatoomia ja haiguseõpetus", eapCount: 6),
                            Course(name: "Suuremahulised andmed ja biostatistika", eapCount: 6),
                            Course(name: "Bioinformaatika II", eapCount: 6),
                            Course(name: "Sünteetiline bioloogia", eapCount: 6),
                            Course(name: "Kvantkeemia", eapCount: 6),
                            Course(name: "Orgaaniline süntees", eapCount: 6),
                            Course(name: "Struktuuranalüüs", eapCount: 6),
                            Course(name: "Arvutuskeemia", eapCount: 6),
                            Course(name: "Orgaaniline süntees - ainetöö", eapCount: 3),
                            Course(name: "Keemiline bioloogia", eapCount: 6),
                            Course(name: "Rohelise keemia meetrika biotoodete tootmiseks", eapCount: 6),
                            Course(name: "Mikrobioomika", eapCount: 6),
                            Course(name: "Protsessimudelid ja kultiveerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Geenitehnoloogia",
                courses: [
                    Course(name: "Geenitehnoloogia II", eapCount: 6),
                    Course(name: "Molekulaar- ja rakubioloogiabioloogia II", eapCount: 6),
                    Course(name: "Bioinformaatika II", eapCount: 6),
                    Course(name: "Geenitehnoloogia eetilised, õiguslikud ja ärilised aspektid", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Inimese anatoomia ja haiguseõpetus", eapCount: 6),
                            Course(name: "Evolutsioonilise bioloogia alused ja tänapäev", eapCount: 6),
                            Course(name: "Suuremahulised andmed ja biostatistika", eapCount: 6),
                            Course(name: "Bakterigeneetika", eapCount: 3),
                            Course(name: "Arengu- ja neurobioloogia II", eapCount: 6),
                            Course(name: "Taimede molekulaarbioloogia ja biotehnoloogia", eapCount: 6),
                            Course(name: "Immunoloogia ja hemotoloogia", eapCount: 6),
                            Course(name: "Mudelorganismide molekulaarbioloogia", eapCount: 6),
                            Course(name: "Sünteetiline bioloogia", eapCount: 6),
                            Course(name: "Füüsikalised analüüsimeetodid", eapCount: 6),
                            Course(name: "Metroloogia ja kvaliteedi tagamine keemialaboris", eapCount: 6),
                            Course(name: "Mikrobioomika", eapCount: 6),
                            Course(name: "Protsessimudelid ja kultiveerimine", eapCount: 6),
                            Course(name: "Oomikameetodid", eapCount: 6),
                            Course(name: "Lihas- ja südamefüsioloogia", eapCount: 6),
                            Course(name: "Geneetika", eapCount: 3),
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Laboripraktika II", eapCount: 6),
                    Course(name: "Laboripraktika I", eapCount: 6),
                    Course(name: "Ametipraktika (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 18),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Toidutehnoloogia ja arendus",
        level: .masters,
        type: .loodusteadus,
        requirements: [
            Requirements(term: "Kõrgharidus lähedasel erialal, nõutav õppeainete biokeemia ja mikrobioloogia (sh praktikum) eelnev läbimine"),
            Requirements(term: "Vestlus")
        ],
        description: ["Toidutehnika ja –arenduse magistrikava valmistab ette spetsialiste töötamaks toidusektoris - nii tootmises, tootearenduses, kvaliteedikontrollis, riigiasutustes kui ka teaduses. Kohustuslikes ainetes saad selgeks ainevahetuse ja toitainete rolli dieedis, toidu töötlemise protsessid, toidu tootmisel toimuvad füüsikalised protsessid ning kuidas need mõjutavad toidu omadusi, toiduohutuse ja kvaliteedi tagamise, toidu- ja biotehnoloogia analüüsimeetodid ning läbid praktika tootmises või laboris. Tuleb aga märkida, et õppekavas on palju valikaineid, et saaksid õppida just sind huvitavaid erialateadmisi.", "Spetsialiseerumine toimub vastavalt sinu valikule. Toidutehnoloogias omandad teadmised erinevate toiduainete bioloogilistest, keemilistest ja füüsikalistest omadustest ning oskused viia läbi nende töötlemist ja tootearendust. Toiduteaduses omandad teadmised toiduainete analüüsimeetoditest, alates klassikalistest toidukoostise analüüsidest kuni detailsete toidu maitse- ja tekstuurianalüüsideni. Saad teada kuidas kasutada ja arendada toiduohutuse, toidumärgistuse ja toitumisalaste väidete seadusandlust."],
        outcomes: ["Magistrikraadiga lõpetanud toiduspetsialistid on oodatud Eesti suuremates toiduettevõtetes (Kalev, Põltsamaa Felix, Nõo Lihatööstus, Saku Õlletehas, Leibur, Fazer jpt), uurimisasutustes (AS TFTAK, Põllumajandusuuringute Keskus) ja avalikus sektoris (Veterinaar- ja Toiduamet, Maaeluministeerium). Meie lõpetajad töötavad tehnoloogidena, tootearendajatena, kvaliteedispetsialistidena, tootmisjuhtidena. Avalikus sektoris on oodatud toiduvaldkonna spetsialistid, laborites mikrobioloogid ja toidukvaliteedi spetsialistid. Kõikide ametikohtade tööülesanded on seotud toidutoodete tootmise, innovatsiooni, toiduohutuse ja kvaliteediga. Samuti on võimalik teha karjääri teaduses."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/loodusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Inseneeria",
                courses: [
                    Course(name: "Tehniline graafika", eapCount: 6),
                    Course(name: "Protsesside automaatjuhtimine", eapCount: 6),
                    Course(name: "Andmekaeve suurandmetest", eapCount: 6),
                    Course(name: "Sissejuhatus programmeerimisse Pythoni baasil", eapCount: 6)
                ]
            ),
            Module(
                name: "Kommunikatsioon",
                courses: [
                    Course(name: "Organisatsioonipsühholoogia alused", eapCount: 6),
                    Course(name: "Projektijuhtimine", eapCount: 6),
                    Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6)
                ]
            ),
            Module(
                name: "Toiduõpe",
                courses: [
                    Course(name: "Toidu ohutus ja kvaliteet", eapCount: 6),
                    Course(name: "Toidu füüsika ja struktuur", eapCount: 6),
                    Course(name: "Oomikameetodid", eapCount: 6),
                    Course(name: "Toitumise biokeemia", eapCount: 6),
                    Course(name: "Protsessid ja seadmed toidu töötlemisel", eapCount: 6)
                ]
            ),
            Module(
                name: "Teadus ja uuringud",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Suuremahulised andmed ja biostatistika", eapCount: 6),
                            Course(name: "Bioinformaatika II", eapCount: 6),
                            Course(name: "Sünteetiline bioloogia", eapCount: 6),
                            Course(name: "Füüsikalised analüüsimeetodid", eapCount: 6),
                            Course(name: "Struktuuranalüüs", eapCount: 6),
                            Course(name: "Metroloogia ja kvaliteedi tagamine keemialaboris", eapCount: 6),
                            Course(name: "Mikrobioomika", eapCount: 6),
                            Course(name: "Jätkusuutlik toidu tootmine", eapCount: 6),
                            Course(name: "Toitumisuuringud", eapCount: 6),
                            Course(name: "Toidumikrobioloogia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Toidutehnoloogia",
                courses: [
                    Course(name: "Praktika (praktika)", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Protsessimudelid ja kultiveerimine", eapCount: 6),
                            Course(name: "Tootearendus", eapCount: 6),
                            Course(name: "Loomse toorme tehnoloogilised protsessid", eapCount: 6),
                            Course(name: "Piimatehnoloogia", eapCount: 6),
                            Course(name: "Taimse toorme tehnoloogilised protsessid", eapCount: 6),
                            Course(name: "Teravilja tehnoloogilised protsessid", eapCount: 6),
                            Course(name: "Kääritusprotsessid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Avaliku sektori juhtimine ja innovatsioon",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "CV"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "Vestlus")
        ],
        description: ["Avaliku sektori juhtimise ja innovatsiooni magistriõpe keskendub Eesti arengut järgmisel kümnendil enim mõjutavatele suurtele küsimustele:", "• Kuidas tagada, et Eesti jääb püsima ja riik suudab üha vähemate ressurssidega teha üha olulisemad asju üha paremini?", "• Kuidas saab Eesti sugune väike rahvusriik panustada suurte üleilmsete megatrendidega – kliimasoojenemine, migratsioon, digitaliseerimine jne – kaasnevate väljakutsete lahendamisse?", "Koostööl põhinev juhtimine ja sotsiaalse ja tehnoloogilise innovatsiooni eestvedamine on täna rahvusvaheliselt ja nii avalikus kui erasektoris enim hinnatud juhtimiskompetentsid.", "Tudengina õpid ühes Eesti rahvusvahelisemas õppekeskkonnas – lisaks välistudengitele on Nurkse instituudis tööl teadlasi ca 10 rahvusest. Samuti on sul võimalik õppida kümnetes Euroopa juhtivates ülikoolides, mis on Nurkse instituudi partneriteks nii Erasmus programmis kui ka European Masters in Public Administration (EMPA) võrgustikus."],
        outcomes: ["Vajadus professionaalsete innovatsiooni ja muutuste eestvedajate ning juhtide järele on tulevikus ainult kasvamas", "Tehnoloogiline areng teeb muutuste tsüklid ühiskonnas üha kiiremaks ja avaliku sektori ette tekivad pidevalt uued keerukad väljakutsed", "Eestil on üha suurem ambitsioon olla digitaliseerimise ja avaliku sektori innovatsiooni valdkonnas üks üleilmseid suunanäitajaid, mis loob pideva nõudluse avaliku sektori innovatsiooni ekspertide järele", "Eesti kodused väljakutsed – regionaalsest ebaühtlasest arengust kuni EL tõukefondidest väljumiseni – on muutumas üha keerulisemaks ja neile lahenduste leidmine vajab üha rohkem nutikust ja initsiatiivikust", "Edukad lõpetajad teevad ise oma tuleviku! Ragnar Nurkse instituudi edukaimad lõpetajad leiavad endale sobiliku töökoha kas Euroopa Liidu institutsioonides, Eesti avalikus sektoris või ettevõtluses.", "Õppekava läbinud üliõpilane:", "Saab aru ühiskonna, riigi ja tehnoloogia koostoimimisest ja arengust ning on võimeline analüüsima ja kriitiliselt hindama ühiskonnas toimuvaid protsesse nii Eestis kui rahvusvahelisel tasandil", "On omandanud süsteemsed avaliku halduse ja innovatsiooni alased teadmised ja oskused rõhuasetusega poliitikate kujundamisele, muutuste juhtimisele ja eestvedamisele", "Suudab algatada, kavandada ja läbi viia teadusliku, rakendusliku või praktilise probleemi lahendamisele suunatud projekti, nii iseseisvalt kui meeskonnas töötades", "Oskab seostada teoreetilisi teadmisi avaliku halduse praktilise tegevusega, koostada vastavaid analüüse ning töötada välja avaliku poliitika probleemidele sobilikke lahendusi", "Mõistab kompleksete ühiskondlike probleemide olemust ja nende lahendamisega seonduvaid väljakutseid avaliku sektori organisatsioonide vahelises, sektoritevahelises (avalik, era- ja kolmas sektor) ja valitsemistasandite vahelises koostöös", "Mõistab erinevate rahvusvaheliste avaliku halduse trendide sisu ja eripärasid ning oskab analüüsida nende rakendatavust ja kohandamisvajadusi Eesti avaliku halduse kontekstis", "Tunneb sotsiaalteadusliku uuringu ja analüüsi läbiviimise põhimõtteid ja meetodeid ning oskab planeerida uuringu läbiviimist, kasutada probleemi lahendamiseks sobilikke uurimismeetodeid ja saadud tulemusi kriitiliselt hinnata."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Sotsiaalteaduste meetodid", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Personalijuhtimine avalikus sektoris", eapCount: 6),
                    Course(name: "Strateegiline ja finantsjuhtimine avalikus sektoris", eapCount: 6),
                    Course(name: "Avalik haldus ja halduspoliitika Euroopas", eapCount: 6)
                ]
            ),
            Module(
                name: "Kohustuslikud ained",
                courses: [
                    Course(name: "Ettevõtlus ja tehnoloogia juhtimine", eapCount: 6),
                    Course(name: "Poliitika analüüs ja hindamine", eapCount: 6),
                    Course(name: "Digitaalsed muutused avalikus sektoris", eapCount: 6),
                    Course(name: "Innovatsioonivõimekuste arendamine avalikus sektoris", eapCount: 6),
                    Course(name: "Koordineerimine ja koostöö keeruliste poliitikaprobleemide lahendamisel", eapCount: 6),
                    Course(name: "E-valitsemine ja e-demokraatia", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Tööpraktika ja konsultatsiooniprojekt (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Valikained",
                courses: [
                    Course(name: "Õigusaktide majanduslik analüüs", eapCount: 6),
                    Course(name: "Sotsiaalne ettevõtlus", eapCount: 6),
                    Course(name: "Projektijuhtimine", eapCount: 6),
                    Course(name: "Suurandmed ja valitsemine: aktuaalsed probleemid", eapCount: 6),
                    Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6),
                    Course(name: "Avaliku halduse ja innovatsiooni erikursus", eapCount: 6),
                    Course(name: "Valitsemine mitmekesises ja globaalses maailmas", eapCount: 6),
                    Course(name: "Tehnoloogia, ühiskond ja tulevik", eapCount: 6),
                    Course(name: "Euroopa Liidu poliitikate analüüs ja päevakajalised küsimused", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Juhtimine ja turundus",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus majanduses, ärinduses või kõrgharidus sh vähemalt 36 EAP ulatuses majanduse/ärinduse aineid"),
            Requirements(term: "Erialakatse")
        ],
        description: ["See õppekava annab sulle, tulevasele juhile, tervikpildi juhtimisest kui protsessist ning juhtimisvaldkondade omavahelistest seostest, arendab sinus juhile vajalikke oskusi ja aitab leida uusi ideid edu saavutamiseks.", "Erialane tulevik on helge: turundamist ja juhtimist läheb tarvis kõikjal Eestist Uus-Meremaani, äri-, avalikus ja kolmandas sektoris. Õppekava lõpetajana on sul kõik eeldused tõusta organisatsiooni tipp- või keskastme juhiks paljudes erinevates valdkondades.", "Turundus ja müügijuhtimise eriala arendab oma ala tegijaid, kes soovivad saavutada turunduses ja müügijuhtimises kõrgeid eesmärke ning täiendada oma olemasolevaid teadmisi uuele tasemele jõudmiseks. Selleks õpid süvendatult turunduse strateegiaid ning omandad konkreetsemad teadmised turunduskontseptsioonidest, rahvusvahelisest ja digitaalsest turundusest koos oma spetsiifiliste eripärade ning kultuuridevahelise suhtluse aspektidega. Lisaks saad teadmised turu-uuringute ettevalmistamiseks, läbiviimiseks ja analüüsimiseks ning õpid tarbijakäitumise mustreid enda äridele sobivalt ümber kujundama. Ja muidugi - õpid juhtima brändi!", "Rahvusvaheline ärijuhtimine on eriala neile, kes soovivad töötada rahvusvahelises ärikeskkonnas juhina või ekspordijuhina ning täiendada oma olemasolevaid teadmisi. Õpid süvendatult analüüsima organisatsiooni ja selle osasid ning neid vajadusel ümber hindama ja kujundama. Õppetöö käigus saab selgeks organisatsiooni ülesehitus, äriprotsesside juhtimine, tehnoloogia, organisatsioonikultuuri ja äristrateegia vastastikused seosed. Loengutes süvened organisatsiooni kujundamisse ja selle funktsionaalsete valdkondade juhtimisse. Eelnevaga seoses omandad teadmised kaasaegsete töökorraldusvormide ja -meetodite kohta ning saad oskused organisatsiooniliste muudatuste ettevalmistamiseks ning elluviimiseks. Õppetöö käigus kavandatakse ettevõtte eksporditegevust ja viiakse sind kurssi ekspordi läbiviimise ning kriitiliste edutegurite aspektidega. Koos sellega saad teadmised välismajanduse teoreetilistest alustest, võimalike sihtturgude analüüsist ning müügitegevusest välisturgudel. Mitmed õppeained on seminaride ja töötubade vormis, kus lahendad koos praktikutega elulisi ülesandeid ning jäljendad reaalseid ekspordiolukordi. Konkreetseid sihtturge ja -riike käsitlevas õppetöös on kaasatud ka välisõppejõud.", "Äriprotsesside juhtimine digitaalühiskonnas on eriala mis arendab oma ala tegijaid, kes soovivad saavutada äritegevuse juhtimises kõrgeid eesmärke ning täiendada oma olemasolevaid teadmisi. Nõudlus tootmis- või teenindusettevõtte juhtide ja tippspetsialistide järele kasvab nii kodumaisel kui rahvusvahelisel tööturul. Süvendatud teadmistega äriprotsesside juhid on väga nõutud! Õpingute käigus areneb sinu arusaam ettevõttest kui eripalgeliste funktsioonidega tervikust ja nende funktsioonide koostoimimisest. Õpid protsesside juhtimist nii ettevõtte kui ka tarneahela tasemel. Saad teadmised ning oskused tootmis- ja teenindusettevõtte analüüsimiseks, tulemuslikkuse juhtimiseks ning arendamiseks. Õpid tundma majanduslikke ja tehnoloogilisi tegureid, mis on majanduses toimuva digitaalse revolutsiooni keskmes ning õpid looma tegevuskava kogu organisatsiooni väärtusahela ulatuses. Praktilised tööd aitavad teoreetilisi teadmisi seostada ettevõtte reaalse juhtimisega. Samuti oskad kasutada ettevõtte juhtimise ja äritegevuse analüüsitehnikaid, et teha nende põhjal tarku otsuseid."],
        outcomes: ["Turundus ja Müügijuhtimine:", "Eriala lõpetajal on kõik eeldused tõusta organisatsiooni turundus- või müügijuhiks, kes suudab vastutada ettevõtte müügitulude teenimise, kliendisuhete ja turunduse juhtimise eest, analüüsida tulemusi ning kujundada ümber ettevõtete strateegiaid ja poliitikaid.", "Rahvusvaheline Ärijuhtimine:", "Eriala lõpetanuna omad põhjalikke teadmisi ettevõtte ja ekspordi juhtimise valdkonnas rahvusvahelises keskkonnas ning sul on kõik eeldused tõusta organisatsiooni tippjuhiks, keskastmejuhiks või ekspordijuhiks.", "Äriprotsesside juhtimine digitaalühiskonnas:", "Eriala lõpetanuna on sul äriprotsesside juhtimise valdkonnas tippteadmised ning sul on kõik eeldused, et rakendada end tootmis-, arendus-, kvaliteedi- või protsessijuhi positsioonil."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Analüüsimeetodid äriuuringutes", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Rahvusvaheline turundus", eapCount: 6),
                    Course(name: "Strateegiline juhtimine", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Äriprotsesside juhtimine digitaalühiskonnas",
                courses: [
                    Course(name: "Integreeritud tootearendus", eapCount: 6),
                    Course(name: "Äritulemuse juhtimine ja analüüs", eapCount: 6),
                    Course(name: "Tarneahela juhtimine", eapCount: 6),
                    Course(name: "Kvaliteedijuhtimine", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Äriprotsesside juhtimine", eapCount: 6),
                    Course(name: "Digitaalsed muutused", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tarkvaratehnoloogiad", eapCount: 6),
                            Course(name: "Konkurentsiökonoomika", eapCount: 6),
                            Course(name: "Juhtimismäng", eapCount: 6),
                            Course(name: "Ärianalüütika alused", eapCount: 6),
                            Course(name: "Projektijuhtimine", eapCount: 6),
                            Course(name: "Müügijuhtimine", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Organisatsiooni arendamine ja muutuste juhtimine", eapCount: 6),
                            Course(name: "Eetika, vastutus ja jätkusuutlikkus", eapCount: 6),
                            Course(name: "Töökeskkonna juhtimine ja ergonoomika", eapCount: 6),
                            Course(name: "Innovatsioon ja uute tehnoloogiate juhtumiuuringud", eapCount: 6),
                            Course(name: "Start-up ettevõtlus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Turundus ja müügijuhtimine",
                courses: [
                    Course(name: "Äritulemuse juhtimine ja analüüs", eapCount: 6),
                    Course(name: "Müügijuhtimine", eapCount: 6),
                    Course(name: "Strateegiline turundus", eapCount: 6),
                    Course(name: "Digitaalne turundus", eapCount: 6),
                    Course(name: "Turundusuuringud", eapCount: 6),
                    Course(name: "Teenusedisain", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tarkvaratehnoloogiad", eapCount: 6),
                            Course(name: "Konkurentsiökonoomika", eapCount: 6),
                            Course(name: "Juhtimismäng", eapCount: 6),
                            Course(name: "Ärianalüütika alused", eapCount: 6),
                            Course(name: "Projektijuhtimine", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Turunduskommunikatsioon", eapCount: 6),
                            Course(name: "Tarbijakäitumine", eapCount: 6),
                            Course(name: "Brändi juhtimine", eapCount: 6),
                            Course(name: "Kaubanduse alused ja kategooria juhtimine", eapCount: 6),
                            Course(name: "Eetika, vastutus ja jätkusuutlikkus", eapCount: 6),
                            Course(name: "Start-up ettevõtlus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Rahvusvaheline ärijuhtimine",
                courses: [
                    Course(name: "Äritulemuse juhtimine ja analüüs", eapCount: 6),
                    Course(name: "Ekspordijuhtimine", eapCount: 6),
                    Course(name: "Rahvusvaheline äri", eapCount: 6),
                    Course(name: "Tarneahela juhtimine", eapCount: 6),
                    Course(name: "Arengutrendid ärikeskkonnas", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Juhtimine ja eestvedamine", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikmoodul",
                        courses: [
                            Course(name: "Tarkvaratehnoloogiad", eapCount: 6),
                            Course(name: "Konkurentsiökonoomika", eapCount: 6),
                            Course(name: "Juhtimismäng", eapCount: 6),
                            Course(name: "Ärianalüütika alused", eapCount: 6),
                            Course(name: "Projektijuhtimine", eapCount: 6),
                            Course(name: "Müügijuhtimine", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Organisatsiooni arendamine ja muutuste juhtimine", eapCount: 6),
                            Course(name: "Eetika, vastutus ja jätkusuutlikkus", eapCount: 6),
                            Course(name: "Töökeskkonna juhtimine ja ergonoomika", eapCount: 6),
                            Course(name: "Innovatsioon ja uute tehnoloogiate juhtumiuuringud", eapCount: 6),
                            Course(name: "Start-up ettevõtlus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Personalijuhtimine",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Magistritöö Kavand"),
            Requirements(term: "CV")
        ],
        description: ["Personalijuhtimise õppekava eesmärgiks on anda personalitöö alased teadmised ja oskused, mis toetavad organisatsiooni tõhusamat ja tulemuslikku juhtimist. Õppekavas keskendutakse teadmiste-oskuste andmisele, mis seotud personalijuhtimise põhifunktsioonide kvaliteetsema rakendamisega, mis tagavad nii avaliku, era- kui kolmanda sektori organisatsioonide jätkusuutlikkuse ja parema konkurentsivõime. Õppekava koostamisel on lähtutud personalijuhi kutsestandardis 6 ja 7 sätestatud kompetentsidest ja EAPM (European Association of People Management) suunistest.", "Õppetöö raames saad teada, mis on strateegiline personalijuhtimine, kuidas läbi viia personaliuuringuid, mida silmas pidada värbamisel, mil viisil töötajaid arendada, missugused on tööprotsessid ja kuidas toimub tasustamine, kuidas töötajaid nõustada. Tudeng saab süveneda tööpsühholoogia ainesse ning õpib haldama personaliteavet ning juhtima organisatsiooni kommunikatsiooni. Ülevaate saab tööturuprotsessidest ja - poliitikast.", "Kuigi õppekava on eestikeelne, siis valdav osa õppekirjandusest ja kogu teaduskirjandus on ingliskeelne, mis tagab õppekava läbinule hea erialase inglise keele oskuse."],
        outcomes: ["TTÜ magistriprogrammi personalijuhtimise erialal teeb teistest erinevaks see, et meie õppekava järgib personalijuhi kutsestandardit 6 ja 7 ning hõlmab kõiki personalitöö ja -juhtimisega seotud valdkondi.", "Personalijuhtimine on majandusülene valdkond. Sõltumata sektorist, ettevõtte suurusest ja tegevusvaldkonnast on personalitöö oluline osa iga ettevõtte või organisatsiooni strateegilises juhtimises. Inimesed on asutuse kalleim vara, õige personalijuhtimine tagab ettevõtte edukuse ning seda ei saa teha robot. Seega võib kindlalt öelda, et personalijuhtimine ei ole niisugune eriala, mille lähemas tulevikus suudaks ära teha tehisintellekt. Personalijuhtimine on ajas pidevalt arenev ja muutuv ning siin on palju võimalusi ka selleks, et uurida, teha teadust ja arendada eriala kaugemale."],
        language: .eesti,
        majorWebsite: " https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Personaliuuringud", eapCount: 6)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Tööõigus", eapCount: 6),
                    Course(name: "Majandusarvestus personalijuhtidele", eapCount: 6),
                    Course(name: "Strateegiline personalijuhtimine", eapCount: 6),
                    Course(name: "Organisatsioonikommunikatsiooni juhtimine", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Organisatsiooni arendamine ja muutuste juhtimine", eapCount: 6),
                            Course(name: "Tööturuprotsessid ja poliitika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Personalijuhtimine",
                courses: [
                    Course(name: "Erialapraktika (praktika)", eapCount: 6),
                    Course(name: "Eetika ja väärtused personalitöös", eapCount: 6),
                    Course(name: "Personali arendamine", eapCount: 6),
                    Course(name: "Personali valik ja hindamine", eapCount: 6),
                    Course(name: "Tööprotsessid ja tasustamine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Meeskonnatöö ja grupiprotsesside juhtimine", eapCount: 6),
                            Course(name: "Tööelukvaliteedi juhtimine", eapCount: 6),
                            Course(name: "Töötajate nõustamine", eapCount: 6),
                            Course(name: "Tööpsühholoogia", eapCount: 6),
                            Course(name: "Personaliteabe haldus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Rahvusvaheline ärikorraldus",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus majanduses, ärinduses või kõrgharidus sh vähemalt 36 EAP ulatuses majanduse/ärinduse aineid"),
            Requirements(term: "CV"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "Vestlus")
        ],
        description: ["See inglisekeelne õppekava annab sulle, tulevasele rahvusvahelise ettevõtte juhile, tervikpildi juhtimisest kui protsessist ning juhtimisvaldkondade omavahelistest seostest, arendab sinus juhile vajalikke oskusi ja aitab leida uusi ideid edu saavutamiseks.", "Õppetöö toimub õhtuti ja on ingliskeelne. Õppekaval on 1 sihtstipendiumiga õppekoht. See tähendab, et kui muidu on ingliskeelsel kaval õppimine tasuline, siis sihtstipendium katab õppemaksu nominaalajal nominaalkoormusega õppimise korral. Sihtstipendiumid määratakse vastuvõtu pingerea alusel.", "Rahvusvaheline ärijuhtimine on eriala neile, kes soovivad töötada rahvusvahelises ärikeskkonnas juhina või ekspordijuhina ning täiendada oma olemasolevaid teadmisi. Õpid süvendatult analüüsima organisatsiooni ja selle osasid ning neid vajadusel ümber hindama ja kujundama. Õppetöö käigus saab selgeks organisatsiooni ülesehitus, äriprotsesside juhtimine, tehnoloogia, organisatsioonikultuuri ja äristrateegia vastastikused seosed. Loengutes süvened organisatsiooni kujundamisse ja selle funktsionaalsete valdkondade juhtimisse. Eelnevaga seoses omandad teadmised kaasaegsete töökorraldusvormide ja -meetodite kohta ning saad oskused organisatsiooniliste muudatuste ettevalmistamiseks ning elluviimiseks. Õppetöö käigus kavandatakse ettevõtte eksporditegevust ja viiakse sind kurssi ekspordi läbiviimise ning kriitiliste edutegurite aspektidega. Koos sellega saad teadmised välismajanduse teoreetilistest alustest, võimalike sihtturgude analüüsist ning müügitegevusest välisturgudel. Mitmed õppeained on seminaride ja töötubade vormis, kus lahendad koos praktikutega elulisi ülesandeid ning jäljendad reaalseid ekspordiolukordi.", "Turundus ja müügijuhtimine on eriala, mis arendab oma ala tegijaid, kes soovivad saavutada turunduses ja müügijuhtimises kõrgeid eesmärke ning täiendada oma olemasolevaid teadmisi uuele tasemele jõudmiseks. Selleks õpid süvendatult turunduse strateegiaid ning omandad konkreetsemad teadmised turunduskontseptsioonidest, rahvusvahelisest ja digitaalsest turundusest koos oma spetsiifiliste eripärade ning kultuuridevahelise suhtluse aspektidega. Lisaks saad teadmised turu-uuringute ettevalmistamiseks, läbiviimiseks ja analüüsimiseks ning õpid tarbijakäitumise mustreid enda äridele sobivalt ümber kujundama. Ja muidugi - õpid juhtima brändi!"],
        outcomes: ["Rahvusvaheline ärijuhtimine:", "Eriala lõpetanuna oled tippspetsialist, kes suudab vastutada ettevõtte ekspordi ja juhtimise eest, analüüsida tulemusi ning kujundada ümber ettevõtete strateegiaid ja poliitikaid. Eriala lõpetanuna omad põhjalikke teadmisi ettevõtte ja ekspordi juhtimise valdkonnas rahvusvahelises keskkonnas ning sul on kõik eeldused tõusta organisatsiooni tippjuhiks, keskastmejuhiks või ekspordijuhiks.", "Turundus ja müügijuhtimine:", "Müügijuhtimise valdkonnas omandad teadmised kaubanduse alustest, kategooria juhtimisest, äriarendusest ning äriinfosüsteemidest. Lisaks sellele keskendutakse äriläbirääkimiste, innovatsiooni ning strateegilise juhtimisarvestuse aspektidele.", "Eriala lõpetajal on kõik eeldused tõusta organisatsiooni turundus- või müügijuhiks, kes suudab vastutada ettevõtte müügitulude teenimise, kliendisuhete ja turunduse juhtimise eest, analüüsida tulemusi ning kujundada ümber ettevõtete strateegiaid ja poliitikaid."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Õppevaldkondlik ja õppesuuna spetsiifiline baasharidus",
                courses: [
                    Course(name: "Äritulemuse juhtimine ja analüüs", eapCount: 6),
                    Course(name: "Rahvusvaheline äri", eapCount: 6),
                    Course(name: "Analüüsimeetodid äriuuringutes", eapCount: 6),
                    Course(name: "Rahvusvaheline turundus", eapCount: 6),
                    Course(name: "Strateegiline juhtimine", eapCount: 6),
                    Course(name: "Juhtimine ja eestvedamine", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Rahvusvaheline ärijuhtimine",
                courses: [
                    Course(name: "Ekspordijuhtimine", eapCount: 6),
                    Course(name: "Tarneahela juhtimine", eapCount: 6),
                    Course(name: "Arengutrendid ärikeskkonnas", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Rahvusvaheline äriõigus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Konkurentsiökonoomika", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Juhtimismäng", eapCount: 6),
                            Course(name: "Müügijuhtimine", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Strateegiline turundus", eapCount: 6),
                            Course(name: "Organisatsiooni arendamine ja muutuste juhtimine", eapCount: 6),
                            Course(name: "Eetika, vastutus ja jätkusuutlikkus", eapCount: 6),
                            Course(name: "Töökeskkonna juhtimine ja ergonoomika", eapCount: 6),
                            Course(name: "Erialapraktika (praktika)", eapCount: 6),
                            Course(name: "Start-up ettevõtlus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Turundus ja müügijuhtimine",
                courses: [
                    Course(name: "Müügijuhtimine", eapCount: 6),
                    Course(name: "Strateegiline turundus", eapCount: 6),
                    Course(name: "Digitaalne turundus", eapCount: 6),
                    Course(name: "Turundusuuringud", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Konkurentsiökonoomika", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Juhtimismäng", eapCount: 6),
                            Course(name: "Äriläbirääkimised ja kultuuridevaheline suhtlus", eapCount: 6),
                            Course(name: "Turunduskommunikatsioon", eapCount: 6),
                            Course(name: "Tarbijakäitumine", eapCount: 6),
                            Course(name: "Brändi juhtimine", eapCount: 6),
                            Course(name: "Teenusedisain", eapCount: 6),
                            Course(name: "Eetika, vastutus ja jätkusuutlikkus", eapCount: 6),
                            Course(name: "Erialapraktika (praktika)", eapCount: 6),
                            Course(name: "Rahvusvaheline äriõigus", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Majandusanalüüs",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus majanduses või kõrgharidus, sh vähemalt 36 EAP ulatuses kvantitatiivsete meetodite/majanduse aineid või tööstaaž analüütikuna vähemalt 1 a"),
            Requirements(term: "CV"),
            Requirements(term: "Vestlus")
        ],
        description: ["Majandusanalüüsi õppekava eesmärk on anda põhjalik majandusalane haridus koos praktiliste analüütiliste oskustega. Tööandjad – nii ettevõtted kui ka avaliku sektori asutused – vajavad analüütikuid, kes oskavad välja tuua majandusalaseid küsimusi või probleeme ning leida neile analüütiliste meetodite abil vastuseid või lahendusi.", "Millised majandusprotsessid mõjutavad Sinu ettevõtte ärivaldkonda? Mis on põhjus ja mis on tagajärg? Millised tegurid mõjutavad ettevõtte klientide otsuseid? Kuidas see teadmine oma ettevõtte kasuks tööle panna?", "Selleks on Sul vaja teada, millised on klientide ja ettevõtete otsustamise protsessid ning kuidas toimib majandus nii riigi kui ka globaalsel tasandil. Samuti on Sul vaja oskusi töödelda ning analüüsida mõtestatult majandusnäitajaid ja kliendiandmeid, mida asutused ja ettevõtted koguvad järjest suuremates kogustes.", "Õpingute käigus saad põhjalikud teadmised majandusprotsesse selgitavatest mudelitest ja nende kasutamisest majandusanalüüsis. Majanduses toimuvad keerukad protsessid on omavahel tihedalt seotud. Näiteks on majanduse olukord seotud hõive ja palkadega, need mõjutavad toodete nõudlust ja tarbimine määrab omakorda olukorra majanduses. Mis juhtub nõudlusega, kui tööjõumaksud suurenevad? Mikro- ja makroökonoomikas ning avaliku sektori ökonoomikas õpid, mis on põhjus ja mis on tagajärg ning õpid eristama mitmesuguste tegurite mõju. Konkurentsiökonoomikas omandad konkurentsiolukorra kaardistamise oskuse.", "Majandusküsimuste praktiliseks lahendamiseks õpid, kuidas teha mitmemõõtmelist statistilist analüüsi ja kuidas kasutada ökonomeetrilisi meetodeid majandusküsimustele vastuste leidmiseks. Õpid töötama statistika ja andmetöötlusprogrammidega (R, Stata, Eviews) ja kasutama erinevaid programmeerimiskeeli. Valikainetes on Sul võimalus täiendada oma teadmisi andmeanalüüsis vajalikes programmeerimiskeeltes (SQL, Python), avalikus sektoris kasutatavates analüüsimeetodites ja ettevõtte rahanduse valdkonnas.", "Kuna analüütilisi oskusi saab õppida peamiselt tegemise kaudu (learning by doing), on igas õppeaines lisaks loengutele ja seminaridele oluline roll iseseisvatel kodutöödel ja projektidel, nii individuaalselt kui ka rühmatööna.", "Magistriprogrammi kontaktõpe toimub õhtuti ja mõnel semestril ka laupäeva hommikuti, võimaldades omandada magistrikraadi töötamise kõrvalt."],
        outcomes: ["Magistrikraadi omanikuna oskad analüüsida ja modelleerida keerukamaid majandusprobleeme, tegutsed strateegiliselt ning langetad põhjalikult läbimõeldud otsuseid.", "Õpingute käigus saad põhjalikud teadmised majandusprotsesse selgitavatest mudelitest ja nende kasutamisest majandusanalüüsis. Õpid, kuidas teha mitmemõõtmelist statistilist analüüsi ja kuidas kasutada erinevaid ökonomeetrilisi meetodeid majandusküsimuste lahendamiseks. Valikainetes on sul võimalus täiendada oma teadmisi andmeanalüüsis vajalikes programmeerimiskeeltes, avalikus sektoris kasutatavates analüüsimeetodites ja ettevõtte rahanduse valdkonnas.", "Kui oled õppekava läbinud, võid tööle asuda majandusanalüütikuna, äri- või andmeanalüütikuna, ökonomistina, strateegina, konsultandina ja ka poliitikakujundajana. Sinu analüüsioskusi ja teadmisi vajavad ministeeriumid, riigiasutused ja finantssektor, aga ka telekommunikatsiooni firmad, jaekaubanduse ettevõtted ja uuringutega tegelevad ettevõtted."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Rakenduslik mikroökonoomika", eapCount: 6),
                    Course(name: "Rakenduslik makroökonoomika", eapCount: 6),
                    Course(name: "Mitmemõõtmeline statistiline analüüs", eapCount: 6),
                    Course(name: "Rakenduslik ökonomeetria", eapCount: 6)
                ]
            ),
            Module(
                name: "Kohustuslikud ained",
                courses: [
                    Course(name: "Avaliku sektori ökonoomika", eapCount: 6),
                    Course(name: "Rahvusvaheline majandus", eapCount: 6),
                    Course(name: "Majandusareng ja institutsioonid", eapCount: 6),
                    Course(name: "Konkurentsiökonoomika", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Rakenduslik majandusanalüüs", eapCount: 6)
                ]
            ),
            Module(
                name: "Valikained",
                courses: [
                    Course(name: "Õigusaktide majanduslik analüüs", eapCount: 6),
                    Course(name: "Andmekaeve suurandmetest", eapCount: 6),
                    Course(name: "Andme- ja ärianalüütika", eapCount: 6),
                    Course(name: "Andmebaasid I", eapCount: 6),
                    Course(name: "Ettevõtte rahanduse süvakursus", eapCount: 6),
                    Course(name: "Investeeringute analüüs", eapCount: 6),
                    Course(name: "Ökonomeetria", eapCount: 6),
                    Course(name: "Operatsioonianalüüs", eapCount: 6),
                    Course(name: "Suurandmed ja valitsemine: aktuaalsed probleemid", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tehnoloogia valitsemine ja digitaalsed muutused",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "CV"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "Vestlus")
        ],
        description: ["Tehnoloogia valitsemise ja digitaalsete muutuste õppekava keskendub tehnoloogilis- majandusliku arengu ja digitaliseerimise peamistele võtmeküsimustele:", "• Kuidas tagada, et tehnoloogilised muutused, sh digitaliseerimine, panustavad senisest rohkem globaalselt jätkusuutlikkusse arengusse nii sotsiaalselt, majanduslikult kui ka keskkonna-alaselt?", "• Milline on riigi roll tehnoloogilises arengus ehk kuidas saab riik kõige paremini toetada innovaatorite ja ettevõtjate katseid muuta maailma või olla ise tehnoloogilise arengu eestvedajaks?", "• Kuidas mõjutab digitaliseerimine riigi ja valitsemise tulevikku?"],
        outcomes: ["Vajadus professionaalsete innovatsiooni ja muutuste eestvedajate ja juhtide järele on tulevikus ainult kasvamas. Tehnoloogiline areng teeb muutuste tsüklid ühiskonnas üha kiiremaks ja meie ette tõusevad pidevalt uued keerukad väljakutsed. Eestil on üha suurem ambitsioon olla digitaliseerimise ja avaliku sektori innovatsiooni valdkonnas üks üleilmseid suunanäitajaid, mis loob pideva nõudluse innovatsiooni ja tehnoloogilist arengut mõistvate ekspertide järele. Üleilmsed suured väljakutsed - kliimasoojenemine, migratsioon jms - on muutumas üha keerulisemaks ja neile lahenduste leidmine vajab ühe rohkem nutikust ja initsiatiivikust.", "Laia kasutusalaga teadmised majandusest, tehnoloogiast, innovatsioonist ja valitsemisest annavad võimaluse teha karjääri nii äri-, avalikus kui ka kolmandas sektoris, samuti rahvusvahelistes organisatsioonides.", "Vilistlasi leiabki nii Eestist kui piiri tagant, nii avalikust kui ka erasektorist – äriteenuste, panganduse, iduettevõtluse, infotehnoloogia valdkonnast jm. Samuti vabasektorist, näiteks poliitikaanalüüsi keskustest. Lõpetajate valikud näitavad ka väga häid võimalusi jätkata õpinguid doktoriõppes – 57 vilistlasest 13 on TTÜs või mujal ülikoolides doktorandid või juba doktorikraadiga."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja tehnoloogia juhtimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Innovatsiooni ja majandusarengu majandus- ja finantsteooriad", eapCount: 6),
                    Course(name: "Tehnoloogilis-majanduslikud paradigmad ja tehnoloogilised muutused", eapCount: 6),
                    Course(name: "Tehnoloogia, ühiskond ja tulevik", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriõpe",
                courses: [
                    Course(name: "Innovatsioonivõimekuste arendamine avalikus sektoris", eapCount: 6),
                    Course(name: "E-valitsemine ja e-demokraatia", eapCount: 6),
                    Course(name: "Valitsemine mitmekesises ja globaalses maailmas", eapCount: 6),
                    Course(name: "Praktika ja konsultatsioonilabor (praktika)", eapCount: 24)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "E-tervise alused ja rahvusvaheline kogemus", eapCount: 6),
                            Course(name: "Sotsiaalteaduste meetodid", eapCount: 6),
                            Course(name: "Küberturbe põhialused", eapCount: 6),
                            Course(name: "Avaliku sektori teenuste disain ja rakendamine", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Sotsiaalne ettevõtlus", eapCount: 6),
                            Course(name: "Digitaalsed muutused avalikus sektoris", eapCount: 6),
                            Course(name: "Suurandmed ja valitsemine: aktuaalsed probleemid", eapCount: 6),
                            Course(name: "Tehnoloogia valitsemise erikursus", eapCount: 6),
                            Course(name: "Innovatsioon ja uute tehnoloogiate juhtumiuuringud", eapCount: 6),
                            Course(name: "Inimõigused, eetika ja tehnoloogia", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Õigusteadus",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "kõrgharidus, sh vähemalt 36 EAP ulatuses õigusalaseid aineid"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "CV"),
            Requirements(term: "Vestlus")
        ],
        description: ["Tallinna Tehnikaülikooli õigusteaduse magistriõppe eesmärgiks on koolitada uue põlvkonna juriste, kes tunnevad Eesti ja Euroopa õigusruumi tavasid ja praktikat. Me anname laialdased teadmised ühiskonna toimimisest ning õiguse ja õigluse küsimustest, arendame ühiskonna süstemaatilist tundmist, analüütilist mõtlemist ja argumentatsioonivõimet.", "Õppima asudes saad süvendatud teadmised sellest, missugune on õigusteaduse metodoloogia ja eetiline tehnoloogia. Samuti saad põhjaliku koolituse Euroopa Liidu konstitutsioonilisest õigusest, rahvusvahelisest avalikust õigusest ning rahvusvahelisest eraõigusest.", "Oleme õppetöösse kaasanud kohtunikke, rahvusvaheliste organisatsioonide tippspetsialiste ja teisi praktikuid, kes aitavad oma kogemustega teooriat paremini mõista.", "Õppetöö toimub inglise keeles. Õppekaval on 2 sihtstipendiumiga õppekohta. See tähendab, et kui muidu on ingliskeelsel kaval õppimine tasuline, siis sihtstipendium katab õppemaksu nominaalajal nominaalkoormusega õppimise korral. Sihtstipendiumid määratakse vastuvõtu pingerea alusel."],
        outcomes: ["Õppekava lõpetanu:", "Selgitab õigusteaduse ja õiguse eri valdkondade teoreetilisi aluseid", "Rakendab õiguse põhimõtteid ja õigusnorme spetsialiseerudes kas Eesti õigusele, Euroopa Liidu ja rahvusvahelisele õigusele või tehnoloogiaõigusele", "Argumenteerib õigusteaduslikult oma otsuseid õiguslike probleemide määratlemisel ja lahendamisel, näidates juristi kutse-eetika tundmist", "On kvalifitseeritud kandideerima doktoriõppesse ning õigusteaduse magistrikraadi nõudvatele ametikohtadele."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Inimõigused, eetika ja tehnoloogia", eapCount: 6),
                    Course(name: "Tehisintellekt ja õigus", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Õiguse teooria, EL ja rahvusvaheline õigus",
                courses: [
                    Course(name: "Õigusteaduse metodoloogia", eapCount: 6),
                    Course(name: "Valitud aktuaalseid teemasid Euroopa Liidu isikuandmete kaitse õigusest", eapCount: 6),
                    Course(name: "EL siseturu ja konkurentsiõiguse kaasuste analüüs", eapCount: 6),
                    Course(name: "Tehnoloogiaõigus", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Tehnoloogiaõigus",
                courses: [
                    Course(name: "Küberkaitse ja õigus", eapCount: 6),
                    Course(name: "Infotehnoloogiliste toodete, arvutiprogrammide ja andmebaaside õiguskaitse", eapCount: 6),
                    Course(name: "Digitaalne intellektuaalomandiõigus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "E-valitsuse õiguslikud aspektid", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Intellektuaalomandi- ja konkurentsiõigus", eapCount: 6),
                            Course(name: "Meditsiiniõigus", eapCount: 6),
                            Course(name: "Internetis toimijate õigused, kohustused ja vastutus", eapCount: 6),
                            Course(name: "Biotehnoloogia ja intellektuaalne omand", eapCount: 6),
                            Course(name: "Küberkuritegude uurimise õiguslikud aspektid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Äriõigus",
                courses: [
                    Course(name: "Ülemaailmne kaubandus ja riikidevaheline õigus", eapCount: 6),
                    Course(name: "Digitaalse äri õigus", eapCount: 6),
                    Course(name: "Finantstehnoloogia õigus", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Küberkaitse ja õigus", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Rahvusvaheline äri", eapCount: 6),
                            Course(name: "Arengutrendid ärikeskkonnas", eapCount: 6),
                            Course(name: "Riigihankeõigus", eapCount: 6),
                            Course(name: "Intellektuaalomandi- ja konkurentsiõigus", eapCount: 6),
                            Course(name: "Rahvusvahelise maksuõiguse kaasuste analüüs", eapCount: 6),
                            Course(name: "Rahvusvaheline tööõigus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Õigusalane praktika (praktika)", eapCount: 6),
                    Course(name: "Meeskonnatöö - projekt", eapCount: 6),
                    Course(name: "Harjutuskohtuvõistlus magistrantidele", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Ärirahandus ja majandusarvestus",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus majanduses, ärinduses või kõrgharidus sh vähemalt 36 EAP ulatuses majanduse/ärinduse aineid"),
            Requirements(term: "Erialakatse")
        ],
        description: ["Ärirahanduse ja majandusarvestuse kaval õppides saadud teoreetilised teadmised ja metoodilised oskused teevad sinust kõrgelt kvalifitseeritud spetsialisti, keda vajavad nii finantssektori ettevõtted kui ettevõtete-asutuste majandusüksused. Lisaks anname sulle süsteemse mõtlemise ning analüüsi- ja diskuteerimisoskused, mis aitavad sul edukalt tegutseda kaasaegses rahvusvahelises ärikeskkonnas või jätkata õpinguid doktoriõppes.", "Ärirahandus:", "• Siin süvendad teadmisi finantsturgudest ja nendel kaubeldavatest finantsinstrumentidest, ettevõtte finantsjuhtimisest ja väärtuse hindamisest, saad ka süvateadmised väärtpaberite põhiliikidest, portfelliteooriast ja riski juhtimisest. Erialaainete toel õpid analüüsima finantsturge ja hindama ettevõtte finantsjuhtimist, aga ka avastama ja kõrvaldama selles olevaid puudusi.", "Majandusarvestus:", "• Saad ülevaate majandusarvestuse ajaloolisest arengust, nüüdiskontseptsioonidest ja tulevikusuundumustest ning iseärasustest eri riikides. Õpid analüüsima konkreetse ettevõtte majandustegevust, avastama ja kõrvaldama majandusarvestuse süsteemi puuduseid ning nõustama juhte.", "Audiitortegevus:", "• See peaeriala süvendab su teadmisi audiitortegevuse ajaloolisest arengust, nüüdiskontseptsioonidest ja tulevikusuundumustest ning iseärasustest eri riikides. Selle haridusega oskad teha auditit eri valdkondades, hinnata konkreetse ettevõtte majandusarvestuse süsteemi ja finantsaruandeid ning avastada ja kõrvaldada neist puudusi."],
        outcomes: ["Ärirahandus:", "Sind ootab töö finantssektori ettevõttes või sektori regulatsiooni ja järelevalvega tegelevas asutuses, suurettevõtte finantseerimis- ja investeerimisüksuses või keskmise suurusega ettevõtte finantsjuhina.", "Majandusarvestus:", "Lõpetajad saavad töötada (pea)raamatupidaja, kontrolleri, sisekontrolöri, siseaudiitori, Riigikontrolli audiitori, finantseksperdi või finantsjuhina, pärast kutseeksami sooritamist ka audiitorina. Tööandjateks on ettevõtted-asutused nii avalikus kui erasektoris, raamatupidamis- ja audiitorfirmad ja Riigikontroll.", "Audiitortegevus", "Sinu tulevasteks tööandjateks on audiitorfirmad või Riigikontroll ning ettevõtted ja asutused. Võid töötada sisekontrolöri, siseaudiitori, Riigikontrolli audiitori, (pea)raamatupidaja või kontrollerina, pärast kutseeksami sooritamist ka audiitorina."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Ettevõtte rahanduse süvakursus", eapCount: 6),
                    Course(name: "Strateegiline juhtimisarvestus ja kulujuhtimine", eapCount: 6),
                    Course(name: "Finantsaruandlus ja -analüüs", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Ärirahandus",
                courses: [
                    Course(name: "Finantsjuhtimine - Juhtumianalüüs", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Investeeringute analüüs", eapCount: 6),
                    Course(name: "Investeeringute erikursus", eapCount: 6),
                    Course(name: "Portfellijuhtimine", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6),
                    Course(name: "Finantsökonomeetria", eapCount: 6),
                    Course(name: "Äriinfosüsteemid, äriarhitektuur ja arendusprojektide juhtimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Andme- ja ärianalüütika", eapCount: 6),
                            Course(name: "Konkurentsiökonoomika", eapCount: 6),
                            Course(name: "Riskijuhtimine", eapCount: 6),
                            Course(name: "Mitmemõõtmeline statistiline analüüs", eapCount: 6),
                            Course(name: "Ökonomeetria", eapCount: 6),
                            Course(name: "Kontserniarvestus", eapCount: 6),
                            Course(name: "Rahvusvaheline maksundus", eapCount: 6),
                            Course(name: "Finantspettused ja eetika", eapCount: 6),
                            Course(name: "Juhtimismäng", eapCount: 6),
                            Course(name: "Projektijuhtimine ja eestvedamine", eapCount: 6),
                            Course(name: "Finantsarvestuse süvakursus", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Majandusarvestus",
                courses: [
                    Course(name: "Kontserniarvestus", eapCount: 6),
                    Course(name: "Rahvusvaheline arvestus: teooria ja praktika", eapCount: 6),
                    Course(name: "Rahvusvaheline maksundus", eapCount: 6),
                    Course(name: "Magistriseminar (majandusarvestus, audiitortegevus)", eapCount: 6),
                    Course(name: "Audiitorkontroll", eapCount: 6),
                    Course(name: "Siseaudit", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6),
                    Course(name: "Äriinfosüsteemid, äriarhitektuur ja arendusprojektide juhtimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Andme- ja ärianalüütika", eapCount: 6),
                            Course(name: "Finantsjuhtimine - Juhtumianalüüs", eapCount: 6),
                            Course(name: "Investeeringute analüüs", eapCount: 6),
                            Course(name: "Mitmemõõtmeline statistiline analüüs", eapCount: 6),
                            Course(name: "Ökonomeetria", eapCount: 6),
                            Course(name: "Arvestus ja audit riigiasutustes", eapCount: 6),
                            Course(name: "Finantspettused ja eetika", eapCount: 6),
                            Course(name: "Rahanduse ja majandusarvestuse alane kommunikatsioon", eapCount: 6),
                            Course(name: "Analüüsimeetodid äriuuringutes", eapCount: 6),
                            Course(name: "Projektijuhtimine ja eestvedamine", eapCount: 6),
                            Course(name: "Finantsarvestuse süvakursus", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Arvutisüsteemid",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedases valdkonnas"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "CV"),
            Requirements(term: "Vestlus")
        ],
        description: ["Kui programmeerimisest jääb sulle väheks ja tunned, et tahad IT-valdkonnas palju rohkem ära teha, siis tutvu arvutisüsteemide õppekavaga kindlasti edasi. Siin saab sinust laia silmaringiga tippspetsialist, kes suudab mõista, formuleerida ja lahendada arvutitel põhinevate süsteemide loomise, arendamise ja haldamisega seotud keerukaid ülesandeid. Meie lõpetajad töötavad kõige suuremat väljakutset pakkuvatel IT-aladel!", "Arvutisüsteemide süvitsi õppimine magistrantuuris annab sulle oskused uute tehnoloogiate loomiseks ja ellurakendamiseks väga erinevates eluvaldkondades, alustades meditsiinist ja lõpetades pangandusega, hõlmates riistvara- ja tarkvaraarendusi, automaatjuhtimissüsteemide projekteerimist ning palju muud. Olulised erialaained on näiteks: arvutisüsteemide projekteerimine, mikroprotsessorsüsteemid, digitaalsüsteemide disain VHDL-s, testimise projekteerimine, objektorienteeritud programmeerimine, arukad juhtimissüsteemid, automaatikavahendid, rakenduslik andmeside, sardtarkvara arendus."],
        outcomes: ["Magistritele pakutavad töökohad on vastutusrikkad ja kõrgepalgalised. Tööd leiad arvutipõhiste seadmete ja süsteemide projekteerimise, realiseerimise, rakendamise ja haldamise spetsialistina. Potentsiaalsed töökohad võivad olla arvuti- ja automaatikasüsteemide ja selle komponentide projekteerija, projektijuht, tarkvara arendaja ning IT osakonna juhataja.", "Karjäärivõimalused on mitmekesised: arvuti- ja tarkvarafirmad; pangad; diagnostikasüsteemid tootmises, teeninduses, meditsiinis; “targad” majad ja tootmissüsteemid; juhtimis- ja seiresüsteemid õhu-, vee- ja maismaatranspordis jpm."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Arvutisüsteemide projekteerimine", eapCount: 6),
                    Course(name: "Mikroprotsessorsüsteemid", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Rakenduslik andmeside", eapCount: 6),
                            Course(name: "Automaatikavahendid", eapCount: 6),
                            Course(name: "Süsteemide usaldusväärsus ja veakindlus", eapCount: 6),
                            Course(name: "Digitaalsüsteemide masinprojekteerimine", eapCount: 6),
                            Course(name: "Andmehõivesüsteemid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Arvutisüsteemide loomine",
                courses: [
                    Course(name: "Sardsüsteemid", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kaasaegne robotitehnika", eapCount: 6),
                            Course(name: "Arukad juhtimissüsteemid", eapCount: 6),
                            Course(name: "Modelleerimine ja identifitseerimine", eapCount: 6),
                            Course(name: "Robootika", eapCount: 6),
                            Course(name: "Nanoelektroonika töökindlus ja kvaliteet", eapCount: 6),
                            Course(name: "Digitaalsüsteemide modelleerimine ja verifitseerimine", eapCount: 6),
                            Course(name: "Kiipsüsteemide disain", eapCount: 6),
                            Course(name: "Digitaalsüsteemide disain VHDL-s", eapCount: 6),
                            Course(name: "Testimise projekteerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Projektid ja praktika",
                courses: [
                    Course(name: "Teadusseminar", eapCount: 6),
                    Course(name: "Tööstuspraktika (praktika)", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                    Course(name: "Prototüüpimine", eapCount: 6),
                    Course(name: "Mehhatroonika ja arukate süsteemide projekt", eapCount: 6)
                ]
            ),
            Module(
                name: "Tarkvara",
                courses: [
                    Course(name: "Objektorienteeritud programmeerimine", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Masinõpe sardsüsteemides", eapCount: 6),
                            Course(name: "Küberturbe põhialused ja juhtimine", eapCount: 6),
                            Course(name: "Programmeerimiskeelte analüüs", eapCount: 6),
                            Course(name: "Tarkvara projektijuhtimine", eapCount: 6),
                            Course(name: "Andmebaasid I", eapCount: 6),
                            Course(name: "Sardtarkvara õpikoda", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Digimuutused ettevõttes",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "magistrikraad või sellele vastav kvalifikatsioon või kõrghariduse õppekava diplom nominaalmahuga 240 EAP või kõrgharidus ja vähemalt 7 a strateegilise juhtimise kogemus ja sellele lisaks 60 EAP mahus magistritasemel juhtimis-kompetentse (omandatud tasemeõppe õpingute või muul viisil õpitu kaudu)"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "Vestlus")
        ],
        description: ["Digimuutused ettevõttes üheaastane õppekava on kokku pandud spetsiaalselt sulle, kui oled mitte-IT sektori ettevõtte juht või juhtivtöötaja ning vajad oma firma töö korraldamisel ning kavandamisel paremat arusaamist info- ja kommunikatsioonitehnoloogiate ehk digitehnoloogiate kasutamise võimalustest ning riskidest.", "Räägime lihtsas keeles tehnoloogiatrendidest ja digitehnoloogiatest ning põimime need juhtimis- ning majandusteemadega. Kõik õppejõud on oma erialade tunnustatud teadlased ja praktikud nii Tallinna Tehnikaülikoolist kui väljastpoolt.", "Kõikidel õppeainetel omandatakse teooria iseseisvalt videoloengute ja muude õppematerjalide põhjal endale sobival ajal, nii et ülikoolis toimuv keskendub ühistele aruteludele, juhtumianalüüsidele, meeskondlikele ja individuaalsetele projektitöödele. Loengud toimuvad igal nädalal või üle nädala neljapäeva-reede pealelõunastel ja õhtustel aegadel ning laupäeva ennelõunastel aegadel.", "Magistrikava on sündinud Tallinna Tehnikaülikooli IT teaduskonna ja majandusteaduskonna koostöös: ühelt poolt globaalsete IT-trendide, -tehnoloogiate ja andmetöötluse ained ning teisalt ärimudelite ja muudatuste ohjamise majandusained, ikka digitehnoloogiate vinklis. Digitaalse kliendisuhte ja tootestamise ained annavad võimaluse valida teenuste või tootmise rõhuasetuste vahel, mida magistrant saab meelepärase vabaainega veelgi täiendada. Õppekava laiapõhjalisust aitab tasakaalustada kolmandikuna magistrieksamist arvestatav kogu stuudiumi läbiv kirjalik analüüsitöö, mille käigus magistrant seob iga aine sisu individuaalselt oma ettevõtte või tegevusvaldkonna teemadega."],
        outcomes: ["Digitehnoloogiad raputavad kõiki majandus- ja tööstusharusid, kõiki ettevõtteid ning mõjutavad seeläbi ka iga juhti. Digitehnoloogiad suurendavad pretsedenditus ulatuses määramatust ettevõtte tulevikuplaanide tegemisel. Nende tehnoloogiate tundmine pakub märkimisväärseid eeliseid juhile, kes on piisavalt kiire neist võimalustest kinni haarama. Iga muutusega on seotud ka riskid, mille hindamine on juhi ülesanne. Riskide ja kasude paremaks hindamiseks peab esmalt nägema suurt pilti ning mõistma tehnoloogiates võimalusi oma ettevõtte koha parandamiseks igas konkurentsiolukorras.", "Digimuutused ettevõttes õppekava läbinuna oled paremini valmis ohjama ja suunama digitehnoloogiatest ajendatud muutuseid oma ettevõttes. Mõistad, millised globaalsed (nii digitaalsed kui muud) trendid mõjutavad sinu ettevõtte majandusharu pikemas perspektiivis ja milliseid otsuseid peab täna nendeks valmis olemiseks tegema. Saad aru peamistest tehnoloogiatest, mis muudavad vanu ärimudeleid ja sünnitavad uusi ning oskad vajadusel oma firma tegevusi selle järgi planeerida."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 1,
        studyLocation:  [.tallinn],
        eap: 60,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Maailma- ja tehnoloogiatrendid", eapCount: 6),
                ]
            ),
            Module(
                name: "Digitehnoloogiad ja andmed",
                courses: [
                    Course(name: "Sissejuhatus andmeanalüüsi", eapCount: 6),
                    Course(name: "Tarkvaratehnoloogiad", eapCount: 6)
                ]
            ),
            Module(
                name: "Digimuutused ettevõttes",
                courses: [
                    Course(name: "Ettevõtte äriarhitektuur", eapCount: 6),
                    Course(name: "Ärimudeli innovatsioon", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Samaaegne tootearendus", eapCount: 6),
                            Course(name: "Muudatuste juhtimine", eapCount: 6),
                            Course(name: "Digitaalne kliendisuhe ja turundus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 18),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "E-riigi tehnoloogiad ja teenused",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "kõrgharidus info- ja kommunikatsioonitehnoloogia, õigusteaduse, sotsiaalteaduse või majanduse erialadel"),
            Requirements(term: "CV + Vestlus")
        ],
        description: ["Õppekava hõlmab nii riigi haldusprotsesse, õigusregulatsioone, teenuseid kui ka tarkvaratooteid. Samuti pakub õppekava võimalikke uurimisteemasid ja -projekte, näiteks ärisektorile vajalikke uuringuid e-riigi valdkonnast. Nii aitame luua koostöövõimalusi e-riigi tehnoloogiate labori, riigi IT-asutuste ja avaliku sektori organisatsioonide vahel. Õppetöö käigus saad ülevaate nii Eesti kui ka teiste riikide parimatest praktikatest.", "Olulised erialaained on näiteks: sissejuhatus IT ja e-Riigi tehnoloogiatesse, infoühiskonna põhimõtted ja kontseptsioonid, e-valitsuse õiguslikud aspektid, e-valitsemise mõju ja mõõtmine, infohaldus ja digiarhiivindus, avaliku sektori teenuste disain ja rakendamine, virtuaalkeskkondade kasutatavus, ettevõtte äriarhitektuur ja BPM, infosüsteemide programmeerimine, küberturbe põhialused, e-valitsemine ja e-demokraatia, digitaalsed muutused avalikus sektoris, tarkvara projektijuhtimine, sissejuhatus pilvepõhiste süsteemide arendusse.", "E-riigi tehnoloogiad ja teenused õppekavale on õppima oodatud bakalureuseõppe lõpetanud nii IT, õigusteaduse, sotsiaalteaduse kui majanduse erialadelt. Samuti pakub õppekava võimalust täiendada oma teadmisi digiriigi tehnoloogiate ja teenuste juhtimise valdkonnas praktilise töökogemuse kõrvalt neile, kelle varasem haridus ei ole seotud IT-ga."],
        outcomes: ["E-riigi spetsiifikaga IKT-spetsialiste tööturul napib – sind on juba praegu vaja! Töötada saad nii avaliku sektori kesk- ja tippastme ametnikuna kui ka e-riigi arendusprojekte juhtimisel erasektoris.Inglisekeelne õpe annab võimaluse rahvusvahelistumiseks ning töötada vastavat kvalifikatsiooni nõudvatel erialadel."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "E-valitsuse õiguslikud aspektid", eapCount: 6),
                    Course(name: "Infoühiskonna kontseptsioonid ja põhimõtted", eapCount: 6),
                    Course(name: "Sissejuhatus IT ja e-riigi tehnoloogiatesse", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tarkvara protsessid ja kvaliteet", eapCount: 6),
                            Course(name: "E-riigi infotehnoloogilised lahendused", eapCount: 6),
                            Course(name: "E-valitsemine ja e-demokraatia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "E-riigi tehnoloogiate eriseminar", eapCount: 6),
                    Course(name: "E-riigi tehnoloogiad ja teenused magistriprojekt", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "E-tervise alused ja rahvusvaheline kogemus", eapCount: 6),
                            Course(name: "Sissejuhatus pilvepõhiste süsteemide arendusse", eapCount: 6),
                            Course(name: "Ettevõtte äriarhitektuur ja BPM", eapCount: 6),
                            Course(name: "Äriprotsesside modelleerimine ja automatiseerimine", eapCount: 6),
                            Course(name: "Rahvusvaheline ettevõtlus", eapCount: 6),
                            Course(name: "Digitaalsed muutused avalikus sektoris", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "E-riigi tehnoloogiad ja teenused",
                courses: [
                    Course(name: "Küberturbe põhialused", eapCount: 6),
                    Course(name: "Avaliku sektori teenuste disain ja rakendamine", eapCount: 6),
                    Course(name: "Infohaldus ja digiarhiivindus", eapCount: 6),
                    Course(name: "Ettevõtlusprojekt", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tervisepoliitika ja terviseedenduse alused", eapCount: 6),
                            Course(name: "Küberturbe juhtimine", eapCount: 6),
                            Course(name: "Infosüsteemide programmeerimine", eapCount: 6),
                            Course(name: "E-valitsemise mõju ja mõõtmine", eapCount: 6),
                            Course(name: "Virtuaalkeskkondade kasutatavus", eapCount: 6),
                            Course(name: "Praktika (praktika)", eapCount: 6),
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Innovatsioonivõimekuste arendamine avalikus sektoris", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Ettevõtlik juhtimine (MBA)",
        level: .masters,
        type: .majandus,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedases valdkonnas"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "Vestlus"),
            Requirements(term: "CV")
        ],
        description: ["MBA programm keskendub ettevõtliku juhtimise valdkonnale et toetada teie arengut juhiks saamisel või juhtimiskompetentside arendamisel rahvusvahelistes ettevõtetes. Õppekava on disainitud spetsiaalselt Balti- ja Skandinaavia riikidest tulevatele üliõpilastele. Õpingute käigus toetab teie karjäärialaseid arenguid koots. Majandusteaduskond on Eesti suurim ja rahvusvahelisem majandushariduse andja. TalTech pakub erinevaid võimalusi start-up ettevõtlusega alustamiseks, äriideede konkursse ja rahvusvahelisi suvekoole. Teoreetiline ja praktiline osa on õppekavas oskuslikult seotud. Õppekava läbib ettevõtte probleemi lahendav projekt, millest kujuneb magistritöö. Õppekava on võimalik läbida 1,5 aastaga. Õppetöö toimub üks kord kuus 3-päevaste sessioonidena et väljaspool Eestit elavatel üliõpilastel oleks võimalik mugavalt osaleda, pakkudes paindlikust töö- ja pereluga ühildamisel."],
        outcomes: ["Õppekava lõpetanu:", "On saanud süsteemse ülevaate ja laiapõhjalised teadmised ärijuhtimise valdkonna mõistetest ja teooriatest", "Hindab enda valdkonna ärivõimalusi ja tehnoloogiate pideva arengu mõju ärile rahvusvahelises ettevõtluskeskkonnas", "Arendab uuel tehnoloogial põhinevat jätkusuutlikku äriideed ja ärimudelit ning planeerib ettevõtte põhiprotsesse", "Testib jätkusuutliku äriidee sobivust valitud turule", "Kavandab kaasaegsetel tehnoloogiatel baseeruva ettevõtte eetilisi, vastutustundlikuid ja jätkusuutlikuid strateegiad ja plaane", "Juhib rahvusvahelist meeskonda", "Esitleb äriideid kaasamaks partnereid ja investoreid."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 9900, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Äriarendus ja keskkond",
                courses: [
                    Course(name: "Tehnoloogiaettevõtlus", eapCount: 6),
                    Course(name: "Rahvusvaheline ärikeskkond", eapCount: 6),
                ]
            ),
            Module(
                name: "Äriinfo ja organisatsioon",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Innovatsiooni juhtimine", eapCount: 6),
                    Course(name: "Turundus digiajastul", eapCount: 6),
                    Course(name: "Ettevõtlik eestvedamine", eapCount: 6),
                    Course(name: "Ärianalüütika ja digitaalne organisatsioon", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Toote- ja teenusedisain", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Regiooni keeled ja kultuur", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Finants ja juhtimine",
                courses: [
                    Course(name: "Majandusarvestus ja finantsjuhtimine", eapCount: 6),
                    Course(name: "Strateegiline juhtimine", eapCount: 6),
                    Course(name: "Rahvusvaheline inimressursi juhtimine", eapCount: 6),
                    Course(name: "Personaalse arengu moodul 1", eapCount: 6),
                    Course(name: "Personaalse arengu moodul 2", eapCount: 12),
                    Course(name: "Personaalse arengu moodul 3", eapCount: 12)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Informaatika",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "Kõrgharidus info- ja kommunikatsioonitehnoloogia erialadel"),
            Requirements(term: "Kaalutud keskhinne vähemalt 3, lõputöö hinne vähemalt 3. Kui keskhinne või lõputöö hinne ei ole vähemalt 3, siis on võimalik taotleda vastuvõttu 3-aastasest erialasest töökogemusest õpitu abil, motivatsioonikirja, CV ja vestluse alusel.")
        ],
        description: ["TalTechis magistritasemel informaatika õppimine annab tarkvaraarenduse oskusega spetsialistile lisandväärtust ja lisateadmised kaasaegsetest tarkvaratehnoloogiatest ning oskused lahendada tarkvara abil keerukamaid ülesandeid. See on tarkvaraarenduse meistriklass!", "Informaatika magistriõpe eeldab sisseastujalt IKT bakalaureusekraadi või sellele lähedase valdkonna haridust, programmeerimisoskust ning ka mõningast tarkvaraarenduse kogemust. Kuna osad loengud toimuvad inglise keeles, peaksid seda valdama heal tasemel.", "Õppekavas on palju valikuvõimalusi enda harimiseks vajalikes ja huvitavates suundades. Õpingute käigus on võimalus kokku puutuda mitmete suure praktilise kogemusega ja teadusmaailmas tipptasemel olevate õppejõududega ning omandada teadmisi, mida on keeruline saada iseseisvalt. Õppekavas on kohustuslikke aineid minimaalselt ja meil ei ole rangelt paika pandud peaerialasid - tudeng saab valikainetest ise kokku panna oma soovidele vastava õppeprogrammi."],
        outcomes: ["Õppimise käigus ja eriti magistritöö tegemisel tutvud sügavamalt mitmete keerukate tehnoloogiatega vastavalt oma huvidele ning võid end nendes pärast lõpetamist spetsialistiks pidada.", "Täna on Eestis ja välismaal suur IT-spetsialistide defitsiit. Eesti enda ja siin baseeruvad rahvusvaheliste firmade arendusosakonnad vajavad sadu uusi tarkvaraarendusega seotud spetsialiste aastas. Mitmed tarkvaraarendusega tegelevad firmad asuvad TalTechi lähedal ning on valmis juba sinu õpingute ajal pakkuma huvitavaid praktikakohti ja projekte. Nõnda võib uue huvitava töö leida just praktikakoha kaudu. Nii mõnigi vilistalane on aga suutnud oma uudsed ideed tarkvaratooteks luua ja alustanud ettevõtjakarjääri. Hea ja hästi tasustatud töökoha leidmisega selle eriala edukal lõpetajal igal juhul probleeme ei ole."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Semantika ja analüütiline filosoofia", eapCount: 6),
                            Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Valikained",
                courses: [
                    Course(name: "Tarkvara arhitektuur ja disain", eapCount: 6),
                    Course(name: "Matemaatika arvutiteaduses", eapCount: 6),
                    Course(name: "Tarkvara töökindlus", eapCount: 6),
                    Course(name: "Teadmiste formaliseerimine", eapCount: 6),
                    Course(name: "Andmekaeve", eapCount: 6),
                    Course(name: "Programmeerimise erikursus", eapCount: 6)
                ]
            ),
            Module(
                name: "Informaatika",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Robootika", eapCount: 6),
                            Course(name: "Robotite juhtimine ja tarkvara", eapCount: 6),
                            Course(name: "Arvutamisteooria", eapCount: 6),
                            Course(name: "Tarkvara protsessid ja kvaliteet", eapCount: 6),
                            Course(name: "Krüptograafia", eapCount: 6),
                            Course(name: "Krüptograafia eriteemad", eapCount: 6),
                            Course(name: "Andmebaasid II", eapCount: 6),
                            Course(name: "Tehisintellekti ja masinõppe alused", eapCount: 6),
                            Course(name: "Loogiline programmeerimine", eapCount: 6),
                            Course(name: "Hajussüsteemid", eapCount: 6),
                            Course(name: "Tarkvara süntees ja verifitseerimine", eapCount: 6),
                            Course(name: "Masinõpe", eapCount: 6),
                            Course(name: "Algoritmide ja andmestruktuuride erikursus", eapCount: 6),
                            Course(name: "Matemaatiline modelleerimine", eapCount: 6),
                            Course(name: "Süsteemprogrammeerimine", eapCount: 6),
                            Course(name: "Tehisnägemine", eapCount: 6),
                            Course(name: "Kõnetöötlus inimeses ja arvutis", eapCount: 6),
                            Course(name: "Loomuliku keele ja kõne töötlus", eapCount: 6),
                            Course(name: "Teadusarvutused", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Tarkvaraarenduse meeskonnaprojekt", eapCount: 12),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                    Course(name: "Erialapraktika (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Infosüsteemide analüüs ja kavandamine",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "CV + Vestlus")
        ],
        description: ["Viimastel aastatel on tarkvaraarenduses toimunud suured muudatused. Kui seni oodati tarkvaraarendajalt programmeerimiseks tarvilikke teadmisi (nt programmeerimiskeeled) ja erinevate programmeerimistehnikate valdamist, siis tänu võimsate instrumentaalvahendite arengule on vahetu kodeerimine asendunud disaini ning arhitektuuri analüüsimise ja projekteerimisega. Analüütikute töö tõhusus on eelduseks kogu järgnevale tarkvaraarendusele.",  "Selleks, et infosüsteemi kavandada või analüüsida, peab vastavast valdkonnast olema kindlasti ka laiem arusaam ja ülevaade. Seetõttu pole õppima asumise eelduseks IT-alane baasharidus, vaid sobib ka mõne muu valdkonna bakalaureusekraad.", "Teisisõnu ootame õppima kõiki, kes oma igapäevatöös tunnevad vajadust IT-teadmiste järele ja soovivad oma erialast tööd muuta efektiivsemaks IT-süsteemide evitamise teel. Tule täienda oma seniseid oskusi ITga ja laienda oma karjäärivõimalusi!", "Õpe sobib töötavale inimesele hästi, kuna õppetöö toimub õhtusel ajal. Õppekava põhineb Eesti Infotehnoloogia Kolledži endisel infosüsteemide analüüsi õppekaval."],
        outcomes: ["Vajadus infosüsteemi analüütikute, eriti aga arhitektide järele on kasvavas trendis kogu maailmas, sealhulgas ka Eestis. OSKA IKT valdkondlikku eksperdikogu hinnangul vajatakse järgneva kümne aasta jooksul juurde 165 tarkvaraanalüütikut ja –arhitekti aastas. Info- ja kommunikatsioonitehnoloogia uute võimaluste juurutamine ja kasutamine erinevates majanduse valdkondades on üks olulisemaid majanduse arenguvõimalusi. IKT võimaldab tõsta traditsiooniliste majandusharude konkurentsivõimet ja aidata kaasa majanduse struktuuri muutmisele.", "Meie juurest saad kaasaegse hariduse ning oskuse enda teadmisi ka edaspidi pidevalt täiendada, kuna valdkond areneb väga kiiresti."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Infoarhitektuur",
                courses: [
                    Course(name: "Andmebaasid", eapCount: 6),
                    Course(name: "Äriinfo modelleerimine", eapCount: 6),
                    Course(name: "Infosüsteemide projektid ja portfellid", eapCount: 6),
                    Course(name: "IT valitsemine ja juhtimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Praktika", eapCount: 6),
                ]
            ),
            Module(
                name: "Rakenduste arhitektuur",
                courses: [
                    Course(name: "Tarkvaratehnika", eapCount: 6),
                    Course(name: "IT arhitektuur", eapCount: 6)
                ]
            ),
            Module(
                name: "Valikained",
                courses: [
                    Course(name: "Programmeerimise algkursus", eapCount: 6),
                    Course(name: "Andmestruktuurid", eapCount: 6),
                    Course(name: "Kasutajaliidese ja rakenduste disain", eapCount: 6),
                    Course(name: "IT süsteemide tugi ja korraldus ettevõttes", eapCount: 6),
                    Course(name: "Mikroteenused ja konteinerarhitektuur", eapCount: 3),
                    Course(name: "Küberturbe arhitektuur", eapCount: 6),
                    Course(name: "Süsteemse käsitluse alused", eapCount: 6),
                    Course(name: "Infosüsteemide analüüs ja projekteerimine edasijõudnutele", eapCount: 3),
                    Course(name: "Andmeanalüüs", eapCount: 6),
                    Course(name: "Masinõppe alused", eapCount: 6),
                    Course(name: "Start-up ettevõtlus", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6)
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
        name: "Küberkaitse",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "kõrgharidus info- ja kommunikatsioonitehnoloogia erialal või kõrgharidus koos vähemalt 1-aastase infotehnoloogiaalase tööstaažiga"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "CV"), Requirements(term: "Erialakatse+ Vestlus")
        ],
        description: ["Cybersecurity ehk küberkaitse õppekava on Tallinna Tehnikaülikooli ja Tartu Ülikooli ühendõppekava, kus tudengid võtavad kursuseid mõlemast ülikoolist. Küberkaitse ja digitaalse ekspertiisi peaerialade õpe toimub valdavalt Tallinnas ning krüptograafia peaeriala õpe toimub valdavalt Tartus.",  "Õppekava eesmärk on anda laiapõhjalised teadmised infosüsteemide turvalisusest ning erialased oskused vastavalt valitud peaerialale. Eriala annab hea ettevalmistuse töötamiseks küberkaitse sektoris, kus edu aluseks on erinevate spetsialistide koostöö. Küberkaitse õppejõududel on reeglina erialane töökogemus era- või avalikus sektoris, hoides õppekava ajakohase ning reaalsetele vajadustele vastava.",  "Küberkaitse", "• Üldsuse huvi küberturbe valdkonna vastu kasvab kogu maailmas. Eesti on tuntud uuenduslike IT-lahenduste igapäevase laialdase kasutuselevõtu poolest. Oleme elektroonilise identiteeti ja e-hääletamise teerajaja ning innukalt kasutusele võtnud mobiiltehnoloogia, internetipanganduse ja e-valitsemise lahendused. Nii paljude digitaalsete lahenduste ja ulatusliku interneti kasutuse puhul on oluline tähelepanu pöörata ka turvalisusele.", "Digitaalne ekspertiis", "• Digitaalne ekspertiis on kohtuekspertiisi haru, mis hõlmab digitaalsetes seadmetes leiduva materjali kogumist ja uurimist, sageli seoses arvutikuritegudega. See valdkond on muutumas kriitiliseks nii andmeturbe kui ka õiguskaitse seisukohast ning on seotud jälitustegevuse ja jälgimistõrje vahelise keeruka koostoimimisega.", "Krüptograafia", "• Krüptograafia on tänapäeva omavahel ühendatud maailma toimimiseks hädavajalik, kuna see on vajalik privaatsuse, andmetervikluse jm. tagamiseks. Krüptograafiaspetsialistid peavad töötama välja uusi viise andmete turvaliseks hoidmiseks ning tagama, et olemasolevad lahendused oleksid endiselt piisavalt tugevad."],
        outcomes: ["Eestil on hea maine ja positsioon küberkaitse valdkonnas, sealhulgas turvaliste toodete ja teenuste arendamisel globaalsele turule: vaja on vaid ettevõtlikke inimesi! Samas on küberkaitse alal suur puudus kvalifitseeritud tööjõust.", "Küberkaitse peaeriala lõpetaja on võimeline töötama ametikohtadel nagu infoturbejuht, turvaanalüütik, turvatestija, turvasuunitlusega tarkvaraarendaja, süsteemi- või võrguadministraator.", "Digitaalse ekspertiisi peaeriala lõpetaja võimalikud ametipositsioonid on küberturbeintsidendi haldur, digitaalse ekspertiisi spetsialist või projekti- ehk tiimijuht.", "Edasiõppimine doktorantuuris nelja-aastase õppekava alusel. Õppekava otsene jätkukava TalTechis on info- ja kommunikatsioonitehnoloogia (IAQD). Doktoriõpinguid võib samuti jätkata mõnel muul lähedasel doktorikaval mõnes välisülikoolis."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation: [.tallinn, .tartu],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Programmeerimine", eapCount: 6),
                    Course(name: "Süsteemihaldus", eapCount: 6),
                    Course(name: "Võrgutehnoloogia I", eapCount: 6),
                    Course(name: "Eesti keel ja kultuur", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Küberturbe inimlikud aspektid", eapCount: 6),
                    Course(name: "Küberturbe õiguslikud aspektid", eapCount: 6),
                    Course(name: "Küberturbe juhtimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Küberturbe tehnoloogiad I", eapCount: 6),
                            Course(name: "Küberturbe tehnoloogiad II", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Küberkaitse",
                courses: [
                    Course(name: "Lõputöö seminar", eapCount: 6),
                    Course(name: "Krüptograafia", eapCount: 6),
                    Course(name: "Küberintsidentide haldamine", eapCount: 6),
                    Course(name: "Küberkaitse uurimismeetodid", eapCount: 3),
                    Course(name: "Turvalise tarkvaradisaini põhimõtted", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Meeskonnatöö - projekt", eapCount: 6),
                            Course(name: "Arvutivõrkude turvalisus", eapCount: 6),
                            Course(name: "Võrguprotokollide disain", eapCount: 6),
                            Course(name: "Infosüsteemide ründed ja kaitse", eapCount: 6),
                            Course(name: "Operatsioonisüsteemide turvalisus", eapCount: 6),
                            Course(name: "Küberkaitse erikursus I", eapCount: 3),
                            Course(name: "Küberkaitse erikursus II", eapCount: 3),
                            Course(name: "Arvutiteaduse matemaatika", eapCount: 6),
                            Course(name: "Krüptograafia eriteemad", eapCount: 6),
                            Course(name: "Mobiiltelefoni digitaalne ekspertiis", eapCount: 6),
                            Course(name: "Strateegiline kommunikatsioon ja küberjulgeolek", eapCount: 6),
                            Course(name: "Andmekaeve", eapCount: 6),
                            Course(name: "Võrgutehnoloogia II", eapCount: 6),
                            Course(name: "Monitooringulahendused küberkaitses", eapCount: 6),
                            Course(name: "Praktika (praktika)", eapCount: 6),
                            Course(name: "Privaatsust säilitavad tehnoloogiad", eapCount: 6),
                            Course(name: "Juhtmevabad tehnoloogiad ja turvalisus", eapCount: 6),
                            Course(name: "Sissejuhatus Blockchaini tehnoloogiasse", eapCount: 3),
                            Course(name: "Sissejuhatus plokiahela tehnoloogiasse: Praktiline töö", eapCount: 3),
                            Course(name: "Krüptoloogia II", eapCount: 6),
                            Course(name: "Krüptograafilised protokollid", eapCount: 6),
                            Course(name: "Turvalise programmeerimise meetodid", eapCount: 3),
                            Course(name: "Turvalise programmeerimise meetodid: projektitöö", eapCount: 3),
                            Course(name: "Rakenduslik krüptograafia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Digitaalne ekspertiis",
                courses: [
                    Course(name: "Lõputöö seminar", eapCount: 6),
                    Course(name: "Krüptograafia", eapCount: 6),
                    Course(name: "Küberintsidentide haldamine", eapCount: 6),
                    Course(name: "Arvutite ja seadmete analüüs", eapCount: 6),
                    Course(name: "Arvutivõrgu ja võrguliikluse analüüs", eapCount: 6),
                    Course(name: "Küberkaitse uurimismeetodid", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Meeskonnatöö - projekt", eapCount: 6),
                            Course(name: "Arvutivõrkude turvalisus", eapCount: 6),
                            Course(name: "Võrguprotokollide disain", eapCount: 6),
                            Course(name: "Infosüsteemide ründed ja kaitse", eapCount: 6),
                            Course(name: "Operatsioonisüsteemide turvalisus", eapCount: 6),
                            Course(name: "Küberkaitse erikursus I", eapCount: 3),
                            Course(name: "Küberkaitse erikursus II", eapCount: 3),
                            Course(name: "Arvutiteaduse matemaatika", eapCount: 6),
                            Course(name: "Krüptograafia eriteemad", eapCount: 6),
                            Course(name: "Mobiiltelefoni digitaalne ekspertiis", eapCount: 6),
                            Course(name: "Strateegiline kommunikatsioon ja küberjulgeolek", eapCount: 6),
                            Course(name: "Andmekaeve", eapCount: 6),
                            Course(name: "Võrgutehnoloogia II", eapCount: 6),
                            Course(name: "Monitooringulahendused küberkaitses", eapCount: 6),
                            Course(name: "Praktika (praktika)", eapCount: 6),
                            Course(name: "Privaatsust säilitavad tehnoloogiad", eapCount: 6),
                            Course(name: "Juhtmevabad tehnoloogiad ja turvalisus", eapCount: 6),
                            Course(name: "Sissejuhatus Blockchaini tehnoloogiasse", eapCount: 3),
                            Course(name: "Sissejuhatus plokiahela tehnoloogiasse: Praktiline töö", eapCount: 3),
                            Course(name: "Turvalise tarkvaradisaini põhimõtted", eapCount: 6),
                            Course(name: "Krüptoloogia II", eapCount: 6),
                            Course(name: "Krüptograafilised protokollid", eapCount: 6),
                            Course(name: "Turvalise programmeerimise meetodid", eapCount: 3),
                            Course(name: "Turvalise programmeerimise meetodid: projektitöö", eapCount: 3),
                            Course(name: "Rakenduslik krüptograafia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Krüptograafia",
                courses: [
                    Course(name: "Privaatsust säilitavad tehnoloogiad", eapCount: 6),
                    Course(name: "Küberkaitse uurimismeetodid", eapCount: 3),
                    Course(name: "Algoritmide kavandamine ja analüüs", eapCount: 6),
                    Course(name: "Krüptoloogia I", eapCount: 6),
                    Course(name: "Rakenduslik krüptograafia", eapCount: 6),
                    Course(name: "Krüptograafia uurimisseminar", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Võrguprotokollide disain", eapCount: 6),
                            Course(name: "Küberkaitse erikursus I", eapCount: 3),
                            Course(name: "Küberkaitse erikursus II", eapCount: 3),
                            Course(name: "Krüptograafia eriteemad", eapCount: 6),
                            Course(name: "Praktika (praktika)", eapCount: 6),
                            Course(name: "Sissejuhatus kvantalgoritmidesse", eapCount: 6),
                            Course(name: "Juhtmevabad tehnoloogiad ja turvalisus", eapCount: 6),
                            Course(name: "Sissejuhatus Blockchaini tehnoloogiasse", eapCount: 3),
                            Course(name: "Sissejuhatus plokiahela tehnoloogiasse: Praktiline töö", eapCount: 3),
                            Course(name: "Hajussüsteemid", eapCount: 6),
                            Course(name: "Sissejuhatus kodeerimisteooriasse", eapCount: 6),
                            Course(name: "Krüptoloogia II", eapCount: 6),
                            Course(name: "Krüptograafilised protokollid", eapCount: 6),
                            Course(name: "Turvalise programmeerimise meetodid", eapCount: 3),
                            Course(name: "Turvalise programmeerimise meetodid: projektitöö", eapCount: 3),
                            Course(name: "Kvantkrüptograafia", eapCount: 3),
                            Course(name: "Matemaatika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Meditsiinitehnika ja –füüsika",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "CV"),
            Requirements(term: "Vestlus")
        ],
        description: ["Meditsiinitehnika ja -füüsika õppekava on ainus vastava eriala spetsialistide õppekava Eestis, mis annab nii meditsiinitehnilist kui meditsiini-füüsika-alust haridust.", "Õppekava ühendab insenerialad, füüsika, bioloogia, meditsiini ja IT-valdkonnad, arvestades kaasaegse digitaliseeritud tervishoiusüsteemi vajadusi. Tegemist on inseneriõppega, mille eriala vilistlastelt oodatakse innovaatiliste tehniliste lahenduste väljamõtlemist, mida saab kasutada ka igapäevaelus. Potentsiaal on töötada tervishoiusüsteemis, teaduses, meditsiinitehnika ettevõtetes, IT-lahendusi pakkuvates firmades ning tööstuses.", "Magistrant saab nii meditsiinifüüsika kui ka meditsiinitehnika teadmised. Valdkondade kaalu saab valikainete abil suunata. Näiteks haiglates vastutavad meditsiinifüüsikud erinevate kuvamis- ja terapeutiliste meditsiiniseadmete hankimise, hoolduse ja ohutuse eest. Meditsiinitehnika insenerid tegelevad meditsiinitehnika funktsionaaldiagnostika ja intensiivravi poolega, näiteks nagu füsioloogiliste mõõtmiste, hingamis-, EKG- (südame elektrilise aktiivsuse mõõtmise), EEG- (peaaju bioelektrilisi võnkumisi mõõte-) ja muu sarnase aparatuuriga."],
        outcomes: ["Magistrant saab kompaktselt nii meditsiinifüüsika kui ka meditsiinitehnika teadmised. Valdkondade kaalu saab valikainete abil suunata. Näiteks haiglates vastutavad meditsiinifüüsikud erinevate kuvamis- ja terapeutiliste meditsiiniseadmete hankimise, hoolduse ja ohutuse eest. Meditsiinitehnika insenerid tegelevad meditsiinitehnika funktsionaaldiagnostika ja intensiivravi poolega, näiteks nagu füsioloogiliste mõõtmiste, hingamis-, EKG-, EEG- ja muu sarnase aparatuuriga.", "Nii Eesti kui ka maailma tervishoiusüsteem seisab tulevikus suurte väljakutsete ees: elanike ootused süsteemile on tõusnud, ressursid on piiratud, rahvastik vananeb ja kahaneb. Meie vilistlane on valmis loovaks ja iseseisvaks tööks tööstuses, teaduses, era- või riigisektoris."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Digitaalne signaalitöötlus MatLabis", eapCount: 6),
                    Course(name: "Andmeedastusstandardid ja -formaadid tervishoius", eapCount: 6),
                    Course(name: "Elektromagnetväljad ja –lained meditsiinitehnikas", eapCount: 6),
                    Course(name: "Biomeditsiiniseadmed", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Elektroonika", eapCount: 6),
                            Course(name: "Meditsiinitehnoloogia korraldus", eapCount: 6),
                            Course(name: "Inimese anatoomia ja haiguseõpetus", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala",
                courses: [
                    Course(name: "Biooptika", eapCount: 6),
                    Course(name: "Tehisintellekt tervishoius", eapCount: 6),
                    Course(name: "Erialased seminarid ja ettekanded", eapCount: 6),
                    Course(name: "Piltdiagnostika füüsikalised alused", eapCount: 6),
                    Course(name: "Praktika (praktika)", eapCount: 6),
                    Course(name: "Meditsiinis kasutatavad kiirgused", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Sissejuhatus meditsiinistatistikasse", eapCount: 6),
                            Course(name: "Meeskonna projektitöö", eapCount: 6),
                            Course(name: "Traadita sensorside alused tervisetehnoloogiates", eapCount: 6),
                            Course(name: "Laboriseadmed digitaalmeditsiinis", eapCount: 6),
                            Course(name: "Kiirgusbioloogia ja kiiritusravi alused", eapCount: 6),
                            Course(name: "Bioelektromagnetism", eapCount: 6),
                            Course(name: "Biomeditsiinitehnika ja meditsiinifüüsika - projekt", eapCount: 6),
                            Course(name: "Kvaliteet radioloogias", eapCount: 6),
                            Course(name: "Projektijuhtimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "E-tervis",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "CV + Vestlus")
        ],
        description: ["Tervishoid on läbimas tehnoloogilist murrangut. Inimeste ootused tervisesüsteemile ja vajadused teenuste järele kasvavad pidevalt. Tehnoloogia pakub võimalusi tervishoidu parandada – muuta seda kättesaadavamaks ja kvaliteetsemaks. Samas ei ole digitaalsed lahendused veel piisavat kasutust leidnud ning seda on vaja parandada. Tervishoiutehnoloogia õppekava koolitabki tervishoiu muudatuste juhte – inimesi, kes oskavad uusi tehnoloogiaid ja digitaalseid lahendusi tervishoius analüüsida, välja töötada ja edukalt kasutusse viia.", "Rahvusvaheline õppekava annab magistriüliõpilasele interdistsiplinaarsed teadmised ja oskused innovatsioonist ning tehnoloogiliste ja digitaalsete lahenduste juurutamisest. See eriala sobib kõigile bakalaureuse- või kõrgema kraadi omanikele, kellel on soov panustada tervishoiu arendamisse uute tehnoloogiate ja digilahenduste abil Eestis ja mujal maailmas.", "Euroopas ainulaadne õppekava annab laia ringi oskusteadmisi tervishoiust, ITst, meditsiinist, majandusest, õigusteadusest, riigikorraldusest, ettevõtlusest ja muudest tervishoiu digitaliseerimisega seotud teemadest. Õppe läbinu teab tervishoius kasutatavate infotehnoloogiliste rakenduste eesmärke, nõudeid ja funktsionaalsust, samuti saab ta teadmised meditsiini info töötlemise nõuetest. Õpid, millised tervishoiu osapooled on uute tehnoloogiate rakendamisel olulised ning millised on uued tervishoiu rahastamise- ja ärimudelid, mis innovatsiooni rakendamist toetavad. Arendad oskuseid, kuidas uusi tehnoloogiaid ja digitaalseid lahendusi tervishoius analüüsida, välja töötada ja kasutusse viia."],
        outcomes: ["Euroopas ainulaadne õppekava annab laia ringi oskusteadmisi tervishoiust, ITst, meditsiinist, majandusest, õigusteadusest, riigikorraldusest, ettevõtlusest ja muudest tervishoiu digitaliseerimisega seotud teemadest. Õppe läbinu teab tervishoius kasutatavate infotehnoloogiliste rakenduste eesmärke, nõudeid ja funktsionaalsust, samuti saab ta teadmised meditsiini info töötlemise nõuetest. Õpid, millised tervishoiu osapooled on uute tehnoloogiate rakendamisel olulised ning millised on uued tervishoiu rahastamise- ja ärimudelid, mis innovatsiooni rakendamist toetavad. Arendad oskuseid, kuidas uusi tehnoloogiaid ja digitaalseid lahendusi tervishoius analüüsida, välja töötada ja kasutusse viia.","Tervisetehnoloogia on Eesti riiklikes strateegiates üks enim kasvupotentsiaali omav valdkond. E-tervise ja digitaalsete tehnoloogiate kasvava kasutuselevõtu tõttu on tööturg lai ning töövõimalusi leiab nii Eestis kui välismaal, nii riigi kui erasektoris kui ka startupides. Varasemad lõpetajad töötavad tehnoloogiafirmades, riigiasutustes, tervishoiuteenuse pakkujate juures ning paljud on loonud ka ise uusi iduettevõtteid. Koostöö erinevate tervishoiusektori organisatsioonidega toimub kogu õppeperioodi vältel. Õppekava praktilist kogemust toetab õppepraktika ülikooli partnerite, iduettevõtete või riigiasutuste juures nii Eestis kui teistes riikides. Enamus õppetööst toimub ettevõtlus- ja innovatsioonikeskuses Mektory ning õppetöö käigus puutud erinevate interaktiivsete vormide kaudu kokku valdkonna ettevõtete ja riigiasutustega."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Teadustöö kavandamine ja magistriseminar I", eapCount: 6),
                    Course(name: "Teadustöö kavandamine ja magistriseminar II", eapCount: 6),
                    Course(name: "Meditsiini õigus ja eetika", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: E-tervise tehnoloogiad",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Põhiõpe",
                        courses: [
                            Course(name: "E-tervise alused ja rahvusvaheline kogemus", eapCount: 6),
                            Course(name: "Tervisesüsteemid 21. sajandil", eapCount: 6),
                            Course(name: "Hindamine tervishoius", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Meditsiiniline kuvamine ja signaalid", eapCount: 6),
                            Course(name: "Koosvõime ja kvaliteedijuhtimine tervishoius", eapCount: 6),
                            Course(name: "Tervishoius kasutatavad infosüsteemid ja analüüs", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Epidemioloogia", eapCount: 3),
                            Course(name: "Inimese anatoomia ja haiguseõpetus", eapCount: 6),
                            Course(name: "Semestriprojekt", eapCount: 6),
                            Course(name: "Muudatuste juhtimine tervishoiuasutuses", eapCount: 6),
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Tehnoloogia, ühiskond ja tulevik", eapCount: 6),
                            Course(name: "Inimõigused, eetika ja tehnoloogia", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: E-töötervishoid",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Põhiõpe",
                        courses: [
                            Course(name: "E-tervise alused ja rahvusvaheline kogemus", eapCount: 6),
                            Course(name: "Tervishoius kasutatavad infosüsteemid ja analüüs", eapCount: 6),
                            Course(name: "E-töötervis ja -ohutus", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "E-töötervishoid",
                        courses: [
                            Course(name: "Töökeskkonna juhtimine ja ergonoomika", eapCount: 6),
                            Course(name: "Keskkonna mõju inimese käitumis- ja otsustusprotsessidele", eapCount: 6),
                            Course(name: "Riskianalüüs ja riskijuhtimine", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Epidemioloogia", eapCount: 3),
                            Course(name: "Inimese anatoomia ja haiguseõpetus", eapCount: 6),
                            Course(name: "Tervisesüsteemid 21. sajandil", eapCount: 6),
                            Course(name: "Hindamine tervishoius", eapCount: 6),
                            Course(name: "Muudatuste juhtimine tervishoiuasutuses", eapCount: 6),
                            Course(name: "Füüsikaline töökeskkond", eapCount: 6),
                            Course(name: "Psühhosotsiaalsed riskid ja tööheaolu", eapCount: 6),
                            Course(name: "Meditsiini õigus ja eetika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Magistriõppepraktika", eapCount: 6),
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6)
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
        name: "Äriinfotehnoloogia",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "kõrgharidus info- ja kommunikatsioonitehnoloogia või sellele lähedasel erialal"),
            Requirements(term: "Kaalutud keskhinne vähemalt 3, lõputöö hinne vähemalt 3. Kui keskhinne või lõputöö hinne ei ole vähemalt 3, siis on võimalik taotleda vastuvõttu vähemalt 3-aastasest erialasest töökogemusest õpitu abil, motivatsioonikirja ja CV alusel.")
        ],
        description: ["Homsed IT-juhid ja spetsialistid vajavad teadmisi, mis aitavad neil ettevõtte eesmärkide saavutamiseks infotehnoloogiat uuenduslikult rakendada. Äriinfotehnoloogia magistriõppekava valmistabki ette just selliseid IT-vanemspetsialiste.", "Äriinfotehnoloogid suudavad nii majanduse kui ka IT valdkonda tundes analüüsida, modelleerida, mõõta, optimeerida ja arvutiseerida ettevõtte äriprotsesse; suudavad pakkuda innovaatilisi infotehnoloogilisi lahendusi ettevõtte äriprotsesside kaasajastamiseks; on võimelised kavandama, planeerima ja juhtima infosüsteemide arendusprojekte, lisaks on neil potentsiaali areneda ettevõtte IT tippjuhiks.", "Õppekaval õpetatavad ained on eesti või inglise keeles. 2018. sügisel alustasime töökohapõhise õppe pilootprojektiga. Töökohapõhine õpe tähendab seda, et üliõpilane saab õpiväljundite saavutamiseks 50% oma õppekoormusest sooritada ettevõttes reaalseid tööülesandeid täites. Kõik täpsed ülesanded, eesmärgid ja tingimused lepitakse kokku õpingute käigus. Esialgselt on tööandjatena kaasatud ettevõtted Helmes, Nortal, Swedbank, SEB, Telia ja Ericsson. Uks ühinemiseks on avatud ka kõikidele teistele asutustele ja ettevõtetele.", "Äriinfotehnoloogiat (andmeanalüüsi ja arukate süsteemide peaeriala) on võimalik õppida ka Virumaa Kolledžis (Kohtla-Järvel). Õppetöö asukoha ja peaeriala valiku saab teha SAISis avaldust täites."],
        outcomes: ["Ärianalüüs ja arhitektuur:", "Peaeriala lõpetajad tunnevad ettevõtte äriprotsesside analüüsi, kavandamise, ümberstruktureerimise, automatiseerimise ja juhtimise aspekte ning tehnikaid. Lõpetajad on võimelised juurutama ja koordineerima infosüsteemide ja teenuste arendus- ja haldusprotsesse. Võimalikud tulevased töökohad IKT sektoris ja mujal on protsessijuht, kvaliteedijuht, rakenduste juht, protsessianalüütik, versioonihaldur, ärianalüütik, äriarhitekt.", "Infosüsteemide analüüs ja arhitektuur:", "Peaeriala lõpetajad tunnevad infosüsteemide analüüsi ja arhitektuuri olulisi aspekte ja tehnikaid. Lõpetajad on võimelised tegelema infosüsteemide ja tarkvara programmide kavandamise ja arendamisega. Võimalikud tulevased töökohad on süsteemianalüütik, tarkvaraanalüütik, süsteemi disainer, süsteemiarhitekt, tarkvaraarhitekt, arendusjuht."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Matemaatika",
                courses: [
                    Course(name: "Modelleerimine ja identifitseerimine", eapCount: 6),
                    Course(name: "Täppismeetodid otsustuste vastuvõtmisel", eapCount: 6),
                    Course(name: "Täppismeetodid otsustuste vastuvõtmisel II", eapCount: 6),
                    Course(name: "Petri võrgud", eapCount: 6),
                    Course(name: "Graafiteooria", eapCount: 6),
                    Course(name: "Keerukusteooria", eapCount: 6),
                    Course(name: "Arvutamisteooria", eapCount: 6),
                    Course(name: "Matemaatika arvutiteaduses", eapCount: 6),
                    Course(name: "Teadmiste formaliseerimine", eapCount: 6),
                    Course(name: "Mitmemõõtmeline statistiline analüüs", eapCount: 6),
                    Course(name: "Operatsioonianalüüs", eapCount: 6),
                    Course(name: "Matemaatilised mudelid", eapCount: 6)
                ]
            ),
            Module(
                name: "Ettevõtlus",
                courses: [
                    Course(name: "Ettevõtlus ja ettevõttemajandus", eapCount: 6),
                    Course(name: "Teadustöö alused ja akadeemiline eneseväljendamine", eapCount: 6),
                    Course(name: "Õigusõpetus IT juhtidele", eapCount: 6),
                    Course(name: "Tehnoloogia kultuurilised, sotsiaalsed ja eetilised aspektid", eapCount: 6),
                    Course(name: "Majanduse põhikontseptsioonid", eapCount: 6),
                    Course(name: "Finantsjuhtimine", eapCount: 6),
                    Course(name: "Digitaalne tootmine", eapCount: 6),
                    Course(name: "Strateegiline juhtimisarvestus ja kulujuhtimine", eapCount: 6),
                    Course(name: "Majandusarvestus", eapCount: 6),
                    Course(name: "Sotsiaalne ettevõtlus", eapCount: 6),
                    Course(name: "Ettevõtte loomine", eapCount: 6),
                    Course(name: "Teaduse kommertsialiseerimine", eapCount: 6),
                    Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6),
                    Course(name: "Ökodisain", eapCount: 6),
                    Course(name: "Raha, finantsinstitutsioonid ja turud", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Ärianalüüs ja -arhitektuur",
                courses: [
                    Course(name: "Magistriseminar I", eapCount: 6),
                    Course(name: "Magistriseminar II", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Ettevõtte modelleerimine", eapCount: 6),
                            Course(name: "Agentorienteeritud analüüs ja simulatsioon", eapCount: 6),
                            Course(name: "Küberfüüsikalised süsteemid", eapCount: 6),
                            Course(name: "Proaktiivtehnoloogiad", eapCount: 6),
                            Course(name: "Telekommunikatsiooniteenuste arendus", eapCount: 6),
                            Course(name: "Nano- ja võtmetehnoloogiad", eapCount: 6),
                            Course(name: "Infosüsteemide integratsioon", eapCount: 6),
                            Course(name: "Tarkvara protsessid ja kvaliteet", eapCount: 6),
                            Course(name: "Intelligentsed süsteemid", eapCount: 6),
                            Course(name: "Ettevõtte transformeerimine", eapCount: 6),
                            Course(name: "Töökohapõhine projekt I (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt II (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt III (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt IV (praktika)", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Infosüsteemide analüüs ja arhitektuur",
                courses: [
                    Course(name: "Magistriseminar I", eapCount: 6),
                    Course(name: "Magistriseminar II", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tarkvara arhitektuur ja disain", eapCount: 6),
                            Course(name: "Ettevõtte modelleerimine", eapCount: 6),
                            Course(name: "Agentorienteeritud analüüs ja simulatsioon", eapCount: 6),
                            Course(name: "Telekommunikatsiooniteenuste arendus", eapCount: 6),
                            Course(name: "Arendamine Progress DB ja ABL vahenditega", eapCount: 6),
                            Course(name: "Infosüsteemide integratsioon", eapCount: 6),
                            Course(name: "Tarkvara protsessid ja kvaliteet", eapCount: 6),
                            Course(name: "Intelligentsed süsteemid", eapCount: 6),
                            Course(name: "Ettevõtte transformeerimine", eapCount: 6),
                            Course(name: "Töökohapõhine projekt I (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt II (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt III (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt IV (praktika)", eapCount: 6),
                            Course(name: "Algoritmide ja andmestruktuuride erikursus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Andmeanalüüs ja arukad süsteemid",
                courses: [
                    Course(name: "Magistriseminar I", eapCount: 6),
                    Course(name: "Magistriseminar II", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Asjade internet tööstusele", eapCount: 6),
                            Course(name: "Andmeside tehnoloogiad", eapCount: 6),
                            Course(name: "Tarkade süsteemide projekteerimine", eapCount: 6),
                            Course(name: "Protsesside juhtimine", eapCount: 6),
                            Course(name: "Automaatikasüsteemide vahendid", eapCount: 6),
                            Course(name: "Algoritmika andmeteaduses", eapCount: 6),
                            Course(name: "Modelleerimine ja identifitseerimine", eapCount: 6),
                            Course(name: "Robootika", eapCount: 6),
                            Course(name: "Andmekaeve suurandmetest", eapCount: 6),
                            Course(name: "Rakenduslik masinõpe", eapCount: 6),
                            Course(name: "Andmete visualiseerimine", eapCount: 6),
                            Course(name: "Andmekaevandamine", eapCount: 6),
                            Course(name: "Tekstikaeve", eapCount: 6),
                            Course(name: "Töökohapõhine projekt I (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt II (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt III (praktika)", eapCount: 6),
                            Course(name: "Töökohapõhine projekt IV (praktika)", eapCount: 6),
                            Course(name: "Tehisintellekti ja masinõppe alused", eapCount: 6),
                            Course(name: "Tehisnägemine", eapCount: 6),
                            Course(name: "Keskkonna 3D modelleerimine", eapCount: 6),
                            Course(name: "Mehhatroonika ja arukate süsteemide projekt", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Infotehnoloogia juhtimine",
                courses: [
                    Course(name: "Asjade internet tööstusele", eapCount: 6),
                    Course(name: "Arukad juhtimissüsteemid", eapCount: 6),
                    Course(name: "Inimese ja arvuti interaktsioon", eapCount: 6),
                    Course(name: "IT ülalhoid", eapCount: 6),
                    Course(name: "IT projektijuhtimine", eapCount: 6),
                    Course(name: "Ettevõtte äriarhitektuur", eapCount: 6),
                    Course(name: "IT turvalisus", eapCount: 6),
                    Course(name: "Äriinfosüsteemid", eapCount: 6),
                    Course(name: "Infoturbe riskianalüüsi alused", eapCount: 6),
                    Course(name: "Infosüsteemide arendusprojekti praktika", eapCount: 6),
                    Course(name: "E-riigi infotehnoloogilised lahendused", eapCount: 6),
                    Course(name: "IT Strateegia", eapCount: 6),
                    Course(name: "Andme- ja ärianalüütika", eapCount: 6),
                    Course(name: "Andmebaasid II", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 30)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 18)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Merendus",
        level: .masters,
        type: .mereAkadeemia,
        requirements: [
            Requirements(term: "Kõrgharidus Lähedasel Erialal"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "Vestlus")
        ],
        description: ["Kui sul on soov täiendada oma teadmisi tasemeõppes ning omandada magistrikraad, saada mitmekülgseks spetsialistiks, kes suudab pakkuda praktilistele probleemidele tulutoovaid lahendusi, parandada konkurentsivõimet tööturul ja olla kursis uute ideedega, siis oled oodatud merenduse magistriõppesse.", "Merenduse erialal saad laialdased teadmised, et töötada merenduse valdkonna juhtivatel positsioonidel. Erialal on võimalik valida kahe suuna vahel: meretranspordi juhtimine või laeva tehniline ekspluatatsioon ja laevajuhtimine. Erialal omandad teadmised mereõigusest kuni sadamate ekspluatatsioonini. Suur osakaal on ettevõtluse ja äri- ning finantsjuhtimise valdkonna ainetel. Lõpetajana on sul vajalikud oskused kas või laevandusfirma juhtimiseks."],
        outcomes: ["Merenduse õppekava eesmärgiks on võimaldada merendusvaldkonna spetsialistidel süvendada erialaseid teadmisi ja kutsealast pädevust. Lõpetajana on sul head eeldused tööks juhtivatel ametikohtadel merenduses, nii avalikus sektoris kui ka ettevõtluses; oskused merendusettevõtte arendamiseks ja juhtimiseks. Samuti on soovi korral võimlik jätkata doktoriõppes."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/asutused/mereakadeemia/",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Finantsjuhtimine", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnakaitse ja säästev areng", eapCount: 6),
                            Course(name: "Äriinfosüsteemid", eapCount: 6),
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Ettevõtte kasvu juhtimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6),
                    Course(name: "Teadustöö metoodika ja magistriseminar", eapCount: 6),
                    Course(name: "Merekeskkonna reostuse vältimine ja reostustõrje ning meresõiduohutuse juhtimissüsteemid", eapCount: 6)
                ]
            ),
            Module(
                name: "Põhieriala: Laeva tehniline ekspluatatsioon ja laevajuhtimine",
                courses: [
                    Course(name: "Laeva meresõiduomadused ja laeva juhtimise optimeerimine", eapCount: 6),
                    Course(name: "Merendusklaster ja laevanduse ökonoomika", eapCount: 6),
                    Course(name: "Töö- ning pedagoogiline praktika (praktika)", eapCount: 6),
                    Course(name: "Ohutuse ja turvalisuse juhtimine laevanduses ning riskide haldamine merenduses", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Transport tarneahelas", eapCount: 6),
                            Course(name: "Laeva remondi korraldamine ja kaasaegsed laevaremondi tehnoloogiad", eapCount: 6),
                            Course(name: "Laevandusfirma juhtimine ja kommertstegevus", eapCount: 6),
                            Course(name: "Merenduse õigus", eapCount: 6),
                            Course(name: "Laevade automatiseerimine ja digitaliseerimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Põhieriala: Meretranspordi juhtimine",
                courses: [
                    Course(name: "Laevandusfirma juhtimine ja kommertstegevus", eapCount: 6),
                    Course(name: "Merenduse õigus", eapCount: 6),
                    Course(name: "Sadamate ekspluatatsioon ja juhtimise alused", eapCount: 6),
                    Course(name: "Töö- ning pedagoogiline praktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Majanduskeskkond ja logistika", eapCount: 6),
                            Course(name: "Logistilised süsteemid", eapCount: 6),
                            Course(name: "Transport tarneahelas", eapCount: 6),
                            Course(name: "Merendusklaster ja laevanduse ökonoomika", eapCount: 6),
                            Course(name: "Ohutuse ja turvalisuse juhtimine laevanduses ning riskide haldamine merenduses", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 12)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Elektroonika ja kommunikatsioonitehnoloogiad",
        level: .masters,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "kõrgharidus lähedases valdkonnas"),
            Requirements(term: "Motivatsioonikiri"),
            Requirements(term: "CV"),
            Requirements(term: "Vestlus")
        ],
        description: ["Iga IT süsteem vajab toimimiseks andmeid. Elektroonika muudab erinevad reaalse maailma nähtused, protsessid ja sündmused digikujul arusaadavateks andmeteks. Kommunikatsioonitehnoloogiate ülesandeks on need andmed kasutajale kättesaadavaks teha.", "Elektroonika ja kommunikatsioonitehnoloogiate spetsialistid osakvad luua arukaid elektroonseid süsteeme ja nende komponente, tunnevad süsteemide ülesehituse põhimõtteid ja süsteemidevahelise kommunikatsiooni tehnikat.", "Õppekaval on kolm peaeriala:", "• Elektroonika keskendub kaasaegsete elektroonikasüsteemide väljatöötamisele. Olulised erialaained on näiteks sardsüsteemid (ingl k embedded systems) ja raadiosageduslik elektroonika.", "• Kommunikatsioonitehnoloogiad põhinevad suuresti signaalitöötlusel, sellele lisanduvad telekommunikatsiooni teooria ning kaasaegsete fiiber- ja raadiovõrkude tehnoloogiad.", "• Kaasaegsete nanomaterjalide ja pooljuhtelektroonika peaeriala on suunatud eeskätt teadus- ja arendustööle orienteeritud tudengitele andes võimaluse õppida pooljuhtmaterjale, mikro- ja nanoelektroonikat ning nende rakendusi sensoorikas, nt labor mikrokiibil (ing k lab-on chip).", "Tuleviku nutikad tootmisprotsessid, tooted ja ärimudelid vajavad juba täna spetsialiste, kes suudaksid neid arendada ja tööle panna nii, et tulemus saavutatakse kiiresti ja võimalikult tõhusalt. Selleks tuleb luua terviklik süsteem, mille osad koguvad teavet ja vahetavad seda omavahel automaatselt ning suudavad muutustele iseseisvalt reageerida.", "Elektroonika ja kommunikatsioonitehnoloogiate eriala lõpetanu leiab selliste süsteemide komponentide ja nendevaheliste sidevõrkude arendajana rakendust idufirmadest kuni suurettevõteteni välja."],
        outcomes: ["Õppekava lõpetanu:", "Loob, analüüsib ja arendab tarku elektroonika- ja sidesüsteeme ning nende komponente kasutades seejuures elektrilisi ja füüsikalisi printsiipe ning sidetehnoloogia ja signaalitöötluse meetodeid", "Omab funktsionaalset ülevaadet elektroonika ja sidetehnoloogiate põhialustest, hetkeseisust, rakendusvõimalustest ja võimalikest arengusuundadest", "Oskab näha interdistsiplinaarseid seoseid, formuleerida peaerialaga seonduvaid lähteülesandeid ning neid sobivate tehnoloogiate abil loovalt lahendada ning modelleerida ja/või hinnata võimalikke tulemusi", "Tunneb ettevõtluse ja juhtimise aluseid ning tööstuse toimimisviise, rakendab neid inseneritöö korraldamisel elektroonika, telekommunikatsiooni ja pooljuhtide/nanomaterjalide valdkondades", "On valmis meeskonnatööks erialast kvalifikatsiooni nõudval ametikohal ja väljendama oma ideid ja lahendusi suuliselt, kirjalikult ja erialases dokumentatsioonis", "On võimeline iseseisvalt töötama spetsialistina nii kodumaistes kui rahvusvahelistes firmades, osalema uurimistöös ja jätkama õpinguid doktoriõppes", "Mõistab inseneri vastutuse erinevaid aspekte inimese, looduse ja tehnoloogia kestlikus kooseksisteerimises."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/?id=146605",
        spots: 0,
        duration: 2,
        studyLocation:  [.tallinn],
        eap: 120,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Eesti keel ja kultuur", eapCount: 6),
                            Course(name: "Inglise teaduskeel", eapCount: 6),
                            Course(name: "Kriitiline mõtlemine, eetika ja teaduslik kirjaoskus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Elektroonika",
                courses: [
                    Course(name: "Sardsüsteemid", eapCount: 6),
                    Course(name: "Andmehõivesüsteemid", eapCount: 6),
                    Course(name: "Reaalaja sardsüsteemid", eapCount: 6),
                    Course(name: "Mehhatroonikasüsteemide modelleerimine ja juhtimine", eapCount: 6),
                    Course(name: "Elektroonikasüsteemide disain", eapCount: 6),
                    Course(name: "Raadiosageduslik elektroonika", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kaasaegne robotitehnika", eapCount: 6),
                            Course(name: "Küberturbe põhialused ja juhtimine", eapCount: 6),
                            Course(name: "Süsteemide usaldusväärsus ja veakindlus", eapCount: 6),
                            Course(name: "Mikroskeemid ja simulatsioonid", eapCount: 6),
                            Course(name: "Test ja diagnostika", eapCount: 6),
                            Course(name: "Elektroonika", eapCount: 6),
                            Course(name: "Kognitroonika", eapCount: 6),
                            Course(name: "Impedantsspektroskoopia", eapCount: 6),
                            Course(name: "Tarkade asjade võrgud", eapCount: 6),
                            Course(name: "Signaalitöötluse meetodid ja algoritmid", eapCount: 6),
                            Course(name: "Rakenduslik signaalitöötlus", eapCount: 6),
                            Course(name: "Mikrokontrollerite riist- ja tarkvara", eapCount: 6),
                            Course(name: "Labor kiibil", eapCount: 6),
                            Course(name: "Mikroelektroonika", eapCount: 6),
                            Course(name: "Biosensoorika", eapCount: 6),
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Kommunikatsioonitehnoloogiad",
                courses: [
                    Course(name: "Signaalitöötluse meetodid ja algoritmid", eapCount: 6),
                    Course(name: "Rakenduslik signaalitöötlus", eapCount: 6),
                    Course(name: "Andmehõivesüsteemid", eapCount: 6),
                    Course(name: "Sideteooria", eapCount: 6),
                    Course(name: "Süsteemiaspektid sides", eapCount: 6),
                    Course(name: "Tarkade asjade võrgud", eapCount: 6),
                    Course(name: "Magistriseminar", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kaasaegne robotitehnika", eapCount: 6),
                            Course(name: "Mehhatroonikasüsteemide modelleerimine ja juhtimine", eapCount: 6),
                            Course(name: "Sardsüsteemid", eapCount: 6),
                            Course(name: "Küberturbe põhialused ja juhtimine", eapCount: 6),
                            Course(name: "Süsteemide usaldusväärsus ja veakindlus", eapCount: 6),
                            Course(name: "Mikroskeemid ja simulatsioonid", eapCount: 6),
                            Course(name: "Elektroonika", eapCount: 6),
                            Course(name: "Raadiosageduslik elektroonika", eapCount: 6),
                            Course(name: "Raadiolokatsiooni ja navigatsiooni süsteemid", eapCount: 6),
                            Course(name: "Antennid ja raadiovõrkude planeerimine", eapCount: 6),
                            Course(name: "Telekommunikatsiooni teenuste võrgurakenduste platvormid", eapCount: 6),
                            Course(name: "Multimeedia tehnoloogiad", eapCount: 6),
                            Course(name: "Mikrokontrollerite riist- ja tarkvara", eapCount: 6),
                            Course(name: "Reaalaja sardsüsteemid", eapCount: 6),
                            Course(name: "Labor kiibil", eapCount: 6),
                            Course(name: "Mikroelektroonika", eapCount: 6),
                            Course(name: "Biosensoorika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Projektid ja praktika",
                courses: [
                    Course(name: "Prototüüpimine", eapCount: 6),
                    Course(name: "Tööstuspraktika (praktika)", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                    Course(name: "Mehhatroonika ja arukate süsteemide projekt", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaõpe",
                courses: [
                    Course(name: "Vabaõpe", eapCount: 6)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    )
]
    
