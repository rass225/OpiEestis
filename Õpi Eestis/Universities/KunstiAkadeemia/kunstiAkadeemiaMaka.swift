let kunstiAkadeemiaMaka = [
    majorsMinors(
        name: "Animatsioon",
        level: .masters,
        type: .vabadKunstid,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Animatsiooniosakonnas koolitatakse animafilmitegijaid. Õppe põhieesmärk on valmistada ette rahvusvaheliselt edukaid teoreetiliste teadmiste ja praktiliste oskustega animafilmiloojaid. Nii panustatakse EKAs animatsiooni kui kunstivormi globaalsesse arengusse ja kinnistatakse Eesti kui tugeva animakoolkonnaga riigi maine rahvusvahelisel kultuurimaastikul.", "Animatsioon areneb ja levib kaasajal tänu interneti ja digitaalsete meediumite laialdasele kasutusele jõudsamalt kui kunagi varem. Animatsioonist on saanud massikultuuri üks keskseid vorme, mida võib näha digitaalses ekraanigraafikas, arvutimängudes, muusikavideotes, filmides jm.", "Eesti Kunstiakadeemia animatsiooniosakonna põhieesmärk on koolitada rahvusvaheliselt edukaid teoreetiliste teadmiste ja praktiliste oskustega animafilmiloojaid nii kohalikule kui ka rahvusvahelisele väljale. Animatsiooni kui kunstivormi areng on otseselt seotud tehnoloogia arenguga ning seetõttu pööratakse lisaks stuudioõppele tähelepanu ka valdkonna uusimate tehniliste ja teoreetilise teadmiste omandamisele.", "Animatsiooni õppekava on nii bakalaureuse- kui magistritasemel mõeldud tulevastele animafilmiloojatele. Õppe eesmärgiks on anda akadeemiline kõrgharidus animatsiooni erialal ja ettevalmistus tööks animafilmi režissööri, stsenaristi, kunstniku või animafilmi loomingulise töörühma liikmena. Tutvutakse erialateooriatega ning omandatakse praktilisi oskusi ja tehniline ettevalmistus.", "Bakalaureusetasemel omandatakse erialaga seotud teoreetilised ja praktilised baasoskused. Õpitakse süvendatult animafilmi erinevate etappide läbiviimist ja tehnikaid ning luuakse kaks animafilmi. Bakalaureuseõpe annab süsteemse ettekujutuse animatsioonist kui spetsiifilisest meediavormist ning oskuse selles orienteeruda. Pärast lõpetamist on tudeng pädev rakendama omandatud oskusi originaalloomingus, tegutsema animafilmi loojana individuaalselt või stuudio koosseisus. Samuti on tudengil võimalik kandideerida jätkamaks õpinguid animatsiooni või mõne muu valdkonna magistrantuuris.", "Rahvusvahelises ingliskeelses magistriõppes omandavad tudengid süvendatult animafilmi teoreetilisi ja praktilisi oskusi. On võimalik spetsialiseeruda konkreetsele animafilmitehnikale ja luua vastavas tehnikas individuaalne magistrifilm. Pärast lõpetamist on magister pädev end teostama professionaalse animafilmilooja, eriala õpetaja või professionaalina loovtööstuses või kultuurimaastikul laiemalt.", "Õppetöö vormiks on loengud, seminarid, meistriklassid, iseseisvad ja juhendatavad tunnid. Juhendatavaid tunde on umbes 60-70% õppekava üldmahust. Ülejäänud kursused sisaldavad praktilist ja iseseisvat tööd. Toimub õppealane koostöö mitmete teiste Eesti kõrgkoolidega, näiteks osalevad tudengid Tallinna Ülikooli Balti filmi, meedia, kunstide ja kommunikatsiooni instituudi (BFM) loengutel. Samuti tehakse koostööd Animatsiooni Liidu ja Eesti suuremate animatsioonistuudiotega. Osakonna õppejõud on aktiivselt tegutsevad kunstnikud ning erialaspetsialistid, kelle loomingut esitatakse rahvusvahelistel festivalidel ja üritustel."],
        outcomes: ["Omab väga heal tasemel analüüsi-, sünteesi- ja hindamisoskust", "Väärtustab professionaalseid hoiakuid ja teadvustab kutsetegevuse osa ühiskonnas", "On omandanud interdistsiplinaarse meeskonnatöö ja rahvus-vahelise koostöö oskuse", "Omab väga heal tasemel suulist ja kirjalikku väljendusoskust", "On omandanud enesejuhitud õppimise oskuse ja on avatud jätkuvaks professionaalseks arenguks", "Omab põhjalikke teoreetilisi teadmisi ja praktilisi oskusi professionaalseks tööks animafilmi režisöörina, stsenaristina, animafilmi loomingulise töörühma liikmena ning digitaalse meedia kitsamate sektorite spetsialistina", "Tunneb eriala teoreetilisi arengusuundi, aktuaalseid probleeme ja rakendamisvõimalusi", "Oskab vaadelda animatsiooni seosena teiste lähedaste distsipliinidega ning leiab nendevahelisi interdistsipli-naarseid seoseid", "Omab vajalikku ettevalmistust õpingute jätkamiseks doktoriõppes ja osalemiseks uurimistöös."],
        language: .inglise,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/vabade-kunstide-teaduskond/",
        spots: 7,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filmiajalugu", eapCount: 3),
                    Course(name: "Erialaprojekti arendus", eapCount: 6),
                    Course(name: "Karikatuur", eapCount: 3),
                    Course(name: "Filmi idee ja storyboard", eapCount: 6),
                    Course(name: "Meistriklass", eapCount: 6)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Helikujundus", eapCount: 3),
                    Course(name: "Filmidramaturgia analüüs", eapCount: 3),
                    Course(name: "Animatsiooni ajalugu", eapCount: 4),
                    Course(name: "Filmimuusika", eapCount: 3),
                    Course(name: "Erialaprojekt 1", eapCount: 8)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Interaktiivne meedia", eapCount: 3),
                    Course(name: "Erialaprojekt 2", eapCount: 11),
                    Course(name: "Kaasaegse animatsiooni tehnikad", eapCount: 4),
                    Course(name: "Meistriklass", eapCount: 3)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Disaini ja Tehnoloogia Tulevik",
        level: .masters,
        type: .disain,
        requirements: [
            Requirements(term: "Kõrgharidus disaini või tehnoloogia valdkonnas"),
            Requirements(term: "Portfoolio"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Motivatsioonikiri")
        ],
        description: ["Rahvusvaheline õppekava on välja töötatud Tallinna Tehnikaülikooli ja Eesti Kunstiakadeemia ühisõppekavana. Õppekava „Design and Technology Futures / Disaini ja tehnoloogia tulevik“ eesmärk on siduda teadus, tehnoloogia ja disain ühtseks loovaks distsipliiniks. Õppekava toetub kasutajakesksele lähenemisele, arendustegevusele ja ettevõtluse ning majanduskeskkonna mõistmisele ning loob viljakama pinnase innovaatiliste tootelahenduste väljatöötamiseks. Õppekava oluliseks osaks on praktilised tootearendusprojektid, mis viiakse ellu koos Eesti ettevõtetega.", "Õppekava juht on TalTechi professor Martin Pärn. Vajaduse õppekava loomise järele on tinginud Eesti ettevõtete arendustegevuse killustatus, vähene integreeritus ja disaini pea olematu kasutus äriideede ja tehnoloogilise innovatsiooni arendamisel.", "Õppekava rõhuasetuseks on kahe osapoole, inseneride ja disainerite vastastikuse mõistmise, respekti ja koostöötahte kasvatamine. Uue õppekava väljatöötamist ja käivitamist rahastatakse Euroopa Liidu struktuurifondidest, kõrgkoolide ja ettevõtete koostöö alameetmest."],
        outcomes: ["Õppekava lõpetajates näeme:", "Tootearendusspetsialiste, kes on võimelised töötama loovates integreeritud tootearendusmeeskondades, sidudes tehnoloogia ja turu võimalused ettevõtte arendustegevusega", "Tulevasi tootearendusjuhte, kes on võimelised juhtima tootearendusmeeskondi, integreerides disaini, tehnoloogia ja ettevõtluse visioonid, kes mõistavad majanduskonteksti ja valdavad oskusi uute toodete turuletoomiseks", "Ettevõtjaid, kes on võimelised välja töötama, arendama ja turule tooma innovatiivseid, tehnoloogiliselt tugevaid tootekooslusi, mis tuginevad reaalse turu seni avastamata võimalustel ja kasutajate mõistmisel"],
        language: .inglise,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemeste",
                courses: [
                    Course(name: "Inimkeskne disain", eapCount: 6),
                    Course(name: "Ettevõtlus ja äri planeerimine", eapCount: 6),
                    Course(name: "Disaini stuudio 1: isiklik", eapCount: 12),
                    Course(name: "Tootmistehnika - planeerimine ja kontroll", eapCount: 6),
                    Course(name: "Tehnoloogilis-majanduslikud paradigmad ja tehnoloogilised muutused", eapCount: 6),
                    Course(name: "Tehnoloogia, ühiskond ja tulevik", eapCount: 6)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Korporatiivne ettevõtlus ja disain", eapCount: 6),
                    Course(name: "Disaini stuudio 2: kontekst", eapCount: 6),
                    Course(name: "Teenusesüsteemide disain", eapCount: 6),
                    Course(name: "Tootmise digitaliseerimine", eapCount: 6),
                    Course(name: "Sotsiaalne ettevõtlus", eapCount: 6),
                    Course(name: "Ettevõtte loomine", eapCount: 6),
                    Course(name: "Cultural Theory and Visual Literacy", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Disaini Stuudio 3: süsteem", eapCount: 12),
                    Course(name: "Magistritöö seminar", eapCount: 6),
                    Course(name: "Samaaegne tootearendus", eapCount: 6),
                    Course(name: "Inseneriõppe põhialused", eapCount: 6),
                    Course(name: "Asjade internet tööstusele", eapCount: 6),
                    Course(name: "Kestlikkusele suunatud disain", eapCount: 6),
                    Course(name: "Problems of 20th and 21st Century Design", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 23),
                    Course(name: "Vabaained", eapCount: 6)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Disain ja Rakenduskunst",
        level: .masters,
        type: .disain,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Eesti Kunstiakadeemia disainiteaduskonna magistritaseme õppekava Disain ja rakenduskunst kulgeb paralleelselt ingliskeelse õppekavaga Design and Crafts.", "Sisse astutakse küll ühisele õppekavale, kuid valik tuleb teha ka erialade lõikes: keraamika, klaas, ehe ja sepis, tekstiilidisain, nahakunst ja disain, moedisain.", "Disain ja rakenduskunst MA õppekava eesmärgiks on magistrantide professionaalseks eluks ettevalmistamine läbi võimalikult realistliku ja sidusa koostöö eri tasandite ja valdkondade koostööpartneritega, enese positsiooni kaardistamine (kogukonna, ühiskonna, disainivälja, globaalmajanduse, looduskeskkonna jpt kontekstides). Õppekava avab tudengeile võimalikult palju reaalseid lugusid elust oma ala proffide ja ka alustavate tegijate study case’ide vahendusel.", "Magistriõpe toob keskmesse koostöö (eriti just materjalikunstide õppekavad on BA tasemes individuaalsetele väljakutsetele üles ehitatud). Programmis on erialade ülesed rühmatöö ülesanded, kus kohtuvad erineva tausta ja õpikogemusega tudengid. Olulise osa õppemahust moodustavad (välisõppejõudude juhendatud) töötoad, mis mõeldud rutiini murdma ja edaspidiseks õppetööks impulsse andma.", "Tudengid, kes asuvad õppima õppekaval Disain ja rakenduskunst, jäävad tihedalt seotuks oma valitud erialaga. Valitud erialade võimalused, nt unikaalsed/spetsiifilised töökojad ja rahvusvaheline renomee on ka põhjuseks, miks tulla õppima just Eesti Kunstiakadeemiasse.", "Materjalipõhise disaini ja tarbekunsti erialad (keraamika, klaasikunst ja -disain, ehtekunst, sepakunst, tekstiilidisain, nahakunst ja -disain, moedisain) kannavad endas unikaalset nägu ja filosoofiat ning Eesti Kunstiakadeemia on mitmete erialade puhul üheks vähestest kohtadest maailmas, kus seda MA tasemel on üldse võimalik omandada.", "Disain ja rakenduskunst MA õppekava ühendab väga erineva tausta ja huvidega tudengeid – kuid iga MA lõpetaja peaks olema milleski maailma parim. Olgu selleks geniaalne toode, unikaalne kunstnikupositsioon või põhjalikkus materjaliuuringutes."],
        outcomes: ["Mõistab kunsti- ja disainivaldkonna arenguid, toimemehhanisme ja funktsioone ühiskonnas", "Valdab erialast/disainialast terminoloogiat ja orienteerub disaini- ja erialateooriates", "Omab oskusi ja võimeid toote- ja turu-uuringuteks ning disainivaldkonna rakendusuuringuteks", "Oskab analüüsida enese ja teiste kunsti- ja disainiloomingut ja on võimeline osalema üldises kunstielus", "Suudab genereerida ja arendada loomingulisi ideid, rakendab neid innovaatilises disainiprotsessis", "On võimeline töötama professionaalsel tasemel individuaalselt ja meeskonnas. suudab teha koostööd teiste valdkondade spetsialistide ja ettevõtjatega", "Osaleb disaineri ja disaini kasutaja vahelises kommunikatsiooniprotsessis, suudab seda soodustada ja juhtida", "Omab valmidust jätkuõppeks doktorantuuris ning professionaalseks enesetäiendamiseks", "Oskab end erialaselt väljendada inglise keeles nii kõnes kui kirjas ja esitleda oma loomingut avalikkusele", "Suudab oma ideid professionaalselt viia materjali ja on võimeline läbi viima materjaliuuringuid", "Oskab kaardistada oma tegevust keskkonnamõjust lähtuvalt, on võimeline oma tegevust planeerima võimalikult jätkusuutlikuna."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 30,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Loomeettevõtlus", eapCount: 3),
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 1", eapCount: 3),
                    Course(name: "20. ja 21. sajandi disaini probleeme 1*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi kunsti probleeme 1*", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 1*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi disaini probleeme 2*", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Stuudio 1", eapCount: 3),
                    Course(name: "Disaini ja rakenduskunsti seminar 1", eapCount: 3),
                    Course(name: "Projekt 1", eapCount: 6),
                    Course(name: "Projekt 2", eapCount: 6)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Arhitektuuriteooria ajalugu 2*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 2", eapCount: 3),
                    Course(name: "20. ja 21. sajandi kunsti probleeme 2*", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 6),
                    Course(name: "Stuudio 2", eapCount: 3),
                    Course(name: "Projekt 3", eapCount: 6),
                    Course(name: "Praktika", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Magistriprojekt (Stuudio 3)", eapCount: 3),
                    Course(name: "Disaini ja rakenduskunsti seminar 2", eapCount: 3),
                    Course(name: "Projekt 4", eapCount: 6),
                    Course(name: "Projekt 5", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Disain ja Rakenduskunst",
        level: .masters,
        type: .disain,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Eesti Kunstiakadeemia disainiteaduskonna magistritaseme õppekava Disain ja rakenduskunst kulgeb paralleelselt ingliskeelse õppekavaga Design and Crafts.", "Sisse astutakse küll ühisele õppekavale, kuid valik tuleb teha ka erialade lõikes: keraamika, klaas, ehe ja sepis, tekstiilidisain, nahakunst ja disain, moedisain.", "Disain ja rakenduskunst MA õppekava eesmärgiks on magistrantide professionaalseks eluks ettevalmistamine läbi võimalikult realistliku ja sidusa koostöö eri tasandite ja valdkondade koostööpartneritega, enese positsiooni kaardistamine (kogukonna, ühiskonna, disainivälja, globaalmajanduse, looduskeskkonna jpt kontekstides). Õppekava avab tudengeile võimalikult palju reaalseid lugusid elust oma ala proffide ja ka alustavate tegijate study case’ide vahendusel.", "Magistriõpe toob keskmesse koostöö (eriti just materjalikunstide õppekavad on BA tasemes individuaalsetele väljakutsetele üles ehitatud). Programmis on erialade ülesed rühmatöö ülesanded, kus kohtuvad erineva tausta ja õpikogemusega tudengid. Olulise osa õppemahust moodustavad (välisõppejõudude juhendatud) töötoad, mis mõeldud rutiini murdma ja edaspidiseks õppetööks impulsse andma.", "Tudengid, kes asuvad õppima õppekaval Disain ja rakenduskunst, jäävad tihedalt seotuks oma valitud erialaga. Valitud erialade võimalused, nt unikaalsed/spetsiifilised töökojad ja rahvusvaheline renomee on ka põhjuseks, miks tulla õppima just Eesti Kunstiakadeemiasse.", "Materjalipõhise disaini ja tarbekunsti erialad (keraamika, klaasikunst ja -disain, ehtekunst, sepakunst, tekstiilidisain, nahakunst ja -disain, moedisain) kannavad endas unikaalset nägu ja filosoofiat ning Eesti Kunstiakadeemia on mitmete erialade puhul üheks vähestest kohtadest maailmas, kus seda MA tasemel on üldse võimalik omandada.", "Disain ja rakenduskunst MA õppekava ühendab väga erineva tausta ja huvidega tudengeid – kuid iga MA lõpetaja peaks olema milleski maailma parim. Olgu selleks geniaalne toode, unikaalne kunstnikupositsioon või põhjalikkus materjaliuuringutes."],
        outcomes: ["Mõistab kunsti- ja disainivaldkonna arenguid, toimemehhanisme ja funktsioone ühiskonnas", "Valdab erialast/disainialast terminoloogiat ja orienteerub disaini- ja erialateooriates", "Omab oskusi ja võimeid toote- ja turu-uuringuteks ning disainivaldkonna rakendusuuringuteks", "Oskab analüüsida enese ja teiste kunsti- ja disainiloomingut ja on võimeline osalema üldises kunstielus", "Suudab genereerida ja arendada loomingulisi ideid, rakendab neid innovaatilises disainiprotsessis", "On võimeline töötama professionaalsel tasemel individuaalselt ja meeskonnas. suudab teha koostööd teiste valdkondade spetsialistide ja ettevõtjatega", "Osaleb disaineri ja disaini kasutaja vahelises kommunikatsiooniprotsessis, suudab seda soodustada ja juhtida", "Omab valmidust jätkuõppeks doktorantuuris ning professionaalseks enesetäiendamiseks", "Oskab end erialaselt väljendada inglise keeles nii kõnes kui kirjas ja esitleda oma loomingut avalikkusele", "Suudab oma ideid professionaalselt viia materjali ja on võimeline läbi viima materjaliuuringuid", "Oskab kaardistada oma tegevust keskkonnamõjust lähtuvalt, on võimeline oma tegevust planeerima võimalikult jätkusuutlikuna."],
        language: .inglise,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 15,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Stuudio 1", eapCount: 3),
                    Course(name: "Disaini ja rakenduskunsti seminar 1", eapCount: 3),
                    Course(name: "Projekt 1", eapCount: 6),
                    Course(name: "Projekt 2", eapCount: 6),
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Valikaine*", eapCount: 6),
                    Course(name: "Stuudio 2", eapCount: 3),
                    Course(name: "Projekt 3", eapCount: 6),
                    Course(name: "Praktika", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Valikaine", eapCount: 3),
                    Course(name: "Disaini ja rakenduskunsti seminar 2", eapCount: 3),
                    Course(name: "Magistriprojekt (Stuudio 3)", eapCount: 3),
                    Course(name: "Projekt 4", eapCount: 6),
                    Course(name: "Projekt 5", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Graafiline Disain",
        level: .masters,
        type: .disain,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Graafilise disaini osakonnas õpitakse, kuidas meid ümbritseva maailma sõnumeid nähtavaks teha. Seda võib nimetada ka visuaalse kommunikatsiooni õppimiseks. Vahendeid, mida selles protsessis kasutatakse, on mitmeid: kiri, märk, värv, pilt, liikuv pilt, kompositsioon, vorm jne.", "Graafilist disaini kui eriala on tänapäeval üha raskem üheselt defineerida, kuna see hõlmab suurel hulgal erinevad tegevusi ja loomingulisi väljundeid.", "Wikipeediast leiame lühikese, kuid küllaltki täpse graafilise disaini definitsiooni:", "• “Graafiline disain on loominguline protsess – enamus juhtudel kaasates klienti ja disainerit ning teisi tehnilisi osapooli (näiteks trükikoda, programmeerija jt) – mille eesmärgiks on edastada spetsiifiline sõnum (või sõnumid) kindlale publikule. Mõiste “graafiline disain” võib viidata ka erinevatele kunstilistele ning professionaalsetele distsipliinidele, mille fookus on kommunikatsioonil ja presentatsioonil. Erinevaid meetoteid kasutatakse, luues ja ühendades sõnu, sümboleid ning kujutisi, et luua visuaalne tõlgendus ideedest ja sõnumitest.”", "Graafilise disaini osakonnas õppides tegeleb tudeng paralleelselt mitme projektiga, mis hõlmavad visuaalkultuuri laia spektrit, alates väga praktilistest disainiprobleemidest kuni abstraktsemat tõlgendamist vajavate küsimusteni", "oengud toimuvad õppejõu juhendamisel ümber ühise laua ning lisaks ülesannete lahendamisele kodutööna, oodatakse igalt tudengilt aktiivset sekkumist, dialoogi ja kaasa rääkimist kaastudengite koolitööde analüüsimisel. Lisaks projektipõhistele loovülesannetele osalevad tudengid ka ajaloo- ja teoorialoengutes.", "Väga mahukas ja oluline osa on iseseisval tööl. Osakonna poolt on selleks kasutusse antud stuudioruum, kus julgustame tudengeid ka tunniplaani välisel ajal tööd tegema ning oma osakonna kaaslastega suhtlema. Peame väga oluliseks, et kõigile kolmele BA kursusele on ette nähtud ühine tööruum, nii saavad tudengid lähemalt tuttavaks ja toimub aktiivne mõttevahetus.", "Lisaks kohalikele õppejõududele üritame võimalikult palju õppetöösse kaasata erialaprofessionaale väljaspoolt Eestit. Igal õppeaastal toimub lisaks tavaõppetööle ligikaudu viis intensiivset workshoppi.", "Oluline roll õppekavas on ka välisreisidel. Osakonna traditsiooniks on kujunenud igal teisel aastal Tšehhis toimuva Brno graafilise disaini biennaali külastamine. Samuti külastame teisi olulisi rahvusvahelisi erialaseid sündmusi, näiteks Lahti plakatitriennaal Soomes, Chaumont’i rahvusvaheline plakati- ja graafilise disaini festival Prantsusmaal, loengusari Bold Italic Gentis, Belgias. Välisreisil viibides üritame alati külastada mitmeid disainistuudioid, olulisi näituseid ja tutvuda lähemalt kohaliku disainikultuuri ning kunstimaastikuga.", "Vastavatud ingliskeelne graafilise disaini magistriõppe eesmärk on toetada tudengit iseseisva disainipraktika väljakujundamisel. Selleks mõtestatakse kriitiliselt vormi, sisu, tootmise ja teabe levitamise omavahelisi vahelisi seoseid. Vastamaks graafilise disainerina töötamise pidevalt muutuvale kontekstile ja nõudmistele, keskendutakse isemõtleva, protsessikeskse, teadliku ja ausa loometöö arendamisele."],
        outcomes: ["On mitmekülgsete erialaste teadmiste ja oskustega spetsialist, kes on võimeline töötama professionaalina erinevates graafilise disaini valdkondades", "Orienteerub erialases teoorias ning omab ülevaadet kultuuriajaloost, millega suudab sidustada valdkonnaspetsiifilisi teadmisi", "On omandanud teadmised ja oskused disaini analüüsiks, kriitikaks ning Õpetamiseks", "Suudab oma töös ja praktikas seada sihte ja probleemilahendusi, mis demonstreerivad autori eesmärkidele vastavat kontseptuaalset ja tehnilist kompetentsust", "On sotsiaalselt vastutustundlik ning orienteerub disaini ja loometegevuse eetilistes küsimustes ning on võimeline osalema avalikus diskussioonis", "Genereerib loomingulisi ideid, eksperimenteerib ja leiab uudseid lahendusi graafilise disaini kontekstis", "On omandanud kraadi, millega on võimalik kandideerida jätkuvateks õpinguteks kunstidoktorantuuris."],
        language: .inglise,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 10,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Töötuba 1", eapCount: 3),
                    Course(name: "Stuudio 1", eapCount: 9),
                    Course(name: "Töötuba 2", eapCount: 3),
                    Course(name: "Külaliskriitik 1", eapCount: 3),
                    Course(name: "Teooria & Praktika 1", eapCount: 3),
                    Course(name: "Disain & Kontekst 1", eapCount: 3)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Valikaine", eapCount: 3),
                    Course(name: "Külaliskriitik 2", eapCount: 3),
                    Course(name: "Teooria & Praktika 2", eapCount: 3),
                    Course(name: "Disain & Kontekst 2", eapCount: 3),
                    Course(name: "Disain & Kontekst 2", eapCount: 12)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Valikaine", eapCount: 3),
                    Course(name: "Külaliskriitik 3", eapCount: 3),
                    Course(name: "Töötuba 3", eapCount: 3),
                    Course(name: "Disain & Kontekst 3", eapCount: 3),
                    Course(name: "Magistriprojekt (Stuudio 3)", eapCount: 12)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Interaktsiooni­disain",
        level: .masters,
        type: .disain,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Interaktsioonidisain käsitleb seda, kuidas me suhtleme ümbritseva maailmaga, keskenduses interaktsioonidele inimloodud keskkonna, tehnoloogia ja teenustega. Uute kogemuste, süsteemide ja toodete järele on aina suurem vajadus.", "Interaktsioonidisainerite eesmärk on luua tulevikumaailma, mis annab lisaväärtust meie eludele, keskendudes inimestele, nende vajadustele, käitumisharjumustele, väärtustele ning võttes kõige selle juures arvesse ka keskkonda milles elame.", "Tehnoloogia ülikiire areng on meid viinud järgmise tööstusrevolutsioonini ning esmakordselt üle pika aja pole kellelgi aimu, kuidas tulevik välja nägema hakkab. Meie, interaktsioonidisainerid, oleme täpselt selle muutuse keskpunktis: meie käes on võti luua tehnoloogiast põimitud tulevik mis baseerub inimeste väärtushinnangutel, vajadustel ja käitumisel.", "Tehnoloogia on muutumas kõikvõimsaks, intelligentseks ja emotsionaalseks. Kaugeltki mitte enam tööriist mille võtame kätte et täita ülesannet, on ta saamas abiliseks kes laiendab meie võimete piire. Seega ei disaini me enam tehnoloogiat ennast, vaid suhet temaga. See suhe peab olema tähendusrikas, väärtuslik, hallatav. Selles on kõrg- ja madalhetked, põnevus ja igavus, see algab, areneb ja lõpeb. Kogu see kogemus tuleb luua inimperspektiivist lähtuvalt.", "Ka maailm millele me disainime areneb äärmiselt kiiresti. Inimesed aga mitte — me paneme vastu, kohaneme ja alles viimaks võtame muutused omaks. Just seetõttu peame võtma inimese nurgakiviks, mille ümber loome oma disaineri suhtumise, lähenemise ja metodoloogiad. Kunstiakadeemia interaktsioonidisaini õppekava on inimkeskne, aga alati kätt pulsil hoidev ja tulevikkuvaatav.", "Inimkeskne disain pole enam piisav. Et pärast põlvkondadepikkust ekspluateerimist meie elustandardeid edasi viia, peame homse päeva tooteid ja teenuseid luues vaatama inimese vajadustest kaugemale – arvestama planeedi omadega. Interaktsioonidisaineritena on meil võim selle üle kuidas inimesed ümbritseva maailmaga suhtlevad, me saame kujundada inimeste arusaamasid, isegi väärtushinnanguid ja käitumist. Positiivse tuleviku ehitamine on sõna otseses mõttes meie kätes.", "Eseme loojast probleemilahendaja innovaatorini – disaineri töökirjeldus on pidevas muutuses. Seetõttu keskendub Interakstioonidisaini õppekava nende omadustele arendamisele mis teevad inimesest disaneri: eelkõige mõtteviisile – mõtlemine, väärtushinnangud ja suhtumine, seejärel erialaoskustele ning kõige viimaks tööriistade oskusele.", "Disaineriks olemine tähendab disaineri iseloomu arendamist. Disainerid on uudishimulikud ega löö risti ette segadusele, eksperimenteerimisele ega luhtumisele. Nad võivad olla loovad arendamaks uudseid ideid, ning kriitilised loomaks selgust. Nad suudavad näha suurt pilti, ent on piinlikult täpsed detailidega. Disainerid hoolivad ja võitlevad inimeste ning neid ümbritseva keskkonna eest.", "Interkatsioonidisaini õpingud on projektipõhised. Sa lood oma disaineri intuitsiooni, vaatenurga, kogemuse ja portfoolio läbi järjepideva harjutamise. Juhendajateks on sel teekonnal pärismaailma praktikud, oma ala tipptegijad kes kasutavad kogemusi juhendamaks sind läbi keerukate projektide.", "Meie lähenemine disainile on praktiline ja eksperimentaalne. Igal semestril töötame koos partneritega – Eesti idufirmade, riigiasutuste, telekomide, MTÜ-dega –, et tegeleda päriselu lähteülesannete, probleemide ja päris inimestega. Läbi kasutajauuringute ja empaatia loomise avastame varjatud võimalusi innovatsiooniks ning loome tulevikkuvaatavaid kontseptsioone mis põhinevad tänapäeva reaalsusel.", "Me rõhutame kursuste komplekteerimisel mitmekesisust. Siin õppides saad töötama külg-külje kõrval kaaslastega väga erinevatelt erialadelt, taustadelt ja kultuuridest. See loob aluspinna ideede kümblusele ja vastastikkuse õppimise kogemuse.", "Interaktsioonidisaini saab õppida magistritasemel. Õppekava eesmärgiks on anda lõpetajatele võimekus hallata kompleksseid arendusprojekte uute toodete ja teenuste loomisel, aga ka juhtida rahvusvahelisi multidistsiplinaarseid tiime. Eriala on rahvusvaheline ning kaasab juhendajaid näiteks ettevõtetest nagu IDEO, Google jpt."],
        outcomes: ["• Tunneb IKT-tootearenduse valdkonda ja kasutajaliideste disaini spetsiifikat", "• On võimeline töötama kasutajaliideste ja -kogemuse disainerina kohalikul või globaalsel ettevõtlusväljal olles tootearendusmeeskonna juht, liige või disainiteenust pakkuv partner-konsultant", "• On võimeline tegutsema teadurina disainivaldkonnas, arendades kasutajaliideste disaini alaseid metoodikaid ja teadmisi", "• On võimeline tegutsema ettevõtte või institutsiooni disainijuhina", "Suudab genereerida ja arendada loomingulisi ideid, rakendab neid innovaatilises disainiprotsessis", "On võimeline töötama professionaalsel tasemel individuaalselt ja meeskonnas, suudab teha koostööd teiste valdkondade spetsialistide ja ettevõtjatega", "Osaleb disaineri ja disaini kasutaja vahelises kommunikatsiooni-protsessis, suudab seda soodustada ja juhtida", "Oskab töötada interdistsiplinaarses meeskonnas ja arendada toodet disaini eetikast ja üldprintsiipidest lähtudes", "Omab valmidust jätkuõppeks doktorantuuris, ning professionaalseks enesetäiendamiseks."],
        language: .inglise,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 12,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "1250€/semester",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Estonian culture at the crossroads 1", eapCount: 3),
                    Course(name: "Problems of 20th-21st Century Philosophy", eapCount: 3),
                    Course(name: "Academic Writing", eapCount: 3),
                    Course(name: "Disainiantropoloogia", eapCount: 3),
                    Course(name: "Erialaprojekt: Teenusedisain", eapCount: 9),
                    Course(name: "Erialaprojekt: Sissejuhatus inimkesksesse interaktsioonidisaini", eapCount: 6),
                    Course(name: "Visuaalne interaktsioonidisain", eapCount: 3),
                    Course(name: "Praktika: Loojutustamine disainis", eapCount: 3)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Estonian Culture at the Crossroads 2", eapCount: 3),
                    Course(name: "Digitaalse portfoolio arendus", eapCount: 3),
                    Course(name: "Praktiline äridisain", eapCount: 3),
                    Course(name: "Disainiajalugu ja -teooria", eapCount: 3),
                    Course(name: "Emotsioonidisain", eapCount: 6),
                    Course(name: "Erialaprojekt: Digitaalse toote arendamine ja disain", eapCount: 9),
                    Course(name: "Praktika: Füüsiline interaktsioonidisain", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Psühholoogia disaineritele", eapCount: 3),
                    Course(name: "Erialaprojekt: Disain arenevatele valdkondadele", eapCount: 6),
                    Course(name: "Praktika: Disain sotsiaalse innovatsiooni heaks", eapCount: 9),
                    Course(name: "Magistriseminar", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Kaasaegne Kunst",
        level: .masters,
        type: .vabadKunstid,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Kaasaegse kunsti magistriprogramm annab erineva taustaga kunstnikele võimaluse oma autoripraktikat süvitsi arendada. Õppekava keskendub individuaalse stuudiopraktika edendamisele, mida toetavad praktilised meistriklassid-töötoad ning mitmeid loomemeetodeid, mõttetööriistu ja uurimispraktikate platvorme tutvustavad kursused.", "Programmi teevad atraktiivseks eksperimentaalne ja paindlik “treeningprogramm” varieeruvate kursustega ning igale üliõpilasele eraldi keskenduvad professorid, kes on Eesti kaasaegse kunsti säravamad autorid. Loomulikult ka rahvusvaheliselt hinnatud külalisõppejõud ja kunstieksperdid.", "Kunsti roll on mõtestada ühiskondlikke muutusi ning heita kriitiline pilk sellele, kuidas me tänapäeval elame. Kaasaegne kunstnik tõstatab küsimusi, loob uusi tähendusruume, avastab alternatiivseid vaatenurki ning tajukogemusi. Tegeledes ühiskondlike ja isiklike teemadega, suhtleb kunstnik aktiivselt oma kaasajaga. Nii saab kunstnik kahelda harjumuspäraseks saanud ideedes ja väärtustes, kombineerida ja eksperimenteerida erinevate sisuliste ja vormiliste lahendustega ning reaalsust nihestada ja manipuleerida. Kaasaegne kunst on vaba platvorm, kus saavad alguse diskussioonid ning pakutakse uusi lahendusi. Kunst haakub sõltumatuna erinevate ühiskondlike valdkondadega ning mitmekesistab maailmavaadet. Kaasaegse kunsti õppekava pakub toetavat keskkonda kaasaegse visuaalse kultuuri mõtestamiseks, sotsiaalse närvi teritamiseks ning dialoogi ja kriitika jaoks. Nii saab arenev kunstnik leida enesekindluse ja oma publiku ning omandada vajalikud oskused ja meetodid kunstnikuna töötamiseks.", "Kaasaegse kunsti õppekava keskendub üliõpilaste individuaalse loomepraktika toetamisele ja arendamisele. Programm pakub avatud diskussioonikeskkonda kaasaegse kunsti vallas tegutsemiseks ning selle kriitiliseks analüüsiks. Kolmandiku õppekavast moodustab individuaalne stuudiopraktika. Lisaks üldteoreetilistele ainetele, filosoofiale ning teadustöö metodoloogiale toetab loomingulise inimese analüüsivõime arengut teoreetiliste tööriistade kursus, kus ekspertloengud annavad külalisõppejõud, kes tutvustavad olulisi mõttesuundi ja teoreetikuid. Meistriklassid vahelduvad vastavalt kursusel õppivate tudengi huvidele, avades ja laiendades erinevaid kaasaegse kunsti praktiseerimisvõimalusi: performance, graafika, maal ja skulptuur kõige laiemas mõistes, uusmeedia ja sound art, fotokunst, installatsioon, loovkirjutamine, erinevad improvisatsioonid.", "Õppekavas on olulisel kohal koostööprogramm EKA kuraatoriõppe üliõpilastega: koos katsetatakse erinevaid kaasaegse kunsti esitlemise formaate ning juhitakse tudengite eksperimentaalset projektiruumi Vent Space. Samuti saavad tudengid ülevaate erinevatest näituse installeerimise viisidest, et leida just enda jaoks sobivaimad võtted. Lisaks toimub vaatlusreis ühele olulisele rahvusvahelisele kunstisündmusele ning omaalgatuslik fookusgrupp, kus uurimisteemad pakuvad välja üliõpilased ise, jagunedes seejärel rühmadesse, analüüsimaks enim huvi äratanud teemat."],
        outcomes: ["Oskab rakendada õppeprotsessi-alaseid teadmisi oma professionaalses tegevuses", "Mõistab ning hindab kriitiliselt ühiskonnas toimuvaid protsesse", "Oskab toime tulla muutuva konteksti tingimustes", "On võimeline töötama meeskonnas", "On võimeline kriitiliselt hindama ja arendama oma kunstiloomingut", "Omab individuaalset lähenemisnurka ja oskab seda rakendada oma kunstiloomingus", "Mõistab ning oskab sõnastada kunsti ja kultuuri valdkonnas toimuvaid protsesse", "Oskab avalikult esitleda oma kunstiloomingut"],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/vabade-kunstide-teaduskond/",
        spots: 16,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Kunstipraktika 1", eapCount: 15),
                    Course(name: "Meistriklass", eapCount: 3),
                    Course(name: "Grupikriitika", eapCount: 3)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Research Methods", eapCount: 3),
                    Course(name: "Kunstipraktika 2", eapCount: 15),
                    Course(name: "Kaasaegse kunsti teoreetiline kontekst", eapCount: 3),
                    Course(name: "Meistriklass", eapCount: 3)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Loomeettevõtlus", eapCount: 3),
                    Course(name: "Kunstipraktika 3", eapCount: 15),
                    Course(name: "Meistriklass", eapCount: 3),
                    Course(name: "Kuraatoriprojekt", eapCount: 3)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Kaasaegne Kunst",
        level: .masters,
        type: .vabadKunstid,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Kaasaegse kunsti magistriprogramm annab erineva taustaga kunstnikele võimaluse oma autoripraktikat süvitsi arendada. Õppekava keskendub individuaalse stuudiopraktika edendamisele, mida toetavad praktilised meistriklassid-töötoad ning mitmeid loomemeetodeid, mõttetööriistu ja uurimispraktikate platvorme tutvustavad kursused.", "Programmi teevad atraktiivseks eksperimentaalne ja paindlik “treeningprogramm” varieeruvate kursustega ning igale üliõpilasele eraldi keskenduvad professorid, kes on Eesti kaasaegse kunsti säravamad autorid. Loomulikult ka rahvusvaheliselt hinnatud külalisõppejõud ja kunstieksperdid.", "Kunsti roll on mõtestada ühiskondlikke muutusi ning heita kriitiline pilk sellele, kuidas me tänapäeval elame. Kaasaegne kunstnik tõstatab küsimusi, loob uusi tähendusruume, avastab alternatiivseid vaatenurki ning tajukogemusi. Tegeledes ühiskondlike ja isiklike teemadega, suhtleb kunstnik aktiivselt oma kaasajaga. Nii saab kunstnik kahelda harjumuspäraseks saanud ideedes ja väärtustes, kombineerida ja eksperimenteerida erinevate sisuliste ja vormiliste lahendustega ning reaalsust nihestada ja manipuleerida. Kaasaegne kunst on vaba platvorm, kus saavad alguse diskussioonid ning pakutakse uusi lahendusi. Kunst haakub sõltumatuna erinevate ühiskondlike valdkondadega ning mitmekesistab maailmavaadet. Kaasaegse kunsti õppekava pakub toetavat keskkonda kaasaegse visuaalse kultuuri mõtestamiseks, sotsiaalse närvi teritamiseks ning dialoogi ja kriitika jaoks. Nii saab arenev kunstnik leida enesekindluse ja oma publiku ning omandada vajalikud oskused ja meetodid kunstnikuna töötamiseks.", "Kaasaegse kunsti õppekava keskendub üliõpilaste individuaalse loomepraktika toetamisele ja arendamisele. Programm pakub avatud diskussioonikeskkonda kaasaegse kunsti vallas tegutsemiseks ning selle kriitiliseks analüüsiks. Kolmandiku õppekavast moodustab individuaalne stuudiopraktika. Lisaks üldteoreetilistele ainetele, filosoofiale ning teadustöö metodoloogiale toetab loomingulise inimese analüüsivõime arengut teoreetiliste tööriistade kursus, kus ekspertloengud annavad külalisõppejõud, kes tutvustavad olulisi mõttesuundi ja teoreetikuid. Meistriklassid vahelduvad vastavalt kursusel õppivate tudengi huvidele, avades ja laiendades erinevaid kaasaegse kunsti praktiseerimisvõimalusi: performance, graafika, maal ja skulptuur kõige laiemas mõistes, uusmeedia ja sound art, fotokunst, installatsioon, loovkirjutamine, erinevad improvisatsioonid.", "Õppekavas on olulisel kohal koostööprogramm EKA kuraatoriõppe üliõpilastega: koos katsetatakse erinevaid kaasaegse kunsti esitlemise formaate ning juhitakse tudengite eksperimentaalset projektiruumi Vent Space. Samuti saavad tudengid ülevaate erinevatest näituse installeerimise viisidest, et leida just enda jaoks sobivaimad võtted. Lisaks toimub vaatlusreis ühele olulisele rahvusvahelisele kunstisündmusele ning omaalgatuslik fookusgrupp, kus uurimisteemad pakuvad välja üliõpilased ise, jagunedes seejärel rühmadesse, analüüsimaks enim huvi äratanud teemat."],
        outcomes: ["Oskab rakendada õppeprotsessi-alaseid teadmisi oma professionaalses tegevuses", "Mõistab ning hindab kriitiliselt ühiskonnas toimuvaid protsesse", "Oskab toime tulla muutuva konteksti tingimustes", "On võimeline töötama meeskonnas", "On võimeline kriitiliselt hindama ja arendama oma kunstiloomingut", "Omab individuaalset lähenemisnurka ja oskab seda rakendada oma kunstiloomingus", "Mõistab ning oskab sõnastada kunsti ja kultuuri valdkonnas toimuvaid protsesse", "Oskab avalikult esitleda oma kunstiloomingut"],
        language: .inglise,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/vabade-kunstide-teaduskond/",
        spots: 6,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Academic Writing", eapCount: 3),
                    Course(name: "Kunstipraktika 1", eapCount: 15),
                    Course(name: "Meistriklass", eapCount: 3),
                    Course(name: "Grupikriitika", eapCount: 3)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Research Methods", eapCount: 3),
                    Course(name: "Kunstipraktika 2", eapCount: 15),
                    Course(name: "Kaasaegse kunsti teoreetiline kontekst", eapCount: 3),
                    Course(name: "Meistriklass", eapCount: 3)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Creative Industries", eapCount: 3),
                    Course(name: "Kunstipraktika 3", eapCount: 15),
                    Course(name: "Meistriklass", eapCount: 3),
                    Course(name: "Kuraatoriprojekt", eapCount: 3)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Kunstiõpetaja",
        level: .masters,
        type: .kunstikultuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Kunstiõpetaja EKA ja TLÜ ühisõppekavale õppima ootame neid, kes soovivad õppida kunstilisi protsesse eri sihtrühmadele mõtestama ja tõlkima. Samuti neid, kes isikliku loomingulise tegevuse kõrval tahavad pühenduda kunsti mõistmise süvendamisele ja selle mõju suurendamisele ühiskonnas. Ootame ka praeguseid kunstiõpetajaid enesetäienduseks ja kutsestandardile vastava kvalifikatsiooni omandamiseks.", "Meie eesmärk on ühendada teadlikku, teaduspõhist ja loovat kunstiharidust kaasaegse kunstimaailma mitmekesisusega. See tähendab, et kunstiõpetuses on esmatähtsad samad küsimused ja käsitlused, millega kohtume galeriis ja muuseumis, kus maailmapiltide, seisukohtade ja meediate paljusus on olulisel kohal käelise meisterlikkuse kõrval. Mõista kunsti keeli ja tajuda kunsti avatud dialoogipartnerina peab olema iga inimese võimalus.", "Kunstiõpetaja ühisõppekavas on kombineeritud Tallinna Ülikoolile ja Eesti Kunstiakadeemiale omased tugevused – Tallinna Ülikooli uuenduslikud kasvatusteadused, erialadidaktika ja suure ülikooli mitmekesisus ning Eesti Kunstiakadeemia loominguline keskkond ja individuaalne lähenemine. Üliõpilane on mõlema kooli nimekirjas ja saab õppekava lõpetades mõlema ülikooli diplomi."],
        outcomes: ["Õppekava läbimisel üliõpilane", "Analüüsib kultuuri arenguprotsesse ja orienteerub kaasaegses kunstimaailmas", "On omandanud individuaalse õppimise oskuse ning on avatud pidevaks professionaalseks arenguks", "Omab heal tasemel suulist ja kirjalikku väljendusoskust eesti keeles ning valdab vähemalt ühte võõrkeelt Euroopa Keelemapi B2 tasemel", "Omab süvendatud teadmisi ja oskusi vähemalt ühes kunsti kitsamas valdkonnas", "Mõtestab kunstiõpetaja rolli kasvatusteaduste ja psühholoogia kontekstis", "Oskab planeerida ja juhtida õppeprotsessi arvestades riiklike ning õppeasutuse regulatsioonidega", "Loob õppimist ning õppija arengut toetava keskkonna õppijaid kaasates", "On võimeline looma ja teaduslikult põhjendama oma kunstiõpetuse käsitlust tuginedes kunstididaktika teoreetilistele seisukohtadele."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/kunstikultuuri-teaduskond/",
        spots: 0,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunstiõpetuse didaktika 1", eapCount: 4),
                    Course(name: "Muuseumiõppe didaktika", eapCount: 4),
                    Course(name: "Õpetajakoolituse praktika 1", eapCount: 3),
                    Course(name: "Üldhariduskooli vaatluspraktika", eapCount: 3),
                    Course(name: "Loominguline projekt 1*", eapCount: 3),
                    Course(name: "Digitaalsed tehnoloogiad kunstiõpetuses*", eapCount: 3),
                    Course(name: "Arengu ja õppimise toetamine", eapCount: 6),
                    Course(name: "Õppimise emotsionaalsed ja sotsiaalsed aspektid", eapCount: 6)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunstiõpetuse didaktika 2", eapCount: 5),
                    Course(name: "Õpetajakoolituse praktika 2", eapCount: 3),
                    Course(name: "Muuseumiõppe praktika", eapCount: 3),
                    Course(name: "20. sajandi kunstiteooriad*", eapCount: 3),
                    Course(name: "Loominguline projekt 3*", eapCount: 3),
                    Course(name: "Loominguline koostööprojekt*", eapCount: 3),
                    Course(name: "Visuaalkultuur ja kommunikatsioon", eapCount: 4),
                    Course(name: "Jätkusuutlikkuse käsitlusviise kunsti- ja disainiõpetuses*", eapCount: 3),
                    Course(name: "Õppe diferentseerimine", eapCount: 6),
                    Course(name: "Õpetaja ja õpilane õppijatena koolis ja ühiskonnas", eapCount: 6),
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunstiteose analüüsi ja kunstiajaloo didaktika", eapCount: 4),
                    Course(name: "Disaini- ja ruumiõppe didaktika", eapCount: 4),
                    Course(name: "Kunstihariduse uurimistöö alused", eapCount: 4),
                    Course(name: "Põhipraktika 1 (üldhariduskoolis)", eapCount: 3),
                    Course(name: "Kunstikooli praktika", eapCount: 3),
                    Course(name: "Kunstididaktika praktikum", eapCount: 3),
                    Course(name: "Loominguline projekt 2", eapCount: 3),
                    Course(name: "Disaini- ja ruumiõppe töötoad", eapCount: 4),
                    Course(name: "Vabaainete maht semestris - 2 EAP", eapCount: 2)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 4),
                    Course(name: "Magistritöö", eapCount: 18),
                    Course(name: "Põhipraktika 2 (üldhariduskoolis)", eapCount: 6)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Kunstiteadus ja Visuaalkultuur",
        level: .masters,
        type: .kunstikultuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Kunstiteaduse ja visuaalkultuuri uuringute eriala õpetab ümbritsevat pildimaailma ja ruumilist keskkonda kriitiliselt vaatama ja analüüsima. Meid ümbritsev maailm on üha enam visuaalne – kunstis, fotograafias, filmis, aga ka ajakirjanduses, reklaamis, televisioonis ja internetis luuakse ja kasutatakse piltkujutisi erinevatel eesmärkidel. Pildid võivad olla esteetilise naudingu allikad või ajaloodokumendid, edastada infot, kuid ka inimestega manipuleerida. Eriala on neile, kes soovivad inimest ümbritsevat ruumi, esemelist keskkonda ning kaasaegset visuaalkultuuri süvitsi mõista ja mõtestada.", "Erialal õpetatakse kunstiajalugu ja -teooriat kultuuriteooria ja sotsiaalajaloo foonil. Õpe kombineerib ajaloolise ja objektikeskse lähenemise teoreetiliste vaatenurkadega ning annab laiapõhjalise humanitaarhariduse. Visuaalkultuuri uuringud aitavad mõtestada pildilise ja ruumilise keskkonna seoseid ning toimimist ühiskonnas. Teooriaõpet täiendavad õppereisid ja mitmesugused praktikad.", "Nüüdisaegse kunstiteaduse uurimisobjektiks on pea kogu inimloomingu visuaalne mõõde. Kunst, foto, film, aga ka argisemad valdkonnad nagu massimeedia või reklaam loovad ja kasutavad erinevatel eesmärkidel mitmesuguseid pilte ning kujutisi. Pildid võivad olla esteetilise naudingu allikad, kuid ka ajaloolise tähtsusega dokumendid. Nad võivad edastada infot, kuid ka meiega manipuleerida. Mõned pildid teevad kõike seda korraga. Samamoodi on tähenduslik kogu meid ümbritsev ruum ja esemeline keskkond, mille kujundus mõjutab meie igapäevaelu.", "EKA Kunstiteaduse ja visuaalkultuuri instituudis (KVI) õpetatakse kunstiajalugu ja -teooriat kultuuriteooria ja sotsiaalajaloo foonil. Õpe kombineerib ajaloolise ja objektikeskse lähenemise teoreetiliste vaatenurkadega ning annab laiapõhjalise humanitaarhariduse. Visuaalkultuuri uuringud aitavad mõtestada pildilise ja ruumilise keskkonna seoseid ning toimimist ühiskonnas. Teooriaõpet täiendavad õppereisid ja mitmesugused praktikad. Instituudi õppejõud ja teadurid on oma eriala tippspetsialistid ja avalikkuses tunnustatud asjatundjad, KVI lõpetajate hulgas on Eesti noorema põlve juhtivad kunstiteadlased, kuraatorid, -kriitikud ja -teoreetikud.", "KVI õpetab ainsana Eestis kunstiteadust kõigil kolmel – bakalaureuse, magistri ja doktori – õppetasemel.", "Magistriõppes saab keskenduda kas kunstiteaduse, kuraatoriõppe või museoloogia suunale. Magistriõpe pakub süvendatult erialaseid teadmisi ning oskusi. Suurem rõhk on metodoloogiatel ja kunstiteoreetilistel käsitlustel ning spetsiifilistel uurimisprobleemidel. Tänu mitmele õppesuunale ja valikainetele saab üliõpilane ise oma õpingute käiku kujundada. Teoreetiline õpe toimub suures osas seminarivormis, mis samuti annab võimaluse aktiivselt õppeprotsessis osaleda. Teoreetilisi aineid toetavad õppekäigud, -reisid ja praktilised ülesanded. Magistriõppe hulka kuulub ka toimetajapraktika, kus proovitakse kätt kunsti- või arhitektuurikriitikuna mõne ajalehe või ajakirja juures. Magistriõppes on võimalik astuda ka ingliskeelsele õppekavale kirjandus-, visuaalkultuuri- ja filmiteooria (ühisõppekava Tallinna Ülikooli humanitaarteaduste instituudiga) või valida selle õppekava aineid."],
        outcomes: ["Omab süvateadmisi lääne kultuuriruumi kujutavkunsti, visuallkultuuri, disaini ja arhitektuuri ajaloost", "Omab ülevaadet kaasaegse kunstiteaduse, sh kunsti, disaini ja arhitektuuri ajaloo ja teooria peamistest suundadest", "Tunneb eriala aktuaalseid probleeme ja terminoloogiat ning oskab neid erialatöös rakendada", "Omab süvendatud teadmisi vähemalt ühes eriala kitsamas valdkonnas", "Oskab hinnata kunstiteaduse positsiooni, selle seoseid teiste teadusvaldkondadega ning ühiskondlikku rolli", "Oskab kategoriseerida, hinnata, analüüsida ja tõlgendada visuaalse, objektilise ja ruumilise kultuuri nähtusi ja arenguid", "On pädev lahendama praktilisi ja teoreetilisi ülesandeid vähemalt ühes eriala kitsamas valdkonnas", "Oskab kriitiliselt hinnata oma tegevust eriala probleemide ja uurimisküsimuste lahendamisel, valida sobivaid meetodeid ja hinnata valikute tagajärgi", "Omab vajalikku ettevalmistust õpingute jätkamiseks doktoriõppes ja osalemiseks uurimistöös", "Oskab hinnata ja analüüsida kultuuri arenguprotsesse", "Väärtustab professionaalseid hoiakuid ja teadvustab erialase tegevuse rolli ühiskonnas", "Omab väga heal tasemel suulist ja kirjalikku väljendusoskust emakeeles ning valdab vähemalt kahte võõrkeelt", "On omandanud individuaalse õppimise oskuse ja on avatud jätkuvaks professionaalseks arenguks."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/kunstikultuuri-teaduskond/",
        spots: 14,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "20. ja 21. sajandi disaini probleeme 2*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 1", eapCount: 3),
                    Course(name: "Loomeettevõtlus*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi disaini probleeme 1*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi kunsti probleeme 1*", eapCount: 3),
                    Course(name: "Erikursus: Mõis - Balti ajaloo fenomen: transdistsiplinaarseid vaatenurki*", eapCount: 3),
                    Course(name: "Kunstimaailm ja kuraatorlus 1*", eapCount: 6),
                    Course(name: "Kunstimuuseumide ajalugu ja teooria*", eapCount: 6),
                    Course(name: "Kunstiteaduse ajalugu ja teooria", eapCount: 9),
                    Course(name: "Meistrikursus: Kunst ja avalik ruum*", eapCount: 6)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Arhitektuuriteooria ajalugu 2*", eapCount: 3),
                    Course(name: "Projektikirjutamise põhimõtted*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 2", eapCount: 3),
                    Course(name: "20. ja 21. sajandi kunsti probleeme 2*", eapCount: 3),
                    Course(name: "Kunstisotsioloogia (uurimismeetodid 2)", eapCount: 3),
                    Course(name: "Kriitilise teooria ja visuaalkultuuri võtmemõisted", eapCount: 6),
                    Course(name: "Erikursus: Mõis - Balti ajaloo fenomen: transdistsiplinaarseid vaatenurki*", eapCount: 3),
                    Course(name: "Hans-Georg Gadameri esteetika eesti kunstimaastikul*", eapCount: 3),
                    Course(name: "Meistrikursus: Kunst, teadus ja ökoloogia - eksperimentaalsed keskkonnad hilisel nõukogude ajal*", eapCount: 6),
                    Course(name: "Erikursus: Muuseumi- ja galeriiharidus*", eapCount: 3),
                    Course(name: "Kriitikaseminar", eapCount: 6),
                    Course(name: "Kriitilise teooria seminar", eapCount: 6),
                    Course(name: "Kunstimaailm ja kuraatorlus 2", eapCount: 6),
                    Course(name: "Erikursus: Välispraktika*", eapCount: 3),
                    Course(name: "Kuraatoriõppe seminar 1", eapCount: 3),
                    Course(name: "Muuseumiharidus ja -kommunikatsioon", eapCount: 6),
                    Course(name: "Muuseumi kogud ja säilituspraktikad", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Semiootika (uurimismeetodid 1)", eapCount: 3),
                    Course(name: "Toimetajapraktika", eapCount: 6),
                    Course(name: "Kunstiteaduse seminar", eapCount: 6),
                    Course(name: "Näituse kujundamise ja tehnilise teostamise põhimõtted", eapCount: 3),
                    Course(name: "Galeristiõpe", eapCount: 6),
                    Course(name: "Kuraatoriõppe seminar 2", eapCount: 3),
                    Course(name: "Näituseprojekt", eapCount: 6),
                    Course(name: "Muuseumipraktika", eapCount: 6),
                    Course(name: "Museoloogia seminar", eapCount: 6)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Arhitektuuriteooria ajalugu 1*", eapCount: 3),
                    Course(name: "Magistriprojekt", eapCount: 6),
                    Course(name: "Näituse kujundamise ja tehnilise teostamise põhimõtted", eapCount: 3),
                    Course(name: "Galeristiõpe", eapCount: 6),
                    Course(name: "Kuraatoriõppe seminar 2", eapCount: 3),
                    Course(name: "Näituseprojekt", eapCount: 6),
                    Course(name: "Magistritöö", eapCount: 24)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Muinsuskaitse ja Konserveerimine",
        level: .masters,
        type: .kunstikultuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["EKA on ainus kõrgkool Eestis, kus on võimalik omandada muinsuskaitse ja arhitektuuri ning kunsti konserveerimise ja restaureerimise alast akadeemilist kõrgharidust. Muinsuskaitse ja konserveerimise eriala tegeleb kõige laiemas mõttes füüsilise ja vaimse pärandi väärtustamise, hoidmise ja kaitsmisega.", "Kitsamalt õpetatakse nii arhitektuuri- kui ka kunstimälestiste uurimise ja konserveerimise teoreetilisi printsiipe ning praktilisi oskusi. Tegu on erakordselt põneva, vaheldusrikka ja suure missiooniga erialaga. Muinsuskaitse ja konserveerimise osakonnas õpivad inimesed, kes soovivad teha ära midagi praktilist, silmaga nähtavat ja käega katsutavat, ning selle kaudu maailma paremaks muuta.", "Kultuuripärand on vajalik ühiskonna kestmiseks ja arenguks. Muinsuskaitse eesmärgiks on selle pärandi hoidmine, väärtustamine ja tulevikku kandmine. Kui varem käsitleti pärandina vaid materiaalseid objekte, siis tänapäeval vaadeldakse seda inimkultuuri ja looduskeskkonna lõimunud tervikuna. Mälukandjana on ajaloolised esemed ja hooned meie ümber omandanud nii emotsionaalse kui funktsionaalse tähenduse.", "Muinsuskaitse ja konserveerimise eriala tegeleb kõige laiemas mõttes füüsilise ja vaimse pärandi väärtustamise ja kaitsmisega. Olgu selleks siis ajalooliste hoonete, maastike, kunsti- või tarbeesemete, aga ka nendesse kätketud mälu ja mälestuste säilitamine. Kitsamalt õpetatakse nii arhitektuuri- kui ka kunstimälestiste uurimise ja konserveerimise teoreetilisi printsiipe ning praktilisi oskusi. Tegu on erakordselt põneva, vaheldusrikka ja suure missiooniga erialaga.Erialaõpe lähtub kaasaegse keskkonnakäsitluse filosoofiast ja säästva arengu põhimõtetest.", "Õppe eesmärgiks on anda tudengitele erialaseid teadmisi ja oskusi ning kujundada hoiakuid ja väärtushinnanguid, mis aitavad teadvustada loodus-, sotsiaal- ja kultuurikeskkonna seoseid. EKA on ainus kõrgkool Eestis, kus on võimalik omandada muinsuskaitse ja arhitektuuri ning kunsti konserveerimise ja restaureerimise alast akadeemilist kõrgharidust. Osakonna õppejõud on oma ala tunnustatud ja kõrgelt hinnatud spetsialistid.", "Muinsuskaitse ja konserveerimise õppekava on avatud muutustele ja arengutele kaasaegse keskkonnakäsitluse filosoofias ning muinsuskaitse ja restaureerimise teoorias ja praktikas, lähtudes säästva arengu põhimõtetest. Tegemist on paljuski interdistsiplinaarse alaga, mis hõlmab baasteadmisi nii filosoofiast, kunsti- ja arhitektuuriajaloost kui restaureerimise ja konserveerimisega seotud spetsiifilistest valdkondadest, sh konserveerimisteooria, keemia, ehitusfüüsika, materjali- ja inseneriteadused jpm. Akadeemilise auditoorse tööl kõrval on olulised ka mitmesugused praktikad ja õppesõidud Eestis ning välismaal. Magistriõppes on erialal võimalik spetsialiseeruda muinsuskaitse ja konserveerimise, arhitektuuri konserveerimise või museoloogia õppesuunale. ", "Eesti Kunstiakadeemial on õigus anda konserveerimise eriala bakalaureuse õppekava läbinuile kutseid arhitektuuripärandi spetsialist, tase 6 ning konservaator, tase 6 esmane kutse."],
        outcomes: ["Omab süsteemset ülevaadet muinsuskaitse ja konserveerimise põhilistest erialastest kontseptsioonidest, teooriatest, praktikast ja seadusandlikust raamistikust", "Tunneb eriala teoreetilisi arengusuundi, aktuaalseid probleeme ja rakendamisvõimalusi", "Omab süvendatud teadmisi ühes eriala kitsamas valdkonnas, vastavast praktikast ja problemaatikast", "Oskab vaadelda muinsuskaitset ja konserveerimist seosena teiste lähedaste uurimisdistsipliinidega ning leiab nendevahelisi interdistsiplinaarseid seoseid", "Teab muinsuskaitse ja konserveerimise alasest uurimistegevusest tulenevate teadmiste praktilise rakendamise põhimõtteid ja võimalusi", "Suudab loovalt valida muinsuskaitse ja konserveerimise teoreetiliste seisukohtade rakendusi praktilises kutsealases tegevuses", "Omab piisavat pädevust iseseisvalt lahendama praktilisi ülesandeid mõnes eriala kitsamas valdkonnas", "Oskab kriitiliselt hinnata oma tegevust eriala probleemide ja uurimisküsimuste lahendamisel, valida sobivaid meetodeid ja hinnata valikute tagajärgi", "Oskab rakendada teiste valdkonnapõhiste sidusdistsipliinide teooriaid ja metodoloogiat erialases uurimistöös", "Valdab erialakeelt (ka võõrkeelset) kõrgtasemel", "Omab vajalikku ettevalmistust õpingute jätkamiseks doktoriõppes ja osalemiseks uurimistöös."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/kunstikultuuri-teaduskond/",
        spots: 12,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "20. ja 21. sajandi disaini probleeme 1*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi kunsti probleeme 1*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi disaini probleeme 2*", eapCount: 3),
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 1", eapCount: 3),
                    Course(name: "Erialaprojekt 1", eapCount: 2),
                    Course(name: "Muinsuskaitse ajalugu ja teooria 1", eapCount: 2),
                    Course(name: "Eesti muinsuskaitse ajalugu", eapCount: 2),
                    Course(name: "Arhitektuuri konserveerimine: Ajaloolised materjalid ja restaureerimistehnoloogiad 2", eapCount: 2),
                    Course(name: "Arhitektuuri konserveerimine: Allikad ja uurimine", eapCount: 3),
                    Course(name: "Arhitektuursete sõlmede koostamine mälestisel*", eapCount: 1),
                    Course(name: "Ehitiste restaureerimise insenerlikud aspektid", eapCount: 4),
                    Course(name: "Pärandi kiirabi – kultuuripärandi kaitsmine kriisides*", eapCount: 2),
                    Course(name: "Pildilise pärandi digitaalne elu, ühisloome. Keskkonna refotograafiline dokumenteerimine*", eapCount: 2),
                    Course(name: "Kunstimuuseumide ajalugu ja teooria*", eapCount: 6),
                    Course(name: "Arhitektuuri konserveerimine: Ajaloolised materjalid ja restaureerimistehnoloogiad 1*", eapCount: 3),
                    Course(name: "Arhitektuuri konserveerimine: Ajalooliste hoonete ja hoonestusalade projekteerimine ja planeerimine*", eapCount: 3),
                    Course(name: "Mälestis ja keskkond 1*", eapCount: 2),
                    Course(name: "Erialaprojekt 3*", eapCount: 2)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 2", eapCount: 3),
                    Course(name: "20. ja 21. sajandi kunsti probleeme 2*", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 2*", eapCount: 3),
                    Course(name: "Muinsuskaitse ajalugu ja teooria 2", eapCount: 2),
                    Course(name: "Arhitektuuri konserveerimine: Ajaloolised materjalid ja restaureerimistehnoloogiad 2", eapCount: 2),
                    Course(name: "Linnaruumi restaureerimine", eapCount: 3),
                    Course(name: "Arhitektuuri konserveerimine: Keskkond ja arhitektuur", eapCount: 1),
                    Course(name: "Arhitektuuri konserveerimine: Praktilised töövõtted restaureerimises", eapCount: 2),
                    Course(name: "Arhitektuursete sõlmede koostamine mälestisel*", eapCount: 1),
                    Course(name: "Arhitektuuri konserveerimine: Ajaloolise hoone restaureerimisproblemaatika", eapCount: 4),
                    Course(name: "Arhitektuuri konserveerimine: Muinsuskaitseline järelevalve", eapCount: 2),
                    Course(name: "Ajaloolise hoone uuringud 1", eapCount: 1),
                    Course(name: "Hüljatud maastikud 1", eapCount: 3),
                    Course(name: "Pildiline pärand ja digitaalne talgutöö Ajapaiga näitel*", eapCount: 1),
                    Course(name: "Arhitektuuri konserveerimine: Ajaloolised interjöörid*", eapCount: 2),
                    Course(name: "Hüljatud maastikud 2*", eapCount: 3),
                    Course(name: "Erialaprojekt 5: Kuusalu kiriku uurimispraktika*", eapCount: 2),
                    Course(name: "Erialaprojekt 4: Pärandi avariitööd – Narva-Jõesuu kunstivara päästmine*", eapCount: 2),
                    Course(name: "Muuseumiharidus ja -kommunikatsioon*", eapCount: 6),
                    Course(name: "Väliskunsti ajaloo praktika*", eapCount: 2),
                    Course(name: "Muuseumi kogud ja säilituspraktikad*", eapCount: 6),
                    Course(name: "Erialaprojekt 6*", eapCount: 2),
                    Course(name: "Magistriseminar", eapCount: 2)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Arhitektuuriteooria ajalugu 1*", eapCount: 3),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Loomeettevõtlus", eapCount: 3),
                    Course(name: "Erialaprojekt 2", eapCount: 2),
                    Course(name: "Muinsuskaitse õiguslikud alused", eapCount: 2),
                    Course(name: "Füüsikalis-keemilised uurimismeetodid restaureerimises", eapCount: 1),
                    Course(name: "Muinsuskaitselise järelevalve praktika", eapCount: 2),
                    Course(name: "Sõlmelahendused restaureerimisprojektis", eapCount: 3),
                    Course(name: "Ajaloolise hoone uuringud 2", eapCount: 3),
                    Course(name: "Erialaprojekt 7*", eapCount: 2),
                    Course(name: "Museoloogia seminar*", eapCount: 6),
                    Course(name: "Ehitiste restaureerimise insenerlikud aspektid*", eapCount: 4),
                    Course(name: "Muuseumipraktika*", eapCount: 6),
                    Course(name: "Mälestis ja keskkond 2*", eapCount: 2),
                    Course(name: "Erialaprojekt 8*", eapCount: 2),
                    Course(name: "Eesti keskaja arhitektuuri ja kunsti restaureerimine*", eapCount: 2),
                    Course(name: "Näituseprojekt*", eapCount: 6),
                    Course(name: "Magistrikonverents", eapCount: 3),
                    Course(name: "Magistritöö projekt", eapCount: 4)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Erialaprojekt 9*", eapCount: 2),
                    Course(name: "Erialaprojekt 10*", eapCount: 2),
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Sisearhitektuur",
        level: .masters,
        type: .arhitektuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Sisearhitektuuri erialal tegeletakse ruumiga, mis inimest kõige vahetumalt ümbritseb. Õpitakse, kuidas luua inspireerivaid, paindlikke, säästlikke ning kaasaegseid ruume inimesele elu igaks etapiks, lapsepõlvest vanaduseni.", "Hea ruum sünnib teravast konteksti tajust, põhjalikust materjali tundmisest ning tugevatest tehnilistest oskustest, ent ka teadmistest ruumiloomet toetavates valdkondades – antropoloogias, ruumipsühholoogias, ruumisemiootikas. Sisearhitektid on tundlikud ja tähelepanelikud nii kultuuri- kui ruumikonteksti suhtes, kuna parim ruum sünnib seest väljapoole, võrsub samavõrd sisearhitekti teadmistest ja tehnilistest oskustest kui tema võimest küsida õigeid küsimusi ja leida inspiratsiooni olemasolevast.", "Sisearhitektuuri tudengid töötavad juba õppetöö raames projektidega, mis pakuvad inspireerivaid ruumilahendusi erinevatele ühiskonnagruppidele ja seovad kogukondi. Lõpetajate hulgas on silmapaistvate interjööride loojaid, kuid ka selliseid ruumiloojaid, kes rajavad isikupäraseid keskkondi, kombineerides arhitektuuri, disaini ja tehnoloogiat.", "Sisearhitektuuri valdkond on muutumises, kuna ka keskkond ja inimeste vajadused teisenevad pidevalt – maailm linnastub, tööd tehakse aina mobiilsemalt, inimeste elud on pikemad, aga ka üksildasemad, autod on peagi isesõitvad, kliima muutub. Need ja veel mitmed suured trendid mõjutavad homsete sisearhitektide tööd ning seepärast õpetatakse EKA sisearhitektuuriosakonnas tudengeid looma ruume, mis vastavad inimeste kiiresti muutuvatele vajadustele, olgu need siis tööruumid, kodud või avalik ruum.", "Tudengeid suunatakse olema tundlik ja tähelepanelik nii kultuuri- kui ruumikonteksti suhtes, kuna parim ruum sünnib seest väljapoole, võrsub samavõrd sisearhitekti teadmistest ja tehnilistest oskustest kui võimest küsida ruume luues õigeid küsimusi ja leida inspiratsiooni olemasolevast. Lisaks tehnilistele oskustele treenitakse tudengis üldistus- ja analüüsivõimet, mõõdutunnet, oskust olla kontaktis iseendaga ning teha ka meeskonnatööd.", "Sisearhitektuuri bakalaureuse õppekava läbimine kestab kolm aastat, õpe on päevane ning toimub suures osas eesti keeles, kuid välisõppejõudude käe all osalt ka inglise keeles. Bakalaureuseõppe parimad tööd on sündinud kohalikus kontekstis, inspireerituna Eesti kliimast, traditsioonilisest ruumist ja mõtteilmast. Siin sünnivad juba esimesest kursusest alates tudengiprojektid, mis kõnelevad Eestist, kuid kõnetavad ka rahvusvahelist publikut. Tudengeid õpetavad kohalikud inspireerivaimad sisearhitektid, arhitektid, disainerid ning välislektorid disainikoolidest üle maailma. Tudengid teevad õppeprojektide raames koostööd teiste EKA erialadega, mis on professionaalide ettevalmistuses eriti oluline, sest sisearhitektuur on pea alati meeskonnatöö.", "Sisearhitektuuri osakonna magistriõpe on stuudiopõhine. Esimesel aastal tutvustatakse uurimus- ja sekkumispõhiseid meetodeid: uuritakse näiteks ruumi ja poliitika seoseid, jääkmaterjalide kasutamist ning tehnoloogiaid, mis virtuaalset ja füüsilist ruumi ühendavad. Välitöödel analüüsitakse kohaliku ruumi spetsiifikat ning välisekspeditsioonidel tutvutakse uurimisteemadega seotud temaatikaga piiri taga. Esimesel aastal panevad tudengid aluse magistritööle ning teisel aastal keskendutaksegi peamiselt selle valmimisele. Magistriõpe on mõeldud neile, kel on selja taga ruumihariduse bakalaureuseõpingud ning võib-olla ka mõningane töökogemus valdkonnas."],
        outcomes: ["Omab ülevaadet esteetika, filosoofia, sotsiaalteaduste ja kultuuriajaloo põhimõistetest ning enam levinud teoreetilistest süsteemidest", "Valdab akadeemilise uurimistöö metodoloogia aluseid", "Valdab majanduse funktsioneerimise põhimõtteid", "Tunneb info- ja kommunikatsiooni- ning projekteerimis-tehnoloogia aluseid", "Omab kirjalikku, suulist ja visuaalset eneseväljendus- ning suhtlemisoskust", "On võimeline analüüsima ühiskondliku ruumi kasutust tervikuna mõistes selle sotsiaalseid, psühholoogilisi ja ruumilisi aspekte", "Tunneb arhitektuuri, sisearhitektuuri ja kunsti ajaloolist arengut, sisearhitektuuri kui eriala olemust ja vajalikkust tänapäeva ühiskonnas, konstruktiivses ja tehnoloogilises valdkonnas", "Tunneb erinevaid disainiprotsessi tööriistu ja meetodeid ning oskab neid loovalt oma töös rakendada", "Tunneb kaasaegseid materjale ja tehnoloogiaid ning oskab neid loovalt oma töös rakendada", "Tunneb ehitusprotsessi kavandamise ja juhtimise üldpõhimõtteid", "Valdab hoonete tüpoloogia ja elukeskkonna funktsionaalset kavandamist", "Tunneb ergonoomia ja interaktsiooni disaini aluseid", "Tunneb maailma ja eesti kunstiajalugu", "Tunneb ettevõtlust reguleerivat seadusandlust mahus, mis lubab sisearhitektil juhtida bürood või projekteerimis-ettevõtet", "Oskab näha terviklikult ja omavahel seostatult tellija soove ning eksisteerivat tegelikkust; - oskab projekteerimisprotsessis katsetada, analüüsida ja hinnata erinevaid lahendusi ja teha nendest järeldusi, mis piisava loomingulise, filosoofilise, metoodilise ja teoreetilise järjekindlusega kujunevad lõplikul projektlahendusel", "Oskab projektlahenduse viia kvaliteedini, mis toetab kujunevas tegelikkuses tellija ja avalikkuse huvide arvestamist", "Oskab kasutada erinevaid esitlustehnikaid; - valdab seletuskirjade, dokumentide ja ülevaadete  koostamist, mis selgelt, analüütiliselt ja loogiliselt katavad kogu erialavaldkonna", "Valdab ehitise tehnosüsteemide lahenduste põhimõtteid, mis võimaldab püstitada ülesandeid vastava eriala spetsialistile", "Valdab nõustamist ja järelvalve teostamist oma eriala lõikes ehitus- ja projekteerimisprotsessis."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/arhitektuuriteaduskond/",
        spots: 7,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 1", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 1", eapCount: 3),
                    Course(name: "Ruumisemiootika", eapCount: 3),
                    Course(name: "Loovuurimus*", eapCount: 4),
                    Course(name: "Keskkonnapsühholoogia", eapCount: 2),
                    Course(name: "Arendamise suund 1*", eapCount: 4),
                    Course(name: "Magistristuudio 1", eapCount: 6),
                    Course(name: "Ruumikunst", eapCount: 2),
                    Course(name: "Presenteerimise meetodid 1", eapCount: 2)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 2", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 2", eapCount: 3),
                    Course(name: "Kaasaegse arhitektuuri tekstid", eapCount: 2),
                    Course(name: "Eetiline ruum", eapCount: 2),
                    Course(name: "Tehnoloogiline ruum", eapCount: 2),
                    Course(name: "Kohaspetsiifiline ehitus", eapCount: 3),
                    Course(name: "Magistristuudio 2", eapCount: 6),
                    Course(name: "Arendamise suund 2", eapCount: 4),
                    Course(name: "Presenteerimise meetodid 2", eapCount: 2)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Loomeettevõtlus", eapCount: 3),
                    Course(name: "Magistriprojekt 2", eapCount: 5),
                    Course(name: "Magistriprojekt 3", eapCount: 5),
                    Course(name: "Magistriprojekt 4", eapCount: 5),
                    Course(name: "Magistriprojekt 1", eapCount: 5)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Välitööd", eapCount: 2),
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Stsenograafia",
        level: .masters,
        type: .kunstikultuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Stsenograafia erialal tegeletakse nii teatri- kui ka filmilavastuste visuaalsete terviklahenduste loomisega. Stsenograafia on olemuselt paljusid valdkondi koondav ala ning oluline lavastuse instrument, mille abil juhitakse vaataja kujutlust. Et siin segunevad mitmed erinevad valdkonnad, hinnatakse kaasaegsetes etenduskunstides järjest enam autoripositsiooni olemasolu. Kombineeritakse edukalt nii arhitektuurilisi kui ka performatiivseid elemente, videost ja valgusest rääkimata.", "Lisaks erialateadmistele omandatakse stsenograafiaõppe käigus kogemusi ka teistes kaasaegse kunsti valdkondades. Stsenograafia osakonnas õpivad avarapilgulised ja laialdase kultuurihuviga inimesed, kes suudavad iseseisvalt loomingulisi protsesse käivitada ja läbi viia.", "Eesti Kunstiakadeemia ainus õppeasutus Eestis, kus on võimalik stsenograafia eriala kõrgtasemel omandada. Stsenograafia osakonnas lähenetakse õpetusele terviklikult: loomingus pole tähtis mitte ainult tehnika ja professionaalsus, vaid ka kunstiline tervikmõju. Stsenograafia on fiktsionaalsete maailmade loomise kunst, mis tugineb vaatajat emotsionaalselt ja vaimselt rikastavate stsenograafiliste kujutiste ellukutsumisele. Nii teatri- kui ka filmikunst tegeleb lugude jutustamisega piltides. Tänapäeval on stsenograafia eemaldunud pelgast dekoratiivsusest ning liikunud palju mitmekülgsema ja multidimensionaalsema lähenemise suunas. Samas pole vanu tehnikaid ja tehnoloogiaid unustatud, vaid neid kombineeritakse uuenduslike digitaaltehnoloogiliste lahendustega. Stsenograafia eriala uuenduslik õppekava on koostatud pidades silmas parimaid erialatraditsioone.", "Stsenograafiaõppes on olulisel kohal multi- ja interdistsiplinaarsus. Stsenograafia on klaster, mis on läbi põimunud teiste visuaalkultuuri distsipliinide ja tehnoloogiatega. Stsenograafiaõppes pööratakse suurt tähelepanu praktikale: ilma praktiliste lavastusprojektideta ei oleks võimalik stsenograafiat õpetada. Töötatakse nii ruumimudelite kui ka päris ruumidega, sealhulgas leitud, kohandatud, avalike ja privaatsete ruumidega. Eriala keskseid väärtusi on koostöö, sest vaid koos töötades on lavastusgruppidel võimalik edukalt tegutseda.", "Stsenograafia õpe toimub kursuste kaupa ning semestri lõikes erinevate õppejõudude juhatusel. Nõnda juhatatakse üliõpilane lihtsamatelt keerukamate ülesannete juurde vastavalt õppekava struktuurile. Sügissemestril on õpetuse põhirõhk teatriga seotud projektidel, kevadsemestril tegeletakse filmiprojektide lavastamisega. Õpe toimub nii seminarivormis kui ka individuaalselt. Üliõpilaselt eeldatakse pidevat kaasamõtlemist ja ideede väljapakkumist kogu semestri vältel. Stsenograafia õppekava läbimisel tutvuvad üliõpilased valdkondadega nagu kostüüm, grimm, valgus ja ruum. Kolm aastat bakalaureuseõpet sisaldab erialaprojekte, tugiaineid, valikaineid, teooriat ja praktikat. Lisaks stuudioruumile on stsenograafia osakonnas olemas ka kostüümistuudio, arvutiklass, väike loenguruum ning õppeklassid tudengitele."],
        outcomes: ["Omab ülevaadet lavastuskunstialastest teoreetilistest suundumustest", "Suudab stsenograafilisi ideid väljendada isikupäraselt ja professionaalselt, kasutades erialast leksikat", "Mõistab sügavuti lavastusprotsessi ning kunstnik-lavastaja keskset rolli selles protsessis", "Lahendab lavastusspetsiifilisi probleeme iseseisvalt ning koostöös lavastusgrupiga", "On koostöös lavastusmeeskonnaga võimeline algatama uuenduslikke hübriidseid lavastusprojekte", "Omandab vajaliku ettevalmistuse õpingute jätkumiseks doktoriõppes."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/erialad/stsenograafia/",
        spots: 6,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€"
    ),
    majorsMinors(
        name: "Tootedisain",
        level: .masters,
        type: .arhitektuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Disain on materiaalse keskkonna aktiivne loome, mis teadvustab sotsiaalseid, kultuurilisi, ökoloogilisi ja majanduslikke vastastikmõjusid. Disain saab alati alguse lahendamist vajavast probleemist, mis võib lähtuda nii ühiskonnast, ärimaailmast kui ka autori isiklikest huvidest ja tõekspidamistest. Disaini suurimaks väljakutseks tänapäeval on ülikiire tehnoloogia areng ja kõikehaarav digitaliseerumine ning samas üha teravamalt maailma mõjutav ebakindlus inimkonna ja ökosüsteemi tuleviku ees. Disaini ülesandeks on muutusi vormida kasulikeks, mõistetavateks, esteetilisteks ja keskkonnasõbralikeks esemeteks, teenusteks ja protsessideks. Globaalne kliimapoliitika dikteerib disaineritele kõikide probleemide lahendamisel jätkusuutliku lähenemise. Uuendatud õppekava keskendubki selle teadmise kinnistamisele, arendamisele ja jagamisele.", "Alates 2020. aasta sügisest käsitleme kõiki disaini erialaprojekte jätkusuutlikkuse võtmes ning õpetame sellel põhinevaid teooriaid ja metoodikaid. Erialaained on jaotunud kolme teemaplokki:", "I Jätkusuutlikud toote-teenuse süsteemid – Õpitakse jätkusuutliku disaini metodoloogiat, keskendutakse ringmajandusele ja ringmajanduspõhistele toote-teenuse süsteemide loomise metoodikatele. Analüüsitakse ettevõtteid ning nende toodete ja teenuste ökosüsteeme, luuakse uusi jätkusuutlike toote-teenuse süsteemide kontseptsioone.", "II Eksperimentaalne vorm ja mõte – Selles stuudios saab tudeng töötada materjalis ja pühenduda oma disainipraktika arendamisele. Praktilise stuudio mõte on toetada üliõpilase personaalse disainikeele arengut, vormikäsitlust ja oskust tehtut mõtestada. Stuudio raames valmivad eksperimentaalsed objektid ja tooteprototüübid.", "III Disaini ja muutuste juhtimine – Analüüsitakse muutuste toimumist organisatsioonis ja laiemalt ühiskonnas, kogutakse kommunikatsiooni- ja psühholoogiaalaseid teadmisi. Õpitakse disainijuhtimist, analüüsitakse ettevõtete tooteportfelli, disainikeelt, ärimudelit, tootmist, turupositsiooni ja trende.", "Sarnaselt kunstiakadeemia Disaini ja rakenduskunsti magistriõppega on ka Tootedisaini uues õppekavas fookuses materiaalsus, vorm ja esteetika, kuid lisaks autorikesksele lähenemisele õpitakse töötama ka tootmisettevõtete kontekstis. Sarnaselt EKA magistriõppekavadega Interaktsioonidsaini ning Disaini ja tehnolooogia tulevik käsitletakse toote-teenuse süsteeme, kuid seda eelkõige jätkusuutlikkuse kontekstis. Erinevalt mainitud programmidest on Tootedisaini õppekava rõhuasetus esemelisel praktikal ja jätkusuutlikkusel.", "Välisõppejõudude läbiviidavad erialaprojektid pakuvad vajalikku kogemust konkureerimaks disainerina tööjõuturul ka väljaspool Eestit. Eesti Kunstiakadeemial on tihedad sidemed mitmete rahvusvaheliselt tunnustatud disainikõrgkoolidega. Üliõpilastel on kujunenud heaks tavaks veeta vähemalt üks semester välisõpingutel.", "Arendame teadmisi ja oskusi väiksemates gruppides tagades seeläbi personaalse õppe ja aktiivse suhtluse tudengite ja õppejõudude vahel. Kohtumine nii kasutaja- kui ka autorikesksete lähenemiste ja mõtteviisidega võimaldab üliõpilasel arendada ja lihvida oma unikaalset loomingulist profiili.", "Sisseastujalt eeldame piisavat kursisolekut disainivaldkonna hetkeolukorraga nii Eestis kui kaugemal, tehnilisi ja kunstilisi baasoskusi (3D-modelleerimine, maketeerimine, visandamine), teadmisi tootmis- ja materjalitehnoloogiatest ning soovi loominguliselt ja erialaselt areneda."],
        outcomes: ["On võimeline töötama disainerina tööstuses, olles interdistsiplinaarse tootearendusmeeskonna liige või disainiteenust müüv disainer-konsultant", "On võimeline tegutsema teadurina disainivaldkonnas, arendades disainialaseid metoodikaid ja teadmisi, oskab analüüsida disaini rolli ja lahendusi, ning on võimeline osalema avalikus disainialases diskussioonis", "Tunneb loovat tootearendusprotsessi tööstuses ja on võimeline tegutsema ettevõtluse disainistrateegia juhina mõistes kaasaegse ettevõtluskeskkonna toimimist ja disaini seoseid turundusprotsessi ja ettevõtte kuvandi loomisega", "Tunneb disainiprotsessi ja omab oskusi disaini ja tehnoloogia integreerimiseks arendustegevuses, omab teadmisi ja oskusi kasutajakeskse arendusprotsessi läbiviimiseks, oskab sooritada kasutaja- ja disainiuuringuid ning oma teadmisi ja töö tulemusi selgelt ning arusaadavalt kommunikeerida", "Tunneb disainiprojekti erinevaid etappe, disainiülesande püstitamist ja projekteerimisele eelnevaid uurimismetoodikaid. Omab teadmisi kaasaegsetest modelleerimismeetodidest ja oskab neid rakendada", "Omab valmidust jätkuõppeks doktorantuuris, ning professionaalseks enesetäiendamiseks."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/erialad/tootedisain/oppe-sisu/",
        spots: 5,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "20. ja 21. sajandi disaini probleeme 2*", eapCount: 3),
                    Course(name: "Loomeettevõtlus", eapCount: 3),
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 1", eapCount: 3),
                    Course(name: "20. ja 21. sajandi disaini probleeme 1*", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 1*", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Eksperimentaalne vorm ja süsteem 1", eapCount: 6),
                    Course(name: "Eksperimentaalne vorm ja süsteem 2", eapCount: 6),
                    Course(name: "Magistritöö seminar 1", eapCount: 3)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 2", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 2*", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 6),
                    Course(name: "Aktivism ja muutuste prototüüpimine 1", eapCount: 6),
                    Course(name: "Aktivism ja muutuste prototüüpimine 2", eapCount: 6),
                    Course(name: "Magistritöö seminar 2", eapCount: 3)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Toote-teenuse-süsteemid 1", eapCount: 6),
                    Course(name: "Toote-teenuse-süsteemid 2", eapCount: 6),
                    Course(name: "Praktika", eapCount: 6),
                    Course(name: "Magistritöö seminar 3", eapCount: 3)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [Course(name: "Magistritöö", eapCount: 30)]
            )
        ]
    ),
    majorsMinors(
        name: "Urbanistika",
        level: .masters,
        type: .arhitektuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["EKA urbanistika ingliskeelses magistriõppes uuritakse süvendatult, kuidas linnalist keskkonda sotsiaalselt, poliitiliselt ja tehnoloogiliselt luuakse. Urbanistika seob omavahel tegemise ja mõtlemise erinevad tahud kontseptuaalselt tugeva ning uurimuspõhise kriitilise lähenemisega kaasates teadmised näiteks linnauuringute ja -planeerimise, arhitektuuriteooria, sotsioloogia, linnaetnograafia, geograafia jm valdkondadest.", "Elukeskkonnaga seotud küsimused on sotsiaalses ja poliitilises sfääris olulisemad kui kunagi varem. Urbanistika eriala aitab tudengitel mõista tänapäeva linna kujundavate institutsioonide, mõjujõudude ja konfliktide dünaamikat ning pakub niisuguste keskkondade mõistmiseks ning sellega aktiivseks suhestumiseks erinevaid viise ja võtteid. Õppetöös pööratakse tähelepanu linna kahetisele loomusele ühelt poolt ehitatud keskkonna, teisalt sotsiaalsete protsesside kogumina, mistõttu käsitleb EKA urbanistika eriala laiemat teemaderingi kui vaid linnadele mõeldud lahendused.", "Kaheaastane inglisekeelne magistriprogramm käsitleb kaasaegset linnakeskkonda mitmete sidusvaldkondade perspektiivist nagu näiteks urbanistika, linnaplaneerimine, arhitektuuriajalugu, linnasotsioloogia ja -etnograafia ja kriitiline geograafia. Õppekava annab tudengitele teoreetilised alusteadmised linnaruumi ajaloost ja kaasaegsetest arengutest, oskuse erinevaid metodoloogiaid kasutades praktilist uurimistööd teha, analüüsida linna interdistsiplinaarsete vahenditega, arusaamise erialasest rahvusvahelisest kontekstist ning võimaluse rääkida kaasa linnaruumi planeerimises.", "Õppetöö keskmes on terve semester vältavad uurimisstuudiod, kus tudengid analüüsivad ja rakendavad erinevaid viise elukeskkondade mõtestamiseks ja disainimiseks, sealjuures mitte alati lahendusi otsides, vaid neid vaidlustades. Lisaks stuudiotööle osalevad tudengid kaasaegset linna ja arhitektuuriteooriat käsitlvatel loengutel ja seminaridel. Õppekava on rahvusvahelise suunitlusega, seda nii temaatiliselt kui välisõppejõudude kaasamise poolest. Esimese ja teise aasta tudengid osalevad tihti ainetes koos, grupid on väikesed ning palju on personaalset juhendamist. Õppetöö osana on reisitakse nii Eestis kui kaugemal, oluline on ka intensiivne välitöö."],
        outcomes: ["Teadmised uurimise metodoloogiast ja teadusfilosoofiast ning nende ajaloolisest taustast urbanistika valdkonnas", "Arusaamine linna ajaloolisest vormist ja ruumilistest, sotsiaalsetest, majanduslikest ning kultuurilistest aspektidest linnastumise protsessis", "Teadmised kaasaegsete linnade probleemidest ja suundumistest", "Teadmised meedia ja kujutavate kunstide mõjust linnade kujunemisel ja nende informatiivsusest linnade mõistmisel", "Arusaamine inimeste ja ruumi suhetest ning kasutaja vaatepunktist linnaehituses ja –planeerimises", "Hea oskuse kasutada kvantitatiivseid ja kvalitatiivseid meetodeid ruumilises analüüsis", "Piisav teadmine planeerimise süsteemidest ja vahenditest koos rõhuga linna korraldamisel, juhtimisel ja strateegilisel visioonil", "Piisavad oskused kirjaliku, graafilise ja meedia representatsiooni valdkonnas, mis lubab tegutseda avalikus ja professionaalses taustsüsteemis."],
        language: .inglise,
        majorWebsite: "https://www.artun.ee/erialad/urbanistika/",
        spots: 7,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "O€",
        modules: [
            Module(
                module: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Debatid linnaplaneerimises", eapCount: 2),
                    Course(name: "Linnageograafia", eapCount: 2),
                    Course(name: "Linna ajalugu ja teooria 1", eapCount: 6),
                    Course(name: "Joonistamine (Sissejuhatus)", eapCount: 1),
                    Course(name: "Arvutitarkvara (Sissejuhatus)", eapCount: 1),
                    Course(name: "Stuudio 1: Linnastumine", eapCount: 8),
                    Course(name: "Kunst ja linn", eapCount: 4),
                    Course(name: "Mudeliloome (Sissejuhatus)", eapCount: 1)
                ]
            ),
            Module(
                module: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Linnaturism ja tarbimine", eapCount: 2),
                    Course(name: "Linna ajalugu ja teooria 2", eapCount: 3),
                    Course(name: "Elamuehitus: disain ja poliitika", eapCount: 3),
                    Course(name: "Etnograafia", eapCount: 4),
                    Course(name: "Linna mudelid", eapCount: 4),
                    Course(name: "Stuudio 2: Linnalised tulevikud", eapCount: 8)
                ]
            ),
            Module(
                module: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Magistritöö lugemisseminar", eapCount: 5),
                    Course(name: "Linna väljakutsed", eapCount: 2),
                    Course(name: "Linnaplaneerimine", eapCount: 8),
                    Course(name: "Stuudio 3: Linnaruum", eapCount: 8),
                    Course(name: "Praktika", eapCount: 1),
                    Course(name: "Linnavaatlus", eapCount: 1)
                ]
            ),
            Module(
                module: "2. õppeaasta kevadsemester",
                courses: [Course(name: "Magistritöö", eapCount: 30)]
            )
        ]
    ),
]
