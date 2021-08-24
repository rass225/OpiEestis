let sisekaitseAkadeemiaRaka = [
    majorsMinors(
        name: "Toll ja maksundus",
        level: .applied,
        type: .finantskolledž ,
        requirements: [
            Requirements(term: "Eesti või Euroopa Liidu liikmesriigi kodakondsus"),
            Requirements(term: "Keskharidus"),
            Requirements(term: "Laitmatu taust"),
            Requirements(term: "Vastuvõtukatse"),
            Requirements(term: "Kutsesobivusestlus")
        ],
        description: ["Tolli ja maksunduse eriala eesmärk on anda üliõpilastele vajalikud teadmised ja oskused tulemaks toime finants-, maksu- ja tolliametniku tööga kaasaegsed ühiskonnas ning toetada üliõpilastel lojaalseks, oma eriala väärtustavaks ja kliendikeskseks finants-, maksu- ja/või tolliametnikuks kujunemist. Tolli ja maksunduse eriala lõpetanu saab finantskolledžist kaasa universaalsed ja laialdased teadmised asumaks tööle ametnikuna finantsvaldkonnas nii avalikus kui ka erasektoris."],
        outcomes: ["Tolli ja maksunduse õppekava lõpetamisel üliõpilane:", "Mõistab ühiskonna, Euroopa Liidu, riigi ja avaliku halduse toimimise alused", "Teab ametniku õigusi ja talle esitatavaid nõudmisi, kohustusi ja piiranguid, juhindudes oma tegevuses ametniku eetika põhimõtetest", "Suhtleb suuliselt ja kirjalikult eesti keeles vähemalt tasemel C1 (kõrgtase), inglise keeles vähemalt tasemel B2 (edasijõudnu tase) ning vene keeles suuliselt vähemalt B1 (suhtluslävi tase, kolm osaoskust: lugemine, rääkimine, kuulamine)", "Omab klienditeenindajale vajalikke kompetentse ning nõustab ettevõtlustegevuses osalejat tolli ja maksu valdkonnas", "Täidab maksuhalduri põhiülesandeid vastavalt valitud õppesuunale", "Rakendab finants-, maksu- ja tollialaseid teadmisi ja oskusi analüüsides isikute maksukäitumist kooskõlas kehtivate õigusnormidega."],
        language: .eesti,
        majorWebsite: "https://www.sisekaitse.ee/et/vastuv6tt_toll_maksundus",
        spots: 30,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpe",
                courses: [
                    Course(name: "Siseturvalisus ja kiirreageerimine", eapCount: 4),
                    Course(name: "Õiguse õpetus", eapCount: 8),
                    Course(name: "Kirjalik ja suuline eneseväljendamine", eapCount: 4),
                    Course(name: "Enese ja teiste juhtimine ning sotsiaalne kompetentsus", eapCount: 4),
                    Course(name: "Üldõpingute valikmoodul ", eapCount: 10)
                ]
            ),
            Module(
                name: "Erialaõpingud",
                courses: [
                    Course(name: "Ettevõtluskeskkond", eapCount: 7),
                    Course(name: "Ettevõtlustegevuse nõustamine", eapCount: 20)
                ],
                submodules: [
                    Submodule(
                        name: "Keeleõpe",
                        courses: [
                            Course(name: "Erialane eesti keel", eapCount: 3),
                            Course(name: "Erialane vene keel", eapCount: 3),
                            Course(name: "Erialane inglise keel", eapCount: 3),
                        ]
                    ),
                    Submodule(
                        name: "Maksu- ja tollinõustamine",
                        courses: [
                            Course(name: "Maksu- ja tollinõustamine I", eapCount: 10),
                            Course(name: "Maksu- ja tollinõustamine II", eapCount: 10)
                        ]
                    ),
                    Submodule(
                        name: "Maksud ja maksustamine",
                        courses: [
                            Course(name: "Maksud ja maksustamine I", eapCount: 11),
                            Course(name: "Maksud ja maksustamine II", eapCount: 10),
                            Course(name: "Maksud ja maksustamine III", eapCount: 4),
                        ]
                    ),
                    Submodule(
                        name: "Praktikad",
                        courses: [
                            Course(name: "Tutvumispraktika", eapCount: 3),
                            Course(name: "Ettevõtluspraktika", eapCount: 10),
                            Course(name: "Ametipraktika", eapCount: 17)
                        ]
                    )
                ]
            ),
            Module(
                name: "Süvaõppesuunad",
                courses: [
                    Course(name: "Maksujärelvalve", eapCount: 23),
                    Course(name: "Tollijärelvalve", eapCount: 23)
                ],
                submodules: [
                    Submodule(
                        name: "Erialased valikained",
                        courses: [
                            Course(name: "Maksuõiguse aktuaalsed probleemid ", eapCount: 3),
                            Course(name: "Tolliõiguse aktuaalsed probleemid (inglise keeles) ", eapCount: 3),
                            Course(name: "Euroopa Liidu rahandus (inglise keeles", eapCount: 3),
                            Course(name: "Rahvusvaheline koostöö ", eapCount: 3),
                            Course(name: "Sissejuhatus erialasesse vene keelde", eapCount: 2),
                            Course(name: "Maksualaste süütegude menetlemine kohtupraktikas ", eapCount: 3),
                            Course(name: "Praktika välisriigis ", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Lõputöö",
                        courses: [
                            Course(name: "Teadustöö metodoloogia", eapCount: 3),
                            Course(name: "Lõputöö", eapCount: 8)
                        ]
                    )
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Korrektsioon",
        level: .applied,
        type: .justiitskolledž,
        requirements: [
            Requirements(term: "Eesti kodakondsus"),
            Requirements(term: "Keskharidus"),
            Requirements(term: "Laitmatu taust"),
            Requirements(term: "Vastuvõtukatse"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Kehalised katsed")],
        description: ["Korrektsiooni eriala annab tänapäevased teadmised töötamiseks Eesti vanglasüsteemis keskastme ja kõrgema vanglaametnikuna. Õiguse, halduse, juhtimise, sotsiaalteaduslike ainete ja psühholoogia rakenduslik käsitlemine õpetab lahendama keerukaid erialaseid küsimusi ning praktika suur osakaal õppes annab töötegemise oskuse. Korrektsiooni erialale on võimalik kandideerida nii neil, kes juba töötavad vanglateenistuses kui ka kõigil teistel huvilistel."],
        outcomes: ["Õppekava lõpetamisel üliõpilane on võimeline:", "Töötama vanglateenistuses II klassi vanglainspektori ametiastmel inspektor-kontaktisikuna", "Kasutama eesti keelt vähemalt tasemel C1 (kõrgtase), inglise keelt vähemalt tasemel B2 (edasijõudnu tase) ning vene keelt suuliselt vähemalt tasemel B1 (suhtlusläve taseme kolm osaoskust: lugemine, rääkimine, kuulamine)", "Jätkama õpinguid magistriõppe tasemel või elukestvas õppes."],
        language: .eesti,
        majorWebsite: "https://www.sisekaitse.ee/et/vastuv6tt_korrektsioon",
        spots: 30,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpingud",
                courses: [
                    Course(name: "Siseturvalisus ja kriisireguleerimine", eapCount: 4),
                    Course(name: "Õiguse õpetus", eapCount: 8),
                    Course(name: "Kirjalik ja suuline eneseväljendamine", eapCount: 4),
                    Course(name: "Enese ja teiste juhtimine ning sotsiaalne kompetentsus", eapCount: 4),
                    Course(name: "Üldõpingute valikmoodul ", eapCount: 10)
                ]
            ),
            Module(
                name: "Erialaõpingud",
                courses: [
                    Course(name: "Isiku hälbiv käitumine", eapCount: 10),
                    Course(name: "Sotsiaaltöö vanglas", eapCount: 6),
                    Course(name: "Juhtumikorraldus", eapCount: 10),
                    Course(name: "Turvalisus vanglas I", eapCount: 15),
                    Course(name: "Turvalisus vanglas II", eapCount: 9),
                    Course(name: "Turvalisuse tagamise erikursus I", eapCount: 8),
                    Course(name: "Turvalisuse tagamise erikursus II", eapCount: 9),
                    Course(name: "Vanglateenistus", eapCount: 4),
                    Course(name: "Haldusmenetlus ja karistusõigus vanglas", eapCount: 8),
                    Course(name: "Haldusmenetluse erikursus ", eapCount: 10),
                    Course(name: "Uurimisseminar", eapCount: 5),
                    Course(name: "Järelevalvetoimingute praktika", eapCount: 8),
                    Course(name: "Juhtumikorralduse praktika ", eapCount: 8),
                    Course(name: "Haldusmenetluse praktika", eapCount: 8),
                    Course(name: "Lõpupraktika", eapCount: 4),
                    Course(name: "Lõpueksam", eapCount: 8)
                ],
                submodules: [
                    Submodule(
                        name: "Erialased valikained",
                        courses: [
                            Course(name: "Rahvusvaheline koostöö", eapCount: 3),
                            Course(name: "Õigusõpetuse jätkukursus", eapCount: 2),
                            Course(name: "Eneseväljenduse alused (inglise keeles)", eapCount: 2),
                            Course(name: "Praktika välisriigis", eapCount: 3)
                        ]
                    ),
                    Submodule(
                        name: "keeleõpe",
                        courses: [
                            Course(name: "Taasühiskonnastamise alane vene kee", eapCount: 7),
                            Course(name: "Vangistus- ja haldusõigusalane vene keel", eapCount: 3),
                            Course(name: "Haldusmenetluse erikursus (vene keeles)", eapCount: 2),
                            Course(name: "Erialane inglise keel", eapCount: 4)
                        ]
                    )
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Politseiteenistus",
        level: .applied,
        type: .Politseijapiirivalvekolledž,
        requirements: [
            Requirements(term: "Eesti kodakondsus"),
            Requirements(term: "Keskharidus"),
            Requirements(term: "Laitmatu taust"),
            Requirements(term: "Vastuvõtukatse"),
            Requirements(term: "Vestlus"),
            Requirements(term: "Kehalised katsed")],
        description: ["Politseiteenistuse eriala on osalt sarnane politseiametniku erialaga, kuid annab valdkonnast laiemad ja sügavamad teadmised ning annab lõpetajatele edasiseks õppimiseks vajalikud oskused ja teadmised uurimustöö tegemiseks. Politseiteenistuse eriala lõpetajatel on avaramad karjäärivõimalused politseisüsteemis ja nad saavad edaspidi kandideerida ka kõrgharidust nõudvatele ametikohtadele. Enamik politsei- ja piirivalvekolledži kadettidest leiab pärast õpinguid kindla töökoha Politsei- ja Piirivalveametis."],
        outcomes: ["Mõistab ühiskonna, Euroopa Liidu, riigi ning politseiorganisatsiooni toimimise aluseid", "Juhindub oma tegevuses politseiorganisatsiooni põhiväärtustest ja ametniku eetika normidest", "Juhindub Eesti ja EL õigusnormidest, põhiõigustest ning rakendab neid lähtudes politseiorganisatsiooni ülesannetest", "Täidab politsei põhitegevusi vastavalt valitud õppesuunale", "Tunneb ära õigusrikkumise valdkonna, politsei ning teiste avaliku sektori organisatsioonide ja institutsioonide vastutusala politseitöös ning leiab probleemidele vajaliku lahenduse", "Töötab nii iseseisvalt kui teeb koostööd ning on võimeline töötama multikultuurses keskkonnas", "Suhtleb suuliselt ja kirjalikult eesti keeles tasemel C1 (kõrgtase), inglise keeles tasemel B2 (edasijõudnu tase) ja vene keeles tasemel B1 (suhtluslävi tase)", "Käitub ennastkehtestavalt – mõjudes oma välimuse, hoiaku ja käitumisega autoriteetselt", "Talub füüsilist koormust, stressi, tulles toime enese ja teiste emotsioonidega ning hoolitseb oma tervise eest", "Omab suulist ja kirjalikku kommunikatsiooni oskust, leides politseitööks vajalikku informatsiooni", "Omab analüüsi- ja sünteesivõimet, suudab lahendada politseitöös esile kerkivaid probleeme", "On ennast juhtiv õppija ning on võimeline ennast pidevalt täiendama", "Omab organiseerimise ja planeerimise oskust, on vastutusvõimeline."],
        language: .eesti,
        majorWebsite: "https://www.sisekaitse.ee/et/vastuv6tt_politseiteenistus",
        spots: 50,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Üldõpingud",
                courses: [
                    Course(name: "Siseturvalisus ja kriisireguleerimine", eapCount: 4),
                    Course(name: "Õiguse õpetus", eapCount: 8),
                    Course(name: "Kirjalik ja suuline eneseväljendamine", eapCount: 4),
                    Course(name: "Enese ja teiste juhtimine ning sotsiaalne kompetentsus", eapCount: 4),
                    Course(name: "Üldõpingute valikmoodul", eapCount: 10)
                ]
            ),
            Module(
                name: "Erialaõpingud",
                courses: [
                    Course(name: "Vahetu sunni ja turvataktika rakendamine", eapCount: 9),
                    Course(name: "Avaliku korra kaitsmine", eapCount: 22),
                    Course(name: "Avaliku korra kaitsmise praktika", eapCount: 8),
                    Course(name: "Väärtegude menetlemine ja kriminaalmenetluse alustamine", eapCount: 29),
                    Course(name: "Ressursimahuka sündmuse lahendaminen", eapCount: 4),
                    Course(name: "Kriminaalmenetluse läbiviimine ", eapCount: 27),
                    Course(name: "Piirikontrolli läbiviimine", eapCount: 8),
                    Course(name: "Piiriülene koostöö (inglise keeles)", eapCount: 5),
                    Course(name: "Politseitöö korraldamine ja juhtimine", eapCount: 5),
                    Course(name: "Kogukonnakeskne politseitöö", eapCount: 4)
                ]
            ),
            Module(
                name: "Süvaõppesuunad",
                courses: [
                ],
                submodules: [
                    Submodule(
                        name: "Piirivalve",
                        courses: [
                            Course(name: "Piirivalve", eapCount: 16),
                            Course(name: "Lõputöö", eapCount: 8),
                            Course(name: "Lõpueksam", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Korrakaitsepolitsei",
                        courses: [
                            Course(name: "Kogukonnakeskne ennetustöö", eapCount: 16),
                            Course(name: "Lõputöö", eapCount: 8),
                            Course(name: "Lõpueksam", eapCount: 5)
                        ]
                    ),
                    Submodule(
                        name: "Kriminaalpolitsei",
                        courses: [
                            Course(name: "Raskete kuritegude menetlemine", eapCount: 16),
                            Course(name: "Lõputöö", eapCount: 8),
                            Course(name: "Lõpueksam", eapCount: 5)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialane valikmoodul",
                courses: [
                    Course(name: "Politseiteenistuse alusõpingud", eapCount: 4),
                    Course(name: "B-kategooria sõiduõpetus", eapCount: 3),
                    Course(name: "Rahvusvaheline politseitöö", eapCount: 3),
                    Course(name: "Tegevus ohtliku ründe korral", eapCount: 1),
                    Course(name: "Sissejuhatus erialasesse vene keelde", eapCount: 2),
                    Course(name: "Ujumise algõpetus", eapCount: 2),
                    Course(name: "Kohtuvälise menetleja tegevusele esitatud kaebuste lahendamine ja kohtumenetluses osalemine", eapCount: 3),
                    Course(name: "Praktika välisriigis", eapCount: 7),
                    Course(name: "Dokumentide II astme kontroll", eapCount: 3),
                    Course(name: "Inimsmuugeldamine ja inimkaubandus kui piiriülene organiseeritud kuritegevus (inglise keeles)", eapCount: 1),
                    Course(name: "Viisamenetlus", eapCount: 1),
                    Course(name: "Politseitöö praktika", eapCount: 2),
                    Course(name: "Alarmsõiduki juhtimine", eapCount: 2),
                    Course(name: "Varjupaigamenetlus", eapCount: 1),
                    Course(name: "Elektrišokirelva kasutamine ", eapCount: 1),
                    Course(name: "Siseturvalisuse praktika", eapCount: 2),
                    Course(name: "Vabatahtliku päästja I astme teoreetiline osa", eapCount: 1)
                ]
            )
        ]
    ),
    
]
