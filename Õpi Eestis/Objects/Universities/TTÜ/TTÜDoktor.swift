let ttüDoktor = [
    majorsMinors(
        name: "Avalik haldus",
        level: .doctor,
        type: .majandus,
        requirements: [
            Requirements(term: "Avalik Konkurss")
        ],
        description: ["Õppekava eesmärgiks on:", "Anda laiapõhjalised teoreetilised ja praktilised teadmised ning uurimistegevuseks vajalikud oskused avaliku halduse ja tehnoloogia valitsemise valdkonnas inimestele, kes soovivad teha akadeemilist karjääri kummagi spetsialiseerumise suunal või taotlevad karjääriredelil edasiliikumist ametikohtadele, mis eeldavad doktorikraadi (näit. poliitikate analüüsijad, kõrgemad ametnikud)", "Arendada doktorantide võimekust viia läbi iseseisvat uurimistööd", "Anda laialdased oskused uurimistegevuse läbiviimiseks sotsiaalteaduste vallas ning spetsiifiliselt avaliku halduse ja tehnoloogia valitsemise valdkondades", "Panustada avaliku halduse ja tehnoloogia valitsemise valdkondade kvaliteedi tagamisse ja tõstmisse Eestis, edendades akadeemilisest ning poliitilisest perspektiivist lähtuvat diskussiooni asjakohaste võtmeküsimuste üle."],
        outcomes: ["Oskab planeerida ja läbi viia süstemaatilist uurimistegevust, on omandanud uurimistegevuse strateegia ning metodoloogia rõhuasetusega avaliku halduse ning tehnoloogia valitsemise valdkonnas", "On omandanud oskused ja kogemused viia läbi nii iseseisev akadeemiline uurimus kui ka poliitikakeskne ja mõnda poliitika valdkonda puudutav uuring", "Demonstreerib laiapõhjalisi teadmisi mitmesugustest uurimisparadigmadest vastavalt avalikus halduses ning tehnoloogia valitsemises", "Esitab ja selgitab nii suuliselt kui kirjalikult erialaga seonduvate teadusdistsipliinide teoreetilisi põhiseisukohti, printsiipe ning nende kriitikat erinevate koolkondade lõikes", "Tuvastab teadusdistsipliinide teoreetiliste seisukohtade seosed praktikatega, näidates suutlikkust/oskust vastandada teooriat ja praktikat ning läheneda kriitiliselt erinevatele seisukohtadele."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Karjääriplaneerimine doktorantidele", eapCount: 3),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Sotsiaalteaduste meetodid", eapCount: 6),
                    Course(name: "Teadusprojektide juhtimine", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Avalik haldus",
                courses: [
                    Course(name: "Praktika (praktika)", eapCount: 6),
                    Course(name: "Avaliku halduse erikursus", eapCount: 6),
                    Course(name: "Halduspoliitika erikursus", eapCount: 6),
                    Course(name: "Doktoriseminar I", eapCount: 6),
                    Course(name: "Doktoriseminar II", eapCount: 6),
                    Course(name: "Juhendamispraktika (praktika)", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Tehnoloogia valitsemine",
                courses: [
                    Course(name: "Praktika (praktika)", eapCount: 6),
                    Course(name: "Tehnoloogia valitsemise erikursus", eapCount: 6),
                    Course(name: "Avalik haldus ja innovatsioon", eapCount: 6),
                    Course(name: "Doktoriseminar I", eapCount: 6),
                    Course(name: "Doktoriseminar II", eapCount: 6),
                    Course(name: "Juhendamispraktika (praktika)", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Ehitus ja arhitektuur",
        level: .doctor,
        type: .insener,
        requirements: [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Õppekava üldeesmärk on viia doktorandi teadmised ja oskused rahvusvahelises teadusruumis tunnustatud kõrgprofessionaali tasemele. Doktoranti valmistatakse ette tööks õppejõuna ja teadlasena ülikoolis või teistes teadusasutustes ning juhtivspetsialistina väljaspool akadeemilist sfääri. Doktorikraadiga spetsialisti hariduse põhikomponentideks on tippteadmised oma erialal, rahvusvaheliselt tunnustatud teadus- ja arendustöö oskused, avar teaduslik maailmakäsitlus ning juhtimis- ja pedagoogilise töö pädevused. Doktorikraadiga spetsialist on iseseisev uurija, kes on võimeline analüüsima tema ette püstitatud probleemi ning sellele lahendusi leidma, töötades olenevalt olukorrast üksi või töögrupi juhina."],
        outcomes: ["On võimeline töötama teadlasena, kes valdab oma teadussuuna teoreetilist baasi ja uurimismeetodeid ning oskab teadusprobleeme püstitada, analüüsida ja lahendada", "Omab uurimisrühma juhtimise kogemust", "Tunneb põhjalikult erialast teaduskirjandust", "Valdab teadusliku esinemise ja väitlemise kunsti", "Oskab läbi viia õppetööd ülikoolis", "Valdab rahvusvaheliseks suhtlemiseks piisaval tasemel võõrkeeli, mis võimaldab töötada juhtivspetsialistina nii riigiasutustes ja ettevõtluses kui ka õppe- ja teadusasutustes."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Karjääriplaneerimine doktorantidele", eapCount: 3),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Lõplike elementide meetod", eapCount: 6),
                    Course(name: "Uurimistöö metoodika ja eksperimenditehnika", eapCount: 6),
                    Course(name: "Ehitusinfo haldamine ja modelleerimine (BIM II)", eapCount: 6),
                    Course(name: "Andmetöötlus ja visualiseerimine teadus- ja inseneritöö tarbeks", eapCount: 6),
                    Course(name: "Andmetöötluse eriseminar", eapCount: 6),
                    Course(name: "Teaduspublitseerimine", eapCount: 6),
                    Course(name: "Avalik haldus ja innovatsioon", eapCount: 6),
                    Course(name: "Materjalide biolagunemine", eapCount: 6),
                    Course(name: "Kvalitatiivsed uurimismeetodid", eapCount: 6),
                    Course(name: "Linnateooriad", eapCount: 6),
                    Course(name: "Matlab ja numbriline modelleerimine", eapCount: 6),
                    Course(name: "Inseneristatistika", eapCount: 6),
                ]
            ),
            Module(
                name: "Peaeriala: Ehitus ja arhitektuur",
                courses: [
                    Course(name: "Doktoriseminar", eapCount: 6),
                    Course(name: "Õpetamispraktika", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Arhitektuuri ja urbanistika eriõpe I", eapCount: 9),
                            Course(name: "Arhitektuuri ja urbanistika eriõpe II", eapCount: 9),
                            Course(name: "Soojus- ja niiskuslevi modelleerimine", eapCount: 6),
                            Course(name: "Keskkonnamõju hindamine ja keskkonnaaudit", eapCount: 6),
                            Course(name: "Hüdrodünaamika seminar", eapCount: 6),
                            Course(name: "Keskkonna hüdro- ja aeromehaanika", eapCount: 9),
                            Course(name: "Ehituse eriõpe I", eapCount: 9),
                            Course(name: "Ehituse eriõpe II", eapCount: 9),
                            Course(name: "Erialased ettekanded", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Vee- ja keskkonnatehnika",
                courses: [
                    Course(name: "Doktoriseminar", eapCount: 6),
                    Course(name: "Õpetamispraktika", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnamõju hindamine ja keskkonnaaudit", eapCount: 6),
                            Course(name: "Hüdrodünaamika seminar", eapCount: 6),
                            Course(name: "Keskkonna hüdro- ja aeromehaanika", eapCount: 6),
                            Course(name: "Vee- ja keskkonnatehnika eriõpe I", eapCount: 9),
                            Course(name: "Vee- ja keskkonnatehnika eriõpe II", eapCount: 9),
                            Course(name: "Erialased ettekanded", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Ranniku ja meretehnika",
                courses: [
                    Course(name: "Doktoriseminar", eapCount: 6),
                    Course(name: "Õpetamispraktika", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Keskkonnamõju hindamine ja keskkonnaaudit", eapCount: 6),
                            Course(name: "Hüdrodünaamika seminar", eapCount: 6),
                            Course(name: "Keskkonna hüdro- ja aeromehaanika", eapCount: 6),
                            Course(name: "Ranniku- ja meretehnika I", eapCount: 9),
                            Course(name: "Ranniku- ja meretehnika II", eapCount: 9),
                            Course(name: "Erialased ettekanded", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Elektroenergeetika ja mehhatroonika",
        level: .doctor,
        type: .insener,
        requirements: [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Üldisteks eesmärkideks on kõrge tasemega tippspetsialistide, õppejõudude ja teadlaste ettevalmistamine ettevõtetele, riigiasutustele ning ülikoolidele. Doktoriõpe on teadusele põhinev kõrghariduse kõrgeima astme õpe, mille kestel üliõpilane omandab vajalikud pädevused teadus-, arendus- või originaalseks loometööks ning töötamiseks iseseisva professionaalina."],
        outcomes: ["Demonstreerib laiapõhjalisi teadmisi ning süsteemset ülevaadet elektroenergeetika ja mehhatroonika uurimisvaldkonnas ning sügavaid ja kaasaegseid teadmisi kitsamas spetsialiseerumise valdkonnas", "Rakendab olemasolevate teadmiste ja meetodite sisu ning ulatust oma erialal ja seoseid teiste valdkondade vahel", "Püstitab ning sõnastab elektroenergeetika ja mehhatroonika uurimisvaldkonna probleeme iseseisvalt, hindab ja analüüsib neid kriitiliselt ning lahendab need teaduslikult", "Toimib iseseisvalt keerulises töö- ja õppekeskkonnas, demonstreerides juhtimis- ja meeskonnatöö oskusi, innovatiivset mõtlemist ning võttes vastu strateegilisi otsuseid", "Argumenteerib ning väitleb elektroenergeetika ja mehhatroonika uurimisvaldkonna teemakohastes aruteludes oma õppekeeles ja võõrkeeles", "Koostab elektroenergeetika ja mehhatroonika uurimisvaldkonna esitlusi ning artikleid originaalsete teadustulemuste avaldamiseks rahvusvaheliste konverentside kogumikes ja teadusajakirjades", "Algatab, planeerib, koostab ning rakendab elektroenergeetika ja mehhatroonika uurimisvaldkonna teadus- ja arendustöid", "Annab teaduslikke ja eetilisi hinnanguid, võttes arvesse teaduse võimalusi ning piiranguid, selle sotsiaalset rolli ja inimese vastutust teadustulemuste rakendamisel", "Analüüsib sotsiaalseid norme ja suhteid ning vajaduse korral võtab tarvitusele abinõud nende muutmiseks", "Annab edasi oma teadmisi ja oskusi õpetamise ning juhendamise teel", "On võimeline tunnetama vajadust uute teadmiste ja oskuste omandamise järele."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Karjääriplaneerimine doktorantidele", eapCount: 3),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Elektroenergeetika ja mehhatroonika teadusseminar I", eapCount: 6),
                    Course(name: "Kõrgkoolididaktika", eapCount: 6),
                    Course(name: "Uurimistöö metoodika ja eksperimenditehnika", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriõpe",
                courses: [
                    Course(name: "Õpetamispraktika I (praktika)", eapCount: 6),
                    Course(name: "Doktoriseminar", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Elektroenergeetika ja mehhatroonika teadusseminar II", eapCount: 6),
                            Course(name: "Elektroenergeetika individuaalõpe I", eapCount: 6),
                            Course(name: "Elektroenergeetika individuaalõpe II", eapCount: 12),
                            Course(name: "Elektrotehnika individuaalõpe I", eapCount: 6),
                            Course(name: "Elektrotehnika individuaalõpe II", eapCount: 12),
                            Course(name: "Mehhatroonika individuaalõpe I", eapCount: 6),
                            Course(name: "Mehhatroonika individuaalõpe II", eapCount: 12),
                            Course(name: "Õpetamispraktika II (praktika)", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Info- ja kommunikatsioonitehnoloogia",
        level: .doctor,
        type: .infotehnoloogia,
        requirements: [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Õppekava eesmärgiks on omandada teadmisi, oskusi ja kogemusi iseseisvaks teadus-, arendus-, õppe- või kutsealaseks loometööks info- ja kommunikatsioonitehnoloogia valdkonnas."],
        outcomes: ["Omab laiapõhjalisi teadmisi ja süsteemset ülevaadet oma uurimisvaldkonnas", "Sügavaid ja ajakohaseid teadmisi oma uurimisvaldkonnaga seostuvas uurimisteemas", "Oskab püstitada teadusprobleeme, valida meetodeid nende lahendamiseks ning kriitiliselt hinnata lahenduste tulemuslikkust", "Omab ülevaadet teadusmetoodikast ning oskab kasutada erinevaid teaduslikke meetodeid keerukate päriseluprobleemide lahendamiseks", "Suudab vormistada teadustulemused artiklitena ning avaldada need kõrgekvaliteedilistes eelretsenseeritavates rahvusvahelistes teadusväljaannetes", "Omab ülevaadet oma teadusvaldkonnaga seotud sotsiaalsetest ja eetilistest tahkudest ning oma teadustulemuste kommertsialiseerimisvõimalustest", "Oskab oma valdkonna teadustulemusi analüüsida ning selgitada laiemale avalikkusele."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/infotehnoloogia-teaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Kohustuslikud ained",
                courses: [
                    Course(name: "Doktoriseminar", eapCount: 6),
                    Course(name: "Doktorantide õpetamispraktika", eapCount: 6)
                ]
            ),
            Module(
                name: "Valikained",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 6),
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Teadusprojektide juhtimine", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Karjääriplaneerimine doktorantidele", eapCount: 3),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3),
                    Course(name: "Sotsiaalteaduste meetodid", eapCount: 6),
                    Course(name: "Andmekaevandamine ja võrgustike analüüs", eapCount: 6),
                    Course(name: "Konkreetne matemaatika", eapCount: 6),
                    Course(name: "Semantika ja analüütiline filosoofia", eapCount: 6),
                    Course(name: "Kvantitatiivsed uurimismeetodid", eapCount: 6),
                    Course(name: "Matemaatika erikursus doktorantidele", eapCount: 9),
                    Course(name: "Erialane individuaalõpe", eapCount: 6),
                    Course(name: "Erialakirjanduse ülevaade", eapCount: 3),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 6),
                    Course(name: "Uurimispraktika välisriigis või ettevõttes", eapCount: 3),
                    Course(name: "Erialane individuaalõpe", eapCount: 6)
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Keemia ja biotehnoloogia",
        level: .doctor,
        type: .loodusteadus,
        requirements:  [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Õppekava üldeesmärk on viia doktorandi teadmised ja oskused rahvusvahelises teadusruumis keemia, geenitehnoloogia, toiduteaduse või molekulaarmeditsiini erialal tunnustatud kõrgprofessionaali tasemele. Doktoranti valmistatakse ette tööks õppejõuna ja teadlasena ülikoolis või teistes teadusasutustes ning juhtivspetsialistina väljaspool akadeemilist sfääri nii kontroll-laborites kui ka tööstusettevõtetes. Doktorikraadiga spetsialisti hariduse põhikomponentideks on tippteadmised oma erialal, rahvusvaheliselt tunnustatud teadus- ja arendustöö oskused, avar teaduslik maailmakäsitlus ning juhtimis- ja pedagoogilise töö pädevused. Doktorikraadiga spetsialist on iseseisev uurija, kes on võimeline analüüsima tema ette püstitatud probleemi ning sellele lahendusi leidma, töötades olenevalt olukorrast üksi või siis juhtides töögruppi."],
        outcomes: ["On omandanud vajalikud teadmised ja oskused iseseisvaks professionaalseks teadus- ja arendustegevuseks keemia, geenitehnoloogia, toiduteaduse või molekulaarmeditsiini erialal", "On võimeline töötama teadlasena, kes valdab oma teadussuuna teoreetilist baasi ja uurimismeetodeid ning oskab teadusprobleeme püstitada, analüüsida ja lahendada", "Omab uurimisrühmas töötamise ja juhendamise kogemust", "Tunneb põhjalikult erialast teaduskirjandust", "Valdab teadusliku esinemise ja väitlemise kunsti", "Omab ülikoolis õppetöö läbi viimise kogemust", "Valdab rahvusvaheliseks suhtlemiseks piisaval tasemel inglise keelt, mis võimaldab töötada juhtivspetsialistina nii riigiasutustes, ettevõtluses kui ka õppe- ja teadusasutustes", "Teab ja järgib teadustöö eetika ja bioeetika põhimõtteid"],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/loodusteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Karjääriplaneerimine doktorantidele", eapCount: 3),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Geenitehnoloogia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Geenitehnoloogia",
                        courses: [
                            Course(name: "Struktuuribioloogia", eapCount: 3),
                            Course(name: "Interaktoomika", eapCount: 3),
                            Course(name: "Kasvajate metabolismi alused", eapCount: 3),
                            Course(name: "Bioanalüütiliste meetodite erikursus", eapCount: 3),
                            Course(name: "Biotehnoloogia erikursus", eapCount: 3),
                            Course(name: "Spektroskoopia erikursus", eapCount: 3),
                            Course(name: "Süsteemibioloogia", eapCount: 3),
                            Course(name: "Bioinformaatika erikursus", eapCount: 3),
                            Course(name: "Geenitehnoloogia eetilised, õiguslikud ja ärilised aspektid", eapCount: 3),
                            Course(name: "Bioloogiline ohutus", eapCount: 3),
                            Course(name: "Neurobioloogia erikursus", eapCount: 3),
                            Course(name: "Proteoomika ja valkude keemia erikursus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Geenitehnoloogia ja molekulaareditsiin",
                        courses: [
                            Course(name: "Molekulaarne rakubioloogia", eapCount: 9),
                            Course(name: "Õpetamispraktika", eapCount: 9),
                            Course(name: "Doktoriseminar", eapCount: 9),
                            Course(name: "Erialased ettekanded", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Keemia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Keemia ja biokeemia",
                        courses: [
                            Course(name: "Struktuuribioloogia", eapCount: 3),
                            Course(name: "Molekulaarne rakubioloogia", eapCount: 9),
                            Course(name: "Roheline keemia", eapCount: 3),
                            Course(name: "Interaktoomika", eapCount: 3),
                            Course(name: "Bioanalüütiliste meetodite erikursus", eapCount: 3),
                            Course(name: "Biotehnoloogia erikursus", eapCount: 3),
                            Course(name: "Arvutuskeemia erikursus", eapCount: 3),
                            Course(name: "Stereokeemia erikursus", eapCount: 3),
                            Course(name: "Spektroskoopia erikursus", eapCount: 3),
                            Course(name: "Süsteemibioloogia", eapCount: 3),
                            Course(name: "Bioinformaatika erikursus", eapCount: 3),
                            Course(name: "Proteoomika ja valkude keemia erikursus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Geenitehnoloogia ja molekulaareditsiin",
                        courses: [
                            Course(name: "Erialase keemia süvakursus", eapCount: 9),
                            Course(name: "Õpetamispraktika", eapCount: 9),
                            Course(name: "Doktoriseminar", eapCount: 9),
                            Course(name: "Erialased ettekanded", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Molekulaarmeditsiin",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Molekulaarmeditsiin",
                        courses: [
                            Course(name: "Füsioloogiline regulatsioon ja adaptatsioon", eapCount: 6),
                            Course(name: "Inimese anatoomia ja haiguseõpetus", eapCount: 6),
                            Course(name: "Struktuuribioloogia", eapCount: 3),
                            Course(name: "Bioanalüütiliste meetodite erikursus", eapCount: 3),
                            Course(name: "Bioinformaatika erikursus", eapCount: 3),
                            Course(name: "Geenitehnoloogia eetilised, õiguslikud ja ärilised aspektid", eapCount: 3),
                            Course(name: "Bioloogiline ohutus", eapCount: 3),
                            Course(name: "Neurobioloogia erikursus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Geenitehnoloogia ja molekulaareditsiin",
                        courses: [
                            Course(name: "Molekulaarne rakubioloogia", eapCount: 9),
                            Course(name: "Õpetamispraktika", eapCount: 9),
                            Course(name: "Doktoriseminar", eapCount: 9),
                            Course(name: "Erialased ettekanded", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Toiduteadus",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Toiduteadus",
                        courses: [
                            Course(name: "Kaasaegsed materjalide uurimismeetodid", eapCount: 6),
                            Course(name: "Toidufüüsika ja -keemia erikursus", eapCount: 6),
                            Course(name: "Sensoorika ja aroomika erikursus", eapCount: 6),
                            Course(name: "Toitumisteaduste erikursus", eapCount: 6),
                            Course(name: "Fermentatsioonitehnikate erikursus", eapCount: 6),
                            Course(name: "Bioanalüütiliste meetodite erikursus", eapCount: 3),
                            Course(name: "Biotehnoloogia erikursus", eapCount: 3),
                            Course(name: "Spektroskoopia erikursus", eapCount: 3),
                            Course(name: "Bioinformaatika erikursus", eapCount: 3),
                            Course(name: "Proteoomika ja valkude keemia erikursus", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "Toiduteaduse eriõpe",
                        courses: [
                            Course(name: "Toidusüsteemide biokeemia", eapCount: 9),
                            Course(name: "Õpetamispraktika", eapCount: 9),
                            Course(name: "Doktoriseminar", eapCount: 9),
                            Course(name: "Erialased ettekanded", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Keemia ja materjalitehnoloogia",
        level: .doctor,
        type: .insener,
        requirements: [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Doktoriõpe on teaduslikule käsitlusele rajanev kõrghariduse kõrgeima astme õpe, mille kestel üliõpilane omandab vajalikud pädevused iseseisvaks teadus-, arendus-või loometööks keemia- ja materjalitehnoloogia valdkonnas."],
        outcomes: ["Omab süsteemset ülevaadet oma erialast ja teadusvaldkonnast - keemilisest tehnoloogiast, materjaliteadusest ning -tehnoloogiast ning eriala spetsiifilistest valdkondadest nagu keemiatehnika, keskkonnakeemia ja -tehnoloogia, füüsikaline keemia, puit-, polümeer- ja tekstiilimaterjalide tehnoloogia ja elektronmaterjalide tehnoloogia", "Valdab oma teadusvaldkonna teoreetilist baasi ja uurimismeetodeid ning seoseid teiste valdkondadega", "Omab teadusprobleemide püstitamise, analüüsi ja lahendamise oskusi", "Oskab iseseisvalt valida ja kasutada oma spetsiifiliste erialaste ja teaduslike probleemide lahendamiseks sobivaid meetodeid ja tehnoloogiaid ning hinnata lahenduste võimalikke tagajärgi", "Omab ülikoolis õpetamise kogemust", "Omab juhtimis- ja meeskonnatööoskusi", "On võimeline suuliselt ja kirjalikult selgitama eriala teaduslikke, kutsealaseid ja ametialaseid küsimusi teadusrindkondadele ja laiemale üldsusele", "Oskab identifitseerida oma vajadusi uute teadmiste ja oskuste järele", "On pädev jätkama karjääri akadeemilises, era või avalikus sektoris", "Omab profesionaalset suhtumist multidistsiplinaarses keskkonnas, teaduse põhimõtetes, sotsiaalsetes normides ja eetikas."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Karjääriplaneerimine doktorantidele", eapCount: 3),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Keemiatehnika süvakursus", eapCount: 12),
                    Course(name: "Täiendavad peatükid funktsionaalsete sensormaterjalide tehnoloogias", eapCount: 12),
                    Course(name: "Täiendavad peatükid füüsikalisest keemiast", eapCount: 12),
                    Course(name: "Täiendavad peatükid keskkonnakeemiast ja -tehnoloogiast", eapCount: 12),
                    Course(name: "Täiendavad peatükid puitmaterjalidest ja tehnoloogiatest", eapCount: 12),
                    Course(name: "Valitud probleemid polümeer- ja tekstiilmaterjalidest", eapCount: 12),
                    Course(name: "Täiendavad peatükid pooljuhtmaterjalide tehnoloogiast", eapCount: 12)
                ]
            ),
            Module(
                name: "Eriõpe",
                courses: [
                    Course(name: "Doktoriseminar I", eapCount: 6),
                    Course(name: "Doktoriseminar II", eapCount: 6),
                    Course(name: "Doktoriõpingute põhialused", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kaasaegsed materjalide uurimismeetodid", eapCount: 6),
                            Course(name: "Tulevikutehnoloogiad", eapCount: 6),
                            Course(name: "Materjaliõpetuse eripeatükid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Füüsikalised loodusteadused",
        level: .doctor,
        type: .loodusteadus,
        requirements: [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Füüsikaliste loodusteaduste õppekava eesmärgiks on valmistada ette laiapõhjaliste ning interdistsiplinaarsete teadmistega spetsialiste rakendusfüüsika, rakendusmatemaatika, rakendusmehaanika, biomeditsiinitehnoloogia, okeanograafia ja meteoroloogia, geoloogia ning geotehnoloogia erialal, kes on võimelised iseseisvalt püstitama ja lahendama nii loodusteaduslikke kui insenertehnilisi probleeme ning töötama erinevatel analüütilist mõtlemist nõudvatel tegevusaladel. Õppekava lõpetanute väljundiks on nii akadeemiline karjäär õppejõu ja teadlasena kui erialane töö tippspetsialistina avalikus- või erasektoris nii Eestis kui välismaal. Õppekava rolliks on ka akadeemilise järelkasvu tagamine kõigil peaerialadel ning füüsikaliste loodusteaduste alase õppe-, teadus- ja arendustegevuse toetamine Tallinna Tehnikaülikoolis."],
        outcomes: ["Valdab rakendusfüüsika, rakendusmatemaatika, rakendusmehaanika, biomeditsiinitehnoloogia, okeanograafia ja meteoroloogia, geoloogia või geotehnoloogia üldteoreetilist tausta ning tunneb sügavuti oma kitsama uurimisvaldkonna terminoloogiat, teaduskirjandust ja meetodeid", "On suuteline on iseseisvalt püstitama, analüüsima ja lahendama teaduslikke probleeme ning rakendama oma teadmisi nii teoorias kui praktikas", "On valmis oma eriala kompetentsi piires töötama interdistsiplinaarsetes valdkondades ning rahvusvaheliste uurimisrühmade koosseisus", "On võimeline avaldama oma teadustöö tulemusi tunnustatud teadusajakirjades ning esinema ettekannetega seminaridel ja konverentsidel", "Omab praktilisi kogemusi erialase õppetöö planeerimiseks ja läbiviimiseks bakalaureuse- ja magistriõppes", "Teab ja järgib teaduseetika põhimõtteid ning orienteerub ühiskonna humanistlikes, sotsiaalsetes ja majanduslikes probleemides."],
        language: .inglise,
        majorWebsite: "https://www.ttu.ee/teaduskond/loodusteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Peaeriala: Rakendusfüüsika",
                courses: [
                    Course(name: "Füüsika erikursus doktorantidele", eapCount: 6),
                    Course(name: "Matemaatika erikursus doktorantidele", eapCount: 9),
                    Course(name: "Doktoriseminar", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                    Course(name: "Dissertatsiooniga seotud tänapäevafüüsika peatükid", eapCount: 12),
                ],
                submodules: [
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Päikesepatareide füüsika eriseminar", eapCount: 6),
                            Course(name: "Moodsad eksperimenditehnikad tahke keha füüsikas", eapCount: 6),
                            Course(name: "Kvantstatistika eriseminar", eapCount: 6),
                            Course(name: "Tahke keha füüsika eriseminar", eapCount: 6),
                            Course(name: "Kvantfüüsika eriseminar", eapCount: 6),
                            Course(name: "Kvantväljateooria elemente", eapCount: 6),
                            Course(name: "Iseorganiseerumine ja komplekssüsteemide füüsika", eapCount: 6),
                            Course(name: "Edasikandumine ja segunemine vedelikes ja plasmas", eapCount: 6),
                            Course(name: "Juhuslikud protsessid", eapCount: 6),
                            Course(name: "Variatsioonmeetodid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Rakendusmatemaatika",
                courses: [
                    Course(name: "Rakendusmatemaatika põhikursus", eapCount: 9),
                    Course(name: "Doktoriseminar", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Kaasaegsete matemaatika meetodite eriseminar I", eapCount: 9),
                            Course(name: "Kaasaegsete matemaatika meetodite eriseminar II", eapCount: 9),
                            Course(name: "Funktsionaalanalüüsi seminar", eapCount: 9),
                            Course(name: "Algebra seminar", eapCount: 9),
                            Course(name: "Mittekorrektsed ülesanded", eapCount: 6),
                            Course(name: "Juhuslikud protsessid", eapCount: 6),
                            Course(name: "Variatsioonmeetodid", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Matemaatilise füüsika võrrandid", eapCount: 6),
                            Course(name: "Harmooniline analüüs", eapCount: 6),
                            Course(name: "Täiendavaid peatükke algebrast", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Rakendusmehaanika",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Põhiõpe",
                        courses: [
                            Course(name: "Mehaanika erikursus doktorantidele", eapCount: 6),
                            Course(name: "Matemaatika erikursus doktorantidele", eapCount: 9)
                        ]
                    ),
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Doktoriseminar", eapCount: 6),
                            Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                            Course(name: "Väitekirjaga seotud mehaanika peatükid", eapCount: 12)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Mittelineaarse dünaamika seminar", eapCount: 6),
                            Course(name: "Pideva keskkonna mehaanika seminar", eapCount: 6),
                            Course(name: "Biomehaanika seminar", eapCount: 6),
                            Course(name: "Hüdro- ja aeromehaanika seminar", eapCount: 6),
                            Course(name: "Mittelineaarse lainelevi seminar", eapCount: 6),
                            Course(name: "Lainelevi ja akustika seminar", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Biomeditsiinitehnoloogia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Põhiõpe",
                        courses: [
                            Course(name: "Doktorieksam biomeditsiinitehnikas", eapCount: 9),
                        ]
                    ),
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Õpetamispraktika I (praktika)", eapCount: 6),
                            Course(name: "Doktoriseminar I", eapCount: 6),
                            Course(name: "Spetsialiseerumine biomeditsiinitehnikas, koondeksam", eapCount: 12)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tervishoiutehnoloogia", eapCount: 6),
                            Course(name: "Tervishoiu eetika ja moodne epidemioloogia", eapCount: 6),
                            Course(name: "Tervishoiukorraldus ja -poliitika", eapCount: 6),
                            Course(name: "Andmekaevandamine tervishoiu juhtimises", eapCount: 6),
                            Course(name: "Rakendusmatemaatika põhikursus", eapCount: 9),
                            Course(name: "Meditsiiniline kuvamine, andmebaaside teke, kasutamine ja kvaliteet", eapCount: 6),
                            Course(name: "Signaalitöötlus biomeditsiinitehnikas", eapCount: 6),
                            Course(name: "Laserdiagnostika meetodid meditsiinis", eapCount: 6),
                            Course(name: "Õpetamispraktika II (praktika)", eapCount: 6),
                            Course(name: "Optosensoorika", eapCount: 6),
                            Course(name: "Doktoriseminar II", eapCount: 6),
                            Course(name: "Biomeditsiinitehnika erikursus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Geoloogia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Põhiõpe",
                        courses: [
                            Course(name: "Doktorieksam geoloogias", eapCount: 9),
                        ]
                    ),
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Doktoriseminar I", eapCount: 6),
                            Course(name: "Õpetamispraktika I (praktika)", eapCount: 6),
                            Course(name: "Doktori erialaeksam geoloogias", eapCount: 12)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Statistilised meetodid maateadustes", eapCount: 6),
                            Course(name: "Geoloogilised protsessid ja füüsikalis-keemilised meetodid geoloogias", eapCount: 6),
                            Course(name: "Okeanograafia ja meteoroloogia alused", eapCount: 6),
                            Course(name: "Sissejuhatus programmeerimisse Pythoni baasil", eapCount: 6),
                            Course(name: "Matemaatika erikursus doktorantidele", eapCount: 9),
                            Course(name: "Doktoriseminar II", eapCount: 6),
                            Course(name: "Õpetamispraktika II (praktika)", eapCount: 6),
                            Course(name: "Maavarauuringute erikursus", eapCount: 6),
                            Course(name: "Kvaternaari biostratigraafia", eapCount: 6),
                            Course(name: "Paleontoloogia erikursus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Geotehnoloogia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Põhiõpe",
                        courses: [
                            Course(name: "Doktorieksam geotehnoloogias", eapCount: 9)
                        ]
                    ),
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Doktoriseminar I", eapCount: 6),
                            Course(name: "Õpetamispraktika I (praktika)", eapCount: 6),
                            Course(name: "Mäenduse individuaalõpe", eapCount: 12),
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Statistilised meetodid maateadustes", eapCount: 6),
                            Course(name: "Ringmajandus maavarade kasutamisel", eapCount: 6),
                            Course(name: "Sissejuhatus programmeerimisse Pythoni baasil", eapCount: 6),
                            Course(name: "Matemaatika erikursus doktorantidele", eapCount: 9),
                            Course(name: "Doktoriseminar II", eapCount: 6),
                            Course(name: "Õpetamispraktika II (praktika)", eapCount: 6),
                            Course(name: "Maavarauuringute erikursus", eapCount: 6),
                            Course(name: "Suurandmed ja VR/AR mäenduses", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Okeanograafia ja meteoroloogia",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Põhiõpe",
                        courses: [
                            Course(name: "Doktorieksam okeanograafias ja meteoroloogias", eapCount: 9),
                        ]
                    ),
                    Submodule(
                        name: "Eriõpe",
                        courses: [
                            Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                            Course(name: "Doktori erialaeksam okeanograafias ja meteoroloogias", eapCount: 12),
                            Course(name: "Doktoriseminar 1", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Statistilised meetodid maateadustes", eapCount: 6),
                            Course(name: "Kaasaegne okeanograafia ja meteoroloogia", eapCount: 6),
                            Course(name: "Okeanograafia ja meteoroloogia alused", eapCount: 6),
                            Course(name: "Rannikumere dünaamika", eapCount: 6),
                            Course(name: "Okeanograafia erikursus", eapCount: 6),
                            Course(name: "Ookeani mesomastaapne ja sub-mesomastaapne dünaamika", eapCount: 6),
                            Course(name: "Meteoroloogia erikursus", eapCount: 6),
                            Course(name: "Doktoriseminar 2", eapCount: 6),
                            Course(name: "Arvutuslik vedelike dünaamika", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Majandus",
        level: .doctor,
        type: .majandus,
        requirements: [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Õppekava eesmärgiks on kõrghariduse kõrgeimale tasemele vastava kompetentsi tagamine nii teaduslikuks uurimistööks, arendus- ja loometegevuseks, kui ka tipptasemel professionaalina töötamiseks majandusvallas, spetsialiseerudes majandusanalüüsile/rahandusele või ärikorraldusele. Haridustasemele vastava sotsiaalse kompetentsuse ja kohanemisvõime tagamine toimetulekuks kiiresti muutuvas maailmas."],
        outcomes: ["Omab süvendatud teadmisi oma uurimisvaldkonnas ja on võimeline töötama tippspetsialistina nii kodumaistes kui ka rahvusvahelistes institutsioonides", "Oskab kasutada teaduslikuks uurimistööks vajalikke uurimismeetodeid konkreetsete uurimisprobleemide lahendamiseks", "Omab õpetamiskogemust ja oskust oma erialateadmisi struktureeritult esitada", "Oskab oma seisukohti argumenteeritult väljendada ja oma spetsialiseerumissuuna vaidlusalustes küsimustes diskuteerida."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/majandusteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Põhiõpe",
                courses: [
                    Course(name: "Matemaatilised meetodid majanduses", eapCount: 6),
                    Course(name: "Majandusmõte ja -metodoloogia", eapCount: 6),
                    Course(name: "Kvalitatiivsed uurimismeetodid", eapCount: 6),
                    Course(name: "Kvantitatiivsed uurimismeetodid", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Ärikorraldus",
                courses: [
                    Course(name: "Andmekaeve", eapCount: 6),
                    Course(name: "Ettevõtlusteooriad", eapCount: 6),
                    Course(name: "Organisatsiooni areng ja juhtimine", eapCount: 6),
                    Course(name: "Doktoritöö temaatika eriseminar", eapCount: 6),
                    Course(name: "Äriuuringud", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Finantsökonoomika", eapCount: 6),
                            Course(name: "Uurimisteemakeskne individuaalõpe", eapCount: 6),
                            Course(name: "Teadusprojektide juhtimine", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Peaeriala: Majandusanalüüs ja rahandus",
                courses: [
                    Course(name: "Doktoritöö temaatika eriseminar", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                    Course(name: "Finantsökonoomika", eapCount: 6),
                    Course(name: "Makroökonoomika", eapCount: 6),
                    Course(name: "Mikroökonoomika", eapCount: 6),
                    Course(name: "Ökonomeetria", eapCount: 6),
                    Course(name: "Uurimisteemakeskne individuaalõpe", eapCount: 6),
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Mehhanotehnika",
        level: .doctor,
        type: .insener,
        requirements: [
            Requirements(term: "Avalik Konkurss"),
            Requirements(term: "Essee"),
            Requirements(term: "CV")
        ],
        description: ["Õppekava eesmärgiks on arendada üliõpilaste teadmisi, oskusi ja kogemusi iseseisvaks teadus-, arendus-, õppe- või kutsealaseks loometööks läbi erialase õppe- ja uurimistöö, õpetamise ning teiste üliõpilaste juhendamise mehhanotehnika (tootmistehnika ja robootika, materjalitehnika või soojusenergeetika) ning transpordi ja logistika valdkonnas."],
        outcomes: ["Omab laiapõhjalisi teadmisi ja süsteemset ülevaadet oma uurimisvaldkonnas ning sügavaid ja ajakohaseid teadmisi uurimisvaldkonna kitsal eriala", "Mõistab olemasolevate uurimisvaldkonna siseste ja valdkonnavaheliste teadmiste ja uurimismeetodite tähendust ja ulatust, oskab neid vajadusel laiendada, ümberhinnata ja sõnastada", "Oskab avaldada originaalseid teadustulemusi rahvusvaheliselt eelretsenseeritavates teadusväljaannetes, propageerida oma eriala ning luua teadusterminoloogiat", "Oskab algatada, kavandada ja rakendada ning kriitiliselt hinnata uurimus- ja arendustöid", "Oskab identifitseerida oma vajadusi uute teadmiste ja oskuste järele", "Oskab eetiliselt ja head tava arvestavalt tegutseda, on teadlik oma tegevuse eetilistest aspektidest ja piirangutest", "Oskab filosoofilis-kriitiliselt analüüsida teadustegevuse eeldusi, eesmärke, vahendeid ja kontseptsioone", "Oskab organiseerida süstematiseeritud andmete kogumist, kavandada eksperimente ja läbi viia iseseisvalt uurimistöid."],
        language: .eesti,
        majorWebsite: "https://www.ttu.ee/teaduskond/inseneriteaduskond/",
        spots: 0,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Kõrgkoolididaktika", eapCount: 3),
                    Course(name: "Teadusartiklite kirjutamine inglise keeles", eapCount: 3),
                    Course(name: "Juhtimispsühholoogia", eapCount: 3),
                    Course(name: "Teadusfilosoofia", eapCount: 6),
                    Course(name: "Teadusprojektide juhtimine", eapCount: 6),
                    Course(name: "Innovatsioon", eapCount: 6),
                    Course(name: "Teadus- ja hariduskorraldus", eapCount: 3)
                ]
            ),
            Module(
                name: "Mehaanika",
                courses: [
                    Course(name: "Optimaalse projekteerimise matemaatilised meetodid", eapCount: 6),
                    Course(name: "Uurimistöö metoodika ja eksperimenditehnika", eapCount: 6)
                ]
            ),
            Module(
                name: "Peaeriala: Materjalitehnika",
                courses: [
                    Course(name: "Doktoriseminarid", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6),
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Kaasaegsed materjalide uurimismeetodid", eapCount: 6),
                            Course(name: "Kõrgtehnoloogiamaterjalid", eapCount: 6),
                            Course(name: "Materjalide mehaanika", eapCount: 6),
                            Course(name: "Uurimisteemakeskne individuaalõpe", eapCount: 6),
                            Course(name: "Materjaliõpetuse eripeatükid", eapCount: 6),
                            Course(name: "Triboloogia ja tribomaterjalid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Soojusenergeetika",
                courses: [
                    Course(name: "Doktoriseminarid", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Soojustehnilised protsessid seadmetes", eapCount: 6),
                            Course(name: "Mittetraditsioonilised kütused ja energiaallikad", eapCount: 6),
                            Course(name: "Soojusfüüsika erikursus", eapCount: 6),
                            Course(name: "Uurimisteemakeskne individuaalõpe", eapCount: 6),
                            Course(name: "Kütuste põletamise uued tehnoloogiad ja kombiseadmed", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Transport ja logistika",
                courses: [
                    Course(name: "Doktoriseminarid", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Logistika eripeatükid", eapCount: 6),
                            Course(name: "Tarneahela kavandamise eripeatükid", eapCount: 6),
                            Course(name: "Transpordi planeerimise eripeatükid", eapCount: 6),
                            Course(name: "Uurimisteemakeskne individuaalõpe", eapCount: 6),
                            Course(name: "Sõidukite eripeatükid", eapCount: 6)
                        ]
                    )

                ]
            ),
            Module(
                name: "Tootmistehnika ja robootika",
                courses: [
                    Course(name: "Doktoriseminarid", eapCount: 6),
                    Course(name: "Õpetamispraktika (praktika)", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Tootearenduse eripeatükid", eapCount: 6),
                            Course(name: "Tehnoloogiliste protsesside ja toodete simuleerimine", eapCount: 6),
                            Course(name: "Robootika eripeatükid", eapCount: 6),
                            Course(name: "Uurimisteemakeskne individuaalõpe", eapCount: 6),
                            Course(name: "Tootmistehnika eripeatükid", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Merendus",
                courses: [
                
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Konstruktsioonide optimeerimine", eapCount: 6),
                            Course(name: "Laeva süsteemid", eapCount: 6),
                            Course(name: "Väikelaevade matemaatiline modelleerimine", eapCount: 6),
                            Course(name: "Laevanduse eripeatükid", eapCount: 6),
                            Course(name: "Mereala planeerimine, haldamine ja ohutuse korraldamine", eapCount: 6),
                            Course(name: "Transpordisüsteemide kvantitatiivne visioon", eapCount: 6),
                            Course(name: "Meretranspordi kompleksne digitaliseerimine", eapCount: 6),
                            Course(name: "Tark meremajandus", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Doktoritöö",
                courses: [
                    Course(name: "Doktoritöö", eapCount: 180),
                ]
            )
        ]
    ),
]
