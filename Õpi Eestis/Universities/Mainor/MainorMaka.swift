let mainorMaka = [
    majorsMinors(
        name: "Inimressursside Juhtimine",
        level: .masters,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "Eelmise õppeastme tulemused", percentage: 20),
            Requirements(term: "Motivatsioonikiri", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õppemaks 4240€ aastas")
        ],
        description: ["Inimressursside juhtimise magistriprogramm on Sulle, kui soovid kujuneda vajalike oskustega liidriks. Tunnustatud õppejõudude ja edukate praktikute juhendamisel õpid koos kogenud spetsialistidest ja edukate kursusekaaslastega juhtima muutusi, mõtlema igal ametikohal nagu ettevõtja ja ehitama üles tervet organisatsiooni. Eriala annab ka vajaliku vundamendi, et teha karjääri spetsialistist juhiks või luua oma ettevõte.", "Lisaks Eestis ainulaadsele psühholoogiapõhisele tuumprogrammile omandad ka arusaama tänapäevastest ärimudelitest, juhtimise infosüsteemidest, andmetöötlusest ja loovuse rollist juhtimises. Uue aja juhile kohaselt arendad nii oskusi kui laiendad silmaringi. Õpid saavutama organisatsioonis mõõdetavaid tulemusi, tuues välja inimestes parima.", "Sinu õppejõudude seas on oma valdkonna kogenud praktikud, paljusid ettevõtteid nõustanud koolitajad ning Eesti tuntud majandus- ja ettevõtlusalased arvamusliidrid. Õppemeetodite valikul lähtume põhimõttest, et teoreetilised teadmised peavad saama ka praktikas läbi proovitud. Õppes kasutatakse palju interaktiivseid õppemeetodeid ning probleemi- ja projektipõhist õpet.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat praktilist väärtust oma ettevõttele või tööandjale.", "Inimressursside juhtimise eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti inimressursside juhtimise ja teiste ärinduserialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon, keda juhtis London School of Economics esindaja, õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Inimressursside juhtimise õppeprogramm on koostatud koostöös laia partnerite ringiga. Õppeaineid viivad läbi juhid ja tippspetsialistid erineva mastaabi ja profiiliga ettevõtetest nagu Telia, Technopolis Ülemiste﻿, GoWorkaBit, Valio ja teised."],
        outcomes: ["Lähtub omandatud pädevuste rakendamisel teostatud mõjuanalüüsist, valdkondlikest uuendustest ja praktilistest lahendustest.", "Püstitab eesmärke ja lahendab erialaseid probleeme ning uurimisülesandeid nii individuaalselt, meeskonnaliikmena kui meeskonna juhina, kasutades selleks tänapäevaseid ja kohaseid meetodeid ning tehnoloogiaid", "On omandanud teadusliku käsitluse põhimõtted ja konstruktiivse mõtlemise oskuse ning rakendab neid eesmärkide saavutamiseks ja tööalaste otsuste tegemiseks", "Loob sobiva keskkonna protsesside ja inimeste juhtimiseks organisatsioonis", "Arvestab oma töös valdkonna kutse-eetika, ühiskonna normide ja kehtiva hea tavaga", "On omandanud pädevused valdkonnas töötamiseks, organisatsioonis vajalike uuringute läbiviimiseks ning organisatsiooni juhtimiseks ja arendamiseks", "Omab ettevalmistust töötamiseks valitud erialal spetsialistina ja/või keskastmejuhina ning on motiveeritud ja valmis pidevaks enesearenduseks ja doktoriõppeks."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/inimressursside_juhtimine",
        spots: 25,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "4240€/aastas",
        modules: [
            Module(
                module: "Uurimistöö metoodika",
                courses: [
                    Course(name: "Andmetöötlus ja visualiseerimine", eapCount: 5),
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Äriprotsesside analüüs ja juhtimine", eapCount: 4)
                ]
            ),
            Module(
                module: "Juhtimise moodul",
                courses: [
                    Course(name: "Ettevõtlik juhtimine", eapCount: 6),
                    Course(name: "Sotsiaalne vastutus ja eetika", eapCount: 3),
                    Course(name: "Terve organisatsioon", eapCount: 3),
                    Course(name: "Individuaalse arengu juhtimine", eapCount: 3),
                    Course(name: "Talendijuhtimine ja hoidmine", eapCount: 3)
                ]
            ),
            Module(
                module: "Majanduse moodul",
                courses: [
                    Course(name: "Majanduskeskkonda kujundav õigusruum", eapCount: 3),
                    Course(name: "Globaalne majandus ja finantsturud", eapCount: 4),
                    Course(name: "Finantsanalüüs ja ärirahandus", eapCount: 4),
                    Course(name: "Juhtimisökonoomika", eapCount: 4),
                    Course(name: "Finantsjuhtimine", eapCount: 3)
                ]
            ),
            Module(
                module: "Äriprotsesside juhtimise moodul",
                courses: [
                    Course(name: "Strateegiline juhtimine", eapCount: 3),
                    Course(name: "Juhtimise infosüsteemid", eapCount: 3),
                    Course(name: "Infopõhine juhtimine", eapCount: 3),
                    Course(name: "Kvaliteedijuhtimissüsteemid", eapCount: 3),
                    Course(name: "Modernsed ärimudelid", eapCount: 3)
                ]
            ),
            Module(
                module: "Inimressursside juhtimise erialaõpe",
                courses: [
                    Course(name: "Paindlikud ja turvalised töösuhted", eapCount: 3),
                    Course(name: "Loovus ja juhtimine", eapCount: 3),
                    Course(name: "Suhete juhtimine", eapCount: 4),
                    Course(name: "Organisatsiooni arengu juhtimine", eapCount: 4),
                    Course(name: "HRM strateegiad ja poliitikad", eapCount: 4),
                    Course(name: "Juhtimise konsulteerimine", eapCount: 3),
                    Course(name: "Isiksuse psühholoogia", eapCount: 4)
                ]
            ),
            Module(
                module: "Magistritöö moodul",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 5),
                    Course(name: "Magistritöö", eapCount: 25)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Finantslahenduste Juhtimine",
        level: .masters,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "Eelmise õppeastme tulemused", percentage: 20),
            Requirements(term: "Motivatsioonikiri", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õppemaks 4240€ aastas")
        ],
        description: ["Finantslahenduste juhtimise magistriprogramm on Sulle, kui soovid kujuneda tänapäevaste oskustega liidriks. Tunnustatud õppejõudude ja edukate praktikute juhendamisel õpid koos kogenud kaaslastega juhtima finantslahendusi kogu tarneahelas, korraldama investorsuhtlust, juhtima mõõdikute- ja infopõhiselt ning ehitama üles tervet organisatsiooni. Eriala annab ka vajaliku vundamendi, et teha karjääri spetsialistist juhiks või luua oma ettevõte.", "Lisaks Eestis ainulaadsele ettevõtliku juhtimise tuumprogrammile omandad ka arusaama tänapäevastest ärimudelitest, juhtimise infosüsteemidest ja isikliku arengu tähtsusest juhtimises. Uue aja juhile kohaselt arendad nii oskusi kui laiendad silmaringi. Õpid saavutama kuluefektiivseid tulemusi ja tegema analüüsipõhiseid juhtimisotsuseid.", "Õpe toimub kaugõppes, mis sobib õppimiseks töö ja pere kõrvalt. Meie vilistlaste ja varem teistes kõrgkoolides õppinud tudengite tagasiside põhjal saame kinnitada, et meil on Eesti parim töö kõrvalt õppimist toetav õppekorraldus. Õpe toimub keskmiselt kord kuus neljapäevast pühapäevani, millele lisandub iseseisev õppimine. Sessioonidena toimuv õpe on jõukohane ka täiskohaga töötavale inimesele. Õppekorraldus on üles ehitatud selliselt, et kõik uurimistööd saad mugavalt siduda oma tööga. Sellega säästad enda aega, ühtlasi lood aga ka suuremat väärtust oma ettevõttele või tööandjale.", "Finantslahenduste juhtimise eriala, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti finantslahenduste juhtimise ja teiste ärinduserialade õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang. Eriliste tugevustena nägi ekspertide komisjon, keda juhtis London School of Economics esindaja, õppe elulähedust, õppekavade pidevat arendamist, üliõpilaste ja kooli lähedast suhtlust ning tihedat koostööd tööandjatega.", "Finantslahenduste juhtimise eriala õppejõudude seas on liidrid ja tippspetsialistid oma valdkonna juhtivatest ettevõtetest nagu Ernst & Young, Eesti Energia, Swedbank, KredEx ja teised."],
        outcomes: ["Lähtub omandatud pädevuste rakendamisel teostatud mõjuanalüüsist, valdkondlikest uuendustest ja praktilistest lahendustest.", "Püstitab eesmärke ja lahendab erialaseid probleeme ning uurimisülesandeid nii individuaalselt, meeskonnaliikmena kui meeskonna juhina, kasutades selleks tänapäevaseid ja kohaseid meetodeid ning tehnoloogiaid", "On omandanud teadusliku käsitluse põhimõtted ja konstruktiivse mõtlemise oskuse ning rakendab neid eesmärkide saavutamiseks ja tööalaste otsuste tegemiseks", "Loob sobiva keskkonna protsesside ja inimeste juhtimiseks organisatsioonis", "Arvestab oma töös valdkonna kutse-eetika, ühiskonna normide ja kehtiva hea tavaga", "On omandanud pädevused valdkonnas töötamiseks, organisatsioonis vajalike uuringute läbiviimiseks ning organisatsiooni juhtimiseks ja arendamiseks", "Omab ettevalmistust töötamiseks valitud erialal spetsialistina ja/või keskastmejuhina ning on motiveeritud ja valmis pidevaks enesearenduseks ja doktoriõppeks."],
        language: .eesti,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/finantslahenduste_juhtimine",
        spots: 25,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "4240€/aastas",
        modules: [
            Module(
                module: "Uurimistöö metoodika",
                courses: [
                    Course(name: "Andmetöötlus ja visualiseerimine", eapCount: 5),
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Äriprotsesside analüüs ja juhtimine", eapCount: 4)
                ]
            ),
            Module(
                module: "Juhtimise moodul",
                courses: [
                    Course(name: "Ettevõtlik juhtimine", eapCount: 6),
                    Course(name: "Sotsiaalne vastutus ja eetika", eapCount: 3),
                    Course(name: "Terve organisatsioon", eapCount: 3),
                    Course(name: "Individuaalse arengu juhtimine", eapCount: 3),
                    Course(name: "Talendijuhtimine ja hoidmine", eapCount: 3)
                ]
            ),
            Module(
                module: "Majanduse moodul",
                courses: [
                    Course(name: "Majanduskeskkonda kujundav õigusruum", eapCount: 3),
                    Course(name: "Globaalne majandus ja finantsturud", eapCount: 4),
                    Course(name: "Finantsanalüüs ja ärirahandus", eapCount: 4),
                    Course(name: "Juhtimisökonoomika", eapCount: 4),
                    Course(name: "Finantsjuhtimine", eapCount: 3)
                ]
            ),
            Module(
                module: "Äriprotsesside juhtimise moodul",
                courses: [
                    Course(name: "Strateegiline juhtimine", eapCount: 3),
                    Course(name: "Juhtimise infosüsteemid", eapCount: 3),
                    Course(name: "Infopõhine juhtimine", eapCount: 3),
                    Course(name: "Kvaliteedijuhtimissüsteemid", eapCount: 3),
                    Course(name: "Modernsed ärimudelid", eapCount: 3)
                ]
            ),
            Module(
                module: "Finantslahenduste juhtimise erialaõpe",
                courses: [
                    Course(name: "Finantslahenduste juhtimine", eapCount: 4),
                    Course(name: "Ettevõtte riskijuhtimine ja sisekontroll", eapCount: 3),
                    Course(name: "Ettevõtte väärtuse hindamine", eapCount: 3),
                    Course(name: "Ettevõtte rahandus", eapCount: 4),
                    Course(name: "IT lahendused finantsjuhtimises", eapCount: 3),
                    Course(name: "Finantsturud, -institutsioonid ja investorsuhtlus", eapCount: 4),
                    Course(name: "Tarneahela finantseerimine", eapCount: 4)
                ]
            ),
            Module(
                module: "Magistritöö moodul",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 5),
                    Course(name: "Magistritöö", eapCount: 25)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Rahvusvaheline Ärijuhtimine",
        level: .masters,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Kõrgharidus"),
            Requirements(term: "Eelmise õppeastme tulemused", percentage: 20),
            Requirements(term: "Motivatsioonikiri", percentage: 30),
            Requirements(term: "Vestlus", percentage: 50),
            Requirements(term: "Õppemaks 4960€ aastas")
        ],
        description: ["Rahvusvaheline ärijuhtimise magistriprogramm aitab tänastel ja homsetel juhtidel mõista rahvusvahelise äri olemust. Piiriülesed ettevõtted ning tehingud on saanud meie ärimaailma lahutamatuks osaks ning ärimaastik ootab just selliseid juhte. See kõik nõuab visiooniga tarku ja kompetentseid juhte, kellel oleksid teadmised ja julgus suuri ning strateegilisi otsuseid vastu võtta. Seetõttu on õpe fokuseeritud tänapäevaste juhtimisomaduste arendamisele, ettevõtluse juhtimisele ja arendamisele ning terve ja tänapäevase organisatsiooni ülesehitusele.", "Magistriprogrammi väljatöötamises oleme kasutanud mitmete rahvusvaheliste ekspertide tuge ja soovitusi, arvamusi ning kaasanud Eesti tipp- ja keskastmejuhte. Meie õppejõududeks on Eesti ühed tunnustatuimad ning parimad juhid ja spetsialistid, kes jagavad enda kogemusi ning teadmisi elulähedasel ning praktilisel viisil.", "Meie magistriprogrammi eesmärgiks on:", "• arendada õppijast analüütiline ning meeskonnarolle tundev keskastme- või tippjuht, kes vastab tänapäevastele professionaalsele standardile", "• anda ettevõtlusest süsteemne ning lai ülevaade, toetades seda akadeemiliste teadmiste ja meetoditega", "• julgustada tudengeid märkama ja looma inter-distsiplinaarseid seoseid", "• õpetada tudengeid tuvastama ja märkama probleeme ning leidma neile sobivaid lahendusi etteantud aja- ja inforessursiga", "• valmistada tudengeid ette tööks, mis nõuavad kutsealast professionaalsust, iseseisvat algatusvõimet, juhiomadusi ning meeskonnatöö oskusi.", "Rahvusvahelise ärijuhtimise magistriprogramm viiakse läbi tugevas ning strateegilises koostöös Ülemiste City`ga﻿, mis on Baltikumi suurim ning kiiremini kasvav ärilinnak.", "Rahvusvaheline ärijuhtimine, nagu kõik meie õppekavad, on hinnatud ja akrediteeritud rahvusvahelise hindamiskomisjoni poolt. Viimati toimunud hindamisel aastal 2017 anti rahvusvahelise ärijuhtimise õpetamisele Eesti kõrghariduse kõrgeim võimalik hinnang."],
        outcomes: ["Lähtub omandatud pädevuste rakendamisel teostatud mõjuanalüüsist, valdkondlikest uuendustest ja praktilistest lahendustest.", "Püstitab eesmärke ja lahendab erialaseid probleeme ning uurimisülesandeid nii individuaalselt, meeskonnaliikmena kui meeskonna juhina, kasutades selleks tänapäevaseid ja kohaseid meetodeid ning tehnoloogiaid", "On omandanud teadusliku käsitluse põhimõtted ja konstruktiivse mõtlemise oskuse ning rakendab neid eesmärkide saavutamiseks ja tööalaste otsuste tegemiseks", "Loob sobiva keskkonna protsesside ja inimeste juhtimiseks organisatsioonis", "Arvestab oma töös valdkonna kutse-eetika, ühiskonna normide ja kehtiva hea tavaga", "On omandanud pädevused valdkonnas töötamiseks, organisatsioonis vajalike uuringute läbiviimiseks ning organisatsiooni juhtimiseks ja arendamiseks", "Omab ettevalmistust töötamiseks valitud erialal spetsialistina ja/või keskastmejuhina ning on motiveeritud ja valmis pidevaks enesearenduseks ja doktoriõppeks."],
        language: .inglise,
        majorWebsite: "https://www.eek.ee/bakalaureuse%C3%B5pe/eriala/rahvusvaheline_%C3%A4rijuhtimine",
        spots: 25,
        duration: 2,
        studyLocation:  ["Tallinn"],
        eap: 120,
        cost: "4960€/aastas",
        modules: [
            Module(
                module: "Juhtimise moodul",
                courses: [
                    Course(name: "Ettevõtlik juhtimine", eapCount: 6),
                    Course(name: "Sotsiaalne vastutus ja eetika", eapCount: 3),
                    Course(name: "Terve organisatsioon", eapCount: 3),
                    Course(name: "Individuaalse arengu juhtimine", eapCount: 3),
                    Course(name: "Talendijuhtimine ja hoidmine", eapCount: 3)
                ]
            ),
            Module(
                module: "Uurimistöö moodul",
                courses: [
                    Course(name: "Magistriseminar", eapCount: 6),
                    Course(name: "Uurimistöö meetodid", eapCount: 5),
                    Course(name: "Magistritöö", eapCount: 30)
                ]
            ),
            Module(
                module: "Äriprotsesside juhtimise moodul",
                courses: [
                    Course(name: "Strateegiline juhtimine", eapCount: 3),
                    Course(name: "Juhtimise infosüsteemid", eapCount: 3),
                    Course(name: "Tarneahela juhtimine", eapCount: 3),
                    Course(name: "Kvaliteedijuhtimissüsteemid", eapCount: 3),
                    Course(name: "Modernsed ärimudelid", eapCount: 3),
                    Course(name: "Äriprotsesside analüüs ja juhtimine", eapCount: 4)
                ]
            ),
            Module(
                module: "Majanduse moodul",
                courses: [
                    Course(name: "Majanduskeskkonda kujundav õigusruum", eapCount: 3),
                    Course(name: "Rahvusvaheline majandus ja finantsturud", eapCount: 4),
                    Course(name: "Finantsanalüüs ja ärirahandus", eapCount: 4),
                    Course(name: "Juhtimisökonoomika", eapCount: 4)
                ]
            ),
            Module(
                module: "Rahvusvahelise ärijuhtimise erialaõpe",
                courses: [
                    Course(name: "Erialased valikained", eapCount: 4),
                    Course(name: "Rahvusvaheline õigus", eapCount: 3),
                    Course(name: "Ettevõtte rahandus", eapCount: 3),
                    Course(name: "Rahvusvaheline turundus", eapCount: 3),
                    Course(name: "Rahvusvaheline organisatsiooni arengu juhtimine", eapCount: 3),
                    Course(name: "HRM strateegiad ja poliitikad", eapCount: 3),
                    Course(name: "Eesti keel I", eapCount: 3),
                    Course(name: "Eesti keel II", eapCount: 3)
                ]
            )
        ]
    ),
]
