let mainorBaka = [
    majorsMinors(
        name: "Graafiline Disain",
        level: .bachelor,
        type: .disain,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Graafilise disaini erialal õpid kujundama visuaalseid lahendusi nii veebis, trükis kui mistahes pindadel. Looma visuaalset identiteeti ja realiseerima oma kunstilisi eeldusi ennekõike digitaalse meedia valdkonnas. Õpid nii professionaalse kunsti aluseid kui ka kasutama laialdaselt kasutatavaid digitaalseid disainitööriistu.", "Õppemeetodite valikul lähtume põhimõttest, et teoreetilised teadmised peavad saama ka praktikas läbi proovitud. Õppes kasutatakse palju interaktiivseid õppemeetodeid ning probleemi- ja projektipõhist õpet.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Õppest suure osa moodustab erialane praktika", "Graafilise disaini eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti graafilise disaini ja teiste kunstierialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Praktiline kõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on kõrgharidus professionaalsete osapoolte vaheline võrdne partnerlus."],
        outcomes: ["On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või jätkata õpinguid magistriõppes", "Orienteerub disaini ja disainiga liituval infotehnoloogia maastikul", "On kompetentne graafilise disaini, veebikeskkonnapõhise graafilise disaini, digitaalmeedia, veebiarenduse valdkonnas", "Rakendab omandatud teadmisi ja oskusi disainialases tegevuses", "On valmis tegutsema muutuvas keskkonnas, suudab toimida paindlikult ja loominguliselt vastavalt olukorrale ning organisatsiooni vajadustele", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab  tööks vajalikke suhtlusoskusi", "Valmis disainialaseks tööks meeskonnas ja üksikettevõtjana", "On omandanud vajalikud kompetentsid tegutsemiseks loovettevõtluses, sh loovettevõtte asutamiseks", "On suuteline ennast pidevalt iseseisvalt erialaselt ja tööalaselt täiendama", "On kursis oma eriala kodumaise ja rahvusvahelise arenguga ning kohandab oma tegevust vastavalt turu nõuetele."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/graafiline_disain",
        spots: 25,
        duration: 3,
        studyLocation:  ["Tallinn"],
        eap: 180,
        cost: "3700€/aastas",
        modules: [
            Module(module: "Ettevõtlusmoodul", courses: [Course(name: "Ettevõtlusmoodul", eapCount: 15)]),
            Module(
                module: "Alusmoodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Äriõigus ja loomemajanduse õigusaktid", eapCount: 3),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Reklaamipsühholoogia", eapCount: 2),
                    Course(name: "Avalik esinemine", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Uurimistöö meetodid", eapCount: 5)
                ]
            ),
            Module(
                module: "Veebidisaini ja digitaalgraafika põhiõppe moodul",
                courses: [
                    Course(name: "Kasutajaliidese ja -kogemuse disain (UI/UX)", eapCount: 5),
                    Course(name: "Fototöötlus", eapCount: 5),
                    Course(name: "Arvutigraafika ja animatsioon", eapCount: 5),
                    Course(name: "HTML 5", eapCount: 5),
                    Course(name: "Vektorgraafika", eapCount: 5)
                ]
            ),
            Module(
                module: "Graafilise disaini moodul",
                courses: [
                    Course(name: "Infograafika", eapCount: 3),
                    Course(name: "Märgigraafika", eapCount: 3),
                    Course(name: "Fotograafia", eapCount: 3),
                    Course(name: "Kompositsioon ja värvusõpetus", eapCount: 5),
                    Course(name: "Wordpress", eapCount: 3),
                    Course(name: "Fotomanipulatsioon reklaamis", eapCount: 3),
                    Course(name: "Reklaamigraafika", eapCount: 3),
                    Course(name: "Firmagraafika", eapCount: 3),
                    Course(name: "Trükitehnoloogia", eapCount: 3),
                    Course(name: "Pakendigraafika", eapCount: 3),
                    Course(name: "Keskkonnadisain", eapCount: 2),
                    Course(name: "Tüpograafia", eapCount: 3),
                    Course(name: "Plakatigraafika", eapCount: 3),
                    Course(name: "Illustratsioon", eapCount: 3),
                    Course(name: "Graafilise disaini ajalugu", eapCount: 3),
                    Course(name: "Ajalehe ja ajakirja kujundus ning küljendamine (InDesign)", eapCount: 5),
                    Course(name: "Kujundusgraafika", eapCount: 3),
                    Course(name: "Interaktiivne veebimeedia", eapCount: 3),
                    Course(name: "Joonistamine I", eapCount: 5)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Portfoolio", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10),
                    Course(name: "Erialase meeskonnatöö praktika", eapCount: 10),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Loominguline praktika", eapCount: 5)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Start-up Ettevõtlus",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Traditsiooniline ettevõte ja start-up ettevõte erinevad teineteise poolest palju. See programm sobib Sulle, kui oled proaktiivne inimene, kes on valmis tegema rasket tööd enda start-up ettevõtte asutamise nimel.", "Startup ettevõtlus on intentsiivne programm, kus on võimalik õppida äri, luues enda innovaatilise ettevõtte juba õpingute ajal.", "Erinevalt teistest kiirenditest ja lühiprogrammidest pakub start-up ettevõtlus kolm aastat kestvat programmi, mis käib läbi kõik start-upi arengu faasid. Varasemalt oleme koostööd teinud ettevõtetega nagu TransferWise, Bolt, Pipedrive, Goworkabit, Fortumo, Like A Local, Toggl.", "Parim on ideede olemasolu enne sisseastumist, mille kallal soovitakse töötada õpingute ajal või leida äriidee Eestis toimuvate start-up ürituste ajal esimese semestri jooksul. Läbi idee tuletamise ja ärimudeli disaini kuni töötajate värbamiseni ja ettevõtte kasvu juhtimiseni julgustatakse tudengit töötama enda ideede kallal läbi erinevate ainete.", "Õpingute ajal läbitakse mõned ained Loovuse ja Äriinoovatsiooni tudengitega ning mõned ainult Start-up Ettevõtluse tudengitega. Tudengilt oodatakse, et ta paneb kogu õpitu praktikasse ja registreerib vähemalt ühe enda ettevõtte, millel on kliendibaas ja rahavood. Võimalik on olla ka kaasasutaja koos teise inimesega.", "Motiveeritud tudengil on võimalus kohtuda mitmete kaugele jõudnud inimestega üle terve Euroopa ja maailma ning ehitada professionaalne kontaktvõrgustik juba õpingute ajal.", "Õpingute lõpetamise ajaks on tudengil tagapõhi koos mitmete ettevõtlike algatustega, mis eristab selgelt teda teistest tudengitest, kellel praktilised kogemused puuduvad. Ettevõtlikul tudengil on võimalik jätkata ettevõtjana või saada suurema ettevõtte projekti- või tootejuhiks - nn ettevõttesiseseks ettevõtjaks ehk intrapreneur'iks."],
        outcomes: ["Õppekava läbinu:","On valmis tegutsema muutuvas keskkonnas, oskab toimida paindlikult ja loominguliselt vastavalt olukorrale ja organisatsiooni vajadustele", "On valmis erialaselt töötama omandatud pea- ja kõrvaleriala valdkonnas nii individuaalselt kui meeskonnas, nii tööandja kui töövõtjana", "Näitab initsiatiivi ja loovust projektide/tegevuste algatamisel ning vastutustunnet, juhtimis- ja meeskonnatööoskusi nende elluviimisel", "Tunneb ära kasutamata turuvõimalused ning töötab välja lahendused nii uue toote, teenuse kui muu taolise näol", "On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab tööks vajalikke suhtlusoskusi ning infotehnoloogilisi teadmisi."],
        language: .inglise,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/start-up_ettev%C3%B5tlus",
        spots: 30,
        duration: 3,
        studyLocation:  ["Tallinn"],
        eap: 180,
        cost: "4720€/aastas",
        modules: [
            Module(
                module: "Start-up ettevõtluse eriala moodul",
                courses: [
                    Course(name: "Praktika II", eapCount: 12),
                    Course(name: "Strateegia", eapCount: 4),
                    Course(name: "Tooteturundus", eapCount: 5),
                    Course(name: "Tootearendus", eapCount: 6),
                    Course(name: "Ettevõtte kasvu juhtimine", eapCount: 5),
                    Course(name: "Kapitali kaasamine", eapCount: 6),
                    Course(name: "Ärimudeli hüpoteesi valideerimine", eapCount: 6),
                    Course(name: "Kaasasutajaga pühendumine", eapCount: 4),
                    Course(name: "Äriideede raamistamine", eapCount: 5),
                    Course(name: "Äriideede tuletamine", eapCount: 6),
                    Course(name: "Sissejuhatus start-up ettevõtlusesse", eapCount: 2)
                ]
            ),
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Ettevõtluse alused", eapCount: 3),
                    Course(name: "Personalijuhtimine", eapCount: 5),
                    Course(name: "Juhtimine", eapCount: 5),
                    Course(name: "Meeskonnatöö", eapCount: 5),
                    Course(name: "Õigusõpetuse alused ja dokumentatsioon", eapCount: 3),
                    Course(name: "Majanduse alused", eapCount: 4),
                    Course(name: "Äri-eetika", eapCount: 4),
                    Course(name: "Ettevõtete sotsiaalne vastutus", eapCount: 4),
                    Course(name: "Müük ja turundus", eapCount: 10),
                    Course(name: "Ärianalüüs", eapCount: 5),
                    Course(name: "Ettevõtte finantsjuhtimine", eapCount: 4)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Lõputöö seminar", eapCount: 5),
                    Course(name: "Praktika I", eapCount: 15),
                    Course(name: "Lõputöö", eapCount: 10)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Eesti keel I", eapCount: 3),
                    Course(name: "Eesti keel II", eapCount: 3),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Eesti keel III", eapCount: 3),
                    Course(name: "Eesti keel IV", eapCount: 3),
                    Course(name: "Organisatsioonikäitumine", eapCount: 2),
                    Course(name: "Avalik esinemine", eapCount: 2),
                    Course(name: "Kommunikatsioon", eapCount: 5)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 4),
                    Course(name: "Andmeanalüüs", eapCount: 4)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Finantsjuhtimine",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Finantsjuhtimise erialal õpid analüüsima ja suunama kapitalipaigutusi, hindama investeeringute tootlikkust ja nägema ettevõtte majandusnäitajate taga suuremat pilti. Finantsjuhid on sageli need, kellest järgmisena saavad ettevõtte tippjuhid.", "Õppemeetodite valikul lähtume põhimõttest, et teoreetilised teadmised peavad saama ka praktikas läbi proovitud. Õppes kasutatakse palju interaktiivseid õppemeetodeid ning probleemi- ja projektipõhist õpet.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Õppest suure osa moodustab erialane praktika.", "Finantsjuhtimise eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti finantsjuhtimise ja teiste ärinduserialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon, keda juhtis London School of Economics esindaja, õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Finantsjuhtimise erialal on erialaspetsiifiline õppeprogramm koostatud ja õpetamine toimub koostöös ekspertidega LHV Pangast, KredExist ning suurettevõtete ABB, Eesti Energia ja Eesti Raudtee juhtimisarvestus- ja finantsüksustest.", "Oma varasemat kogemust ja õpinguid, mille sisu on õppekavaga sama, saad lasta arvestada, et vähendada oma õppekoormust ja õppemaksu. Tutvu ka järelmaksuvõimalust pakkuva Mainori Kõrgharidusfondiga. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd ja praktikad saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat väärtust oma ettevõttele või tööandjale.", "Finantsjuhtimise eriala on võimalik õppida täismahus Tallinna õppekeskuses. Tartu õppekeskuses on võimalik kogu õppekava läbida, kui finantsjuhtimise eriala valinuid on Tartus vähemalt 15. Muul juhul on Tartu õppekeskuses võimalik läbida õppest kaks kolmandikku. Erialaõppe moodul toimub sel juhul Tallinnas.", "Õpe toimub mõlemas linnas kaugõppena, mis võimaldab käia neljapäevast pühapäevani toimuval sessioonil õppimas ka teises linnas. Tartust saabunud üliõpilastel on võimalik leida soodsat majutust EEK tudengite hostelis, mis asub Ülemiste rongipeatusest viie- ja Tallinna õppekeskusest kaheminutilise jalutustee kaugusel.", "Praktiline kõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on kõrgharidus professionaalsete osapoolte vaheline võrdne partnerlus."],
        outcomes: ["On valmis tegutsema muutuvas keskkonnas, oskab toimida paindlikult ja loominguliselt vastavalt olukorrale ja organisatsiooni vajadustele", "On valmis erialaselt töötama omandatud pea- ja kõrvaleriala valdkonnas nii individuaalselt kui meeskonnas, nii tööandja kui töövõtjana", "On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab tööks vajalikke suhtlusoskusi ning infotehnoloogilisi teadmisi.","Finantsjuhtimise eriala lõpetajana oled omandanud vajalikud teadmised ja oskused, et tegutseda näiteks finantsjuhi, -spetsialisti või -analüütikuna, juhtida investeeringuid või omaenda ettevõtet."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/finantsjuhtimine",
        spots: 30,
        duration: 3,
        studyLocation: ["Tallinn", "Tartu"],
        eap: 180,
        cost: "3640€/aastas",
        modules: [
            Module(
                module: "Ettevõtlusõppe moodul",
                courses: [
                    Course(name: "Äriprotesside moodul", eapCount: 15),
                    Course(name: "Ettevõtlusmoodul", eapCount: 15)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Avalik esinemine", eapCount: 2)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Äri- ja juhtimiseetika", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3)
                ]
            ),
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Õigusõpetus", eapCount: 3),
                    Course(name: "Tööõigus ja lepingud", eapCount: 4),
                    Course(name: "Majandusteooria", eapCount: 5),
                    Course(name: "Projektijuhtimine", eapCount: 3),
                    Course(name: "Tervisepsühholoogia ja töökeskkond", eapCount: 3)
                ]
            ),
            Module(
                module: "Finantsjuhtimise erialaõppe moodul",
                courses: [
                    Course(name: "Rahvusvaheline äri", eapCount: 3),
                    Course(name: "Ettevõtte IT süsteemide kavandamine", eapCount: 4),
                    Course(name: "Riskianalüüs ja andmekaitse", eapCount: 3),
                    Course(name: "Audiitorkontroll", eapCount: 3),
                    Course(name: "Maksundus", eapCount: 5),
                    Course(name: "Rahvusvaheline finantsjuhtimine", eapCount: 5),
                    Course(name: "Investeeringute juhtimine ja analüüs", eapCount: 5),
                    Course(name: "Kuluarvestus", eapCount: 5),
                    Course(name: "Controlling", eapCount: 4),
                    Course(name: "Finantsarvestus", eapCount: 5),
                    Course(name: "Majandusmatemaatika", eapCount: 2),
                    Course(name: "Finantsjuhtimine", eapCount: 3),
                    Course(name: "Rahvusvahelised teenuskeskused", eapCount: 2),
                    Course(name: "Majandusarvestuse arvutiprogrammid", eapCount: 3),
                    Course(name: "Excel majandusarvestuses", eapCount: 5),
                    Course(name: "Logistika alused", eapCount: 3)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Ettevõttepraktika", eapCount: 12),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Ainetöö", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10 )
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Logistika",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Logistika erialal õpid korraldama kaupade ja info liikumist, juhtima varude käitlemist, reageerima adekvaatselt kriisiolukordades ning haldama partnersuhteid ja äriprotsesse. Koos üha uute üleeuroopaliste transpordikanalite väljaarendamisega kasvab vajadus logistikaspetsialistide järele Eestis aasta-aastalt.", "Lisaks erialaoskustele omandad edasiseks karjääriks vajalikke juhtimis-, suhtlemis-, analüüsi-, õigus- ja majandusalaseid teadmisi. Sinu õppejõudude seas on oma valdkonna kogenud praktikud, paljusid ettevõtteid nõustanud koolitajad ning Eesti tuntud majandus- ja ettevõtlusalased arvamusliidrid.", "Õppemeetodite valikul lähtume põhimõttest, et teoreetilised teadmised peavad saama ka praktikas läbi proovitud. Õppes kasutatakse palju interaktiivseid õppemeetodeid ning probleemi- ja projektipõhist õpet.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Õppest suure osa moodustab erialane praktika", "Logistika eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti logistika ja teiste ärinduserialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon, keda juhtis London School of Economics esindaja, õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Logistika erialal on erialaspetsiifiline õppeprogramm koostatud ja õpetamine toimub toimub koostöös Eesti Logistika ja Ekspedeerimise Assotsiatsiooni ja Eesti Ostu- ja Tarneahelate Juhtimise Ühinguga PROLOG.", "Oma varasemat kogemust ja õpinguid, mille sisu on õppekavaga sama, saad lasta arvestada, et vähendada oma õppekoormust ja õppemaksu. Tutvu ka järelmaksuvõimalust pakkuva Mainori Kõrgharidusfondiga. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd ja praktikad saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat väärtust oma ettevõttele või tööandjale.", "Logistika eriala on võimalik õppida täismahus Tallinna õppekeskuses. Tartu õppekeskuses on võimalik kogu õppekava läbida, kui logistika eriala valinuid on Tartus vähemalt 15. Muul juhul on Tartu õppekeskuses võimalik läbida õppest kaks kolmandikku. Erialaõppe moodul toimub sel juhul Tallinnas.", "Õpe toimub mõlemas linnas kaugõppena, mis võimaldab käia neljapäevast pühapäevani toimuval sessioonil õppimas ka teises linnas. Tartust saabunud üliõpilastel on võimalik leida soodsat majutust EEK ühiselamus, mis asub Ülemiste rongipeatusest viie- ja Tallinna õppekeskusest kaheminutilise jalutustee kaugusel.", "Praktiline kõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on kõrgharidus professionaalsete osapoolte vaheline võrdne partnerlus.", "Logistika erialale vastuvõetud üliõpilastel on võimalus omandada koos kõrgharidusdiplomiga ka ülemaailmselt tunnustatud rahvusvahelise ekspedeerija FIATA diplom. Rahvusvahelise logistikaassotsiatsioonide ühenduse FIATA poolt väljastatav diplom on tunnustatud rohkem kui 150 riigis ja tagab professionaalse usaldusväärsuse üle maailma.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["On valmis tegutsema muutuvas keskkonnas, oskab toimida paindlikult ja loominguliselt vastavalt olukorrale ja organisatsiooni vajadustele", "On valmis erialaselt töötama omandatud pea- ja kõrvaleriala valdkonnas nii individuaalselt kui meeskonnas, nii tööandja kui töövõtjana", "On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab tööks vajalikke suhtlusoskusi ning infotehnoloogilisi teadmisi."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/logistika",
        spots: 30,
        duration: 3,
        studyLocation: ["Tallinn", "Tartu"],
        eap: 180,
        cost: "3640€/aastas",
        modules: [
            Module(
                module: "Ettevõtlusõppe moodul",
                courses: [
                    Course(name: "Äriprotesside moodul", eapCount: 15),
                    Course(name: "Ettevõtlusmoodul", eapCount: 15)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Avalik esinemine", eapCount: 2)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Äri- ja juhtimiseetika", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3)
                ]
            ),
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Õigusõpetus", eapCount: 3),
                    Course(name: "Tööõigus ja lepingud", eapCount: 4),
                    Course(name: "Majandusteooria", eapCount: 5),
                    Course(name: "Projektijuhtimine", eapCount: 3),
                    Course(name: "Tervisepsühholoogia ja töökeskkond", eapCount: 3)
                ]
            ),
            Module(
                module: "Logistika erialaõppe moodul",
                courses: [
                    Course(name: "Lennutransport", eapCount: 4),
                    Course(name: "Reisijatevedu", eapCount: 3),
                    Course(name: "Tootmislogistika ja materjalijuhtimine", eapCount: 4),
                    Course(name: "Ettevõtte logistikasüsteemide ja -kulude juhtimine", eapCount: 5),
                    Course(name: "Riskianalüüs logistikas", eapCount: 3),
                    Course(name: "Kultuurikeskkond", eapCount: 3),
                    Course(name: "Ostmine ja varude juhtimine", eapCount: 4),
                    Course(name: "Kaupade käsitlemine ja hoiustamine", eapCount: 5),
                    Course(name: "Multimodaalne transport", eapCount: 3),
                    Course(name: "Finantsjuhtimine", eapCount: 3),
                    Course(name: "Vetelvedu", eapCount: 3),
                    Course(name: "Raudteetransport", eapCount: 4),
                    Course(name: "Maanteetransport", eapCount: 3),
                    Course(name: "Ekspedeerimise alused", eapCount: 5),
                    Course(name: "Tollinduse protseduurid", eapCount: 3),
                    Course(name: "Majandusmatemaatika", eapCount: 2),
                    Course(name: "Logistika alused", eapCount: 3)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Ettevõttepraktika", eapCount: 12),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Ainetöö", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10 )
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Arvutimängude Disain ja Arendus",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Arvutimängude disain ja arendus on eriala, kus õpid looma esimesi haaravaid mänge enda loodud mänguettevõttes kui ka töötama ettevõttes mänguarendajana. Õppekava rõhk on praktilisel tööl, mängijate kogemuse kujundamisel ja mänguettevõtlusel. Edukas mängulooja valdab peale mängu disaini ka programmeerimist ning mängu graafikat.", "Arvutimängude disaini ja arenduse eriala õppeprogramm on koostatud ja õpetamine toimub koostöös valdkonna juhtivate ettevõtete ja ühendustega nagu Creative Mobile, Derivco Estonia,  GameLab, IGDA Estonia, Level1 ja teised.", "Arvutimängude disain ja arendus eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti arvutimängude disain ja arendus ja teiste kunstierialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang.", "Üheks vastuvõtutingimuseks ootame arvutimängude disaini ja arenduse erialale kandideerijalt motivatsioonikirja (lühiessee kuni üks lehekülg), mille saad esitada pärast avalduse esitamist õppeinfosüsteemis. Motivatsioonikirjas palume kirjeldada, kuidas oled varasemalt mängude arendamisega kokku puutunud ning miks soovid asuda õppima arvutimängude disaini erialale. Kui neid on, lisa kindlasti ka viited oma varasematele töödele - mängud, mängitavad demod, valmimisjärgus oleva mängu failid või muud teema kohased tööd. Lisaks ootame kandidaadilt IT ja programmeerimise vastu huvi ning head koostööoskust.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["Õppekava läbinu:","On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või jätkata õpinguid magistriõppes", "Orienteerub disaini ja disainiga liituval infotehnoloogia maastikul", "On kompetentne graafilise disaini, veebikeskkonnapõhise graafilise disaini, digitaalmeedia, veebiarenduse valdkonnas", "Rakendab omandatud teadmisi ja oskusi disainialases tegevuses", "On valmis tegutsema muutuvas keskkonnas, suudab toimida paindlikult ja loominguliselt vastavalt olukorrale ning organisatsiooni vajadustele", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab  tööks vajalikke suhtlusoskusi", "Valmis disainialaseks tööks meeskonnas ja üksikettevõtjana", "On omandanud vajalikud kompetentsid tegutsemiseks loovettevõtluses, sh loovettevõtte asutamiseks", "On suuteline ennast pidevalt iseseisvalt erialaselt ja tööalaselt täiendama", "On kursis oma eriala kodumaise ja rahvusvahelise arenguga ning kohandab oma tegevust vastavalt turu nõuetele."],
        language: .inglise,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/arvutim%C3%A4ngude_disain_ja_arendus",
        spots: 30,
        duration: 3,
        studyLocation:  ["Tallinn"],
        eap: 180,
        cost: "4720€/aastas",
        modules: [
            Module(
                module: "Arvutimängude disaini ja arenduse erialaõpe",
                courses: [
                    Course(name: "Programmeerimise alused mängude arendajatele", eapCount: 7),
                    Course(name: "OO analüüs, disain ja programmeerimine", eapCount: 5),
                    Course(name: "Mängugraafika analüüs ja tehnilised spetsifikatsioonid", eapCount: 3),
                    Course(name: "Sissejuhatus mängutööstusesse", eapCount: 4),
                    Course(name: "3D mängugraafika", eapCount: 6),
                    Course(name: "Mobiilimängu projekt", eapCount: 5),
                    Course(name: "Mängumootorid ja prototüüpimine", eapCount: 6),
                    Course(name: "Mänguprojekti arendamine ja viimistlemine", eapCount: 6),
                    Course(name: "Mängudisain, leveldisain ja dokumentatsioon", eapCount: 6),
                    Course(name: "Mängu publitseerimine ja turundamine", eapCount: 5),
                    Course(name: "Helitöötlus", eapCount: 2),
                    Course(name: "Pikselgraafika", eapCount: 6),
                    Course(name: "Kompositsioon, värvusõpetus ja vektorgraafika", eapCount: 6)
                ]
            ),
            Module(
                module: "Ettevõtlusõppe moodul",
                courses: [
                    Course(name: "Ettevõtlusmoodul", eapCount: 15)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Eesti keel I", eapCount: 3),
                    Course(name: "Eesti keel II", eapCount: 3),
                    Course(name: "Eesti keel III", eapCount: 3),
                    Course(name: "Eesti keel IV", eapCount: 3),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Organisatsioonikäitumine", eapCount: 2),
                    Course(name: "Meeskonnatöö", eapCount: 2)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Akadeemiline kirjutamine ja eneseväljendus", eapCount: 3)
                ]
            ),
            Module(
                module: "Arvutimängude disaini ja arenduse põhiõppe moodul",
                courses: [
                    Course(name: "Narratiiv", eapCount: 5),
                    Course(name: "HTML 5", eapCount: 3),
                    Course(name: "Arvutigraafika ja animatsioon", eapCount: 4),
                    Course(name: "Õigusõpetuse alused ja dokumentatsioon", eapCount: 3),
                    Course(name: "Kasutajaliidese ja -kogemuse disain (UI/UX)", eapCount: 5),
                    Course(name: "Turunduspsühholoogia", eapCount: 2)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Erialase meeskonnatöö praktika", eapCount: 15),
                    Course(name: "Portfoolio", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10),
                    Course(name: "Erialapraktika", eapCount: 15)
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Turundus",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Turunduse erialal õpid mõistma ja mõjutama inimkäitumist, kujundama sõnumeid, looma brände ning suunama ostuotsuseid. Turundus, müük ja kommunikatsioon on iga ettevõtte üks kõige enam väärtust loovaid tegevusi. Edukates ettevõtetes kuulub turundusjuht kesksesse otsustajate ringi.", "Õppemeetodite valikul lähtume põhimõttest, et teoreetilised teadmised peavad saama ka praktikas läbi proovitud. Õppes kasutatakse palju interaktiivseid õppemeetodeid ning probleemi- ja projektipõhist õpet.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine", "Turunduse eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti turunduse ja teiste ärinduserialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon, keda juhtis London School of Economics esindaja, õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Turunduse erialal on erialaspetsiifiline õppeprogramm koostatud ja õpetamine toimub koostöös turundusagentuuriga Creative Union, Innove, ENUT, Turundajate Liidu ja Eesti Suhtekorraldajate Liiduga.", "Oma varasemat kogemust ja õpinguid, mille sisu on õppekavaga sama, saad lasta arvestada, et vähendada oma õppekoormust ja õppemaksu. Tutvu ka järelmaksuvõimalust pakkuva Mainori Kõrgharidusfondiga. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd ja praktikad saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat väärtust oma ettevõttele või tööandjale.", "Turunduse eriala on võimalik õppida täismahus Tallinna õppekeskuses. Tartu õppekeskuses on võimalik kogu õppekava läbida, kui turunduse eriala valinuid on Tartus vähemalt 15. Muul juhul on Tartu õppekeskuses võimalik läbida õppest kaks kolmandikku. Erialaõppe moodul toimub sel juhul Tallinnas.", "Õpe toimub mõlemas linnas kaugõppena, mis võimaldab käia neljapäevast pühapäevani toimuval sessioonil õppimas ka teises linnas. Tartust saabunud üliõpilastel on võimalik leida soodsat majutust EEK tudengite hostelis, mis asub Ülemiste rongipeatusest viie- ja Tallinna õppekeskusest kaheminutilise jalutustee kaugusel.", "Praktiline ettevõtluskõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame turunduse erialale kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse turundusalast haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on ettevõtluskõrgharidus  professionaalsete osapoolte vaheline võrdne partnerlus.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["On valmis tegutsema muutuvas keskkonnas, oskab toimida paindlikult ja loominguliselt vastavalt olukorrale ja organisatsiooni vajadustele", "On valmis erialaselt töötama omandatud pea- ja kõrvaleriala valdkonnas nii individuaalselt kui meeskonnas, nii tööandja kui töövõtjana", "On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab tööks vajalikke suhtlusoskusi ning infotehnoloogilisi teadmisi."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/turundus",
        spots: 30,
        duration: 3,
        studyLocation: ["Tallinn", "Tartu"],
        eap: 180,
        cost: "3640€/aastas",
        modules: [
            Module(
                module: "Ettevõtlusõppe moodul",
                courses: [
                    Course(name: "Äriprotesside moodul", eapCount: 15),
                    Course(name: "Ettevõtlusmoodul", eapCount: 15)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Avalik esinemine", eapCount: 2)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Äri- ja juhtimiseetika", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3)
                ]
            ),
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Õigusõpetus", eapCount: 3),
                    Course(name: "Tööõigus ja lepingud", eapCount: 4),
                    Course(name: "Majandusteooria", eapCount: 5),
                    Course(name: "Projektijuhtimine", eapCount: 3),
                    Course(name: "Tervisepsühholoogia ja töökeskkond", eapCount: 3)
                ]
            ),
            Module(
                module: "Turunduse erialaõppe moodul",
                courses: [
                    Course(name: "Bränding", eapCount: 2),
                    Course(name: "Müügijuhtimine", eapCount: 3),
                    Course(name: "Finantsjuhtimine", eapCount: 3),
                    Course(name: "Logistika alused", eapCount: 2),
                    Course(name: "Turundusuuringud", eapCount: 3),
                    Course(name: "Rahvusvaheline turundus", eapCount: 3),
                    Course(name: "Toote- ja hinnapoliitika", eapCount: 3),
                    Course(name: "Tarbijakäitumine", eapCount: 3),
                    Course(name: "Internetiturundus ja sotsiaalmeedia", eapCount: 4),
                    Course(name: "Suhtekorraldus", eapCount: 3),
                    Course(name: "Reklaamipsühholoogia", eapCount: 2),
                    Course(name: "Foto- ja videograafia", eapCount: 3),
                    Course(name: "Müük ja kommunikatsioon", eapCount: 3),
                    Course(name: "Teenuste disain", eapCount: 3),
                    Course(name: "Sündmusturundus", eapCount: 2),
                    Course(name: "Kultuurikeskkond", eapCount: 3),
                    Course(name: "Teenuste ja organisatsiooni turundus", eapCount: 4),
                    Course(name: "Turunduskommunikatsiooni juhtimine ja planeerimine", eapCount: 3),
                    Course(name: "Intellektuaalse omandi kaitse", eapCount: 2),
                    Course(name: "Kommunikatsiooni visualiseerimine", eapCount: 3),
                    Course(name: "Ettevõtte IT süsteemide kavandamine", eapCount: 3)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Ettevõttepraktika", eapCount: 12),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Ainetöö", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10 )
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Veebitehnoloogiad",
        level: .bachelor,
        type: .disain,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Veebitehnoloogiate erialal õpid, kuidas luuakse digitaalseid keskkondi ja rakendusi, kujundatakse kasutajaliideseid ja -kogemust. Saad ka ideid, kuidas neid teadmisi siduda ettevõtlusega. Infotehnoloogia loov- ja ärioskustega spetsialistid - smart creatives - on tehnoloogiaettevõtetes enim otsitud töötajaid.", "Sobid veebitehnoloogiks, kui lisaks koodikirjutamisoskusele tahad rohkem teada, miks ja kellele veebirakendusi tegelikult tehakse ning tunned huvi IT-valdkonna vastu laiemalt. Kasuks tuleb soov end ise kujutleda veebirakenduste kasutaja või tellija rollis. Õppekava sisaldab olulises mahus ka disaini- ja ettevõtlusoskuste omandamist.", "Veebitehnoloogi haridus võimaldab jõuda selliste keskmisest kõrgemalt tasustatud ametikohtadeni nagu UI/UX disainer, süsteemianalüütik, IT-teenuste projektijuht, arendusspetsialist või mobiilirakenduste arendaja.", "Õppemeetodite valikul lähtume põhimõttest, et teoreetilised teadmised peavad saama ka praktikas läbi proovitud. Õppes kasutatakse palju interaktiivseid õppemeetodeid ning probleemi- ja projektipõhist õpet.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Õppest suure osa moodustab erialane praktika.", "Veebitehnoloogiate eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti veebitehnoloogiate ja teiste kunstierialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Veebitehnoloogiate eriala õppeprogramm on koostatud ja õpetamine ning praktikakohtade valik toimub koostöös Ülemiste City suuremate IT-tööandjatega nagu Telia Eesti, Helmes ja teised.", "Oma varasemat kogemust ja õpinguid, mille sisu on õppekavaga sama, saad lasta arvestada, et vähendada oma õppekoormust ja õppemaksu. Tutvu ka järelmaksuvõimalust pakkuva Mainori Kõrgharidusfondiga. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd ja praktikad saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat väärtust oma ettevõttele või tööandjale.", "Praktiline kõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on kõrgharidus professionaalsete osapoolte vaheline võrdne partnerlus.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või jätkata õpinguid magistriõppes", "Orienteerub disaini ja disainiga liituval infotehnoloogia maastikul", "On kompetentne graafilise disaini, veebikeskkonnapõhise graafilise disaini, digitaalmeedia, veebiarenduse valdkonnas", "Rakendab omandatud teadmisi ja oskusi disainialases tegevuses", "On valmis tegutsema muutuvas keskkonnas, suudab toimida paindlikult ja loominguliselt vastavalt olukorrale ning organisatsiooni vajadustele", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab  tööks vajalikke suhtlusoskusi", "Valmis disainialaseks tööks meeskonnas ja üksikettevõtjana", "On omandanud vajalikud kompetentsid tegutsemiseks loovettevõtluses, sh loovettevõtte asutamiseks", "On suuteline ennast pidevalt iseseisvalt erialaselt ja tööalaselt täiendama", "On kursis oma eriala kodumaise ja rahvusvahelise arenguga ning kohandab oma tegevust vastavalt turu nõuetele."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/veebitehnoloogiad",
        spots: 25,
        duration: 3,
        studyLocation:  ["Tallinn"],
        eap: 180,
        cost: "3760€/aastas",
        modules: [
            Module(module: "Ettevõtlusmoodul", courses: [Course(name: "Ettevõtlusmoodul", eapCount: 15)]),
            Module(
                module: "Alusmoodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Äriõigus ja loomemajanduse õigusaktid", eapCount: 3),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Reklaamipsühholoogia", eapCount: 2),
                    Course(name: "Avalik esinemine", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Uurimistöö meetodid", eapCount: 5)
                ]
            ),
            Module(
                module: "Veebidisaini ja digitaalgraafika põhiõppe moodul",
                courses: [
                    Course(name: "Kasutajaliidese ja -kogemuse disain (UI/UX)", eapCount: 5),
                    Course(name: "Fototöötlus", eapCount: 5),
                    Course(name: "Arvutigraafika ja animatsioon", eapCount: 5),
                    Course(name: "HTML 5", eapCount: 5),
                    Course(name: "Vektorgraafika", eapCount: 5)
                ]
            ),
            Module(
                module: "Veebitehnoloogiate erialaõppe moodul",
                courses: [
                    Course(name: "Arvutiehitus ja arvutivõrgud", eapCount: 5),
                    Course(name: "Programmeerimise alused", eapCount: 5),
                    Course(name: "Andmebaasid ja SQL", eapCount: 5),
                    Course(name: "OO analüüs, disain ja porgrammeerimine", eapCount: 5),
                    Course(name: "Andmeturve", eapCount: 5),
                    Course(name: "Veebiprogrammeerimine", eapCount: 5),
                    Course(name: "IT infrastruktuuride kavandamine", eapCount: 5),
                    Course(name: "Mobiilirakenduste programmeerimine", eapCount: 5),
                    Course(name: "Veebitehnoloogiad", eapCount: 5),
                    Course(name: "IT matemaatilised ja füüsikalised alused", eapCount: 5),
                    Course(name: "Prototüüpimine", eapCount: 5),
                    Course(name: "Veebilehtede analüüs ja disain", eapCount: 5),
                    Course(name: "Testimine", eapCount: 2  )
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Portfoolio", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10),
                    Course(name: "Erialase meeskonnatöö praktika", eapCount: 10),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Loominguline praktika", eapCount: 5)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tarkvaraarendus ja Ettevõtlus",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Tarkvaraarenduse ja ettevõtluse eriala on mõeldud neile, kes tahavad vajalikke programmeerimise, tarkvara kujundamise ja tiimitööoskusi, et teha karjääri tarkvaraarendajana juhtivates IT-ettevõtetes Eestis või mujal. Aga ka neile, kes tahavad tugevat IT-vundamenti ja samuti äriteadmisi, millele ehitada omaenda tarkvaraettevõte.", "Tarkvaraarenduse ja ettevõtluse õppekava keskendub teemadele:", "• programmeerimine (Java, HTML, CSS, SQL)", "• infosüsteemide analüüs ja kavandamine", "• tarkvaraarenduse protsessid", "• tarkvaratestimine", "• äriprotsesside automatiseerimine", "• veebi- ja mobiilirakenduste loomine", "• ettevõtlus ja suhtlemispsühholoogia", "• projektid ja praktikad, portfoolio loomine", "Tarkvaraarenduse ja ettevõtluse eriala õppeprogramm on koostatud ja õpetamine toimub koos Eesti juhtivate tarkvaraloojatega nagu Columbus Eesti, Ericsson ja Playtech.", "Tarkvaraarenduse ja ettevõtlus, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2018 anti tarkvaraarenduse ja ettevõtluse õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["On omandanud erialased pädevused valdkonnas  töötamiseks", "Lähtub omandatud pädevuste rakendamisel valdkondlikest uuendustest ja olemasolevatest praktilistest lahendustest.", "Püstitab eesmärke ning lahendab erialaseid probleeme nii individuaalselt kui meeskonnas, kasutades selleks tänapäevaseid ja kohaseid meetodeid ning tehnoloogiaid", "On omandanud teadusliku käsitluse põhimõtted ja konstruktiivse mõtlemise oskuse ning rakendab neid eesmärkide saavutamiseks ja tööalaste otsuste tegemisel", "Arvestab oma töös valdkonna kutse-eetika, ühiskonna normide ja kehtiva hea tavaga", "On motiveeritud ja valmis pidevaks enesearenduseks ja magistriõppeks."],
        language: .inglise,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/tarkvaraarendus_ja_ettev%C3%B5tlus",
        spots: 30,
        duration: 3,
        studyLocation:  ["Tallinn"],
        eap: 180,
        cost: "4660€/aasta",
        modules: [
            Module(module: "Ettevõtlusmoodul", courses: [Course(name: "Ettevõtlusmoodul", eapCount: 15)]),
            Module(
                module: "IT projekteerimise moodul",
                courses: [
                    Course(name: "Tarkvarapõhise toote  ja teenuse arendamine", eapCount: 4),
                    Course(name: "Kuluarvestus ja eelarvestamine", eapCount: 4),
                    Course(name: "IT rakenduste tootejuhtimine", eapCount: 3)
                ]
            ),
            Module(
                module: "Matemaatika ja uurimistöö metoodika moodul",
                courses: [
                    Course(name: "IT sotsiaalsed ja eetilised alused", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine ja ensesväljendus", eapCount: 3),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Algoritmid ja andmestruktuurid", eapCount: 5),
                    Course(name: "Lineaaralgebra", eapCount: 5),
                    Course(name: "Diskreetne matemaatika ja loogika", eapCount: 5),
                    Course(name: "Uurimistöö meetodid", eapCount: 5)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Eesti keel I", eapCount: 5),
                    Course(name: "Koostöömudelid", eapCount: 2),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Eesti keel II", eapCount: 3),
                    Course(name: "Eesti keel III", eapCount: 3),
                    Course(name: "Eesti keel IV", eapCount: 3),
                ]
            ),
            Module(
                module: "Tarkvaraarenduse erialaõppe moodul",
                courses: [
                    Course(name: "Tarkvarasüsteemide monitoorimine", eapCount: 2),
                    Course(name: "Programmeerimine keeles Python", eapCount: 4),
                    Course(name: "Tarkvaratestimine", eapCount: 5),
                    Course(name: "Mobiilirakendused", eapCount: 5),
                    Course(name: "Veebirakendused", eapCount: 5),
                    Course(name: "Andmebaasid", eapCount: 4),
                    Course(name: "Kasutajaliidese prototüüpimine", eapCount: 4),
                    Course(name: "Infosüsteemide analüüs ja projekteerimine", eapCount: 4),
                    Course(name: "Andmeturve", eapCount: 4),
                    Course(name: "Objektorienteeritud programmeerimine", eapCount: 5),
                    Course(name: "Programmeerimise alused", eapCount: 5),
                    Course(name: "Tarkvara arendusprotsessid", eapCount: 4),
                    Course(name: "Operatsioonisüsteemid ja nende haldus", eapCount: 3),
                    Course(name: "Arvutid ja arvutivõrgud", eapCount: 2),
                    Course(name: "Valikained", eapCount: 3),
                    Course(name: "Äriprotsesside modelleerimine ja automatiseerimine", eapCount: 4)
                ]
            ),
            Module(
                module: "Prakitikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Tarkvaraarenduse meeskonnaprojekt", eapCount: 5),
                    Course(name: "Tarkvaraarenduse projekt", eapCount: 10),
                    Course(name: "Lõputöö", eapCount: 10),
                    Course(name: "Erialapraktika", eapCount: 15)
                ]
            )
            
        ]
    ),
    majorsMinors(
        name: "Kvaliteedijuhtimine",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Kvaliteedijuhtimise erialal õpid muutma suure ettevõtte tegevusi ja info liikumist selgemaks, tõhusamaks ja mugavamaks. Vajadust kvaliteedijuhi järele tunnevad aina rohkemate ettevõtete tippjuhid.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Väärtustame õppijate koolis veedetud aega, pannes erilist rõhku efektiivsetele õppemeetoditele. Õppest suure osa moodustab erialane praktika", "Kvaliteedijuhtimise eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti kvaliteedijuhtimise ja teiste ärinduserialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon, keda juhtis London School of Economics esindaja, õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Kvaliteedijuhtimise õppekava Eesti Ettevõtluskõrgkoolis Mainor on koostatud koostöös Eesti Kvaliteediühinguga ja lähtub kvaliteedispetsialisti VI taseme kutsestandardist. Lõpetajatel on võimalik taotleda kutsetunnistust.", "Kvaliteedijuhtimise eriala on võimalik õppida täismahus Tallinna õppekeskuses. Tartu õppekeskuses on võimalik kogu õppekava läbida, kui kvaliteedijuhtimise eriala valinuid on Tartus vähemalt 15. Muul juhul on Tartu õppekeskuses võimalik läbida õppest ligi kaks kolmandikku. Erialaõppe moodul toimub sel juhul Tallinnas.", "Õpe toimub mõlemas linnas kaugõppena, mis võimaldab käia neljapäevast pühapäevani toimuval sessioonil õppimas ka teises linnas. Tartust saabunud üliõpilastel on võimalik leida soodsat majutust EEK tudengite hostelis, mis asub Ülemiste rongipeatusest viie- ja Tallinna õppekeskusest kaheminutilise jalutustee kaugusel.", "Praktiline kõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on kõrgharidus professionaalsete osapoolte vaheline võrdne partnerlus.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle kvaliteedispetsialistina või sarnaseid tööülesandeid sisaldaval ametikohal", "Omab vajalikke kompetentse, et edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "On valmis tegutsema muutuvas keskkonnas, oskab toimida paindlikult ja loominguliselt vastavalt olukorrale ja organisatsiooni vajadustele", "Loob, haldab ja hindab organisatsiooni kvaliteedijuhtimissüsteemi, lähtudes organisatsiooni spetsiifikast, eesmärkidest ning kvaliteedipoliitikast", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab tööks vajalikke suhtlus- ning koostööoskusi ning infotehnoloogilisi pädevusi."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/kvaliteedijuhtimine",
        spots: 30,
        duration: 3,
        studyLocation: ["Tallinn", "Tartu"],
        eap: 180,
        cost: "3640€/aastas",
        modules: [
            Module(
                module: "Kvaliteedijuhtimise erialaõppe moodul",
                courses: [
                    Course(name: "Kliendisuhete juhtimine", eapCount: 5),
                    Course(name: "Protessijuhtimine", eapCount: 8),
                    Course(name: "Kvaliteedijuhtimissüsteemi loomine organisatsioonis", eapCount: 10),
                    Course(name: "Kommunikatsioonijuhtimine", eapCount: 4),
                    Course(name: "Muudatuste juhtimine", eapCount: 7),
                    Course(name: "Juhtimissüsteemi hindamine", eapCount: 7),
                    Course(name: "Andmekogumine ja -analüüs", eapCount: 4),
                    Course(name: "Projektijuhtimine", eapCount: 8),
                    Course(name: "Meeskonna juhtimine", eapCount: 6),
                    Course(name: "Riskijuhtimine", eapCount: 3),
                    Course(name: "Kvaliteet erinevates valdkondades", eapCount: 2),
                    Course(name: "Auditeerimine", eapCount: 3)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Ettevõttepraktika", eapCount: 12),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Ainetöö", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10 )
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Äri- ja juhtimiseetika", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3)
                ]
            ),
            Module(
                module: "Ettevõtlusõppe moodul",
                courses: [
                    Course(name: "Äriprotesside moodul", eapCount: 15),
                    Course(name: "Ettevõtlusmoodul", eapCount: 15)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Avalik esinemine", eapCount: 2)
                ]
            ),
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Õigusõpetus", eapCount: 3),
                    Course(name: "Majandusteooria", eapCount: 5),
                    Course(name: "Tervisepsühholoogia ja töökeskkond", eapCount: 3)
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Personalijutimine",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Personalijuhtimise erialal omandad vajalikud teadmised ja oskused inimvara hoidmiseks ja arendamiseks. Õpiväljundite saavutamisel omad head arusaama kõikidest personalijuhtimise töövaldkondadest ja nende seostest. Õppekava toetab oskust koostada personali- või oma valdkonna eelarvet, juhtida protsesse ja projekte.", "Personal on organisatsiooni suurim vara ja selle oskuslik juhtimine organisatsiooni edu võti. Personalijuhtimise eriala eripäraks Ettevõtluskõrgkoolis Mainor on indiviidikeskse lähenemise väärtustamine ja tuginemine psühholoogiaalastele teadmistele.", "• Kas soovid luua väärtust organisatsioonile ja teha tähendusrikast tööd?", "• Kas tunned huvi psühholoogia ja selle rakendusvõimaluste vastu?", "• Kas tahad olla juhtkonna partneriks personaliga seonduvates küsimustes ning olla tööõnne kujundaja?", "• Kas soovid töötada personalijuhina, HR-partnerina, osakonnajuhina, personalispetsialistina, personaliassistendina, büroojuhatajana, personaliadministraatorina või personalikonsultandina?", "• Kui vastasid vähemalt ühele küsimusele jaatavalt, on personalijuhtimise eriala mõeldud Sulle.", "Õppemeetodite valikul lähtume põhimõttest, et teoreetilised teadmised peavad saama ka praktikas läbi proovitud. Õppes kasutatakse palju interaktiivseid õppemeetodeid ning probleemi- ja projektipõhist õpet.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal julgeme arvata, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Õppest suure osa moodustab erialane praktika", "Personalijuhtimise eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti personalijuhtimise ja teiste ärinduserialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon, keda juhtis London School of Economics esindaja, õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Personalijuhtimise eriala õppeprogramm on koostatud ja õpetamine toimub koostöös personalispetsialistidega rahvusvahelise meeskonnaga suurettevõtetest nagu G4S, Grant Thornton, Abc Grupp, Indoor Group AS, Eesti Teed AS, ABB AS ja teised.", "Oma varasemat kogemust ja õpinguid, mille sisu on õppekavaga sama, saad lasta arvestada, et vähendada oma õppekoormust ja õppemaksu. Tutvu ka järelmaksuvõimalust pakkuva Mainori Kõrgharidusfondiga. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd ja praktikad saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat väärtust oma ettevõttele või tööandjale.", "Personalijuhtimise eriala on võimalik õppida täismahus Tallinna õppekeskuses. Tartu õppekeskuses on võimalik kogu õppekava läbida, kui personalijuhtimise eriala valinuid on Tartus vähemalt 15. Muul juhul on Tartu õppekeskuses võimalik läbida õppest kaks kolmandikku. Erialaõppe moodul toimub sel juhul Tallinnas.", "Õpe toimub mõlemas linnas kaugõppena, mis võimaldab käia neljapäevast pühapäevani toimuval sessioonil õppimas ka teises linnas. Tartust saabunud üliõpilastel on võimalik leida soodsat majutust EEK tudengite hostelis, mis asub Ülemiste rongipeatusest viie- ja Tallinna õppekeskusest kaheminutilise jalutustee kaugusel.", "Praktiline kõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on kõrgharidus professionaalsete osapoolte vaheline võrdne partnerlus.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["Meie vilistlased on leidnud rakendust personalijuhi või -spetsialistina, HR partnerina, talendi- või värbamisjuhina, personali arendamise ja koolituse valdkonnas ning juhtkonna partneritena personaliga seonduvas. Omandatud oskused ja teadmised toetavad toimetulekut mistahes meeskonna kujundamisel ja juhtimisel ning samuti väike- või startup-ettevõtte juhina. Nominaalajaga lõpetamise korral on võimalik koos diplomiga taotleda PARE kutsetunnistust tasemel personalijuht 6."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/personalijuhtimine",
        spots: 30,
        duration: 3,
        studyLocation: ["Tallinn", "Tartu"],
        eap: 180,
        cost: "3640€/aastat",
        modules: [
            Module(
                module: "Ettevõtlusõppe moodul",
                courses: [
                    Course(name: "Äriprotesside moodul", eapCount: 15),
                    Course(name: "Ettevõtlusmoodul", eapCount: 15)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Avalik esinemine", eapCount: 2)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Äri- ja juhtimiseetika", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3)
                ]
            ),
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Õigusõpetus", eapCount: 3),
                    Course(name: "Tööõigus ja lepingud", eapCount: 4),
                    Course(name: "Majandusteooria", eapCount: 5),
                    Course(name: "Projektijuhtimine", eapCount: 3),
                    Course(name: "Tervisepsühholoogia ja töökeskkond", eapCount: 3)
                ]
            ),
            Module(
                module: "Personalijuhtimise erialaõppe moodul",
                courses: [
                    Course(name: "Personaliarvestus ja personalidokumendid", eapCount: 5),
                    Course(name: "Isiksuse- ja sotsiaalpsühholoogia", eapCount: 4),
                    Course(name: "Strateegiline personalijuhtimine", eapCount: 5),
                    Course(name: "Tööturg ja personaliplaneerimine", eapCount: 5),
                    Course(name: "Finantsjuhtimine", eapCount: 3),
                    Course(name: "Hindamine ja palgakorraldus", eapCount: 4),
                    Course(name: "E-lahendused personalitöös", eapCount: 2),
                    Course(name: "Mitmekesisus", eapCount: 3),
                    Course(name: "Töötajate arendamine", eapCount: 5),
                    Course(name: "Tööõiguse praktikum", eapCount: 2),
                    Course(name: "Positiivne psühholoogia", eapCount: 2),
                    Course(name: "Teenuste disain", eapCount: 3),
                    Course(name: "Müük ja kommunikatsioon", eapCount: 3),
                    Course(name: "Personali värbamine ja karjäärijuhtimine", eapCount: 5),
                    Course(name: "Kultuurikeskkond", eapCount: 3),
                    Course(name: "Sündmusturundus", eapCount: 2),
                    Course(name: "Töökorraldus ja koostöö organisatsioonis", eapCount: 4)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Ettevõttepraktika", eapCount: 12),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Ainetöö", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10 )
                ]
            ),
        ]
    ),
    majorsMinors(
        name: "Turismi- ja Restoraniettevõtlus",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Restoraniettevõtluse erialal õpid looma unikaalset elamust pakkuvaid toitlustus-, turismi- ja elamusteenuseid. Teenuste disain on oskus, mida saab õppida. Õpid olema uue põlvkonna ettevõtja, kes on samavõrd kodus nii kliendikogemuse kujundamises kui ka äriplaneerimises ja turunduses.See on eriala Sulle, kui soovid luua omaenda toitlustus- või turismiettevõtte, kus rõhk on elamusel ja emotsioonil. Samuti on see eriala Sulle, kui Sa juba töötad turismi-, majutus- või toitlustusvaldkonnas ja soovid värskeid teadmisi või areneda spetsialistist juhiks.", "Õpe toimub kaugõppes ja töökohapõhise õppena. See tähendab, et pool õppest toimub koolis, teine pool aga praktilise tegevusena erialasel töökohal. Töökohapõhine õpe on laialt levinud Skandinaavias ja kogub populaarsust ka Eestis. Sel moel õppimine on efektiivsem kui tavaõpe ning annab lisaks teadmistele ka palju praktilisi kogemusi. Seetõttu eeldame, et iga üliõpilane asub hiljemalt esimese õppeaasta keskpaigaks tööle turismi- või toitlustusvaldkonna ettevõttesse. Vajadusel aitame igal üliõpilasel leida talle sobiva töökoha koos õppekava partneritega.", "Lisaks erialaoskustele omandad restoraniettevõtluse erialal ka edasiseks karjääriks vajalikke juhtimis-, suhtlemis-, analüüsi-, õigus- ja majandusalaseid teadmisi. Sinu õppejõudude seas on oma valdkonna kogenud praktikud, paljusid ettevõtteid nõustanud koolitajad ning Eesti tuntud majandus- ja ettevõtlusalased arvamusliidrid.", "Oma varasemat kogemust ja õpinguid, mille sisu on õppekavaga sama, saad lasta arvestada, et vähendada oma õppekoormust ja õppemaksu. Tutvu ka järelmaksuvõimalust pakkuva Mainori Kõrgharidusfondiga. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd ja praktikad saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat väärtust oma ettevõttele või tööandjale.", "Restoraniettevõtluse eriala on võimalik õppida täismahus Tallinna õppekeskuses. Tartu õppekeskuses on võimalik läbida esimene õppeaasta. Alates teisest aastast toimub õpe erialasel töökohal (mis võib asuda ka Tartus või mujal) ja auditoorne õpe Tallinnas.", "Auditoorne õpe toimub mõlemas linnas kaugõppena, mis võimaldab käia neljapäevast pühapäevani toimuval sessioonil õppimas ka teises linnas. Tartust saabunud üliõpilastel on võimalik leida soodsat majutust EEK tudengite hostelis, mis asub Ülemiste rongipeatusest viie- ja Tallinna õppekeskusest minutilise jalutustee kaugusel.", "Praktiline kõrgharidus nõuab õppijate ja kooli tihedat koostööd. Seetõttu ootame kandideerima inimesi, kes on valinud eriala teadlikult, kellel on selge plaan, miks soovitakse haridust omandada, kõrge motivatsioon õppida ja valmidus kaasa mõelda, kuidas õpet veel paremini korraldada. Meie jaoks on kõrgharidus professionaalsete osapoolte vaheline võrdne partnerlus"],
        outcomes: ["Omab vajalikke pädevusi, et edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "Oskab arendada turismitooteid ja -teenuseid arvestades muutuva keskkonna, ettevõtte eesmärkide ning turuvajadusega", "Lahendab tulemuslikult erialaseid probleeme, toimides paindlikult ja loominguliselt vastavalt olukorrale, ettevõtte vajadustele ja väärtustele", "On iseseseisev, vastutustundlik ning eetiline töötaja või tööandja ning korraldab tegevusi lähtuvalt jätkusuutlikku ettevõtluse põhimõtetest", "Valdab tööks vajalikke suhtlus- ja koostööoskusi ning omab infotehnoloogilisi pädevusi."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/rakendusk%C3%B5rgharidus%C3%B5pe/eriala/restoraniettev%C3%B5tlus",
        spots: 30,
        duration: 3,
        studyLocation: ["Tallinn", "Tartu"],
        eap: 195,
        cost: "3640€/aastas",
        modules: [
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Organisatsioonikäitumine", eapCount: 4),
                    Course(name: "Suhtlemispsühholoogia", eapCount: 4),
                    Course(name: "Eraisiku rahandus", eapCount: 2),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Avalik esinemine", eapCount: 2)
                ]
            ),
            Module(
                module: "Ettevõtlusõppe moodul",
                courses: [
                    Course(name: "Äriprotesside moodul", eapCount: 15),
                    Course(name: "Ettevõtlusmoodul", eapCount: 15)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Andmeanalüüs", eapCount: 5),
                    Course(name: "Äri- ja juhtimiseetika", eapCount: 2),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 3)
                ]
            ),
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Projektijuhtimine", eapCount: 3),
                    Course(name: "Õigusõpetus", eapCount: 3),
                    Course(name: "Finantsjuhtimine ja hinnakujundus", eapCount: 4),
                    Course(name: "Personalijuhtimine", eapCount: 5)
                ]
            ),
            Module(
                module: "Teenusedisaini ja turnuduse õppe moodul",
                courses: [
                    Course(name: "Teenuste ja organisatsiooni turundus turismi- ja restoraniettevõtluses", eapCount: 5),
                    Course(name: "Foto- ja videograafia", eapCount: 3),
                    Course(name: "Sündmuskorraldus ja -turundus", eapCount: 3),
                    Course(name: "Teenusettevõtte IT-lahendused", eapCount: 4),
                    Course(name: "Teenusedisain", eapCount: 5)
                ]
            ),
            Module(
                module: "Turismi- ja restoraniettevõtluse erialaõppe moodul",
                courses: [
                    Course(name: "Joogiõpetus", eapCount: 2),
                    Course(name: "Toiduõpetus ja toidukultuurid", eapCount: 3),
                    Course(name: "Turismisihtkoha ja -toote arendus", eapCount: 5),
                    Course(name: "Toitlustusettevõtte töökorraldus", eapCount: 5),
                    Course(name: "Protsessijuhtimine", eapCount: 3),
                    Course(name: "Maailma turismigeograafia", eapCount: 3),
                    Course(name: "Sissejuhatus turismi- ja toitlustusvaldkonda", eapCount: 6),
                    Course(name: "Teenindusjuhtimine", eapCount: 5),
                    Course(name: "Majutuskorraldus", eapCount: 2),
                    Course(name: "Protokoll ja etikett", eapCount: 2),
                    Course(name: "Kultuuridevaheline kommunikatsioon ärikeskkonnas", eapCount: 4),
                    Course(name: "Kvaliteedijuhtimine turismi- ja restoraniettevõtluses", eapCount: 3)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Ettevõttepraktika", eapCount: 12),
                    Course(name: "Erialapraktika", eapCount: 15),
                    Course(name: "Ainetöö", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10 )
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Loovus ja Äriinnovatsioon",
        level: .bachelor,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Keskharidus"),
            Requirements(term: "Essee", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
        ],
        description: ["Loovuse ja äriinnovatsiooni erialal õpid kuidas saada ettevõtjaks, toote- ja teenusejuhiks või ettevõtte juhiks. Parimatele äritavadele toetuv õppekava annab teadmised kuidas uuenduslikke ärimudeleid avastada ja arendada, kaasasutajaid ja töötajaid inspireerida ning kasvavat organisatsiooni juhtida. Peaaegu veerand õppekavast koosneb tõsieluliste probleemide lahendamisest osana praktikast eri Euroopa turgudel tegutsevates ettevõtetes.", "Programm pakub Eestis ainulaadset võimalust õppida ühe semestri jooksul Eesti Ettevõtluskõrgkooli Mainor partnerülikoolides:", "• Vilniuse Rakenduskõrgkoolis Leedus", "• Porto Polütehnilises Instituudis Portugalis", "Erinevalt Erasmuse vahetusprogrammist õpid välismaal olles samu aineid, mida oleksid ka Eesti Ettevõtluskõrgkoolis Mainor õppinud. See tähendab, et saad programmi ikka kolme aastaga lõpetada– reisimine ja akadeemiline seiklus on õppe osa, mitte miski, mida pead õpingute kõrvalt tegema.", "Loovus ja äriinnovatsioon, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2018 anti loovus ja äriinnovatsioon õppekava õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang.", "Ülemiste City töötajatele ja Eesti Ettevõtluskõrgkool Mainor vilistlastele kehtib õppemaksu soodustus 10%."],
        outcomes: ["On valmis tegutsema muutuvas keskkonnas, oskab toimida paindlikult ja loominguliselt vastavalt olukorrale ja organisatsiooni vajadustele", "On valmis erialaselt töötama omandatud pea- ja kõrvaleriala valdkonnas nii individuaalselt kui meeskonnas, nii tööandja kui töövõtjana", "Näitab initsiatiivi ja loovust projektide/tegevuste algatamisel ning vastutustunnet, juhtimis- ja meeskonnatööoskusi nende elluviimisel", "Tunneb ära kasutamata turuvõimalused ning töötab välja lahendused nii uue toote, teenuse kui muu taolise näol", "On omandanud erialased kompetentsid, mis võimaldavad asuda erialasele tööle või edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "Käitub tööalaselt iseseisvalt, vastutustundlikult ja eetiliselt", "Valdab tööks vajalikke suhtlusoskusi ning infotehnoloogilisi teadmisi."],
        language: .inglise,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/loovus_ja_%C3%A4riinnovatsioon",
        spots: 30,
        duration: 3,
        studyLocation:  ["Tallinn"],
        eap: 180,
        cost: "4720€/aastas",
        modules: [
            Module(
                module: "Ettevõtte juhtimise põhiõppe moodul",
                courses: [
                    Course(name: "Ettevõtluse alused", eapCount: 3),
                    Course(name: "Personalijuhtimine", eapCount: 5),
                    Course(name: "Juhtimine", eapCount: 5),
                    Course(name: "Meeskonnatöö", eapCount: 5),
                    Course(name: "Õigusõpetuse alused ja dokumentatsioon", eapCount: 3),
                    Course(name: "Majanduse alused", eapCount: 4),
                    Course(name: "Äri-eetika", eapCount: 4),
                    Course(name: "Ettevõtete sotsiaalne vastutus", eapCount: 4),
                    Course(name: "Müük ja turundus", eapCount: 10),
                    Course(name: "Ärianalüüs", eapCount: 5),
                    Course(name: "Ettevõtte finantsjuhtimine", eapCount: 4)
                ]
            ),
            Module(
                module: "Praktikate ja kirjalike tööde moodul",
                courses: [
                    Course(name: "Lõputöö seminar", eapCount: 5),
                    Course(name: "Praktika I", eapCount: 15),
                    Course(name: "Lõputöö", eapCount: 10)
                ]
            ),
            Module(
                module: "Alusõppe moodul",
                courses: [
                    Course(name: "Eesti keel I", eapCount: 3),
                    Course(name: "Eesti keel II", eapCount: 3),
                    Course(name: "Enesejuhtimine kõrgkoolis", eapCount: 3),
                    Course(name: "Eesti keel III", eapCount: 3),
                    Course(name: "Eesti keel IV", eapCount: 3),
                    Course(name: "Organisatsioonikäitumine", eapCount: 2),
                    Course(name: "Avalik esinemine", eapCount: 2),
                    Course(name: "Kommunikatsioon", eapCount: 5)
                ]
            ),
            Module(
                module: "Uurimistöö metoodika moodul",
                courses: [
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Akadeemiline kirjutamine", eapCount: 4),
                    Course(name: "Andmeanalüüs", eapCount: 4)
                ]
            ),
            Module(
                module: "Loovuse ja äriinnovatsiooni erialaõppe moodul",
                courses: [
                    Course(name: "Praktika II", eapCount: 20),
                    Course(name: "Teadmine ja teadusfilosoofia", eapCount: 5),
                    Course(name: "Ettevõtlikkus", eapCount: 6),
                    Course(name: "Innovatsiooni strateegia", eapCount: 5),
                    Course(name: "Ärimudelid ja strateegiline juhtimine", eapCount: 10),
                    Course(name: "Loovus teadusliku uurimise objektina", eapCount: 5),
                    Course(name: "Loomingulisus", eapCount: 5),
                    Course(name: "Individuaalne loovus", eapCount: 5)
                ]
            ),
        ]
    ),
//    majorsMinors(
//        name: "Turismiettevõtlus",
//        level: .bachelor,
//        type: .sotsiaal,
//        requirements: [
//            Requirements(term: "Keskharidus"),
//            Requirements(term: "Essee", percentage: 30),
//            Requirements(term: "Vestlus", percentage: 50),
//            Requirements(term: "Õpimotivatsioon ja ettevõtlik eluhoiak", percentage: 20)
//        ],
//        description: ["Turismiettevõtluse erialal õpid looma unikaalset elamust pakkuvaid turismi-, toitlustus- ja elamusteenuseid. Teenuste disain on oskus, mida saab õppida. Õpid olema uue põlvkonna ettevõtja, kes on samavõrd kodus nii kliendikogemuse kujundamises kui ka äriplaneerimises ja turunduses.", "See on eriala Sulle, kui soovid luua omaenda turismi- või toitlustusettevõtte, kus rõhk on elamusel ja emotsioonil. Samuti on see eriala Sulle, kui Sa juba töötad turismi-, majutus- või toitlustusvaldkonnas ja soovid värskeid teadmisi või areneda spetsialistist juhiks. "],
//        outcomes: ["Omab vajalikke pädevusi, et edasi õppida magistriõppes ning on valmis ennast pidevalt täiendama", "Oskab arendada turismitooteid ja -teenuseid arvestades muutuva keskkonna, ettevõtte eesmärkide ning turuvajadusega", "Lahendab tulemuslikult erialaseid probleeme, toimides paindlikult ja loominguliselt vastavalt olukorrale, ettevõtte vajadustele ja väärtustele", "On iseseseisev, vastutustundlik ning eetiline töötaja või tööandja ning korraldab tegevusi lähtuvalt jätkusuutlikku ettevõtluse põhimõtetest", "Valdab tööks vajalikke suhtlus- ja koostööoskusi ning omab infotehnoloogilisi pädevusi."],
//        language: .eesti,
//        majorWebsite: "https://www.eek.ee/rakendusk%C3%B5rgharidus%C3%B5pe/eriala/turismiettev%C3%B5tlus",
//        spots: 30,
//        duration: 3,
//        studyLocation: ["Tallinn", "Tartu"],
//        eap: 180,
//        cost: "3640€/aastas"
//    )
]
