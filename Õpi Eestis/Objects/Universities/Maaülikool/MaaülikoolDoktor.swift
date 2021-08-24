let maaülikoolDoktor = [
    majorsMinors(
        name: "Keskkonnateadus ja rakendusbioloogia",
        level: .doctor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Magistri kraad"),
            Requirements(term: "CV"),
            Requirements(term: "Doktoritöö kavand")
        ],
        description: ["Õppekava eesmärkideks on keskkonnakaitse, maastikuarhitektuuri või rakendusbioloogia ning nendega seonduvates valdkondades rahvusvahelise tasemega teadlaste, õppejõudude ja tippspetsialistide ettevalmistamine töötamiseks kõrgkoolides, teadus-arendusasutustes, riigiasutustes ning erasektoris."],
        outcomes: ["Keskkonnateaduse ja rakendusbioloogia doktoriõppekava läbinu:", "Valdab kaasaja bio- ja keskkonnateaduste valdkonna teooriaid ja uurimismeetodeid üldiselt ning tal on sügavad ja ajakohased teadmised õppekava kitsamas uurimisvaldkonnas", "Oskab algatada uurimistööd, püstitada hüpoteese, kriitiliselt analüüsida ja kasutada kaasaegseid oma valdkonna uurimismeetodeid", "Oskab iseseisvalt läbi viia eksperimente, koguda ja töödelda andmeid, analüüsida statistilisi andmeid", "Oskab iseseisvalt analüüsida uurimistulemusi, neid suuliselt ja artikliks vormistatuna esitada ning nende üle diskuteerida", "On kursis teaduse eetika ja intellektuaalomandi kaitse põhimõtetega", "Tunneb ja rakendab kaasaegseid õpi- ja hindamismeetodeid, oskab üliõpilaste õppimist, uurimistööd ja praktikat juhendada", "Oskab iseseisvalt tegutseda keerulises, sealhulgas rahvusvahelises töö-, õpi- ja teaduskeskkonnas, mis nõuab juhtimis- ja meeskonnatööoskusi, innovaatilist mõtlemist ning strateegiliste otsuste tegemise võimet", "Mõistab professionaalse arengu ja elukestva õppe olulisust indiviidi ja ühiskonna tasandil", "On võimeline algatama ja arendama erialast koostööd nii kodu- kui ka välismaal", "On nüüdisaegse akadeemilise haridusega loodussäästliku mõtteviisiga tippspetsialist ja jätkusuutliku arengu edendaja."],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 5,
        duration: 4,
        studyLocation:  [.tartu],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Teadus",
                        courses: [
                            Course(name: "Intellektuaalomandi kaitse ja autoriõigus", eapCount: 1),
                            Course(name: "Teaduseetika", eapCount: 2),
                            Course(name: "Teadstöö metodoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Õpetamine kõrgkoolis",
                        courses: [
                            Course(name: "Kõrgkooli pedagoogiline praktika", eapCount: 2),
                            Course(name: "Kõrgkoolididaktika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ettevõtlus- või juhtimisalane praktika", eapCount: 2),
                            Course(name: "Juhtimine ja ettevõtlus", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [
                    Course(name: "Erialaained", eapCount: 21),
                    Course(name: "Matemaatiline statistika ja modelleerimine", eapCount: 3),
                    Course(name: "Teaduskommunikatsioon", eapCount: 4)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: []
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 200)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Põllumajandus",
        level: .doctor,
        type: .põllumajandus,
        requirements: [
            Requirements(term: "Magistri kraad"),
            Requirements(term: "CV"),
            Requirements(term: "Doktoritöö kavand")
        ],
        description: ["Õppekava eesmärkideks on põllumajanduses ning sellega seonduvates valdkondades ja seda teenindavas sektoris pädevate, rahvusvahelise tasemega õppejõudude, teadlaste ja tippspetsialistide ettevalmistamine töötamaks kõrgkoolides, teadus- ja arendusasutustes, riigiasutustes ning eraettevõtetes."],
        outcomes: ["Põllumajanduse doktoriõppekava läbinu:", "Valdab kaasaja põllumajanduslikke teooriaid ja uurimismeetodeid üldiselt ning tal on sügavad ja ajakohased teadmised oma kitsamas uurimisvaldkonnas", "Oskab algatada uurimistööd, püstitada hüpoteese, kriitiliselt analüüsida ja kasutada kaasaegseid oma valdkonna uurimismeetodeid", "Oskab iseseisvalt läbi viia eksperimente, koguda andmeid, töödelda ja analüüsida statistilisi andmeid", "Oskab iseseisvalt analüüsida uurimistulemusi, neid suuliselt ja artikliks vormistatuna esitada ning nende üle diskuteerida", "On kursis teaduse eetika ja intellektuaalomandi kaitse põhimõtetega", "Tunneb ja rakendab kaasaaegseid õpi- ja hindamismeetodeid, oskab üliõpilaste õppimist, uurimistööd ja praktikat juhendada", "Oskab iseseisvalt tegutseda keerulises, sealhulgas rahvusvahelises töö-, õpi- ja teaduskeskkonnas, mis nõuab juhtimis- ja meeskonnatööoskusi, innovaatilist mõtlemist ning strateegiliste otsuste tegemise võimet", "Mõistab professionaalse arengu ja elukestva õppe olulisust indiviidi ja ühiskonna tasandil", "On võimeline algatama ja arendama erialast koostööd nii kodu- kui ka välismaal", "On nüüdisaegse akadeemilise haridusega loodussäästliku mõtteviisiga tippspetsialist ja jätkusuutliku arengu edendaja."],
        language: .eesti,
        majorWebsite: "http://pk.emu.ee/",
        spots: 7,
        duration: 4,
        studyLocation:  [.tartu],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Teadus",
                        courses: [
                            Course(name: "Intellektuaalomandi kaitse ja autoriõigus", eapCount: 1),
                            Course(name: "Teaduseetika", eapCount: 2),
                            Course(name: "Teadstöö metodoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Õpetamine kõrgkoolis",
                        courses: [
                            Course(name: "Kõrgkooli pedagoogiline praktika", eapCount: 2),
                            Course(name: "Kõrgkoolididaktika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ettevõtlus- või juhtimisalane praktika", eapCount: 2),
                            Course(name: "Juhtimine ja ettevõtlus", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [
                    Course(name: "Erialaained", eapCount: 21),
                    Course(name: "Matemaatiline statistika ja modelleerimine", eapCount: 3),
                    Course(name: "Teaduskommunikatsioon", eapCount: 4)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: []
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 200)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tehnikateadus",
        level: .doctor,
        type: .tehnika,
        requirements: [
            Requirements(term: "Magistri kraad"),
            Requirements(term: "CV"),
            Requirements(term: "Doktoritöö kavand")
        ],
        description: ["Õppekava eesmärkideks on tehnikavaldkonnas pädevate õppejõudude, teadlaste ja tippspetsialistide ettevalmistamine töötamiseks kõrgkoolides, teadus- ja arendusinstituutides, tippasjatundjatena riigi- ja munitsipaalasutustes, tööstuses, eraettevõtluses, ehituses, veemajanduses, energeetikas ja maakorralduses."],
        outcomes: ["Tehnikateaduse doktoriõppekava läbinu:", "Omab vastavalt oma uurimistöö suunale sügavaid ja ajakohaseid teadmisi tehnikateaduse valdkonnas ning valdab vastavat terminoloogiat", "On kursis tehnikateaduse valdkonna uuemate teadussaavutustega ning oskab neid erialaspetsiifikast lähtudes kriitiliselt hinnata", "Oskab iseseisvalt analüüsida ja sünteesida nähtusi ja protsesse ning algatada uurimistööd", "Oskab iseseisvalt korraldada eksperimente ja koguda andmeid", "Oskab kasutada nüüdisaegseid tehnikateaduse meetodeid ja andmetöötlust", "Oskab uurimistulemusi põhjendada nii suuliselt kui ka kirjalikult ja nende üle diskuteerida", "Tunneb ja rakendab nüüdisaegseid õpi- ja hindamismeetodeid, oskab üliõpilaste õppimist, uurimistööd ja praktikat juhendada", "Oskab iseseisvalt tegutseda erinevates, sealhulgas rahvusvahelistes töö-, õpi- ja teaduskeskkondades, mis nõuavad juhtimis- ja meeskonnatööoskusi, innovaatilist mõtlemist ning strateegiliste otsuste tegemist", "Mõistab professionaalse arengu ja elukestva õppe olulisust indiviidi ja ühiskonna tasandil", "On võimeline arendama erialaseid koostöösidemeid nii kodu- kui ka välismaal", "On Eesti maamajanduse jätkusuutlikku arengut tagav nüüdisaegse akadeemilise hariduse ja loodussäästliku mõtteviisiga spetsialist"],
        language: .eesti,
        majorWebsite: "http://te.emu.ee/",
        spots: 3,
        duration: 4,
        studyLocation:  [.tartu],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Teadus",
                        courses: [
                            Course(name: "Intellektuaalomandi kaitse ja autoriõigus", eapCount: 1),
                            Course(name: "Teaduseetika", eapCount: 2),
                            Course(name: "Teadstöö metodoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Õpetamine kõrgkoolis",
                        courses: [
                            Course(name: "Kõrgkooli pedagoogiline praktika", eapCount: 2),
                            Course(name: "Kõrgkoolididaktika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ettevõtlus- või juhtimisalane praktika", eapCount: 2),
                            Course(name: "Juhtimine ja ettevõtlus", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [
                    Course(name: "Erialaained", eapCount: 21),
                  
                    Course(name: "Teaduskommunikatsioon", eapCount: 4)
                ],
                submodules: [
                    Submodule(
                        name: "Matemaatiline statistika ja modelleerimine",
                        courses: [
                            Course(name: "Matemaatiline statistika 1. Klassikalised meetodid", eapCount: 3),
                            Course(name: "Matemaatiline statistika 2. Mudelid ja mustrid", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Teaduskommunikatsioon",
                        courses: [
                            Course(name: "Uurimistöö esitlemine rahvusvahelisel teaduskonverentsil", eapCount: 2),
                            Course(name: "Uurimistöö esitlemine teaduslik-praktilisel konverentsil", eapCount: 2)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaained",
                courses: []
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 200)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Veterinaarmeditsiin ja toiduteadus",
        level: .doctor,
        type: .veterinaaria,
        requirements: [
            Requirements(term: "Magistri kraad"),
            Requirements(term: "CV"),
            Requirements(term: "Doktoritöö kavand")
        ],
        description: ["Õppekava eesmärkideks on veterinaarmeditsiinis või toiduteaduses ning nendega seonduvates valdkondades pädevate teadlaste, õppejõudude ja tippspetsialistide ettevalmistamine töötamiseks kõrgkoolides, teadus- ja arendusasutustes, riigiasutustes, veterinaarjärelevalve ja toiduohutusega tegelevates institutsioonides, põllumajandustootmises, toiduainetööstuses ning biotehnoloogia ja teistes valdkonna ettevõtetes."],
        outcomes: ["Veterinaarmeditsiini ja toiduteaduse doktoriõppekava läbinu:", "Valdab kaasaja loomaarsti- või toiduteaduse valdkonna teooriaid ja uurimismeetodeid üldiselt ning tal on sügavad ja ajakohased teadmised kitsamas uurimisvaldkonnas", "Oskab algatada uurimistööd, püstitada hüpoteese, kriitiliselt analüüsida ja kasutada kaasaegseid oma valdkonna uurimismeetodeid", "Oskab iseseisvalt läbi viia eksperimente, koguda andmeid ning töödelda ja analüüsida statistilisi andmeid", "Oskab iseseisvalt analüüsida uurimistulemusi ning neid suuliselt ja artikliks vormistatuna esitada ning nende üle diskuteerida", "On kursis teaduse eetika ja intellektuaalomandi kaitse põhimõtetega", "Tunneb ja rakendab kaasaegseid õpi- ja hindamismeetodeid ning oskab juhendada üliõpilaste õppimist, uurimistööd ja praktikat", "Oskab iseseisvalt tegutseda keerulises, sealhulgas rahvusvahelises töö-, õpi- ja teaduskeskkonnas, mis nõuab juhtimis- ja meeskonnatööoskusi, innovaatilist mõtlemist ning strateegiliste otsuste tegemise võimet", "Mõistab professionaalse arengu ja elukestva õppe olulisust indiviidi ja ühiskonna tasandil", "On võimeline algatama ja arendama erialast koostööd nii kodu kui ka välismaal."],
        language: .eesti,
        majorWebsite: "http://vl.emu.ee/",
        spots: 3,
        duration: 4,
        studyLocation:  [.tartu],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Teadus",
                        courses: [
                            Course(name: "Intellektuaalomandi kaitse ja autoriõigus", eapCount: 1),
                            Course(name: "Teaduseetika", eapCount: 2),
                            Course(name: "Teadstöö metodoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Õpetamine kõrgkoolis",
                        courses: [
                            Course(name: "Kõrgkooli pedagoogiline praktika", eapCount: 2),
                            Course(name: "Kõrgkoolididaktika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ettevõtlus- või juhtimisalane praktika", eapCount: 2),
                            Course(name: "Juhtimine ja ettevõtlus", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [
                    Course(name: "Erialaained", eapCount: 21),
                  
                    Course(name: "Teaduskommunikatsioon", eapCount: 4)
                ],
                submodules: [
                    Submodule(
                        name: "Matemaatiline statistika ja modelleerimine",
                        courses: [
                            Course(name: "Matemaatiline statistika 1. Klassikalised meetodid", eapCount: 3),
                            Course(name: "Matemaatiline statistika 2. Mudelid ja mustrid", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Teaduskommunikatsioon",
                        courses: [
                            Course(name: "Uurimistöö esitlemine rahvusvahelisel teaduskonverentsil", eapCount: 2),
                            Course(name: "Uurimistöö esitlemine teaduslik-praktilisel konverentsil", eapCount: 2)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaained",
                courses: []
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 200)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Metsandus",
        level: .doctor,
        type: .metsandus,
        requirements: [
            Requirements(term: "Magistri kraad"),
            Requirements(term: "CV"),
            Requirements(term: "Doktoritöö kavand")
        ],
        description: ["Metsanduse tippspetsialistide rahvusvaheliselt tunnustatud tasemel ettevalmistamine töötamiseks metsandussektoris avalikus halduses, ettevõtluses ning kõrghariduses."],
        outcomes: ["Omab metsanduses oma uurimisvaldkonnas ajakohaseid, põhjalikke ja spetsiifilisi teadmisi, tunneb ja rakendab vastavaid uurimismetoodikaid ja -meetodeid, oskab analüüsida ja sünteesida oma valdkonda arendavaid ideid, püstitada need uurimisküsimustena, ning lähtub uurimistöös teaduseetikast", "Oskab juhtida uurimistööd, teha strateegilisi otsuseid ning teavitada tulemustest, publitseerides õppekeeles ja oma erialal olulises teaduskeeles ning argumenteerida erialastes aruteludes", "Rakendab oma erialaseid teadmisi ja kogemusi metsanduse valdkonnas õppe-, teadus- ja arendustegevuses", "Omab meeskonnatöö ja rahvusvahelise erialase suhtluse kogemust", "Mõistab professionaalse arengu ja elukestva õppe olulisust indiviidi ja ühiskonna tasandil", "Mõistab loodussäästliku arengu ja biomajanduse põhimõtteid."],
        language: .eesti,
        majorWebsite: "http://mi.emu.ee/",
        spots: 4,
        duration: 4,
        studyLocation:  [.tartu],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldmoodul",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Teadus",
                        courses: [
                            Course(name: "Intellektuaalomandi kaitse ja autoriõigus", eapCount: 1),
                            Course(name: "Teaduseetika", eapCount: 2),
                            Course(name: "Teadstöö metodoloogia", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Õpetamine kõrgkoolis",
                        courses: [
                            Course(name: "Kõrgkooli pedagoogiline praktika", eapCount: 2),
                            Course(name: "Kõrgkoolididaktika", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Ettevõtlus",
                        courses: [
                            Course(name: "Ettevõtlus- või juhtimisalane praktika", eapCount: 2),
                            Course(name: "Juhtimine ja ettevõtlus", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialamoodul",
                courses: [
                    Course(name: "Erialaained", eapCount: 21),
                  
                    Course(name: "Teaduskommunikatsioon", eapCount: 4)
                ],
                submodules: [
                    Submodule(
                        name: "Matemaatiline statistika ja modelleerimine",
                        courses: [
                            Course(name: "Matemaatiline statistika 1. Klassikalised meetodid", eapCount: 3),
                            Course(name: "Matemaatiline statistika 2. Mudelid ja mustrid", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Teaduskommunikatsioon",
                        courses: [
                            Course(name: "Uurimistöö esitlemine rahvusvahelisel teaduskonverentsil", eapCount: 2),
                            Course(name: "Uurimistöö esitlemine teaduslik-praktilisel konverentsil", eapCount: 2)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaained",
                courses: []
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 200)
                ]
            )
        ]
    )
]
