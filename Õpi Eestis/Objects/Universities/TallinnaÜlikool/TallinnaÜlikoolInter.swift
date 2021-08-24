let tallinnaÜlikoolInter = [
    majorsMinors(
        name: "Klassiõpetaja",
        level: .integrated,
        type: .haridusteadus,
        requirements: [
            Requirements(term: "E-etteütlus", percentage: 20),
            Requirements(term: "Akadeemiline test", percentage: 20),
            Requirements(term: "Vestlus", percentage: 40),
            Requirements(term: "Matemaatika gümnaasiumi lõputunnistuse hinne", percentage: 10),
            Requirements(term: "Inglise keele gümnaasiumi lõputunnistuse hinne", percentage: 10)
        ],
        description: ["Kas teadsid, et Eesti kool on maailma üks parimaid? 2018. aasta PISA testi tulemused näitavad, et Eesti on Euroopas esimesel kohal. Selle edu taga seisavad eelkõige klassiõpetajad. Tule ja anna sinagi oma panus uue põlvkonna edule – õpi klassiõpetajaks!","Klassiõpetaja erialale ootame õppima inimesi, kes on huvitatud põhikooliealiste laste pedagoogilisest suunamisest, nende motiveerimisest ja arengu toetamisest. Tulevastelt üliõpilastelt ootame aktiivset ellusuhtumist, iseseisva töö võimet, head suhtlemise ja enese väljendamise oskust, rõõmsameelsust, tolerantsust ning ettevõtlikkust. Erinevate olukordade lahendamisel tulevad kasuks otsustuskindlus ja -julgus, leidlikkus ning loovus. Klassiõpetaja erialal on nii õpingute ajal kui ka tulevikus kasuks mitmekülgsed huvid ja oskused. Avatus uuele, katsetamisvalmidus ja paindlikkus on isiksuseomadused, mis iseloomustavad tulevast professionaalset ja head õpetajat."],
        outcomes: [ "Omab teadmisi lapse arengust ja õppimisest, suudab kasutada neid teadmisi erinevate võimete ja isiksuseomadustega õpilaste toetamisel", "Oskab kavandada õppetegevust ja analüüsida seda püstitatud eesmärkidest lähtuvalt", "Oskab klassiõpetajana juhtida õpiprotsessi I ja II kooliastmes", "Oskab juhtida õpiprotsessi põhikooli lõpuni ühes valitud õppeaines (kõrvaleriala)", "Oskab kujundada õpilasi motiveerivat õpikeskkonda", "Suudab teha koostööd kolleegide ja lapsevanematega", "Oskab kujundada, analüüsida ja reflekteerida oma professionaalset arengut pedagoogina","Magistridiplomiga noored õpetajad, kes on saanud tänapäevase ühiskonna arenguid arvestava ettevalmistuse, on juba praegu koolides oodatud spetsialistid. Tööandjad on klassiõpetaja eriala lõpetanud õpetajatega väga rahul. Mitmekesine ettevalmistus võimaldab paindlikult rakendada erinevaid oskusi ning kohaneda muutuva tööturu vajadustega."],
        language: .eesti,
        majorWebsite: "https://www.tlu.ee/hti",
        spots: 30,
        duration: 5,
        studyLocation:  [.tallinn],
        eap: 300,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üleülikoolilised ained",
                courses: [
                    Course(name: "Kriitiline mõtlemine", eapCount: 6),
                    Course(name: "Õppimine kõrgkoolis", eapCount: 6),
                    Course(name: "ELU - Erialasid Lõimiv Uuendus", eapCount: 6)
                ]
            ),
            Module(
                name: "Aineõpingud",
                courses: [
                    Course(name: "Eesti keele struktuur ja ortograafia", eapCount: 6),
                    Course(name: "Matemaatika I", eapCount: 3),
                    Course(name: "Matemaatika II", eapCount: 3),
                    Course(name: "Laste- ja noortekirjandus", eapCount: 3),
                    Course(name: "Eluslooduse mitmekesisus", eapCount: 3),
                    Course(name: "Seosed eluslooduses", eapCount: 3),
                    Course(name: "Eluta loodus", eapCount: 6),
                    Course(name: "Geograafia alused", eapCount: 3),
                    Course(name: "Elementaarmatemaatika põhikoolis", eapCount: 3),
                    Course(name: "Geomeetria põhikoolis", eapCount: 3),
                    Course(name: "Inimese anatoomia ja füsioloogia lühikursus", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kunst klassiõpetajale", eapCount: 3),
                            Course(name: "Pillimäng muusikaõpetuse osana 1.-3. klassis", eapCount: 3),
                            Course(name: "Käeline tegevus õpilase arengut soodustava tegurina", eapCount: 3),
                            Course(name: "Liikumisõpetuse alused II", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Didaktika",
                courses: [
                    Course(name: "Haridustehnoloogia koolis", eapCount: 6),
                    Course(name: "Erineva kultuuri-ja keeletaustaga õpilaste toetamine", eapCount: 3),
                    Course(name: "Kunstiõpetuse teooria ja ülddidaktika", eapCount: 3),
                    Course(name: "Muusikalise kasvatuse teooria ja ülddidaktika", eapCount: 3),
                    Course(name: "Inimeseõpetuse didaktika", eapCount: 3),
                    Course(name: "Matemaatikadidaktika ja õpiraskused", eapCount: 6),
                    Course(name: "Matemaatikadidaktika", eapCount: 3),
                    Course(name: "Loodusõpetuse didaktika", eapCount: 6),
                    Course(name: "Emakeeledidaktika I", eapCount: 3),
                    Course(name: "Emakeeledidaktika II", eapCount: 6),
                    Course(name: "Ülddidaktika", eapCount: 3),
                    Course(name: "Tööõpetuse teooria ja ülddidaktika", eapCount: 3),
                    Course(name: "Liikumisõpetuse alused I", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kunstiõpetuse teooria ja didaktika 1.-3. klassini", eapCount: 3),
                            Course(name: "Muusikalise kasvatuse teooria ja didaktika 1.-3. klassini", eapCount: 3),
                            Course(name: "Lõimitud aine- ja keeleõpe", eapCount: 3),
                            Course(name: "Põhiainete õpetamise alused", eapCount: 9),
                            Course(name: "Haridustehnoloogiline meeskonnatöö ning digiinnovatsiooni juhtimine haridusasutuses", eapCount: 6),
                            Course(name: "Õpianalüütika – andmed õppimise ja õpetamise toetamisel", eapCount: 6),
                            Course(name: "Tööõpetuse teooria ja didaktika 1.-3. klassis", eapCount: 3),
                            Course(name: "Liikumisõpetuse alused III", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Pedagoogiline praktika",
                courses: [
                    Course(name: "Üleminek kooli ja 1. klassi laps koolis", eapCount: 3),
                    Course(name: "Õpetajakutsesse sissejuhatav praktika (praktika)", eapCount: 3),
                    Course(name: "Eelpraktika (praktika)", eapCount: 3),
                    Course(name: "Põhipraktika 1.-3. klassini (praktika)", eapCount: 9),
                    Course(name: "Põhipraktika 4.-6 klassini (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Rahvusvaheline seminar", eapCount: 1),
                            Course(name: "Välispraktika", eapCount: 15),
                            Course(name: "Õppijate ja õpetajate toetamise praktika", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Uurimistöö alused",
                courses: [
                    Course(name: "Magistritöö seminar I", eapCount: 3),
                    Course(name: "Magistritöö seminar II", eapCount: 3),
                    Course(name: "Uurimistöö alused", eapCount: 6),
                    Course(name: "Kvalitatiivsed ja kvantitatiivsed meetodid", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kvantitatiivne andmeanalüüs", eapCount: 6),
                            Course(name: "Kvalitatiivsete andmete analüüsi eriseminar", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Valdkondlik võõrkeel",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Erialane inglise keel II", eapCount: 6),
                    Course(name: "Akadeemiline inglise keel", eapCount: 6)
                ]
            ),
            Module(
                name: "Üldkasvatuslikud ja psühholoogiaalased ained",
                courses: [
                    Course(name: "Tunnetusprotsessid", eapCount: 3),
                    Course(name: "Motivatsioonilised protsessid", eapCount: 3),
                    Course(name: "Sotsiaal-emotsionaalsed protsessid", eapCount: 3),
                    Course(name: "Perekond lapse arengukeskkonnana", eapCount: 3),
                    Course(name: "Õppimise ja õpetamise käsitlused: Õpetaja uskumused-teadmised ja teoreetilised käsitlused läbi ajaloo ning tänapäeval", eapCount: 3),
                    Course(name: "Õpetaja suhtlemis- ja koostööpädevus", eapCount: 3),
                    Course(name: "Koolipedagoogika ja klassiõpetaja professionaalne areng", eapCount: 6),
                    Course(name: "Õpiraskustega õpilase toetamine", eapCount: 6),
                    Course(name: "Käitumisraskuste ennetamine ja nõustamine käitumisprobleemide ilmnemisel", eapCount: 6),
                    Course(name: "Hariduslike erivajadustega õppija", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kasvatusteaduste alused", eapCount: 6),
                            Course(name: "Õppimine avatud õpikeskkondades", eapCount: 3),
                            Course(name: "Õpetaja toimetulek ja enesearengu toetamine", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Vabaained", eapCount: 60)
                ]
            ),
            Module(
                name: "Magistritöö",
                courses: [
                    Course(name: "Magistritöö", eapCount: 18)
                ]
            )
        ]
    )
]
