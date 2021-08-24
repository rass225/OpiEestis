let kunstiAkadeemiaBaka = [
    majorsMinors(
        name: "Animatsioon",
        level: .bachelor,
        type: .vabadKunstid,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Õppekava põhieesmärk on koolitada rahvusvaheliselt edukaid teoreetiliste teadmiste ja praktiliste oskustega animafilmi loojaid ning anda seeläbi panus animatsiooni kui kunstivormi globaalsesse arengusse ning kinnistada Eesti kui tugeva animakoolkonnaga riigi maine rahvusvahelisel kultuurimaastikul.", "Animatsioon levib ja areneb kaasajal jõudsamalt kui kunagi varem, seda eelkõige tänu interneti ja digitaalsete meediumite laialdasele kasutusele. Animatsioonist on saanud massikultuuri osa, selle üks keskseid vorme. Animatsiooni võib näha digitaalses ekraanigraafikas, arvutimängudes, muusikavideotes, filmides jne. Igasuguse filmi – sealhulgas ka animafilmi – alus on lugu. Kogu filmimaailma häda on aga heade lugude puudus. Maailma animakoolides praktiliselt puudub lugude tegemise õpetus. Hollywoodi filmide analüüs ja Aristotelese dramaturgia loeng laiendab silmaringi, kuid ei aita kuidagi lühianimafilmi stsenaariumi kirjutamisel.", "Animatsiooni õppekava eesmärgiks on:", "• Anda akadeemiline haridus animatsiooni erialal ning ettevalmistus tööks animafilmi režissöörina või animastuudio loomingulise rühma liikmena", "• Luua süsteemne ettekujutus animafilmi olemusest ning animafilmi kui spetsiifilise meediavormi rakendusvõimalustest", "Anda ettevalmistus teaduslikuks uurimistööks animatsiooni erialal", "Anda praktilised oskused tegutsemiseks animafilmiga seotud valdkondades: stsenaristika, montaaž, helisalvestus, ekraanigraafika, illustratsioon, karikatuur", "Akadeemilise järelkasvu loomine Eesti ja muu maailma kõrgkoolidesse"],
        outcomes: ["Võime edukalt tegutseda animatsiooni erialal stsenaristi, kunstniku või režissöörina", "Oskus tegutseda animastuudio loomingulise rühma liikmena ja/või selle juhina", "Oskus orienteeruda ja tegutseda animatsiooni puudutavas akadeemilises teadustöös", "Võime tegutseda animafilmiga seotud valdkondades: montaaž, helisalvestus, ekraanigraafika, pildi digitaalne töötlus, illustratsioon, graafiline disain, karikatuur", "Õppekava lõpetanud on võimelised edukalt jätkama õpinguid valitud erialal teistes ülikoolides ja õppeasutustes"],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/vabade-kunstide-teaduskond/",
        spots: 9,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Anatoomiline joonistamine 1", eapCount: 2),
                    Course(name: "Joonistamine 1", eapCount: 2),
                    Course(name: "Värviõpetus", eapCount: 3),
                    Course(name: "Loovus", eapCount: 6),
                    Course(name: "Joonisfilmi animeerimine", eapCount: 6),
                    Course(name: "Maailma animatsiooni ajalugu", eapCount: 4)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Anatoomiline joonistamine 2", eapCount: 2),
                    Course(name: "Joonistamine 2", eapCount: 2),
                    Course(name: "Mikrofilm joonisfilmi tehnikas", eapCount: 9),
                    Course(name: "Mikrofilm nukufilmi tehnikas 1", eapCount: 4),
                    Course(name: "Eesti animatsiooni ajalugu", eapCount: 3),
                    Course(name: "Meistriklass*", eapCount: 4)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika*", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine*", eapCount: 1),
                    Course(name: "Vormiõpetus", eapCount: 3),
                    Course(name: "Joonistamine 3", eapCount: 3),
                    Course(name: "Mikrofilm 3D tehnikas", eapCount: 9),
                    Course(name: "Mikrofilm nukufilmi tehnikas 2", eapCount: 5),
                    Course(name: "Stsenaristika", eapCount: 2),
                    Course(name: "Praktikad 1", eapCount: 6)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "Joonistamine 4", eapCount: 3),
                    Course(name: "Foto", eapCount: 3),
                    Course(name: "Animafilm 1", eapCount: 10)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Maalimine 1", eapCount: 3),
                    Course(name: "Animafilm 2", eapCount: 10),
                    Course(name: "Filmi kriitikaseminarid", eapCount: 3),
                    Course(name: "Visuaalne meedia", eapCount: 3),
                    Course(name: "Filmi tootmine ja turustamine", eapCount: 3),
                    Course(name: "Praktikad 2", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused*", eapCount: 2),
                    Course(name: "Maalimine 2", eapCount: 3),
                    Course(name: "Portfoolio", eapCount: 2),
                    Course(name: "Animafilm 3", eapCount: 10),
                    Course(name: "Bakalaureusetöö", eapCount: 6)
                ]
            )
            
        ]
    ),
    majorsMinors(
        name: "Arhitektuur ja linnaplaneerimine",
        level: .integrated,
        type: .arhitektuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")],
        description: ["EKA arhitektuuriteaduskonna eesmärk on valmistada ette ruumiliselt võimekaid, iseseisva ja kriitilise mõtlemise ning laiapõhjalise humanitaar- ja tehnilise haridusega arhitekte, sisearhitekte, linnaplaneerijaid ning urbaniste, pakkudes võimalusi nii praktiliseks tegevuseks kui ka erialaseks uurimistööks. Eesti Kunstiakadeemias arhitektuuri õppimist iseloomustavad väikesed õpperühmad ja individuaalne mentorlus oma ala tunnustatud professionaalidelt. Tudengeid juhendavad Eesti parimad praktiseerivad arhitektid, sisearhitektid ja linnaplaneerijad ning rahvusvaheliselt tunnustatud spetsialistid ja õppejõud tuntud arhitektuurikoolidest üle maailma. Oleme oma pikaajalised kogemused ruumilises mõtlemises ühendanud uute tehnoloogiatega ning loonud arhitektuuriteaduskonda 3D Labori, mis tegeleb eksperimentaalsete arhitektuurilahendustega ning ning VR Labori, mis koondab arhitektile ja disainerile vajalikke eriteadmisi virtuaalreaalsustehnikate rakendamisest disainiprotsessis. EKA arhitektuuriteaduskond tegutseb laias rahvusvahelises võrgustikus, mis võimaldab tulevasel ruumiloojal end teostada igal pool.", "Arhitektuuri ja linnaplaneerimise õppekaval on võimalik spetsialiseeruda muinsuskaitse ja restaureerimise suunal (mis annab võimaluse taotleda muinsuskaitse tegevusluba Muinsuskaitseametist), maastikuarhitektuuri ning 2019. aastast süvendatult ka linnaplaneerimise valdkonnas.", "Ainsa ülikoolina Eestis kuulub EKA Arhitektuuri ja linnaehituse õppekava Euroopa Parlamendi ja Euroopa Liidu nõukogu kvalifikatsioonidirektiivi nr. 2005/36/EC lisasse V ning siin antav viieaastane õpe on vastavuses Vabariigi Valitsuse Määrusega 29.10.2004 (red. 12.06.2010) sätestatud arhitektiõppe raamnõuetega. See annab EKA arhitektuuri ja linnaehituse eriala lõpetanule diplomeeritud arhitekt 7 kutsekvalifikatsiooni, mis lubab arhitektina tegutseda kogu Euroopa Liidus."],
        outcomes: ["Teadvustab ühiskonna kultuurilist, majanduslikku, tehnoloogilist ja ruumilist arengut", "Teadvustab arhitekti professiooni ühiskondlikku iseloomu, selle seotust kujutava kunsti ja disaini, insener-tehniliste, sotsiaalsete ja õigusruumiliste distsipliinidega ning loodus- ja tehiskeskkonnaga", "Oskab iseseisvalt koostada mahulise arhitektuuri, linnaehituse või ruumilise planeerimise kavandeid ja kirjeldada neid pädevalt projektidokumentatsioonis", "Mõistab arhitektuuri seotust ühiskondlike protsessidega, peab oluliseks arhitektuurinähtuste järjepidevust ja arhitektuuriloomingu unikaalsust", "Tunneb õigusakte ja oskab arvestada sotsiaalsete teguritega", "Mmab arusaama professiooniks vajalikest insener-tehnilistest võimalustest", "Mõistab ja oskab kavandada, kirjeldada ning esitleda arhitektuuriobjekte ja ruumilisi planeeringuid, mis vastavad esteetilistele, tehnilistele ja keskkonnanõuetele", "Koostab, konsulteerib, hindab ja juhib iseseisvalt ja omal vastutusel maa-alade, linnade ja asulate ruumilisi planeeringuid ning ehitiste projektide."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/arhitektuuriteaduskond/",
        spots: 20,
        duration: 5,
        studyLocation:  [.tallinn],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 2", eapCount: 3),
                    Course(name: "Maalimine ja värvusõpetus", eapCount: 2),
                    Course(name: "Joonistamine 1", eapCount: 2),
                    Course(name: "Sissejuhatus erialasse", eapCount: 2),
                    Course(name: "Projekteerimine: Istemööbel 1", eapCount: 2),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 1, projekteerimistarkvara", eapCount: 8),
                    Course(name: "3DL Stuudium: Maketistuudio", eapCount: 1),
                    Course(name: "Kujutav geomeetria 1", eapCount: 1)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Joonistamine 2", eapCount: 2),
                    Course(name: "Joonistamise workshop", eapCount: 1),
                    Course(name: "Maalimine 2", eapCount: 1),
                    Course(name: "Üldkompositsioon 1", eapCount: 2),
                    Course(name: "Üldine arhitektuuri ajalugu 1", eapCount: 3),
                    Course(name: "Projekteerimine: Istemööbel 2", eapCount: 2),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 2", eapCount: 9),
                    Course(name: "Geodeesia", eapCount: 1),
                    Course(name: "Tehniline mehaanika 1", eapCount: 2),
                    Course(name: "Digitaalne geomeetria", eapCount: 2),
                    Course(name: "Matemaatika ja programmeerimiskeeled", eapCount: 2)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika*", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine*", eapCount: 1),
                    Course(name: "Joonistamine 3", eapCount: 2),
                    Course(name: "Maalimine 3", eapCount: 2),
                    Course(name: "Üldine arhitektuuri ajalugu 2", eapCount: 2),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 3", eapCount: 8),
                    Course(name: "Ehitusmaterjalid", eapCount: 2),
                    Course(name: "Tehniline mehaanika 2", eapCount: 4),
                    Course(name: "Energiatõhusus ja sisekliima", eapCount: 2),
                    Course(name: "Mõõtmispraktika", eapCount: 1),
                    Course(name: "Geodeesiapraktika", eapCount: 1),
                    Course(name: "Ehituspraktika", eapCount: 1)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse*", eapCount: 3),
                    Course(name: "Joonistamine 4", eapCount: 2),
                    Course(name: "Üldine arhitektuuri ajalugu 3", eapCount: 2),
                    Course(name: "Keskkond ja säästev areng", eapCount: 1),
                    Course(name: "Maastikuarhitektuur 1", eapCount: 2),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 4", eapCount: 9),
                    Course(name: "Ühepereelamu tööjoonised", eapCount: 2),
                    Course(name: "Ehituslik soojafüüsika", eapCount: 2),
                    Course(name: "Hoonete osad", eapCount: 2),
                    Course(name: "Metallkonstruktsioonid", eapCount: 2),
                    Course(name: "Vaatluspraktika", eapCount: 1)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Joonistamine 5", eapCount: 2),
                    Course(name: "Moodsa arhitektuuri ajalugu 1", eapCount: 3),
                    Course(name: "Moodsa arhitektuuri ajalugu 2", eapCount: 3),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 5, praktilised esitlustehnikad", eapCount: 8),
                    Course(name: "3DL Stuudium: Vormiõpetus 2*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 4*", eapCount: 2),
                    Course(name: "Tuleohutus", eapCount: 1),
                    Course(name: "Hoone tehniline varustatus", eapCount: 3),
                    Course(name: "Puitkonstruktsioonid", eapCount: 2),
                    Course(name: "Maali ja joonistamise praktika", eapCount: 2)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused*", eapCount: 2),
                    Course(name: "Fotograafia", eapCount: 2),
                    Course(name: "Linnaehituse ajalugu", eapCount: 2),
                    Course(name: "Linnaplaneerimise alused", eapCount: 3),
                    Course(name: "Eesti 20. sajandi arhitektuur", eapCount: 2),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 6, tervisekaitse ja erivajadused", eapCount: 8),
                    Course(name: "Maastikuarhitektuur 2", eapCount: 2),
                    Course(name: "3DL Stuudium: Energiatõhususe ja modelleerimise tarkvara", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 1*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 3 Mass-kohandatav Tehasemaja*", eapCount: 2),
                    Course(name: "Ehitustehnoloogia", eapCount: 1),
                    Course(name: "Raudbetoon- ja kivikonstruktsioonid", eapCount: 2),
                    Course(name: "Ehitusplatsi praktika", eapCount: 2)
                ]
            ),
            Module(
                name: "4. õppeaasta sügissemester",
                courses: [
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 1", eapCount: 3),
                    Course(name: "Üldkompositsioon 2", eapCount: 2),
                    Course(name: "Eriala õigusaktid 1", eapCount: 2),
                    Course(name: "Restaureerimine ja konserveerimine", eapCount: 2),
                    Course(name: "Linnaehituslik prototüüpimine ja analüüs", eapCount: 2),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 7", eapCount: 9),
                    Course(name: "3DL Stuudium: Vormiõpetus 4*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 2*", eapCount: 2),
                    Course(name: "Ehitusakustika", eapCount: 2)
                ]
            ),
            Module(
                name: "4. õppeaasta kevadsemester",
                courses: [
                    Course(name: "20. ja 21. sajandi filosoofia probleeme 2", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 2", eapCount: 3),
                    Course(name: "Arhitektuuriteooria ajalugu 1", eapCount: 3),
                    Course(name: "Kaasaegse arhitektuuri tekstid", eapCount: 2),
                    Course(name: "Ehitusprojekteerimise töökorraldus", eapCount: 2),
                    Course(name: "Detailplaneeringu koostamine", eapCount: 2),
                    Course(name: "Presentatsioonikursus", eapCount: 1),
                    Course(name: "Arhitektuurne ja linnaehituslik projekteerimine 8", eapCount: 9),
                    Course(name: "3DL Stuudium: Vormiõpetus 1*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 3*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 3*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 1*", eapCount: 2),
                    Course(name: "Geotehnika ja vundeerimine", eapCount: 2),
                    Course(name: "Büroopraktika", eapCount: 2)
                ]
            ),
            Module(
                name: "5. õppeaasta sügissemester",
                courses: [
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Loomeettevõtlus", eapCount: 3),
                    Course(name: "Linnageograafia", eapCount: 2),
                    Course(name: "Magistriprojekt", eapCount: 20),
                    Course(name: "3DL Stuudium: Vormiõpetus 2*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 2*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 4*", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus 4*", eapCount: 2),
                    Course(name: "Teed ja liiklus", eapCount: 1)
                ]
            ),
            Module(
                name: "5. õppeaasta kevadsemester",
                courses: [Course(name: "Magistritöö", eapCount: 30)]
            )
        ]
    ),
    majorsMinors(
        name: "Digitootedisain",
        level: .bachelor,
        type: .disain,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Digitootedisain tegeleb digitehnoloogial põhinevate toodete loomisega. Digitootedisainer kujundab mobiili- ja veebirakendusi, samuti tegeleb ta nutiseadmete, näiteks iseteeninduskassa või pakiroboti, kasutajaliidestega. Erinevalt UI/UX (kasutajaliidese/kasutajakogemuse) disainerist osalevad digitootedisainerid kogu tootearenduse tsüklis. Töö algab koostöös ettevõttega toote- ja äriidee otsingutest ettevõtte ja IT valdkonnaga ning seejärel arendatakse seda prototüüpides ja testides pidevalt edasi. Digitootedisainer arendab samm-sammult hea kasutajakogemusega toote ja disainib selle kasutajaliidese.", "Digitootedisainerid leiavad rakendust väga erinevates ettevõtetes, tervishoiusektorist mängutööstuseni välja. Tööjõuturul on digitootedisainerid nõutud spetsialistid. Eestis on palju tehnoloogia idufirmasid ja IT ettevõtteid, kelle äri edu sõltub heast disainist. Samuti vajavad paremat kasutajakogemust enamus Eesti e-riigi kasutajaliidesed. Digitootedisaineri töö on vaheldusrikas. Ta saab palju joonistada ja kujundada, aga ka kolleegide ja kasutajatega suhelda."],
        outcomes: ["On mitmekülgsete erialaliste baasteadmiste ja oskustega spetsialist, kes on võimeline töötama professionaalsel tasemel nii üksi kui ka meeskonnas, olles võimeline koostööks teiste valdkondade spetsialistidega", "On omandanud alusteadmised filosoofiast, esteetikast, kultuuri-, eesti kunsti- ja üldkunstiajaloost ning ettevõtlusest", "On omandanud joonistamise, maalimise, värvusõpetuse ja kompositsiooni baasoskused", "Omab analüüsi-, sünteesi- ja kriitikavõimet ning sotsiaalset vastutustunnet", "Suudab tutvustada oma eriala ning käsitleda erialaseid küsimusi laiemas kontekstis", "Orienteerub erialases kirjanduses", "Teadvustab vajadust professionaalseks arenguks ja jätkuõppeks", "Omab teadmisi ja oskusi töötamaks professionaalina tootearendusmeeskonnas, disainibüroos või vabakutselise disainerina", "On omandanud alusteadmised toote- ja keskkonnadisaini valdkondades", "Oskab iseseisvalt või meeskonnatöös lahendada tootedisainile omaseid ülesandeid, mis vastaksid ootustele innovatiivsest ja kaasaegsest tööstustootest", "Valdab pinna ja vormi komponeerimist ja modelleerimist", "Oskab formuleerida ja analüüsida probleemi, püstitada lähteülesannet", "Valdab tehnilist projekteerimist, oskab vormistada projekti dokumentatsiooni, maketeerida ja valdab esitlustehnikaid", "Suudab kasutada disainerile erialaseks tööks vajalikke vahendeid ja arvutiprogramme", "Oskab iseseisvalt koguda, selekteerida, analüüsida ja sünteesida erialaseks tööks vajaminevat informatsiooni", "Oskab koostada iseseisvalt disaini lähteüleseannet ning seda teoreetiliselt ja praktiliselt lahendada ning esitleda."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 15,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 2", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 1", eapCount: 3),
                    Course(name: "Sissejuhatus disaini", eapCount: 3),
                    Course(name: "Digitaalsed töövahendid", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 2", eapCount: 3),
                    Course(name: "Joonistamine", eapCount: 3),
                    Course(name: "Sissejuhatus tootedisaini", eapCount: 6),
                    Course(name: "Programmeerimine 1", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Esitlus ja esinemine", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 3", eapCount: 3),
                    Course(name: "Enesejuhtimine, tiimitöö, mentorlus 1", eapCount: 3),
                    Course(name: "Graafilise disaini alused", eapCount: 3),
                    Course(name: "Disainimeetodid", eapCount: 3),
                    Course(name: "Erialased praktikad", eapCount: 3),
                    Course(name: "Töö materjalis", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine*", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika*", eapCount: 1),
                    Course(name: "Joon, värv, vorm ja ruum 4", eapCount: 3),
                    Course(name: "Disainiteooria 1", eapCount: 3),
                    Course(name: "Kasutajauuring", eapCount: 3),
                    Course(name: "Valikaine", eapCount: 3),
                    Course(name: "Digitooteprojekt 1", eapCount: 6),
                    Course(name: "Programmeerimine 2", eapCount: 3),
                    Course(name: "Kasutajakogemus 1", eapCount: 3),
                    Course(name: "Kasutajaliidese disain 1", eapCount: 3),
                    Course(name: "Tööstusdisaini projekt 1", eapCount: 6),
                    Course(name: "Materjalide tehnoloogia 1", eapCount: 3),
                    Course(name: "3D-modelleerimine 1", eapCount: 3),
                    Course(name: "Kujutav ja digitaalne geomeetria", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse*", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 5", eapCount: 3),
                    Course(name: "Disainiteooria 2", eapCount: 3),
                    Course(name: "Enesejuhtimine, tiimitöö, mentorlus 2", eapCount: 3),
                    Course(name: "Digitooteprojekt 2", eapCount: 6),
                    Course(name: "Kasutajakogemus 2", eapCount: 3),
                    Course(name: "Kasutajaliidese disain 2", eapCount: 3),
                    Course(name: "Tööstusdisaini projekt 2", eapCount: 6),
                    Course(name: "Materjalide tehnoloogia 2", eapCount: 3),
                    Course(name: "3D-modelleerimine 2", eapCount: 3),
                    Course(name: "Praktika 1", eapCount: 3),
                    Course(name: "Praktika 2", eapCount: 3)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Disainiteooria 3", eapCount: 3),
                    Course(name: "Disain ettevõttes", eapCount: 3),
                    Course(name: "Digitooteprojekt 3", eapCount: 6),
                    Course(name: "Tööstusdisaini projekt 3", eapCount: 6),
                    Course(name: "Praktika 2", eapCount: 6),
                    Course(name: "Praktika 2", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused", eapCount: 2),
                    Course(name: "Disainiteooria 4", eapCount: 3),
                    Course(name: "Bakalaureusetöö seminar", eapCount: 3),
                    Course(name: "Digitooteprojekt 5", eapCount: 6),
                    Course(name: "Digitooteprojekt 4", eapCount: 6),
                    Course(name: "Tööstusdisaini projekt 4", eapCount: 6),
                    Course(name: "Tööstusdisaini projekt 5", eapCount: 6),
                    Course(name: "Bakalaureusetöö", eapCount: 9)
                ]
            )
        ]
    ),
