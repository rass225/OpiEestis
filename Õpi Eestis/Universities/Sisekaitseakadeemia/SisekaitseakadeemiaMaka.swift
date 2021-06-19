let sisekaitseakadeemiaMaka = [
    majorsMinors(
        name: "Sisejulgeolek",
        level: .masters,
        type: .Sisejulgeolek,
        requirements: [
            Requirements(term: "Eesti või Euroopa liidu liikmesriig kodakondsus"),
            Requirements(term: "Bakalaureuse kraad"),
            Requirements(term: "Inglise keele oskus vähemalt B2 tasemel"),
            Requirements(term: "laitmatu taust"),
            Requirements(term: "CV"),
            Requirements(term: "Magistritöö kava", percentage: 50),
            Requirements(term: "Inglise keele test", percentage: 25),
            Requirements(term: "Vestlus", percentage: 25)],
        description: ["Kui töötad juba julgeolekusfääris ja soovid anda karjäärile väikest lisatõuget või omad bakalaureusekraadi mõnel muul erialal ja soovid alles praegu sellesse huvitavasse valdkonda siseneda, siis sisejulgeoleku magistriõpe pakub selleks suurepärast võimalust. Üle nädala toimuvad õppesessioonid võimaldavad kraadi omandamist ka töötamise kõrvalt. Sisejulgeoleku õppekava puhul saab kandideerida nii täis- kui ka osakoormusõppesse."],
        outcomes: ["Tunneb sisejulgeoleku ja siseturvalisuse organisatsioonide süsteemi, arengusuundi ja valdkonna õigusakte", "Mõistab tänapäevaseid julgeolekuohte ja Eesti julgeolekut tagavate struktuuride toimimist", "Tegutseb loovalt, innovaatiliselt ja paindlikult erinevates situatsioonides", "Analüüsib siseturvalisuse valdkonna vajadusi, planeerib ressursse, juhib inimesi ja tegevusi, sh ametkondade ülest ja rahvusvahelist koostööd", "Viib läbi teadus- ja rakendusuuringuid", "On valmis enese erialaseks täiendamiseks elukestva õppe raames, sh doktoriõppes ja oma teadmiste ning kogemuste edasiandmiseks."],
        language: .eesti,
        majorWebsite: "https://www.sisekaitse.ee/et/vastuv6tt_sji",
        spots: 30,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "0€",
        modules: [
            Module(
                module: "Kohustuslike ainete moodul",
                courses: [
                    Course(name: "Strateegiline juhtimine", eapCount: 8),
                    Course(name: "Teadusmetodoloogia ja uurimisseminar 1 ", eapCount: 8),
                    Course(name: "Akadeemiline kirjutamine ja uurimisseminar 2", eapCount: 6),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Sisejulgeoleku õiguslik regulatsioon", eapCount: 5),
                    Course(name: "Küberjulgeolek, privaatsus ja andmekaitse ", eapCount: 5),
                    Course(name: "Sisejulgeoleku poliitika kujundamine ja koostöö", eapCount: 5),
                    Course(name: "Vaenulik mõjutustegevus, psühholoogiline kaitse ja meediasuhtlus", eapCount: 4),
                    Course(name: "Julgeolekuteooriad ja nende uurimuslik rakendamine", eapCount: 5),
                    Course(name: "Julgeoleku- ja hübriidohud ning riigikaitse lai käsitlus", eapCount: 5)
                ]
            ),
            Module(
                module: "Valikainete moodul",
                courses: [
                    Course(name: "Kogukondliku korrakaitsetöö juhtimine", eapCount: 2),
                    Course(name: "Külalisloengud", eapCount: 1),
                    Course(name: "Külalisloengud", eapCount: 2),
                    Course(name: "Innovatsiooni ja arendusprojektide juhtimine sisejulgeoleku süsteemis", eapCount: 2),
                    Course(name: "Kaugseire drooni- ja satelliidiandmestike põhjal ", eapCount: 3),
                    Course(name: "Kvalitatiivse andmeanalüüsi praktikum ", eapCount: 2),
                    Course(name: "Kvantitatiivse andmeanalüüsi praktikum", eapCount: 2),
                    Course(name: "Siseturvalisuse praktiline tegevus", eapCount: 3),
                    Course(name: "Tsiviil-militaarkoostöö hädaolukorras", eapCount: 4),
                    Course(name: "E-kursus", eapCount: 1),
                    Course(name: "E-kursus", eapCount: 2),
                    Course(name: "E-kursus", eapCount: 3),
                    Course(name: "Kaugseire drooni- ja satellliidiandmestike põhjal II", eapCount: 3)
                ]
            ),
            Module(
                module: "Süvaõppesuunad",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Kriisireguleerimise suund",
                        courses: [
                            Course(name: "Kriisikommunikatsioon ja -psühholoogia", eapCount: 5),
                            Course(name: "Kriisireguleerimine ja -juhtimine", eapCount: 7),
                            Course(name: "Riskihaldus ja elutähtsa teenuse toimepidevus", eapCount: 5),
                            Course(name: "Hädaolukorraks valmistumine", eapCount: 4)
                        ]
                    ),
                    Submodule(
                        name: "Sisejulgeoleku suund",
                        courses: [
                            Course(name: "Teadmushaldus turvalisuses", eapCount: 2),
                            Course(name: "Organiseeritud kuritegevus ja rahapesu", eapCount: 4),
                            Course(name: "Piiri julgeolek ja rände haldamine", eapCount: 5),
                            Course(name: "Mereõigus konfliktides", eapCount: 4),
                            Course(name: "Terrorism ja rahvusvahelised missioonid", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Politsei suund",
                        courses: [
                            Course(name: "Teadmushaldus turvalisuses", eapCount: 2),
                            Course(name: "Kriminaalanalüüs", eapCount: 2),
                            Course(name: "Organiseeritud kuritegevus ja rahapesu ", eapCount: 4),
                            Course(name: "Piiri julgeolek ja rände haldamine", eapCount: 5),
                            Course(name: "Kriminaal- ja karistuspoliitika aktuaalsed probleemid", eapCount: 3),
                            Course(name: "Politsei juhtimine ja paiknemine valitsemissüsteemis", eapCount: 5)
                        ]
                    )
                ]
            ),
            Module(module: "Magistritöö", courses: [Course(name: "Mabgistritöö", eapCount: 30)])
        ]
    )
]
