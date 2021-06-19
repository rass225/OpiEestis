let tartuTervishoiuKõrgkoolMaka = [
    majorsMinors(
        name: "Terviseteadus",
        level: .masters,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Vastuvõtukatse", percentage: 10),
            Requirements(term: "Õe või ämmaemanduse õppe keskmine hinne", percentage: 30)],
        description: ["Terviseteaduse magistriõppe eesmärk on luua võimalused teadmiste ja oskuste süvendamiseks terviseteadustes ning toetada õppija jätkuõpet. Magistriõppe läbimine võimaldab omandada pädevused tõenduspõhiseks multidistsiplinaarseks lähenemiseks tervishoiuteenuse osutamisel ning uurimis- ja arendustööks meeskonna eestvedajana.", "Õppe maht on 90 EAP, õppe kestvus 1,5 aastat ning õppekava on võimalik läbida neljal õenduserialal: terviseõendus, kliiniline õendus, vaimse tervise õendus ja intensiivõendus. "],
        outcomes: ["Otsustama tõenduspõhise teabe asjakohasuse üle ning integreerima tervise ja heaolu valdkonna teoreetilisi teadmisi multidistsiplinaarse tervishoiuteenuse osutamisel.", "Töötama iseseisvalt tervishoiuvaldkonna spetsialistina ja tegema tulemuslikku interdistsiplinaarset koostööd nii meeskonnaliikmena kui ka eestvedajana.", "Hindama kriitiliselt erialase töö kvaliteeti ja panustama kvaliteetse tervishoiuteenuse osutamisse ja innovatsiooni.", "Planeerima ja eest vedama erialavaldkonna arendusprotsesse tuginedes olukorra kriitilisele analüüsile, kutseala regulatsioonidele, riiklikele ja rahvusvahelistele arengusuundadele.", "Argumenteerima eesti ja inglise keeles erialaga seotud aktuaalsetel teemadel ning esitama asjakohaseid seisukohti multiprofessionaalses meeskonnas ja ühiskondlikes aruteludes.", "Eest vedama väärtuspõhise tervise ja heaolu valdkonna teenuste arendamist ning rakendamist.", "Vastutama enda järjepideva arendamise ja erialase pädevuse tagamise eest.", "Juhendama ja suunama kolleege õppimisvajaduste analüüsimisel, enesearendamisel ja muutustega kohanemisel."],
        language: .eesti,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/magistriope/terviseteadus",
        spots: 51,
        duration: 1.5,
        studyLocation:  ["Tartu"],
        eap: 90,
        cost: "0€",
        modules: [
            Module(
                module: "Kutseala arendamine ja kvaliteedijuhtimine",
                courses: [
                    Course(name: "Kvaliteedijuhtimine ja eestvedamine", eapCount: 12),
                    Course(name: "Multidistsiplinaarsus terviseteadustes", eapCount: 6),
                    Course(name: "Teadusmetodoloogia", eapCount: 6),
                    Course(name: "Arendusprojekt", eapCount: 6)
                ]
            ),
            Module(
                module: "Erialamoodul - intensiivõendus",
                courses: [
                    Course(name: "Kliiniline farmakoloogia", eapCount: 6),
                    Course(name: "Erakorraline meditsiin", eapCount: 9),
                    Course(name: "Intensiivõendus", eapCount: 6),
                    Course(name: "Anesteesia", eapCount: 6),
                    Course(name: "Laps intensiivõenduses", eapCount: 3),
                    Course(name: "Erialapraktika intensiivõenduses", eapCount: 15)
                ]
            ),
            Module(
                module: "Erialamoodul - kliiniline õendus",
                courses: [
                    Course(name: "Nõustamismeetodid ja -tehnikad", eapCount: 6),
                    Course(name: "Kliiniline farmakoloogia", eapCount: 6),
                    Course(name: "Õendusabi ravi osana", eapCount: 12),
                    Course(name: "Erakorralised seisundid", eapCount: 6),
                    Course(name: "Erialapraktika kliinilises õenduses", eapCount: 15)
                ]
            ),
            Module(
                module: "Erialamoodul - terviseõendus",
                courses: [
                    Course(name: "Perekonna elukvaliteet, elustiili- ja tervisenõustamine", eapCount: 12),
                    Course(name: "Nõustamismeetodid ja -tehnikad", eapCount: 6),
                    Course(name: "Keskkonnast tulenevad terviseriskid ja kogukonnatöö", eapCount: 6),
                    Course(name: "Kliiniline farmakoloogia", eapCount: 6),
                    Course(name: "Erialapraktika terviseõenduses", eapCount: 15)
                ]
            ),
            Module(
                module: "Erialamoodul - vaimse tervise õendus",
                courses: [
                    Course(name: "Kliiniline farmakoloogia", eapCount: 6),
                    Course(name: "Psühhiaatria", eapCount: 15),
                    Course(name: "Psühhoterapeutilised meetodid vaimse tervise õenduses", eapCount: 9),
                    Course(name: "Erialapraktika vaimse tervise õenduses", eapCount: 15)
                ]
            ),
            Module(
                module: "Magistrieksam",
                courses: [
                    Course(name: "Magistrieksam", eapCount: 15)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Radiograafia",
        level: .masters,
        type: .tervishoid,
        requirements: [
            Requirements(term: "Inglise keele oskus vähemalt B1 tasemel", percentage: 0),
            Requirements(term: "Kõrghariduse esimese astme tasemel radiograafia õppe või eelnevate õpingute käigus radiograafia õppeainete läbimist tõendava diplomi ja akadeemilise õiendi koopia", percentage: 30),
            Requirements(term: "CV", percentage: 0)
        ],
        description: ["Radiograafia magistriõpe Tartu Tervishoiu Kõrgkoolis on radioloogiatehnikute esimene erialane magistriõpe Balti riikides. Kaheaastane radiograafia magistriõppekava on mõeldud radioloogiatehnikutele, kes töötavad või soovivad alustada tööd  kiiritusravi valdkonnas. Kõrgkool pakub magistriõpet radiograafias koostöös Soome Metropolia Rakenduskõrgkooli, Leedu Klaipeda Ülikooli, Tartu Ülikooli ja Tartu Ülikooli Kliinikumiga ning õppekaval hakkavad õpetama ka Dublini Ülikooli Trinity Kolledži õppejõud", "Õppekava eesmärk on luua radioloogiatehniku põhiõppe läbinutele tingimused süvendatud erialaste teadmiste, oskuste ja hoiakute ning uurimistöö pädevuse omandamiseks, mis võimaldab neil töötada kõigi tasandite tervishoiuasutustes ning haridus- ja teadusasutustes. Õppekava läbinutel on võimalus jätkata õpinguid doktoriõppes radiograafia valdkonnas või sellele lähedases valdkonnas."],
        outcomes: ["Demonstreerib süstemaatilisi ja süvendatud teadmisi (ja arusaama) õppesuuna mõistetest, teooriatest ja uurimismeetoditest seostades neid eriala arengusuundade, rakendusvõimaluste ja probleemidega", "Oskab rakendada oma süvendatud erialaseid teadmisi ja arusaama ning probleemi lahendamise oskusi uutes või tundmatutes olukordades, mis seonduvad erialaga laiemas multidistsiplinaarses kontekstis", "Oskab teadmisi seostada ja toime tulla keerukates olukordades, sõnastada otsuseid mittetäieliku või piiratud informatsiooni tingimustes ja tunnetab oma sotsiaalset ja eetilist vastutust, mis kaasneb teadmiste ja otsuste rakendamisega paljukultuurilises keskkonnas", "Oskab esitada selgelt ja arusaadavalt järeldusi ja nende aluseks olevaid põhjendusi nii erialaspetsialistidele kui ka erialavälistele inimestele igapäevases töös ja juhtimisprotsessis", "Valdab õppimisoskusi ja uurimistöö läbiviimise oskusi, mis võimaldab jätkata õpinguid tasemel, kus eeldatakse valdavalt iseseisvat õppimist", "On võimeline oma teadmisi pädevalt edasi andma õpetamise ja juhendamise teel."],
        language: .inglise,
        majorWebsite: "https://www.nooruse.ee/et/korgkoolis-oppimine/magistriope/radiograafia",
        spots: 16,
        duration: 2,
        studyLocation:  ["Tartu"],
        eap: 120,
        cost: "3300€/year",
        modules: [
            Module(
                module: "Alusainete moodul",
                courses: [
                    Course(name: "Kiiritusravi ja radioloogiatehniku kutseala arendamine rahvusvahelises koostöös", eapCount: 4),
                    Course(name: "Juhtimine", eapCount: 6),
                    Course(name: "Pedagoogika", eapCount: 6),
                    Course(name: "Pedagoogiline praktika", eapCount: 8)
                ]
            ),
            Module(
                module: "Magistritöö moodul",
                courses: [
                    Course(name: "Magistritöö I", eapCount: 10),
                    Course(name: "Magistritöö II", eapCount: 4),
                    Course(name: "Magistritöö III", eapCount: 3),
                    Course(name: "Magistritöö IV", eapCount: 12)
                ]
            ),
            Module(
                module: "Erialaainete moodul: kiiritusravi",
                courses: [
                    Course(name: "Sissejuhatus - kasvajad ja kasvajate ravi", eapCount: 5),
                    Course(name: "Kiiritusravi füüsika ja radiobioloogia", eapCount: 5),
                    Course(name: "Sissejuhatus kiiritusravisse, ravieelsete protseduuride põhimõtted ja läbiviimine", eapCount: 5),
                    Course(name: "Sissejuhatus - kiiritusravi planeerimine", eapCount: 5),
                    Course(name: "Patiendi hoolduse põhimõtted kiiritusravis ja kiiritusravi läbiviimine", eapCount: 10)
                ]
            ),
            Module(
                module: "Õppepraktika moodul: kiiritusravi",
                courses: [
                    Course(name: "Õppepraktika kiiritusravis I", eapCount: 10),
                    Course(name: "Õppepraktika kiiritusravis II", eapCount: 16),
                    Course(name: "Õppepraktika kiiritusravis III", eapCount: 4)
                ]
            ),
        ]
    ),
]