//    majorsMinors(
//        name: "Ehte ja sepakunst",
//        level: .bachelor,
//        type: .disain,
//        requirements: [
//            Requirements(term: "Avaldus"),
//            Requirements(term: "Vestlus"),
//            Requirements(term: "Eksam")
//        ],
//        description: ["Ehte- ja sepakunsti erialal tegeletakse tänapäeva elu(keskkonna) väga erinevate tahkudega, ühendades erialased oskused kaasaegse kontseptuaalse ja kriitilise mõtlemisega. Esemelist maailma vaadeldakse suhtes ümbritsevaga ning materjalide tundmaõppimiseks uuritakse tehnoloogiliste protsesside olemust.", "Ehte- ja sepakunsti osakond keskendub unikaalehtele ja -sepisele, ent õppekavast ei puudu ka seriaalsust ja ettevõtlust käsitlevad projektid. Ehte- ja sepakunsti osakonnas õpivad tudengid, kes lähenevad valdkonnale filosoofiliselt, tunnevad huvi protsesside sügavama olemuse vastu ning on loomingulised abstraktsetele ideedele materiaalse kuju andmisel.", "Eesti Kunstiakadeemia koolitab ainsana Eestis bakalaureuse- ja magistritasemel ehte- ja sepakunsti professionaale. Erialaõpe pakub üliõpilastele võimalikult laiapinnalist haridust, annab praktilised oskused, kujundab nende eetilist hoiakut ning toetab noorte kunstnike loovust. Eelkõige käsitletakse ehet ja sepist kui kontseptuaalset filosoofiliste maailmade kandjat, mis on aktiivselt dialoogis ümbritsevaga. Oluliseks peetakse oskust mõtestada ehte- ja sepakunsti kaasaegses kunstielus ning sellega dialoogi astuda.", "Ehte- ja sepise õppesuundade eesmärgiks on üldhumanitaarse haridusega, visuaalselt võimekate ning hea erialase eneseväljendusoskusega professionaalide ettevalmistamine. Õppes peetakse oluliseks individuaalset lähenemist, loomingulist keskkonda ning koostööd, seda nii koolisiseselt kui ka professionaalidega väljastpoolt.", "Ehe ja sepis on kaks neljast erialast (õppesuunast) ühendõppekaval Klaas, keraamika, ehe ja sepis. Sisseastumiskatsed on õppekava erialadel ühesugused. Esimesel semestril õpivad kõigi õppesuundade üliõpilased koos. Tehakse sissejuhatus erialasse, aga ka joonistamisse, värviõpetusse, kompositsiooni, teooriasse. Alates teisest semestrist on õpe eelkõige erialapõhine, aga mõndagi toimub õppekaval ühiselt. Koondõppekava annab võimaluse tutvuda erinevate lähenemiste, materjalide, tehnoloogiate ja töökodadega ning kasutada neid kõiki oma projektide teostamisel. Samuti on võimalik teha koostööd teiste õppekavadega nii disainiteaduskonnas kui akadeemias laiemalt.", "Ehte- ja sepakunsti bakalaureusetaseme õppesuundade mahust ligi poole moodustab erialaõpe. Erialaainete eesmärgiks on arendada loomingulise stuudiotöö oskusi ning anda võimalus oma võimeid vastavalt individuaalsetele eeldustele ja huvidele rakendada. Eriala sissejuhatavad kursused annavad ülevaate peamistest tegevussuundadest, baasoskused kullassepa-, sepise- ja metallitehnoloogiates ning teadmised ohutustehnikast ja töökojaeetikast. Komplekssete erialaprojektide seas on nii kontseptuaalse, funktsionaalse kui ka väikeseeria fookusega projekte, mida tehakse koostöös ettevõtetega.", "Õppe oluline osa on ka tehnoloogiakursused, mida on erialaspetsiifikast tingituna väga laias skaalas alates klassikalistest kuni kaasaegsete digitehnoloogiateni. Meistriklassid on mõeldud täiendamaks spetsiifilisemaid ja alternatiivsemaid erialaseid oskusi."],
//        outcomes: ["Oskab esitleda oma loomingut avalikkusele", "On võimeline tegutsema vabakutselise kunstnikuna, tegema koostööd ettevõtete ja tellijatega", "Orienteerub erialaeetilistes hoiakutes", "Omab üldisi teadmisi eriala ajaloost ja arengutest kultuuriloolises kontekstis", "Orienteerub erialastes tehnoloogiates, materjalides, töövõtetes ja terminoloogias", "On võimeline analüüsima ja siduma erialaseid teadmisi teiste kunstivaldkondadega", "Omab üldisi erialaseid eneseväljendusoskusi, tunneb traditsioonilisi ja kaasaegseid tehnoloogiaid ning materjale ning oskab neid loominguliselt kasutada", "On võimeline ühendama erialased oskused kaasaegse kontseptuaalse mõtlemisega", "Oskab luua ja arendada ideid visualiseerides ning leida loovaid lahendusi nende materialiseerimisel", "Tunneb ohutustehnilisi nõudeid oskab neid tööprotsessis rakendada."],
//        language: .eesti,
//        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
//        spots: 0,
//        duration: 3,
//        studyLocation:  [.tallinn],
//        eap: 180,
//        cost: Cost(amount: 0, currency: .euro, interval: .full)
//    ),
    majorsMinors(
        name: "Fotograafia",
        level: .bachelor,
        type: .vabadKunstid,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Fotograafia bakalaureuse eriala annab hea baashariduse, mida saab rakendada erinevatel fotograafia ja (visuaal)kultuuriga seotud aladel – meie vilistlased töötavad kunsti, hariduse- ja arhiivindusvaldkondades, ajakirjanduses, samuti arhitektuuri, moe- ja reklaamifotograafidena. Meil on väike ja ühtehoidev osakond, suhted tudengite ja õppejõudude vahel on kollegiaalsed. Kahekümne tegevusaasta jooksul on välja kujunenud traditsioonid – näituste tegemine, õppereisid, ja muidugi ka peod.", "Fotograafia õppekava sisaldab nii teoreetilisi kui ka praktilisi aineid, mille käigus omandatakse fototehnilised baasoskused ja visuaalne lugemisoskus ehk võimekus pilti analüüsida ja mõtestada.", "Meie programm asetab olulist rõhku nii kontseptuaalsele mõtlemisele kui ka foto eksponeerimisele ruumis, samuti tema suhetele teiste kunstivormide – filmikunsti, skulptuuri, installatsiooni, graafika ja maaliga.", "Fotograafia bakalaureuseõpe jaguneb kolmeks õppeaastaks, mille raames pakutakse võimalust omandada fotograafiliste vahendite kasutamise oskus ning teadmised kaasaegse kunsti ja kunstimaailma toimemehhanismidest, mis ühiselt annavad piisava alusbaasi mitmekülgsete fotol baseeruvate loominguliste projektide elluviimiseks.", "Õppekava suunitlus on visuaalse kommunikatsiooni ja kaameratööde analüüsile ning praktilistele rakendustele. Õpe on multidistsiplinaarne, hõlmates nii traditsioonilisi fototehnoloogiaid kui digitaalset pilditöötlust, iseseisvaid ning juhendatud loomingulisi projekte ja foto ning kunsti ajalugu ning teooriat. Õppekava käsitleb foto rakendusvõimalusi kaasaegse kunsti ja audiovisuaalse kultuuri kontekstis. Õppekavas on oluline osa visuaalse kujundi leidmisel ja leiutamisel, värvist ja valgusest mõjutatud pildiruumi ülesehitusel ning fotograafia tähendusel."],
        outcomes: ["On võimeline mõista kunstivaldkonna arenguid, toimemehhanisme ja funktsiooni ühiskonnas", "Oskab orienteeruda kunstiterminoloogias, -teoorias, materjalides ja meetodides", "Mõistab rahvusvahelise kaasaegse kunsti välja põhimõtteid", "On võimeline kriitiliselt hindama enese ja teiste kunstiloomingut", "On võimeline tegelema kunstiloominguga praktilisel tasandil", "Oskab esitleda kunstiloomingut avalikkusele", "Suudab tutvustada oma eriala ning käsitleda erialaseid küsimusi laiemas kontekstis", "Oskab teoreetilisi teadmisi rakendada praktikas", "On võimeline töötama nii individuaalselt kui ka kollektiivis", "Oskab uurida, selekteerida, analüüsida ja kriitiliselt hinnata erialalist informatsiooni."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/vabade-kunstide-teaduskond/",
        spots: 8,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 2", eapCount: 3),
                    Course(name: "Joonistamine 1", eapCount: 3),
                    Course(name: "Ühisseminar 1", eapCount: 2),
                    Course(name: "Kaasaegse kunsti küsimused 1", eapCount: 3),
                    Course(name: "Fototehnoloogia", eapCount: 3),
                    Course(name: "Sissejuhatus fotograafiasse 1: dokumentalistika", eapCount: 6),
                    Course(name: "Digitaalne pilditöötlus 1", eapCount: 3),
                    Course(name: "Meistriklass: Maitselabor*", eapCount: 3),
                    Course(name: "Meistriklass*", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Joonistamine 2", eapCount: 3),
                    Course(name: "Eriala teooria 1", eapCount: 3),
                    Course(name: "Kaasaegse kunsti küsimused 2", eapCount: 3),
                    Course(name: "Kunstiprojekt 1", eapCount: 4),
                    Course(name: "Must-valge labor", eapCount: 3),
                    Course(name: "Stuudiofoto 1", eapCount: 4),
                    Course(name: "Meistriklass*", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika", eapCount: 1),
                    Course(name: "Kaasaegse kunsti küsimused 3", eapCount: 3),
                    Course(name: "Ühisseminar 3", eapCount: 2),
                    Course(name: "Stuudiovisiidid professoriga 1", eapCount: 1),
                    Course(name: "Praktika 1", eapCount: 4),
                    Course(name: "Kunstiprojekt 2", eapCount: 4),
                    Course(name: "Stuudiofoto 2", eapCount: 4),
                    Course(name: "Meistriklass*", eapCount: 6)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse*", eapCount: 3),
                    Course(name: "Kaasaegse kunsti küsimused 4", eapCount: 3),
                    Course(name: "Eriala teooria 2", eapCount: 3),
                    Course(name: "Stuudiovisiidid professoriga 2", eapCount: 1),
                    Course(name: "Kunstiprojekt 3", eapCount: 8),
                    Course(name: "Digitaalne pilditöötlus 2", eapCount: 3),
                    Course(name: "Eritehnikad", eapCount: 3),
                    Course(name: "Väljapanekutehnikad", eapCount: 3),
                    Course(name: "Meistriklass*", eapCount: 3),
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Kaasaegse kunsti küsimused 5", eapCount: 3),
                    Course(name: "Ühisseminar 5", eapCount: 2),
                    Course(name: "Stuudiovisiidid professoriga 3", eapCount: 1),
                    Course(name: "Digitaalne pilditöötlus 3", eapCount: 3),
                    Course(name: "Kunstiprojekt 4", eapCount: 4),
                    Course(name: "Praktika 2", eapCount: 4),
                    Course(name: "Meistriklass*", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus*", eapCount: 2),
                    Course(name: "Kaasaegse kunsti küsimused 6", eapCount: 3),
                    Course(name: "Eriala teooria 3", eapCount: 3),
                    Course(name: "Portfoolioõpe", eapCount: 6),
                    Course(name: "Meistriklass*", eapCount: 3),
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )

        ]
    ),
    majorsMinors(
        name: "Graafiline disain",
        level: .bachelor,
        type: .disain,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Graafilise disaini osakonnas õpitakse, kuidas meid ümbritseva maailma sõnumeid nähtavaks teha. Seda võib nimetada ka visuaalse kommunikatsiooni õppimiseks. Vahendeid, mida selles protsessis kasutatakse, on mitmeid: kiri, märk, värv, pilt, liikuv pilt, kompositsioon, vorm jne.", "Graafilist disaini kui eriala on tänapäeval üha raskem üheselt defineerida, kuna see hõlmab suurel hulgal erinevad tegevusi ja loomingulisi väljundeid.", "Wikipeediast leiame lühikese, kuid küllaltki täpse graafilise disaini definitsiooni:", "• “Graafiline disain on loominguline protsess – enamus juhtudel kaasates klienti ja disainerit ning teisi tehnilisi osapooli (näiteks trükikoda, programmeerija jt) – mille eesmärgiks on edastada spetsiifiline sõnum (või sõnumid) kindlale publikule. Mõiste “graafiline disain” võib viidata ka erinevatele kunstilistele ning professionaalsetele distsipliinidele, mille fookus on kommunikatsioonil ja presentatsioonil. Erinevaid meetoteid kasutatakse, luues ja ühendades sõnu, sümboleid ning kujutisi, et luua visuaalne tõlgendus ideedest ja sõnumitest.”", "Graafilise disaini osakonnas õppides tegeleb tudeng paralleelselt mitme projektiga, mis hõlmavad visuaalkultuuri laia spektrit, alates väga praktilistest disainiprobleemidest kuni abstraktsemat tõlgendamist vajavate küsimusteni", "Loengud toimuvad õppejõu juhendamisel ümber ühise laua ning lisaks ülesannete lahendamisele kodutööna, oodatakse igalt tudengilt aktiivset sekkumist, dialoogi ja kaasa rääkimist kaastudengite koolitööde analüüsimisel. Lisaks projektipõhistele loovülesannetele osalevad tudengid ka ajaloo- ja teoorialoengutes.", "Väga mahukas ja oluline osa on iseseisval tööl. Osakonna poolt on selleks kasutusse antud stuudioruum, kus julgustame tudengeid ka tunniplaani välisel ajal tööd tegema ning oma osakonna kaaslastega suhtlema. Peame väga oluliseks, et kõigile kolmele BA kursusele on ette nähtud ühine tööruum, nii saavad tudengid lähemalt tuttavaks ja toimub aktiivne mõttevahetus.", "Lisaks kohalikele õppejõududele üritame võimalikult palju õppetöösse kaasata erialaprofessionaale väljaspoolt Eestit. Igal õppeaastal toimub lisaks tavaõppetööle ligikaudu viis intensiivset workshoppi.", "Oluline roll õppekavas on ka välisreisidel. Osakonna traditsiooniks on kujunenud igal teisel aastal Tšehhis toimuva Brno graafilise disaini biennaali külastamine. Samuti külastame teisi olulisi rahvusvahelisi erialaseid sündmusi, näiteks Lahti plakatitriennaal Soomes, Chaumont’i rahvusvaheline plakati- ja graafilise disaini festival Prantsusmaal, loengusari Bold Italic Gentis, Belgias. Välisreisil viibides üritame alati külastada mitmeid disainistuudioid, olulisi näituseid ja tutvuda lähemalt kohaliku disainikultuuri ning kunstimaastikuga."],
        outcomes: ["Tunneb graafilise disaini toimemehhanisme ja oskab neid rakendada", "Omab tehnoloogilisi teadmisi ning oskab neid kasutada", "Orienteerub erialases terminoloogias, -teoorias, materjalis ja töövõtetes", "Hindab kriitiliselt enese ja teiste disainerite loomingut", "Genereerib loomingulisi ideid, eksperimenteerib, otsib ebakonventsionaalseid lahendusi", "Oskab arendada ideid ja viia need kommunikeerumis-võimelise füüsilise vormini", "Tegeleb disainiloomega praktilisel tasandil", "Oskab esitleda omaloomingut klientidele ja avalikkusele", "Tunneb eetika reegleid", "On initsiatiivikas ja õppimisvõimeline", "On organiseerimis- ja planeerimisvõimeline", "Oskab töötada nii individuaalselt kui ka kollektiivis", "Oskab koguda, selekteerida, analüüsida ja kriitiliselt hinnata erialalist informatsiooni", "Oskab ennast arusaadavalt väljendada nii verbaalselt kui kirjalikult", "Oomab kriitilist enesereflektsioonivõimet", "Kohanemis- ja improvisatsioonivõime, oskus tulla toime võõras kontekstis."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 15,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 2", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Sissejuhatus disaini", eapCount: 3),
                    Course(name: "Digitaalsed töövahendid", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 2", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 1", eapCount: 3),
                    Course(name: "Joonistamine", eapCount: 3),
                    Course(name: "Tüpograafia 1", eapCount: 3),
                    Course(name: "Kujutis", eapCount: 3),
                    Course(name: "Erialased praktikad", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 3", eapCount: 3),
                    Course(name: "Esitlus ja esinemine", eapCount: 3),
                    Course(name: "Graafilise disaini ja tüpograafia ajalugu 1", eapCount: 3),
                    Course(name: "Tehnoloogia", eapCount: 3),
                    Course(name: "Disainimeetodid", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Tüpograafia 2", eapCount: 3),
                    Course(name: "Graafilise disaini meistriklass 1", eapCount: 3),
                    Course(name: "Liikuv graafika", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika", eapCount: 1),
                    Course(name: "Joon, värv, vorm ja ruum 4", eapCount: 3),
                    Course(name: "Disainiteooria 1", eapCount: 3),
                    Course(name: "Graafilise disaini teooria 1", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Graafilise disaini ja tüpograafia ajalugu 2", eapCount: 3),
                    Course(name: "Graafilise disaini projekt 1", eapCount: 3),
                    Course(name: "Tüpograafia 3", eapCount: 3),
                    Course(name: "Veeb / Digi 1", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse*", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 5", eapCount: 3),
                    Course(name: "Disainiteooria 2", eapCount: 3),
                    Course(name: "Graafilise disaini teooria 2", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 3),
                    Course(name: "Veeb / Digi 2", eapCount: 3),
                    Course(name: "Foto ja visuaal", eapCount: 3),
                    Course(name: "Trükis", eapCount: 3),
                    Course(name: "Graafilise disaini meistriklass 2", eapCount: 3)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Disainiteooria 3", eapCount: 3),
                    Course(name: "Valikaine*", eapCount: 6),
                    Course(name: "Graafilise disaini projekt 3 (praktika)", eapCount: 3),
                    Course(name: "Graafilise disaini meistriklass 3", eapCount: 3),
                    Course(name: "Graafilise disaini projekt 2 (teooria)", eapCount: 3),
                    Course(name: "Graafilise disaini praktika", eapCount: 9)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused*", eapCount: 2),
                    Course(name: "Disainiteooria 4", eapCount: 3),
                    Course(name: "Kirjutamise meistriklass", eapCount: 3),
                    Course(name: "Graafilise disaini meistriklass 4", eapCount: 3),
                    Course(name: "Kirjutamine", eapCount: 3),
                    Course(name: "Graafilise disaini projekt 4", eapCount: 3),
                    Course(name: "Bakalaureusetöö", eapCount: 9)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Kunstiteadus ja visuaalkultuur",
        level: .bachelor,
        type: .kunstikultuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Kunstiteaduse ja visuaalkultuuri uuringute eriala õpetab ümbritsevat pildimaailma ja ruumilist keskkonda kriitiliselt vaatama ja analüüsima. Meid ümbritsev maailm on üha enam visuaalne – kunstis, fotograafias, filmis, aga ka ajakirjanduses, reklaamis, televisioonis ja internetis luuakse ja kasutatakse piltkujutisi erinevatel eesmärkidel. Pildid võivad olla esteetilise naudingu allikad või ajaloodokumendid, edastada infot, kuid ka inimestega manipuleerida. Eriala on neile, kes soovivad inimest ümbritsevat ruumi, esemelist keskkonda ning kaasaegset visuaalkultuuri süvitsi mõista ja mõtestada.", "Erialal õpetatakse kunstiajalugu ja -teooriat kultuuriteooria ja sotsiaalajaloo foonil. Õpe kombineerib ajaloolise ja objektikeskse lähenemise teoreetiliste vaatenurkadega ning annab laiapõhjalise humanitaarhariduse. Visuaalkultuuri uuringud aitavad mõtestada pildilise ja ruumilise keskkonna seoseid ning toimimist ühiskonnas. Teooriaõpet täiendavad õppereisid ja mitmesugused praktikad.", "Nüüdisaegse kunstiteaduse uurimisobjektiks on pea kogu inimloomingu visuaalne mõõde. Kunst, foto, film, aga ka argisemad valdkonnad nagu massimeedia või reklaam loovad ja kasutavad erinevatel eesmärkidel mitmesuguseid pilte ning kujutisi. Pildid võivad olla esteetilise naudingu allikad, kuid ka ajaloolise tähtsusega dokumendid. Nad võivad edastada infot, kuid ka meiega manipuleerida. Mõned pildid teevad kõike seda korraga. Samamoodi on tähenduslik kogu meid ümbritsev ruum ja esemeline keskkond, mille kujundus mõjutab meie igapäevaelu.", "EKA Kunstiteaduse ja visuaalkultuuri instituudis (KVI) õpetatakse kunstiajalugu ja -teooriat kultuuriteooria ja sotsiaalajaloo foonil. Õpe kombineerib ajaloolise ja objektikeskse lähenemise teoreetiliste vaatenurkadega ning annab laiapõhjalise humanitaarhariduse. Visuaalkultuuri uuringud aitavad mõtestada pildilise ja ruumilise keskkonna seoseid ning toimimist ühiskonnas. Teooriaõpet täiendavad õppereisid ja mitmesugused praktikad. Instituudi õppejõud ja teadurid on oma eriala tippspetsialistid ja avalikkuses tunnustatud asjatundjad, KVI lõpetajate hulgas on Eesti noorema põlve juhtivad kunstiteadlased, kuraatorid, -kriitikud ja -teoreetikud."],
        outcomes: ["Omab süsteemset ülevaadet lääne kultuuriruumi kujutavkunsti, disaini ja arhitektuuri ajaloost", "On tuttav kaasaegse kunstiteaduse ja visuaalkultuuri uuringute peamiste suundadega", "Tunneb eriala põhiterminoloogiat ja oskab seda rakendada", "Tunneb ära ja suudab algtasemel mõtestada eriala probleeme nii oma töövald¬konnas kui ühiskonnas laiemalt", "Oskab kategoriseerida, kirjeldada, hinnata ja arhiveerida visuaalse, esemelise ja ruumilise kultuuri objekte", "Oskab kunstiteoseid, disaini- ja arhitektuuriobjekte üldjoontes dateerida ja paigutada geograafilis-kultuurilisse konteksti, toetudes teadmistele põhilistest kunstiajaloo perioodidest, kunstistiilidest ja -vooludest", "Valdab suulist ja kirjalikku erialakeelt (sh vähemalt ühes võõrkeeles), suudab eristada ja kasutada eri tüüpi tekstilisi väljendusvahendeid (sh teadustekst, essee, kriitika)", "On valmis õpingute jätkamiseks magistriõppes", "Oskab näha kunsti ja visuaalkultuuri seoseid ajaloo, ühiskonna ja kultuuriga ning mõista kultuuri arenguprotsesse", "Väärtustab professionaalseid hoiakuid ja teadvustab valdkonna ühiskondlikku tähtsust ning eetilisi aspekte", "Oskab end emakeeles suuliselt ja kirjalikult heal tasemel väljendada ning valdab heal tasemel vähemalt ühte võõrkeelt", "On omandanud iseseisva õppimise ja rühmatöö oskuse."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/kunstikultuuri-teaduskond/",
        spots: 12,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Prantsuse keel 1*", eapCount: 4),
                    Course(name: "Antiik", eapCount: 4),
                    Course(name: "Saksa keel 1*", eapCount: 4),
                    Course(name: "Sissejuhatus kunstiteadusesse ja visuaalkultuuri 1", eapCount: 3),
                    Course(name: "Arhitektuuri analüüs", eapCount: 3),
                    Course(name: "Kunst ja selle institutsioonid", eapCount: 3),
                    Course(name: "Kunstiteaduse metodoloogia ja teadustöö alused", eapCount: 2),
                    Course(name: "Euroopa keskaja kunst", eapCount: 3),
                    Course(name: "Euroopa vanaaja kunst", eapCount: 3),
                    Course(name: "Eesti keskaja kunst", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Majandusteadus tähendab majandusteadust", eapCount: 3),
                    Course(name: "Prantsuse keel 2*", eapCount: 4),
                    Course(name: "Keskaeg", eapCount: 4),
                    Course(name: "Saksa keel 2*", eapCount: 4),
                    Course(name: "Sissejuhatus kunstiteadusesse ja visuaalkultuuri 2", eapCount: 3),
                    Course(name: "Pildianalüüs", eapCount: 3),
                    Course(name: "Barokist romantismini", eapCount: 3),
                    Course(name: "Renessansskunst ja -kultuur", eapCount: 3),
                    Course(name: "Eesti kunst 1520-1830", eapCount: 3),
                    Course(name: "Eesti kunsti ajaloo praktika", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Prantsuse keel 3*", eapCount: 4),
                    Course(name: "Uusaeg", eapCount: 4),
                    Course(name: "Saksa keel 3*", eapCount: 4),
                    Course(name: "Proseminar 1", eapCount: 3),
                    Course(name: "Kultuuriteooria", eapCount: 3),
                    Course(name: "Klassikalise arhitektuuri ajastu", eapCount: 3),
                    Course(name: "Moodsa kunsti ajalugu 2", eapCount: 3),
                    Course(name: "Moodsa kunsti ajalugu 1", eapCount: 3),
                    Course(name: "Eesti kunst 1830-1940", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Saksa keel 4*", eapCount: 4),
                    Course(name: "Prantsuse keel 4*", eapCount: 4),
                    Course(name: "20. sajand", eapCount: 4),
                    Course(name: "Proseminar 2", eapCount: 3),
                    Course(name: "Arhiiviõpe", eapCount: 2),
                    Course(name: "Kunstiteaduse tekstiseminar 1: filosoofia enne esteetikat", eapCount: 3),
                    Course(name: "Eesti arhitektuur ja restaureerimine 19. sajandil", eapCount: 3),
                    Course(name: "Eesti kunst alates 1940", eapCount: 3),
                    Course(name: "Erikursus*", eapCount: 3),
                    Course(name: "Erikursus*", eapCount: 3),
                    Course(name: "Muuseumipraktika", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Bakalaureuseseminar 1", eapCount: 3),
                    Course(name: "Kunstiteaduse tekstiseminar 2: Saksa klassikaline filosoofia ja esteetika", eapCount: 3),
                    Course(name: "Sümpoosion", eapCount: 3),
                    Course(name: "Moodsa arhitektuuri ajalugu 2", eapCount: 3),
                    Course(name: "Moodsa arhitektuuri ajalugu 1", eapCount: 3),
                    Course(name: "Erikursus*", eapCount: 3),
                    Course(name: "Erikursus*", eapCount: 3),
                    Course(name: "Meistriklass*", eapCount: 3),
                    Course(name: "Meistriklass*", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Bakalaureuseseminar 2", eapCount: 3),
                    Course(name: "Kunstiteaduse tekstiseminar 3: fenomenoloogia", eapCount: 3),
                    Course(name: "Kunstiteaduse tekstiseminar 4: uuem esteetika ja kriitiline teooria", eapCount: 3),
                    Course(name: "Eesti 20.–21. sajandi arhitektuuri ajalugu", eapCount: 3),
                    Course(name: "Meistriklass*", eapCount: 6),
                    Course(name: "Meistriklass*", eapCount: 6),
                    Course(name: "Väliskunsti ajaloo praktika", eapCount: 6),
                    Course(name: "Bakalaureusetöö", eapCount: 6)
                ]
            )
        ]
    ),
//    majorsMinors(
//        name: "Meediagraafika",
//        level: .bachelor,
//        type: .disain,
//        requirements: [
//            Requirements(term: "Avaldus"),
//            Requirements(term: "Vestlus"),
//            Requirements(term: "Eksam")
//        ],
//        description: ["Eesti Kunstiakadeemia meediagraafika eestikeelsel õppekavalerialal valmistatakse ette reklaami ja meedia erinevates valdkondades töötavaid graafilise kujunduse spetsialiste. Õppetöös kujundatakse kaubamärke, reklaame, raamatuid, pakendeid, plakateid, internetigraafikat ning videoanimatsioone. Õpe annab oskuse orienteeruda erialases terminoloogias, teoorias, materjalides ja töövõtetes ning tutvutakse ka graafilise kujunduse toimemehhanismide ja nende rakendamisvõimalustega.", "Eesti Kunstiakadeemia meediagraafika erialal valmistatakse ette reklaami ja meedia erinevates valdkondades töötavaid graafilise kujunduse spetsialiste. Õppetöös kujundatakse kaubamärke, reklaame, raamatuid, pakendeid, plakateid, internetigraafikat ning videoanimatsioone. Õpe annab oskuse orienteeruda erialases terminoloogias, teoorias, materjalides ja töövõtetes ning tutvutakse graafilise kujunduse toimemehhanismide ja nende rakendamisvõimalustega. Meediagraafika õppekava lõpetanud kujundusgraafikud oskavad genereerida ja arendada loomingulisi ideid, teha eksperimente, leida ebatavalisi lahendusi ning suudavad täita oma tööülesandeid loovalt ja professionaalselt nii iseseisvalt kui meeskonnas töötades.", "Meediagraafikat on võimalik õppida nii eesti kui vene keeles, mõlemal juhul kestab õpe neli aastat. Eestikeelne meediagraafika eriala kuulub kujunduskunsti õppekava alla, kus õppetöö toimub üle nädala tsüklitena.", " Kujunduskunsti õppekava on sessioonõppe õppekava, mis on orienteeritud eelkõige inimestele, kes soovivad omandada bakalaureuse kraadi töö või pere kõrvalt või kes elavad Eesti kaugemates regioonides. Osakoormusega sessioonõpe annab võimaluse õpinguteks ka väljaspool Tallinna elavatele inimestele, kellel päevase õppevormiga auditoorses õppetöös osalemine on raskendatud.", "Erialaõppe eesmärk on tagada võimalused kvaliteetse meediagraafikaalase akadeemilise kõrghariduse omandamiseks, mis haakuks nii Eesti kui rahvusvahelise kõrgharidussüsteemi põhimõtete ja tööturu nõudlusega, ning luua eeldused õppija erialaste ja sotsiaalsete pädevuste kujunemiseks, toetades professionaalsete oskuste, teadmiste ja hoiakute kujunemist töötamaks meediagraafika valdkonnas nii üksi kui meeskonnas. Luuakse eeldused õpingute jätkamiseks magistriõppes nii Eestis kui välismaal."],
//        outcomes: ["Orienteerub erialases terminoloogias, teoorias, materjalis ja töövõtetes", "On võimeline töötama professionaalsel tasemel nii üksi kui ka meeskonnas", "Tunneb ja mõistab graafilise kujunduse toimemehhanisme, oskab neid rakendada", "Oskab koguda, selekteerida, analüüsida ja kriitiliselt hinnata erialalistinformatsiooni", "Oskab kriitiliselt hinnata enese ja teiste kujundusgraafikute loomingut", "Oskab genereerida loomingulisi ideid, teha eksperimente, leida ebakonventsionaalseid lahendusi", "Oskab arendada ideid ja viia need kommunikeerumis-võimelise füüsilise vormini", "On võimeline tegelema disainiloomega praktilisel tasandil", "Oskab esitleda oma loomingut klientidele ja avalikkusele", "On võimeline töötama nii individuaalselt kui ka kollektiivis."],
//        language: .vene,
//        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
//        spots: 15,
//        duration: 4,
//        studyLocation:  [.tallinn],
//        eap: 180,
//        cost: Cost(amount: 0, currency: .euro, interval: .full)
//    ),
    majorsMinors(
        name: "Muinsuskaitse ja konserveerimine",
        level: .bachelor,
        type: .kunstikultuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["EKA on ainus kõrgkool Eestis, kus on võimalik omandada muinsuskaitse ja arhitektuuri ning kunsti konserveerimise ja restaureerimise alast akadeemilist kõrgharidust. Muinsuskaitse ja konserveerimise eriala tegeleb kõige laiemas mõttes füüsilise ja vaimse pärandi väärtustamise, hoidmise ja kaitsmisega.", "Kitsamalt õpetatakse nii arhitektuuri- kui ka kunstimälestiste uurimise ja konserveerimise teoreetilisi printsiipe ning praktilisi oskusi. Tegu on erakordselt põneva, vaheldusrikka ja suure missiooniga erialaga. Muinsuskaitse ja konserveerimise osakonnas õpivad inimesed, kes soovivad teha ära midagi praktilist, silmaga nähtavat ja käega katsutavat, ning selle kaudu maailma paremaks muuta.", "Kultuuripärand on vajalik ühiskonna kestmiseks ja arenguks. Muinsuskaitse eesmärgiks on selle pärandi hoidmine, väärtustamine ja tulevikku kandmine. Kui varem käsitleti pärandina vaid materiaalseid objekte, siis tänapäeval vaadeldakse seda inimkultuuri ja looduskeskkonna lõimunud tervikuna. Mälukandjana on ajaloolised esemed ja hooned meie ümber omandanud nii emotsionaalse kui funktsionaalse tähenduse.", "Muinsuskaitse ja konserveerimise eriala tegeleb kõige laiemas mõttes füüsilise ja vaimse pärandi väärtustamise ja kaitsmisega. Olgu selleks siis ajalooliste hoonete, maastike, kunsti- või tarbeesemete, aga ka nendesse kätketud mälu ja mälestuste säilitamine. Kitsamalt õpetatakse nii arhitektuuri- kui ka kunstimälestiste uurimise ja konserveerimise teoreetilisi printsiipe ning praktilisi oskusi. Tegu on erakordselt põneva, vaheldusrikka ja suure missiooniga erialaga.Erialaõpe lähtub kaasaegse keskkonnakäsitluse filosoofiast ja säästva arengu põhimõtetest.", "Õppe eesmärgiks on anda tudengitele erialaseid teadmisi ja oskusi ning kujundada hoiakuid ja väärtushinnanguid, mis aitavad teadvustada loodus-, sotsiaal- ja kultuurikeskkonna seoseid. EKA on ainus kõrgkool Eestis, kus on võimalik omandada muinsuskaitse ja arhitektuuri ning kunsti konserveerimise ja restaureerimise alast akadeemilist kõrgharidust. Osakonna õppejõud on oma ala tunnustatud ja kõrgelt hinnatud spetsialistid.", "Muinsuskaitse ja konserveerimise õppekava on avatud muutustele ja arengutele kaasaegse keskkonnakäsitluse filosoofias ning muinsuskaitse ja restaureerimise teoorias ja praktikas, lähtudes säästva arengu põhimõtetest. Tegemist on paljuski interdistsiplinaarse alaga, mis hõlmab baasteadmisi nii filosoofiast, kunsti- ja arhitektuuriajaloost kui restaureerimise ja konserveerimisega seotud spetsiifilistest valdkondadest, sh konserveerimisteooria, keemia, ehitusfüüsika, materjali- ja inseneriteadused jpm. Akadeemilise auditoorse tööl kõrval on olulised ka mitmesugused praktikad ja õppesõidud Eestis ning välismaal. Magistriõppes on erialal võimalik spetsialiseeruda muinsuskaitse ja konserveerimise, arhitektuuri konserveerimise või museoloogia õppesuunale.", "Eesti Kunstiakadeemial on õigus anda konserveerimise eriala bakalaureuse õppekava läbinuile kutseid arhitektuuripärandi spetsialist, tase 6 ning konservaator, tase 6 esmane kutse."],
        outcomes: ["Õppekava lõpetanu", "Mõistab muinsuskaitse rolli ühiskonnas ning selle tähtsust kultuuripärandi väärtustamisel, kaitsel ning säilitamisel tundes rahvusvahelisi ja Eesti muinsuskaitsealaseid seadusandlikke dokumente", "On omandanud alusteadmised muinsuskaitse, konserveerimise, arhitektuuri ja kunsti ajaloost ning kultuuriteooriast, filosoofiast ja esteetikast", "Omab kunstilise väljenduse praktilisi oskusi, mis toetavad erialasse loovat suhtumist", "Tunneb konserveerimise praktilis-tehnilisi ja sidusaid distsipliine", "Oskab iseseisvalt koguda, selekteerida, analüüsida, sünteesida ja kriitiliselt hinnata erialast informatsiooni, arhitektuuri- ja kunstipärandit uurida, mõõdistada ja dokumenteerida ning hinnata uuritavate objektide tehnilist seisukorda, nende ajaloolist ja esteetilist väärtust", "Oskab koostada muinsuskaitse eritingimusi, restaureerimiskontseptsioone, ning hinnata konserveerimis- ja restaureerimisprojektide kvaliteeti ja vastavust muinsuskaitselastele seadusandlikele dokumentidele", "Oskab juhendamisel konserveerida kunstimälestisi", "On teadlik kultuurikeskkonna kui terviku kaitse vajadustest, selle järjepidevat ja säästlikku arengut tagavatest printsiipidest, suutes neid rakendada miljööväärtuslike hoonestusalade ja vanalinnade muinsuskaitsealade planeerimisel ja kaitsel", "Teab, kuidas omandatud teoreetilisi teadmisi ja praktilisi oskusi kasutada arhitektuuri- ja kunstimälestiste konserveerimisel", "Omab pädevusi muinsuskaitse tegevusloa või arhitektuuripärandi spetsialisti ja konservaatori kutsekvalifikatsiooni taotlemiseks."],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/kunstikultuuri-teaduskond/",
        spots: 10,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Ennetav konserveerimine", eapCount: 1),
                    Course(name: "Ajaloolised kunstiloome praktikad", eapCount: 4),
                    Course(name: "Euroopa keskaja kunst", eapCount: 2),
                    Course(name: "Eesti keskaja kunst", eapCount: 2),
                    Course(name: "Arhitektuuri terminoloogia", eapCount: 2),
                    Course(name: "Ornamentika", eapCount: 1),
                    Course(name: "Euroopa vanaaja kunst", eapCount: 2),
                    Course(name: "Muinsuskaitse ajalugu ja teooria 1", eapCount: 2),
                    Course(name: "Sissejuhatus erialasse", eapCount: 1),
                    Course(name: "Pigmendid ja sideained", eapCount: 1),
                    Course(name: "Vormiõpetus", eapCount: 2),
                    Course(name: "Materjalid ja konserveerimistehnikad 1", eapCount: 3),
                    Course(name: "Mõõdistamine", eapCount: 2),
                    Course(name: "Antikvaarne analüüs", eapCount: 2)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Loovus ja majandus", eapCount: 3),
                    Course(name: "Renessansskultuur ja -kunst", eapCount: 2),
                    Course(name: "Konserveerimiskeemia 1", eapCount: 3),
                    Course(name: "Eesti kunst 1520-1830*", eapCount: 2),
                    Course(name: "Eesti kunsti ajalugu ja restaureerimine 16.-18. sajandil*", eapCount: 2),
                    Course(name: "Muinsuskaitse ajalugu ja teooria 2", eapCount: 2),
                    Course(name: "Konserveerimisbioloogia", eapCount: 1),
                    Course(name: "Sissejuhatus arheoloogiasse ja ehitusarheoloogia", eapCount: 2),
                    Course(name: "Materjalid ja konserveerimistehnikad 2", eapCount: 4),
                    Course(name: "Arhiivne uurimine ja dokumenteerimine 1", eapCount: 2),
                    Course(name: "Joonistamine", eapCount: 3),
                    Course(name: "Fotograafia", eapCount: 3),
                    Course(name: "Arheoloogilise materjali konserveerimine*", eapCount: 1)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Museoloogia", eapCount: 2),
                    Course(name: "Eesti kunst 1830-1940", eapCount: 2),
                    Course(name: "Väliuurimistööde alused", eapCount: 3),
                    Course(name: "Stukkdekoori konserveerimine", eapCount: 2),
                    Course(name: "Mõõtmispraktika", eapCount: 2),
                    Course(name: "Eriala õppekäigud", eapCount: 2),
                    Course(name: "Uurimismeetodid konserveerimises 1", eapCount: 1),
                    Course(name: "Ehitatud keskkonna vaatluspraktika", eapCount: 2),
                    Course(name: "Arheoloogiapraktika", eapCount: 2),
                    Course(name: "Arhitektuuri konserveerimine 1", eapCount: 2),
                    Course(name: "Kursuseprojekt 1 (arhitektuurimälestiste suund)", eapCount: 4),
                    Course(name: "Klassikalise arhitektuuri ajastu*", eapCount: 2),
                    Course(name: "Üldine arhitektuuri ajalugu 3*", eapCount: 2),
                    Course(name: "Arvutiõpe: joonestusprogrammid 1", eapCount: 2),
                    Course(name: "Monumentaalkunsti konserveerimine 1", eapCount: 1),
                    Course(name: "Kursuseprojekt 1 (kunstimälestiste suund)", eapCount: 4),
                    Course(name: "Kolmemõõtmeliste objektide konserveerimine 1", eapCount: 3),
                    Course(name: "Lõuendalusel maalide konserveerimine 1", eapCount: 2),
                    Course(name: "Kultuurimälestiste tutvustamine avalikkusele - projekt Helisev linnamüür*", eapCount: 2),
                    Course(name: "Mälestis ja keskkond 1*", eapCount: 2)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Eesti arhitektuur ja restaureerimine 19. sajandil", eapCount: 3),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 2),
                    Course(name: "Eesti kunst alates 1940", eapCount: 2),
                    Course(name: "Uurimismeetodid konserveerimises 2", eapCount: 2),
                    Course(name: "Pärandi dokumenteerimise meetodid", eapCount: 2),
                    Course(name: "Arhiivne uurimine ja dokumenteerimine 2", eapCount: 2),
                    Course(name: "Ajaloolised pargid ja pärandmaastikud", eapCount: 2),
                    Course(name: "Arhitektuuri konserveerimine 2", eapCount: 4),
                    Course(name: "Arvutiõpe: joonestusprogrammid 2", eapCount: 2),
                    Course(name: "Ajaloolised konstruktsioonid", eapCount: 3),
                    Course(name: "Kursuseprojekt 2 (arhitektuurimälestiste suund)", eapCount: 5),
                    Course(name: "Retušeerimismeetodid", eapCount: 1),
                    Course(name: "Kursuseprojekt 2 (kunstimälestiste suund)", eapCount: 5),
                    Course(name: "Paberi konserveerimine 1", eapCount: 1),
                    Course(name: "Lõuendalusel maalide konserveerimine 2", eapCount: 1),
                    Course(name: "Monumentaalkunsti konserveerimine 2", eapCount: 4),
                    Course(name: "Kolmemõõtmeliste objektide konserveerimine 2", eapCount: 1),
                    Course(name: "Barokist romantismini", eapCount: 2),
                    Course(name: "Kaasaegse kunsti konserveerimine", eapCount: 1),
                    Course(name: "Väliskunsti ajaloo praktika*", eapCount: 2)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kultuuriteooria", eapCount: 3),
                    Course(name: "Muinsuskaitse seadusandlus", eapCount: 3),
                    Course(name: "Uurimismeetodid konserveerimises 3", eapCount: 1),
                    Course(name: "Talurahvaarhitektuur", eapCount: 2),
                    Course(name: "Arhitektuuri konserveerimine 3", eapCount: 3),
                    Course(name: "Uurimispraktika", eapCount: 4),
                    Course(name: "Eesti linnaehituse ajalugu", eapCount: 3),
                    Course(name: "Avaliku halduse praktika", eapCount: 2),
                    Course(name: "Moodsa arhitektuuri ajalugu 1", eapCount: 2),
                    Course(name: "Moodsa arhitektuuri ajalugu 2", eapCount: 2),
                    Course(name: "Kursuseprojekt 3 (arhitektuurimälestiste suund)", eapCount: 4),
                    Course(name: "Ehitusliku restaureerimise vaatluspraktika", eapCount: 2),
                    Course(name: "Moodsa kunsti ajalugu 2", eapCount: 2),
                    Course(name: "Kolmemõõtmeliste objektide konserveerimine 3", eapCount: 1),
                    Course(name: "Uurimispraktika", eapCount: 4),
                    Course(name: "Konserveerimispraktika", eapCount: 4),
                    Course(name: "Ajaloolised siseviimistlustehnikad 1", eapCount: 2),
                    Course(name: "Puitpolükroomia konserveerimine 1", eapCount: 1),
                    Course(name: "Paberi konserveerimine 2", eapCount: 2),
                    Course(name: "Kursuseprojekt 3 (kunstimälestiste suund)", eapCount: 4),
                    Course(name: "Lõuendalusel maalide konserveerimine 3", eapCount: 2),
                    Course(name: "Moodsa kunsti ajalugu 1", eapCount: 2),
                    Course(name: "Väliuurimistööde tulemuste dokumenteerimise töötuba", eapCount: 2),
                    Course(name: "Mälestis ja keskkond 2", eapCount: 2)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Teadustöö metoodika", eapCount: 2),
                    Course(name: "Interjööri ajalugu", eapCount: 2),
                    Course(name: "Eesti 20. sajandi arhitektuur", eapCount: 2),
                    Course(name: "Uurimismeetodid konserveerimises 4", eapCount: 1),
                    Course(name: "Praktilised 3D dokumenteerimise lahendused", eapCount: 1),
                    Course(name: "Restaureerimisprojekti analüüs", eapCount: 2),
                    Course(name: "Ehitusfüüsika", eapCount: 2),
                    Course(name: "Puitalusel maalide konserveerimine", eapCount: 1),
                    Course(name: "Puitpolükroomia konserveerimine 2", eapCount: 1),
                    Course(name: "Paberi konserveerimine 3", eapCount: 2),
                    Course(name: "Ajaloolised siseviimistlustehnikad 2", eapCount: 2),
                    Course(name: "Bakalaureusetöö vormistamine ja esitlus", eapCount: 2),
                    Course(name: "Bakalaureusetöö", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Mood, tekstiil, nahkaksessuaar",
        level: .bachelor,
        type: .disain,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Aksessuaari- ja köitedisaini erialaõppe keskmes on nahkaksessuaaride disain: õpitakse tundma kottide, kinnaste, jalatsite ning peakatete disaini spetsiifikat. Õpetatakse ka raamatuköidet ehk köitedisaini, mis annab vajalikud oskused nahast eksklusiivsete väiketoodete disainimiseks. Eriala on seotud ka moe- ja tootedisainiga ning disaineri igapäevatöö eeldab mõlema valdkonna tööspetsiifika tundmist.", "Disainimisel ja kavandite elluviimisel ei piirduta ainult nahaga, vaid töötatakse lähteülesandest tulenevalt paljude erinevate materjalidega. Lisaks praktilistele oskustele annab õpe hea ettevalmistuse erinevates disainivaldkondades töötamiseks. Eriala tudengid huvituvad laiapõhjalisest materjalikesksest loometööst.", "Eesti Kunstiakadeemia koolitab ainsana Eestis BA ja MA tasemel nahkaksessuaari- ja köitedisaini erialade professionaale. Aksessuaari- ja köitedisaini eriala õppesse on koondunud esmapilgul erinevad valdkonnad, kuid neid ühendab sarnaste materjalide ja tehnikate kasutamine. Aksessuaariprojektides tegeletakse kottide ja jalatsite, aga ka sõrmkinnaste ning peakatete disainimise ja valmistamisega. Köite suunal tegeletakse nii traditsioonilise köitekunsti kui ka kaasaegse disaini ja tiražeeritava köite probleemidega. Õppetöö raames osaletakse konkurssidel, tehakse koostööd ettevõtetega ning arendatakse nii individuaalse kui ka meeskonnatöö oskusi.", "Osakonnal on koostöösuhted välisülikoolidega ja laienev üliõpilasvahetus. Aksessuaari- ja köitedisaini osakonna eesmärgiks on erialase traditsioonilise oskusteabe säilitamise kõrval otsida uuenduslikke lahendusi ehk luua uut traditsiooni. Teadmiste omandamisel peame esmatähtsaks õppetöö protsessi ning pakume paindlikku ja vajaduspõhist õppekava, mis arendab ja arvestab üliõpilase loovuse, isikupära ning individuaalsete eelistuste ja soovidega.", "Bakalaureusetaseme õppekavas alustatakse disainiprotsessi tundmaõppimise ja erialaste oskuste omandamisega, arendatakse kommunikatsioonioskusi paberil ja verbaalselt ning õpitakse töötama ideega kuni toimiva prototüübi väljatöötamise või unikaalobjekti valmistamiseni. Sõltuvalt probleemipüstitusest toimub töö individuaalselt või grupis. Aksessuaariprojektides on fookuses koti, jalatsi, peakatte ja kinnaste disain, raamatuköiteprojektid keskenduvad tarbe- või unikaalköitedisaini probleemidele. Oluline osa on ka valitavatel ja lähedaste erialadega ühiselt läbiviidavatel projektidel, teoreetilistel kursustel ja praktikal. Oluliseks peetakse tudengite individuaalset arengut, mida soodustab töö väikeste õppegruppidega ja personaalne tagasiside kogu protsessi vältel. Bakalaureuseõpe lõppeb portfoolio kaitsmisega."],
        outcomes: ["On mitmekülgsete erialaste baasteadmiste ja oskustega spetsialist, kes suudab tegutseda professionaalsel tasemel nii üksi kui ka meeskonnas, olles võimeline koostööks teiste valdkondade esindajatega", "On omandanud alusteadmised filosoofiast, kultuuri-, disaini- ja kunstiajaloost ning ettevõtlusest", "Mõistab disaini toimemehhanisme ja paiknemist kultuuri- ja majandusvaldkonnas", "On teadlik olulistest ühiskondlikest protsessidest ja suudab nendega suhestuda", "On sotsiaalselt vastutustundlik ning orienteerub disaini ja loometegevuse eetilistes küsimustes", "On arenenud vaatlus-, analüüsi- ja sünteesivõimega", "Suudab kriitiliselt hinnata enese ja teiste loomingut, suudab põhjendatud kriitikat tasakaalukalt esitada ja vastu võtta", "On kohanemisvõimeline, suudab improviseerida ja tulla toime tundmatus kontekstis", "On omandanud joonistamise, maalimise, värvus- ja vormiõpetuse ning kompositsiooni professionaalsed baasoskused", "Oskab juhtida oma iseseisvat tööd, planeerida aega, ladusalt suhelda ning teha koostööd erinevate osapooltega; - oskab genereerida loomingulisi ideid, eksperimenteerida ja leida uudseid lahendusi", "Oskab ideid arendada eesmärgipäraselt toimivate tulemusteni", "Suudab arusaadavalt väljenduda nii visuaalses, verbaalses kui ka kirjalikus vormis", "Oskab selgelt ja veenvalt esitleda oma tööd ja kasutada erinevaid esitlustehnikaid", "Suudab tutvustada oma eriala ning käsitleda erialaseid küsimusi laiemas kontekstis", "Orienteerub valdkondlikus kirjanduses ja sõnavaras nii eesti kui võõrkeeles", "Teadvustab vajadust professionaalseks arenguks ja jätkuõppeks", "Omab teadmisi ja oskusi töötamaks spetsialistina ettevõttes või tegutsemaks vabakutselise disaineri või loomeisikuna", "Tunneb erialateooriat, erialaseid tehnoloogiaid, materjale ja töövõtteid ning suudab neid praktikas rakendada", "Oskab formuleerida ja analüüsida erialast probleemi ning püstitada lähteülesannet", "Oskab lähteülesannet teoreetiliselt ja praktiliselt lahendada", "Oskab iseseisvalt koguda, selekteerida, analüüsida ja sünteesida erialaseks tööks vajaminevat informatsiooni ning langetada otsuseid", "Suudab kasutada erialaseks tegevuseks vajalikke töövahendeid, tehnoloogiaid ja tarkvara", "On võimeline jätkama õpinguid magistritasemel"],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/disainiteaduskond/",
        spots: 20,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 2", eapCount: 3),
                    Course(name: "Digitaalsed töövahendid", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 2", eapCount: 3),
                    Course(name: "Sissejuhatus disaini", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 1", eapCount: 3),
                    Course(name: "Joonistamine", eapCount: 3),
                    Course(name: "Vorm, lõige ja muster", eapCount: 6),
                    Course(name: "Stuudiotuur*", eapCount: 1),
                    Course(name: "Erialased praktikad", eapCount: 3),
                    Course(name: "Erialased praktikad", eapCount: 3),
                    Course(name: "Erialased praktikad", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Esitlus ja esinemine", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 3", eapCount: 3),
                    Course(name: "Disainimeetodid", eapCount: 3),
                    Course(name: "Digitaalne prototüüpimine", eapCount: 3),
                    Course(name: "Eksperimentaalvorm", eapCount: 3),
                    Course(name: "Lõikeõpetus*", eapCount: 3),
                    Course(name: "Viltimine, vanutamine*", eapCount: 3),
                    Course(name: "Kotitehnoloogia", eapCount: 6),
                    Course(name: "Raamatutehnoloogia", eapCount: 3),
                    Course(name: "Kangatrükiga särkpluuskleit", eapCount: 6),
                    Course(name: "Kostüümiajalugu", eapCount: 3),
                    Course(name: "Tekstiilikompositsioon", eapCount: 3),
                    Course(name: "Masinkudumine", eapCount: 3),
                    Course(name: "Siiditrükk", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine*", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika*", eapCount: 1),
                    Course(name: "Joon, värv, vorm ja ruum 4", eapCount: 3),
                    Course(name: "Disainiteooria 1", eapCount: 3),
                    Course(name: "Ekspositsioonidisain ja digitaalne kommunikatsioon", eapCount: 3),
                    Course(name: "Täisnahkköide", eapCount: 3),
                    Course(name: "Jalatsidisain", eapCount: 3),
                    Course(name: "Eriala ajalugu", eapCount: 3),
                    Course(name: "ETNO kollektsioon", eapCount: 6),
                    Course(name: "20. sajandi moeajalugu", eapCount: 3),
                    Course(name: "Kangakudumise tehnoloogia ja -disain 1", eapCount: 6),
                    Course(name: "Trükitehnoloogia", eapCount: 3),
                    Course(name: "Etnograafiapraktika", eapCount: 3),
                    Course(name: "Etnograafiapraktika", eapCount: 3),
                    Course(name: "Etnograafiapraktika", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse*", eapCount: 3),
                    Course(name: "Joon, värv, vorm ja ruum 5", eapCount: 3),
                    Course(name: "Disainiteooria 2", eapCount: 3),
                    Course(name: "Skulptuurne artefakt", eapCount: 3),
                    Course(name: "Erialaprojekt", eapCount: 3),
                    Course(name: "Aksessuaariprojekt 1", eapCount: 6),
                    Course(name: "Sadulsepa tehnoloogia", eapCount: 3),
                    Course(name: "Tööstustehnoloogia", eapCount: 3),
                    Course(name: "Moetööstus - naistekollektsioon", eapCount: 3),
                    Course(name: "Moetööstus – meestekollektsioon", eapCount: 3),
                    Course(name: "Tööstusliku mudeli teostus", eapCount: 3),
                    Course(name: "Tekstiilide kudumine žakaartelgedel", eapCount: 6),
                    Course(name: "Silmkoelised tooted", eapCount: 3),
                    Course(name: "Trükitud tekstiilide disain 1", eapCount: 3)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Disainiteooria 3", eapCount: 3),
                    Course(name: "Tarbeköite disain", eapCount: 3),
                    Course(name: "Aksessuaariprojekt 2", eapCount: 6),
                    Course(name: "Materjaliuuringud ja pinnatöötlus", eapCount: 3),
                    Course(name: "Eksperimentaalne lõige", eapCount: 3),
                    Course(name: "Futuroloogia", eapCount: 3),
                    Course(name: "Ülerõivas", eapCount: 6),
                    Course(name: "Eksperimentaaltekstiil", eapCount: 3),
                    Course(name: "Kangakudumise tehnoloogia ja -disain 2", eapCount: 6),
                    Course(name: "Trükitud tekstiilide disain 2", eapCount: 3),
                    Course(name: "Ettevõttepraktika", eapCount: 6),
                    Course(name: "Ettevõttepraktika", eapCount: 6),
                    Course(name: "Ettevõttepraktika", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine*", eapCount: 2),
                    Course(name: "Disainiteooria 4", eapCount: 3),
                    Course(name: "Portfoolio", eapCount: 3),
                    Course(name: "Aksessuaariprojekt 3", eapCount: 3),
                    Course(name: "Eksklusiivköide", eapCount: 6),
                    Course(name: "Moekommunikatsioon", eapCount: 3),
                    Course(name: "Moeillustratsioon", eapCount: 3),
                    Course(name: "Fotolavastuse kontseptsiooni disain", eapCount: 3),
                    Course(name: "Gobelään-põime tehnikas piltvaip", eapCount: 6),
                    Course(name: "Erialane spetsialiseerumine", eapCount: 3),
                    Course(name: "Bakalaureusetöö", eapCount: 9)
                ]
            )

        ]
    ),
    majorsMinors(
        name: "Sisearhitektuur",
        level: .bachelor,
        type: .arhitektuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Sisearhitektuuri erialal tegeletakse ruumiga, mis inimest kõige vahetumalt ümbritseb. Õpitakse, kuidas luua inspireerivaid, paindlikke, säästlikke ning kaasaegseid ruume inimesele elu igaks etapiks, lapsepõlvest vanaduseni.", "Hea ruum sünnib teravast konteksti tajust, põhjalikust materjali tundmisest ning tugevatest tehnilistest oskustest, ent ka teadmistest ruumiloomet toetavates valdkondades – antropoloogias, ruumipsühholoogias, ruumisemiootikas. Sisearhitektid on tundlikud ja tähelepanelikud nii kultuuri- kui ruumikonteksti suhtes, kuna parim ruum sünnib seest väljapoole, võrsub samavõrd sisearhitekti teadmistest ja tehnilistest oskustest kui tema võimest küsida õigeid küsimusi ja leida inspiratsiooni olemasolevast.", "Sisearhitektuuri tudengid töötavad juba õppetöö raames projektidega, mis pakuvad inspireerivaid ruumilahendusi erinevatele ühiskonnagruppidele ja seovad kogukondi. Lõpetajate hulgas on silmapaistvate interjööride loojaid, kuid ka selliseid ruumiloojaid, kes rajavad isikupäraseid keskkondi, kombineerides arhitektuuri, disaini ja tehnoloogiat.", "Sisearhitektuuri valdkond on muutumises, kuna ka keskkond ja inimeste vajadused teisenevad pidevalt – maailm linnastub, tööd tehakse aina mobiilsemalt, inimeste elud on pikemad, aga ka üksildasemad, autod on peagi isesõitvad, kliima muutub. Need ja veel mitmed suured trendid mõjutavad homsete sisearhitektide tööd ning seepärast õpetatakse EKA sisearhitektuuriosakonnas tudengeid looma ruume, mis vastavad inimeste kiiresti muutuvatele vajadustele, olgu need siis tööruumid, kodud või avalik ruum.", "Tudengeid suunatakse olema tundlik ja tähelepanelik nii kultuuri- kui ruumikonteksti suhtes, kuna parim ruum sünnib seest väljapoole, võrsub samavõrd sisearhitekti teadmistest ja tehnilistest oskustest kui võimest küsida ruume luues õigeid küsimusi ja leida inspiratsiooni olemasolevast. Lisaks tehnilistele oskustele treenitakse tudengis üldistus- ja analüüsivõimet, mõõdutunnet, oskust olla kontaktis iseendaga ning teha ka meeskonnatööd.", "Sisearhitektuuri bakalaureuse õppekava läbimine kestab kolm aastat, õpe on päevane ning toimub suures osas eesti keeles, kuid välisõppejõudude käe all osalt ka inglise keeles. Bakalaureuseõppe parimad tööd on sündinud kohalikus kontekstis, inspireerituna Eesti kliimast, traditsioonilisest ruumist ja mõtteilmast. Siin sünnivad juba esimesest kursusest alates tudengiprojektid, mis kõnelevad Eestist, kuid kõnetavad ka rahvusvahelist publikut. Tudengeid õpetavad kohalikud inspireerivaimad sisearhitektid, arhitektid, disainerid ning välislektorid disainikoolidest üle maailma. Tudengid teevad õppeprojektide raames koostööd teiste EKA erialadega, mis on professionaalide ettevalmistuses eriti oluline, sest sisearhitektuur on pea alati meeskonnatöö."],
        outcomes: ["Üldised õpiväljundid", "Omab ülevaadet esteetika, filosoofia, sotsiaalteaduste ja kultuuriajaloo põhimõistetest ning enam levinud teoreetilistest süsteemidest", "Omab ülevaadet arhitektuuri, kunsti ja tootedisaini ajaloolisest arengust, sisearhitektuuri kui eriala olemusest.", "Erialased õpiväljundid:", "Tunneb ruumi ja ehitatud keskkonna sotsiaal-majanduslikke, tehnoloogilisi ja looduslikku tausta ning tähendust", "Tunneb ruumi ja ehitatud keskkonna kultuurilist, ajaloolist sotsiaalset ja esteetilist tausta ja tähendust", "Oskab näha tellija soove ning eksisteerivat tegelikkust ning neid omavahel seostada", "Suhtub projekteerimisprotsessi loovalt, analüüsides ja hinnates erinevaid lahendusi ning tehes neist erinevaid järeldusi", "Tunneb mööbli tootmistehnoloogia ja materjalide kasutamise üldpõhimõtteid", "Valdab enam levinud kommunikatsioonimeediumide ja tehnoloogiate kasutamist: joonistamist, maalimist, joonestamist, maketeerimist, tunneb analoogseid ja digitaalseid projektsioonivahendeid ning valdab nende tarkvara kasutamist", "Tunneb tehnilise mehhaanika ja tugevusõpetuse ja materjaliõpetuse valdkondade üldpõhimõtteid", "Valdab korrektset eesti keelt nii kõnes kui kirjas ning võõrkeelt suhtluse ja erialaterminoloogia tasemel", "Tunneb enamlevinud ehitiste tehnosüsteemide rajamise põhiprintsiipe ning on võimeline töötama koostöös eriala spetsialistidega", "Tunneb põhilisi ehitusmaterjale ja nende kasutamise üldisi põhimõtteid", "Tunneb hoonete tüpoloogia põhilisi erinevusi ja funktsioonilist eripära", "Valdab elukeskkonna funktsionaalse kavandamise põhimõtteid", "Tunneb valgustustehnika ja ruumi akustika põhialuseid", "Oskab sisearhitektuurse projekti siduda tervikuks nii tehnilises kui esteetilises plaanis", "Toimib eetiliselt keskkonna, ühiskonna, tellija ja oma professiooni suhtes", "Oskab leida ja kasutada Eestis toimivaid seadusi, ehitus- ja projekteerimisstandardeid ning tehnilisi norme"],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/arhitektuuriteaduskond/",
        spots: 12,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 2", eapCount: 3),
                    Course(name: "Üldkompositsioon 1", eapCount: 2),
                    Course(name: "Joonistamine 1", eapCount: 3),
                    Course(name: "Sissejuhatus erialasse", eapCount: 2),
                    Course(name: "Projektigraafika", eapCount: 4),
                    Course(name: "Erialaprojekt: Väikevormid", eapCount: 4),
                    Course(name: "Erialaprojekt: Istemööbel 1", eapCount: 3),
                    Course(name: "Tarkvaraõpe 1", eapCount: 1),
                    Course(name: "Erialaprojekt: Toit", eapCount: 5),
                    Course(name: "Meistriklass: Ruumiline sekkumine", eapCount: 2)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Maalimine 1", eapCount: 3),
                    Course(name: "Üldkompositsioon 2", eapCount: 2),
                    Course(name: "Joonistamine 2", eapCount: 3),
                    Course(name: "Ruumipsühholoogia", eapCount: 2),
                    Course(name: "Interjööri, mööbli ja stiili ajalugu 1", eapCount: 2),
                    Course(name: "Erialaprojekt: Väikeehitis", eapCount: 9),
                    Course(name: "Erialaprojekt: Istemööbel 2", eapCount: 3),
                    Course(name: "Tarkvaraõpe 2", eapCount: 1)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine*", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika*", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus*", eapCount: 2),
                    Course(name: "Maalimine 2", eapCount: 3),
                    Course(name: "Joonistamine 3", eapCount: 2),
                    Course(name: "Interjööri, mööbli ja stiili ajalugu 2", eapCount: 2),
                    Course(name: "Erialaprojekt: Trepp", eapCount: 4),
                    Course(name: "Tarkvaraõpe 3", eapCount: 1),
                    Course(name: "Erialaprojekt: Eluruum", eapCount: 8),
                    Course(name: "Hoonete osad", eapCount: 2),
                    Course(name: "Mõõtmispraktika", eapCount: 2),
                    Course(name: "Ehituspraktika", eapCount: 4)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "Maalimine 3", eapCount: 3),
                    Course(name: "Joonistamine 4", eapCount: 2),
                    Course(name: "3DL Stuudium: Vormiõpetus", eapCount: 2),
                    Course(name: "Biosemiootika", eapCount: 2),
                    Course(name: "Erialaprojekt: Haridusruum", eapCount: 6),
                    Course(name: "Projekti osad", eapCount: 4),
                    Course(name: "Digitaalsed tehnikad", eapCount: 2),
                    Course(name: "Erialaprojekt: Näitus", eapCount: 4),
                    Course(name: "Digiportfoolio", eapCount: 1)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Joonistamine 5", eapCount: 1),
                    Course(name: "Moodsa arhitektuuri ajalugu 1", eapCount: 2),
                    Course(name: "Restaureerimine ja konserveerimine", eapCount: 2),
                    Course(name: "Moodsa arhitektuuri ajalugu 2", eapCount: 2),
                    Course(name: "Erialaprojekt: Ese", eapCount: 4),
                    Course(name: "Eriala projekt: Avalik ruum", eapCount: 6),
                    Course(name: "Veevarustus ja kanalisatsioon", eapCount: 1),
                    Course(name: "Valgustus ja elektripaigaldised", eapCount: 1),
                    Course(name: "Küte ja ventilatsioon", eapCount: 1),
                    Course(name: "Ruumiakustika", eapCount: 1),
                    Course(name: "Tehnilise mehaanika üldkursus", eapCount: 2),
                    Course(name: "Tuleohutus", eapCount: 1),
                    Course(name: "Büroopraktika", eapCount: 2),
                    Course(name: "Vaatluspraktika", eapCount: 2)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad*", eapCount: 1),
                    Course(name: "Eesti 20. sajandi arhitektuur", eapCount: 2),
                    Course(name: "Tekstianalüüs", eapCount: 2),
                    Course(name: "Antropoloogia alused", eapCount: 1),
                    Course(name: "Ehitusprojekteerimise töökorraldus", eapCount: 2),
                    Course(name: "Esitlustehnikad", eapCount: 1),
                    Course(name: "Arhitektoonika", eapCount: 2),
                    Course(name: "Lõputöö: Portfoolio", eapCount: 10)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Stsenograafia",
        level: .bachelor,
        type: .kunstikultuur,
        requirements: [
            Requirements(term: "Avaldus"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Eksam")
        ],
        description: ["Stsenograafia erialal tegeletakse nii teatri- kui ka filmilavastuste visuaalsete terviklahenduste loomisega. Stsenograafia on olemuselt paljusid valdkondi koondav ala ning oluline lavastuse instrument, mille abil juhitakse vaataja kujutlust. Et siin segunevad mitmed erinevad valdkonnad, hinnatakse kaasaegsetes etenduskunstides järjest enam autoripositsiooni olemasolu. Kombineeritakse edukalt nii arhitektuurilisi kui ka performatiivseid elemente, videost ja valgusest rääkimata.", "Lisaks erialateadmistele omandatakse stsenograafiaõppe käigus kogemusi ka teistes kaasaegse kunsti valdkondades. Stsenograafia osakonnas õpivad avarapilgulised ja laialdase kultuurihuviga inimesed, kes suudavad iseseisvalt loomingulisi protsesse käivitada ja läbi viia.", "Eesti Kunstiakadeemia ainus õppeasutus Eestis, kus on võimalik stsenograafia eriala kõrgtasemel omandada. Stsenograafia osakonnas lähenetakse õpetusele terviklikult: loomingus pole tähtis mitte ainult tehnika ja professionaalsus, vaid ka kunstiline tervikmõju. Stsenograafia on fiktsionaalsete maailmade loomise kunst, mis tugineb vaatajat emotsionaalselt ja vaimselt rikastavate stsenograafiliste kujutiste ellukutsumisele. Nii teatri- kui ka filmikunst tegeleb lugude jutustamisega piltides. Tänapäeval on stsenograafia eemaldunud pelgast dekoratiivsusest ning liikunud palju mitmekülgsema ja multidimensionaalsema lähenemise suunas. Samas pole vanu tehnikaid ja tehnoloogiaid unustatud, vaid neid kombineeritakse uuenduslike digitaaltehnoloogiliste lahendustega. Stsenograafia eriala uuenduslik õppekava on koostatud pidades silmas parimaid erialatraditsioone.", "Stsenograafiaõppes on olulisel kohal multi- ja interdistsiplinaarsus. Stsenograafia on klaster, mis on läbi põimunud teiste visuaalkultuuri distsipliinide ja tehnoloogiatega. Stsenograafiaõppes pööratakse suurt tähelepanu praktikale: ilma praktiliste lavastusprojektideta ei oleks võimalik stsenograafiat õpetada. Töötatakse nii ruumimudelite kui ka päris ruumidega, sealhulgas leitud, kohandatud, avalike ja privaatsete ruumidega. Eriala keskseid väärtusi on koostöö, sest vaid koos töötades on lavastusgruppidel võimalik edukalt tegutseda.", "Stsenograafia õpe toimub kursuste kaupa ning semestri lõikes erinevate õppejõudude juhatusel. Nõnda juhatatakse üliõpilane lihtsamatelt keerukamate ülesannete juurde vastavalt õppekava struktuurile. Sügissemestril on õpetuse põhirõhk teatriga seotud projektidel, kevadsemestril tegeletakse filmiprojektide lavastamisega. Õpe toimub nii seminarivormis kui ka individuaalselt. Üliõpilaselt eeldatakse pidevat kaasamõtlemist ja ideede väljapakkumist kogu semestri vältel. Stsenograafia õppekava läbimisel tutvuvad üliõpilased valdkondadega nagu kostüüm, grimm, valgus ja ruum. Kolm aastat bakalaureuseõpet sisaldab erialaprojekte, tugiaineid, valikaineid, teooriat ja praktikat. Lisaks stuudioruumile on stsenograafia osakonnas olemas ka kostüümistuudio, arvutiklass, väike loenguruum ning õppeklassid tudengitele."],
        outcomes: ["Tunneb lavastuskunsti üldisemat ajalugu ning kaasaegseid praktikaid", "Oskab kasutada teatri- ja filmialaseid põhimõisteid", "Analüüsib draama sündmustikku ja tegelasi", "Kasutab saadud teadmisi ja oskusi stsenograafiliste ideede visualiseerimisel", "Omandab baasteadmisi teatri- ja filmilavastamise praktilistest protsessidest", "Töötab innovaatiliste visuaalsete lahenduste loomisel iseseisvalt ja kollektiivselt", "Järgib lavastusprotsessis erialaeetika põhimõtteid"],
        language: .eesti,
        majorWebsite: "https://www.artun.ee/akadeemia/teaduskonnad/vabade-kunstide-teaduskond/",
        spots: 7,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 1", eapCount: 3),
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 2", eapCount: 3),
                    Course(name: "Anatoomiline joonistamine 1", eapCount: 2),
                    Course(name: "Värviõpetus ja sissejuhatus maalimisse", eapCount: 3),
                    Course(name: "Ühisseminar 1", eapCount: 2),
                    Course(name: "Moodsa kunsti ajalugu II maailmasõjast Berliini müüri langemiseni", eapCount: 3),
                    Course(name: "Arhitektuuri ajalugu", eapCount: 2),
                    Course(name: "Materjaliõpe: tekstiil", eapCount: 1),
                    Course(name: "Erialaprojekt 1", eapCount: 4),
                    Course(name: "Foto/video 1", eapCount: 2),
                    Course(name: "Digitaalne kavand 1", eapCount: 3),
                    Course(name: "Moejoonis", eapCount: 2)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kunst, arhitektuur, disain ja ühiskond 3", eapCount: 3),
                    Course(name: "Maalimine 1", eapCount: 3),
                    Course(name: "Anatoomiline joonistamine 2", eapCount: 1),
                    Course(name: "Joonistamine 1", eapCount: 2),
                    Course(name: "Mood ja stiil", eapCount: 2),
                    Course(name: "Interjööri, mööbli ja stiili ajalugu 1", eapCount: 2),
                    Course(name: "Välisteatri ajalugu", eapCount: 3),
                    Course(name: "Valguse lavastamine : Teater", eapCount: 2),
                    Course(name: "Lavatehnika ja tehnoloogia", eapCount: 2),
                    Course(name: "Digitaalne kavand 2", eapCount: 3),
                    Course(name: "Foto/video 2", eapCount: 2),
                    Course(name: "Erialaprojekt 2", eapCount: 5)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loomeuurimus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - loovkirjutamine*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - kirjutamiskursus*", eapCount: 2),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - avalik esinemine*", eapCount: 1),
                    Course(name: "VM Akadeemiline / erialane väljendusoskus - argumenteerimine ja retoorika*", eapCount: 1),
                    Course(name: "Joonistamine 2", eapCount: 3),
                    Course(name: "Vormiõpetus", eapCount: 3),
                    Course(name: "Interjööri, mööbli ja stiiliajalugu 2", eapCount: 2),
                    Course(name: "Filmiajaloo ülevaate kursus", eapCount: 3),
                    Course(name: "Ühisseminar 2", eapCount: 2),
                    Course(name: "Valguse lavastamine : Film", eapCount: 2),
                    Course(name: "3D-mudeli konstrueerimine 1", eapCount: 2),
                    Course(name: "Filmikunsti spetsiifika", eapCount: 4),
                    Course(name: "Erialaprojekt 3", eapCount: 6),
                    Course(name: "Erialapraktika", eapCount: 2)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus kultuuriteooriasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus antropoloogiasse", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus psühholoogiasse*", eapCount: 3),
                    Course(name: "VM Teoreetilised ja praktilised tööriistad - Sissejuhatus inimgeograafiasse", eapCount: 3),
                    Course(name: "Joonistamine 3", eapCount: 3),
                    Course(name: "Maalimine 2", eapCount: 3),
                    Course(name: "Muusikateatri ajalugu", eapCount: 2),
                    Course(name: "Kostüümiajalugu: muusikateatri eri", eapCount: 2),
                    Course(name: "Ooperi lavastamise alused", eapCount: 2),
                    Course(name: "3D mudeli konstrueerimine 2", eapCount: 2),
                    Course(name: "Erialaprojekt 4", eapCount: 5),
                    Course(name: "Erialapraktika", eapCount: 2)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Filosoofia ja kriitiline mõtlemine", eapCount: 3),
                    Course(name: "Maalimine 3", eapCount: 3),
                    Course(name: "Ühisseminar 3", eapCount: 2),
                    Course(name: "Kontseptuaalne ruum/heli/valgus", eapCount: 2),
                    Course(name: "Erialaprojekt 5", eapCount: 3),
                    Course(name: "Performance ja kaasaegne teater", eapCount: 2),
                    Course(name: "Helitehnika alused ja praktika", eapCount: 2),
                    Course(name: "Foto/video 3", eapCount: 2)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "VM Elu pärast ülikooli - ettevõtluse alused*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - projektijuhtimine, kommunikatsioon ja turundus*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - enesejuhtimine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - õpetamine ja vahendamine*", eapCount: 2),
                    Course(name: "VM Elu pärast ülikooli - intellektuaalne omand*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - Sissejuhatus kultuuripoliitikasse*", eapCount: 1),
                    Course(name: "VM Elu pärast ülikooli - omaalgatuslikud praktikad*", eapCount: 1),
                    Course(name: "Installatsioon", eapCount: 3),
                    Course(name: "Filosoofia", eapCount: 2),
                    Course(name: "BA lõputöö: kirjalik analüüs", eapCount: 2),
                    Course(name: "Bakalaureusetöö", eapCount: 15)
                ]
            )
        ]
    ),
//    majorsMinors(
//        name: "Tekstiilidisain",
//        level: .bachelor,
//        type: .disain,
//        requirements: [
//            Requirements(term: "Avaldus"),
//            Requirements(term: "Vestlus"),
//            Requirements(term: "Eksam")
//        ],
//        description: ["Kaasaegses tekstiilidisainis leiavad loovalt rakenduse nii vanad oskused kui ka uusim teave materjalidest ja tehnoloogiatest. Disainiprotsesside käivitajaks on kasutajakeskne mõtteviis ja orienteeritus probleemi lahendamisele. Sama oluliseks peame ka loojast lähtuvat autoriloomingut.", "Tekstiilide kasutusala on täna lai. Kõrgtehnoloogilised valdkonnad nagu elektroonika, nano- ja biotehnoloogia on toonud tekstiilide väljatöötamisse ja viimistlemisse revolutsioonilisi muudatusi. See on suureks väljakutseks ka disaineritele.", "Kaasaegses tekstiilidisainis leiavad loovalt rakenduse nii vanad oskused kui ka uusimad materjalid ja tehnoloogiad. Disainiprotsesside käivitajaks on materjalist inspiratsiooni ammutamise kõrval ka kasutajakeskne mõtteviis ja orienteeritus probleemi lahendamisele. Kaasaegses tekstiilimaailmas on masstootmise asemel oluliseks saanud sotsiaalne disain ja väikestele kasutajagruppidele suunatud nišitooted. Probleemide teadvustamisele ja lahenduste otsimisele suunatud teaduspõhiste loominguliste projetide kaudu tegelevad tudengid ka alternatiivsete tulevike loomisega ning saavad kogemuse olla disaineritena kasulikud.", "Tekstiilide kasutusvaldkond on aja jooksul laienenud: nano- ja biotehnoloogia, elektroonika jt kõrgtehnoloogilised valdkonnad on toonud tekstiilide väljatöötamisse ja viimistlemisse revolutsioonilisi edasiarendusi. See on suureks väljakutseks ka disaineritele. EKA tekstiiliosakonnas peetakse oluliseks ka loojakeskset autoriloomingut ja traditsioone. Tekstiil säilitab eneses ajastute teadmised ja tavad, lood ja pärandatud töövõtted. Tekstiilil on nii kultuuriline, majanduslik kui ka sümboolne tähendus. Uus ja põnev tekstiilikasutus on tihti mõne vana unustusse vajunud oskuse edasiarendus.", "Tekstiilidisaini osakonnas omandavad tudengid oskused ja esteetilise pädevuse tekstiilide kujundamiseks ning arusaama tänapäevase tekstiilidisaini võimalikest kasutusviisidest. Tekstiilidisaini erialal õpitakse looma tervikut, olles seejuures tundlik materjalide, värvide, erinevate pindade, kompositsiooni, inimeste, keskkonna ja vastavate tehnoloogiate suhtes. Lisaks annab eriala võimaluse avastada ja vaadelda tekstiilidisaini rolli väljaspool selle tavalisi piire ning kokkupuutepunkte teiste erialade, intelligentsete materjalide ja tipptehnoloogiatega.", "Tekstiil on üks kolmest erialast (õppesuunast) BA-taseme ühendõppekaval “Mood, tekstiil, nahkaksessuaar”. Sisseastumiskatsed on õppekava erialadel ühesugused. Esimesel semestril õpivad kõigi õppesuundade üliõpilased koos. Tehakse sissejuhatus erialasse, aga ka joonistamisse, värviõpetusse, kompositsiooni, teooriasse. Alates teisest semestrist on õpe eelkõige erialapõhine, aga nii mõndagi viivad õppekava erialad läbi üheskoos Koondõppekava annab võimaluse tutvuda erinevate lähenemiste, materjalide, tehnoloogiate ja töökodadega ning kasutada neid kõiki oma projektide teostamisel. Samuti on võimalik teha koostööd teiste õppekavadega nii disainiteaduskonnas kui akadeemias laiemalt.", "Esimene osa erialasest bakalaureuseõppest pakub tudengitele materjalide ja tehnoloogiate tundmist. Erialaseid teadmisi, praktilisi oskusi ja esteetilisi võimeid arendatakse läbi erinevate õppeainete ja projektide.", "Programmi teine osa keskendub kaasaegseid disainitrende arvestavatele rõiva- ja sisustustekstiilidele. Edendatakse tudengite esitlusoskust ning kriitilist analüüsivõimet, et olla valmis tööstuse nõudmisteks. Töökogemusi omandatakse ettevõttepraktika käigus, külastatakse erialaseid disainimesse.", "Kolmas osa õppekavast sisaldab spetsiaalselt kohandatud projekte, mis keskenduvad sisulistele disainiprobleemidele. Neid projekte viiakse sageli läbi koostöös ettevõtete või teiste huvigruppidega. Tudengid õpivad rakendama juba omandatud teadmisi ja tehnilisi oskusi. Töötatakse välja originaalsed lahendused, mis väljendavad individuaalseid ideid ning täidavad samal ajal projektis püstitatud eesmärke.", "Tekstiilidisaini kõrval on võimalik omandada oskusi moe ja nahkaksessuaari suundadel läbi ühiste baasõppe-, valik- ja vabaainete.", "Kolmeaastase bakalaureuseõppe lõpus koostatakse loominguline portfoolio, mis võimaldab alustaval disaineril oma oskusi mõtestada, end tutvustada ning positsioneerida disainimaastikul. Bakalaureusekraad kaitstakse lõputööga, mis annab võimaluse erialaseks spetsialiseerumiseks."],
//        outcomes: ["On mitmekülgsete erialaliste ning interdistsiplinaarsete teadmiste ja oskustega spetsialist, kes on võimeline töötama professionaalsel tasemel nii iseseisvalt kui meeskonnas", "On suuteline tegema koostööd ka teiste valdkondade spetsialistidega", "Omab erialaseid praktilisi oskuseid, mis võimaldab töötada tekstiiliettevõttes või vajadusel ja soovil suudab luua iseseisva ettevõtte", "On omandanud alusteadmised filosoofiast, esteetikast, kunsti- ja kultuuriajaloost, tarbekunsti ja disaini ajaloost ning ettevõtlusest", "Omab kunstilise eneseväljenduse oskusi, mis toetavad loovat suhtumist erialasse", "On omandanud joonistamise, maalimise, kompositsiooni, vormi- ja arvutiõpetuse baasoskused", "Suudab käsitleda erialast probleemistikku laiemas kultuurikontekstis. Mõistab õpitud eriala rolli ühiskonnas ning selle rakendamisvõimalusi nii kunsti kui ka disaini valdkondades", "Suudab ennast erialaselt eesti keeles suuliselt ja kirjalikult korrektselt väljendada, tunneb rahvusvaheliselt kasutatavat erialaterminoloogiat", "Suudab kasutada iseseisvalt erialaste tööde tegemiseks vajaminevaid tehnilisi vahendeid ja arvutiprogramme."],
//        language: .eesti,
//        majorWebsite: "https://www.artun.ee/erialad/tekstiilidisain/",
//        spots: 20,
//        duration: 3,
//        studyLocation:  [.tallinn],
//        eap: 180,
//        cost: Cost(amount: 0, currency: .euro, interval: .full)
//    ),
]
