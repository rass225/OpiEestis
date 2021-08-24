let lennuAkadeemiaRaka = [
    majorsMinors(
        name: "Lennuliiklusteenindus",
        level: .applied,
        type: .transport,
        requirements: [
            Requirements(term: "FEAST Test"),
            Requirements(term: "Intervjuu"),
            Requirements(term: "Tervisliku sobivuse kontroll")
        ],
        description: ["Nii nagu autodel on sõitmiseks vaja auto- ja laevadel mereteid, on õhusõidukitele loodud nähtamatud rajad õhuruumis. Selleks, et tagada lennuliikluse ohutu kulgemine mööda õhumarsruute, teevadki oma vastutusrikast tööd lennujuhid.", "Lennujuhi töö on korrapärase, turvalise ja kiire lennuliikluse tagamine Eesti õhuruumis. Pidades sidet pilootidega ning nähes neid radariekraanil, juhib ta neid, et lennukid oleksid alati üksteisest ohutus kauguses ja lennurajad ei ristuks. Lennujuht on piloodi silmad pimedas, udu või tormise ilma korral. Ta aitab pilootidel erinevates ilmastikutingimustes orienteeruda ning ohutult lennuväljal maanduda.", "Esimesel kahel aastal läbitakse alusained, omandatakse teadmisi tehnikaainetest, loodusteadustest, majandusest ja ettevõtlusest. 3. kursusel algab erialaõpe. Erialaõppe käigus saadakse teoreetilisi teadmisi ja praktilisi oskusi lennuliikluse korraldamisest.", "Igapäevase praktilise õppetöö käigus kasutatakse Baltimaades kõige kaasaegsemaid simulaatoreid. Lennujuhid omandavad kogemusi tornisimulaatoris. Sidelaboris õpitakse kasutama lennunduses olevat tehnikat. Koostöös Tartu Lennujaamaga toimub osa õppetööst ka angaaris, kus õpitakse õhusõidukite hoolduse ning ülesehituse kohta."],
        outcomes: ["Suhtub oma erialasesse tegevusse kõrgendatud vastutustundega, mis on suunatud lennuohutuse tagamisele", "Selgitab suuliselt ja kirjalikult eesti ja/või inglise keeles erialaga seonduvaid probleeme ning osaleb erialastes aruteludes", "Kasutab analüüsi- ja sünteesioskust oma valdkonnas", "Omab eeldusi õpingute jätkamiseks", "Omab rakenduskõrgharidusele ning rahvusvahelistele", "Lennundusstandarditele vastavaid pädevusi, mis võimaldavad töötada lennujuhiõpilasena radariga lähenemislennujuhtimise või seirega piirkondliku lennujuhtimise või lähilennujuhtimise üksustes ning lennuliiklusteeninduse valdkonna spetsialistina nii Eestis kui ka välismaal", "Tunneb meeskonnatöö iseärasusi ja tähtsust, töötades meeskonnas seostab erinevaid mõjusid keskkonna, ressursside, standardite ja inimese võimete vahel", "Omab süsteemset ülevaadet aeronavigatsiooniteeninduse süsteemist ja mõistab selle seoseid erinevate lennundustegevuse valdkondadega", "Rakendab omandatud erialaseid teadmisi ja oskusi mitmesugustes tööolukordades vastutades lennuohutuse nõuete täitmise eest."],
        language: .eesti,
        majorWebsite: "https://lennuakadeemia.ee/sisseastuja/oppekavad/lennuliiklusteenindus",
        spots: 8,
        duration: 4,
        studyLocation:  [.reola],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Sissejuhatus lennundusse", eapCount: 3),
                    Course(name: "Sissejuhatus majandusteooriasse", eapCount: 6),
                    Course(name: "Matemaatika alused", eapCount: 3),
                    Course(name: "Kõrgem matemaatika I", eapCount: 6),
                    Course(name: "Informaatika", eapCount: 3),
                    Course(name: "Insenerigraafika I*", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Ettevõtluse alused", eapCount: 6),
                    Course(name: "Sissejuhatus lennuliikluse korraldusse*", eapCount: 1),
                    Course(name: "Lennujaama maapealne teenindus*", eapCount: 6),
                    Course(name: "Statistika ja ökonomeetria alused", eapCount: 6),
                    Course(name: "Õhusõiduk ja selle sooritusvõimed", eapCount: 6),
                    Course(name: "Elektrotehnika*", eapCount: 6),
                    Course(name: "Eesti õigekeelsus ja väljendusõpetus", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Kehaliste võimete arendamine", eapCount: 3),
                    Course(name: "Projekti- ja tulemusjuhtimine lennutranspordis", eapCount: 3),
                    Course(name: "Ettevõtte juhtimise üldkursus", eapCount: 6),
                    Course(name: "Kvaliteedijuhtimise alused", eapCount: 3),
                    Course(name: "Lennuliikluse korraldamine*", eapCount: 6),
                    Course(name: "Militaar- ja üldlennundus*", eapCount: 3),
                    Course(name: "Logistika*", eapCount: 3),
                    Course(name: "Lennundusõigus", eapCount: 3),
                    Course(name: "Aerodünaamika", eapCount: 3),
                    Course(name: "Raadiotehnika alused", eapCount: 3),
                    Course(name: "Programmeerimise alused*", eapCount: 6),
                    Course(name: "Avioonika alused", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Psühholoogia alused", eapCount: 3),
                    Course(name: "Ärieetika ja kommunikatsioon", eapCount: 3),
                    Course(name: "Lennundusettevõtte töö korraldamine", eapCount: 6),
                    Course(name: "Lennutranspordi ökonoomika*", eapCount: 6),
                    Course(name: "Avaliku sektori majandus*", eapCount: 3),
                    Course(name: "Rahvusvaheline majandus ja lennundus*", eapCount: 3),
                    Course(name: "Turundus*", eapCount: 3),
                    Course(name: "Lendude planeerimine ja monitooring*", eapCount: 3),
                    Course(name: "Lennundusohutus", eapCount: 2),
                    Course(name: "Lennundusjulgestus", eapCount: 1),
                    Course(name: "Katsetehnika raadioelektroonikas*", eapCount: 3),
                    Course(name: "Remotely Piloted Aircraft (RPA) Operation and Mission Planning*", eapCount: 2),
                    Course(name: "Seire I*", eapCount: 3),
                    Course(name: "Vene keel 0 > A1*", eapCount: 6),
                    Course(name: "Lennunduse inglise keel", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Majandusarvestus ja lennundusettevõtte rahandus*", eapCount: 6),
                    Course(name: "Inimtegur lennujuhtimises", eapCount: 3),
                    Course(name: "Navigatsioon", eapCount: 3),
                    Course(name: "Lennundusõigus", eapCount: 3.5),
                    Course(name: "Lennundusmeteoroloogia", eapCount: 3),
                    Course(name: "Aeronavigatsiooniteabe teenindus", eapCount: 2),
                    Course(name: "Lennunduse raadioside", eapCount: 2.5),
                    Course(name: "Lennuliikluse korraldamine", eapCount: 4),
                    Course(name: "Õhusõidukid", eapCount: 3),
                    Course(name: "Seadmed ja süsteemid lennuliiklusteeninduses", eapCount: 3)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Erialane inglise keel", eapCount: 3),
                    Course(name: "Sissejuhatus erialasse", eapCount: 1),
                    Course(name: "Tutvumislennud", eapCount: 3),
                    Course(name: "Radariga lähenemislennujuhtimise tutvumispraktika*", eapCount: 6),
                    Course(name: "Lähenemislennujuhtimine radariga*", eapCount: 22),
                    Course(name: "Lähenemislennujuhtimise alused*", eapCount: 21)
                ]
            ),
            Module(
                name: "4. õppeaasta sügissemester",
                courses: [
                    Course(name: "Lähilennujuhtimine*", eapCount: 22),
                    Course(name: "Lähilennujuhtimise alused*", eapCount: 21),
                    Course(name: "Lähilennuliikluse radarjuhtimine*", eapCount: 3),
                    Course(name: "Lõputööde koostamise seminar", eapCount: 3)
                ]
            ),
            Module(
                name: "4. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Suhtlemispsühholoogia ja pedagoogika alused", eapCount: 2),
                    Course(name: "Lähilennujuhtimise tutvumispraktika*", eapCount: 6),
                    Course(name: "Lõputöö", eapCount: 9),
                ]
            )

        ]
    ),
    majorsMinors(
        name: "Lennundustehnika",
        level: .applied,
        type: .tehnika,
        requirements: [
            Requirements(term: "Lai/kitsas matemaatika või füüsika riigieksam"),
            Requirements(term: "Sisseastumiseksam")
        ],
        description: ["Lennundusvaldkond kasvab ja areneb just lennundustehnika arengu kaudu. Lennundustehnika õppekava all on lennunduse jaoks kaks väga olulist eriala – side- ja navigatsioonisüsteemid ning õhusõiduki ehitus ja hooldus. Spetsialiseerumine toimub esimese õppeaasta lõpus.", "Õhusõiduki ehituse ja hoolduse erialal koolitatakse lennundustehnilisi töötajaid, kellel on võimalik spetsialiseeruda:", "•tehnik-avioonikuks, kes tegeleb avioonika- ja elektrisüsteemide hooldustöödega. Avioonikutelt eeldatakse elektriskeemide tundmist, mõõteriistade käsitsemise ning elektroonikasüsteemide tundmise ja hooldamise oskust.", "• lennukitehnikuks, kes tegeleb lennukite konstruktsiooni, jõuseadmete ning mehaaniliste ja lihtsamate elektrisüsteemide hooldustöödega.", "• helikopteritehnikuks, kes tegeleb helikopterite konstruktsiooni, jõuseadmete ning mehaaniliste ja lihtsamate elektrisüsteemide hooldustöödega.", "Omandatakse teadmisi kõige kohta, mis õhusõiduki tehnilist poolt puudutab. Õpitakse tundma näiteks õhusõidukite juhtimis- ning pardasüsteeme, mootoreid, pilotaaži- ja navigatsiooniaparatuuri ja nende kontrollimist ning hooldamist. Õppekava edukalt läbinud üliõpilane saab rahvusvaheliselt tunnustatud lennutehnilise töötaja baashariduse ning kõrgharidustunnistuse õhusõiduki ehituse ja hoolduse erialal tagades võimaluse töötada õhusõidukite hooldusorganisatsioonides üle maailma.", "Eriala kuulub lennundustehnika õppekava alla. Erialakoolitus toimub lennuakadeemia õpperuumides sh simuleeritud õhusõidukite hooldusangaaris ning erinevates Eesti ja Euroopa õhusõidukite hooldusorganisatsioonides.", "Poole erialakoolituse mahust moodustab praktika. Praktiliste ülesannete kaudu tutvutakse õhusõidukite ehituse, inspekteerimise, hooldamise, samuti mõõteriistade ja eriseadmete kasutamisega. Muuhulgas saad enda käel proovida valmistada komposiitmaterjalidest detaile, neetida, tutvuda metallitööga, aga ka ise droone ehitada.", "Lennundustehnika õppekava all on lennunduse jaoks kaks väga olulist eriala – side- ja navigatsioonisüsteemid ning õhusõiduki ehitus ja hooldus. Spetsialiseerumine toimub esimese õppeaasta lõpus. Nüüdisaegne lennundus eeldab spetsiifiliste side-, navigatsiooni- ja seiresüsteemide täpset ja tõrgeteta koostööd, et tagada lennuohutus. Sidesüsteeme kasutavad piloodid ja lennujuhid vajaliku info vahetamiseks, navigatsiooni-süsteemide abil leiavad piloodid õige tee sihtpunkti ning seiresüsteemidega jälgitakse õhusõidukite paiknemist õhuruumis ja lennuvälja pinnal.", "Omandatakse teadmisi ja oskusi reaalainetest, erinevatest lennundusdistsipliinidest, süvendatult õpitakse erialaseid teadmisi side, navigatsiooni, seire ja infotehnoloogia kiirelt arenevatest valdkondadest.", "Õppekava edukalt läbinud üliõpilane saab lennuliikluse insener-tehnilise personali (ATSEP) tõendi ning kõrgharidustunnistuse side- ja navigatsioonisüsteemide erialal.", "Eriala kuulub lennundustehnika õppekava alla. Õpinguid alustatakse reaal-, tehnika- ja lennundusvaldkonna alusainetega. Jätkatakse lennunduse side-, navigatsiooni- ja seiresüsteemide õppimisega. Kolmanda õppeaasta sügissemestri õpe viiakse läbi koostöös Tallinna Tehnikaülikooliga, kus omandatakse süvendatud teadmisi raadiotehnikast ja signaalitöötlusest. Neljandal kursusel on suur rõhk praktiliste oskuste omandamisel nii akadeemia õppeklassides kui ka praktikabaasis.", "Lennuakadeemia sidelaboris õpitakse kasutama mõõteriistu ja -seadmeid ning tarkvara, millega insener puutub kokku oma tulevases töös. Õppepraktika toimub nii lennundusettevõtetes ja -organisatsioonides kui ka side- ja elektroonikafirmades."],
        outcomes: ["Lõpetanuna on sul võimalik asuda tööle õhusõidukeid tootvasse või hooldavasse ettevõttesse. Peamisteks tööandjateks Eestis on Magnetic MRO, Aerohooldus, Nordic Aircraft Service, Panaviatic Maintenance, Politsei- ja Piirivalveameti lennusalk ja Õhuvägi. Oskused ja kogemused võimaldavad töötada ka teistes valdkondades, näiteks autotööstuses, raudteetranspordis jm.", "Side- ja navigatsioonisüsteemid:", "Lõpetanuna on sul võimalik asuda tööle side-, navigatsiooni- ja seireteenuseid pakkuvatesse organisatsioonidesse. Peamisteks tööandjateks Eestis on Õhuvägi, Lennuliiklusteeninduse AS, Tallinna Lennujaam, Enics Eesti. Oskused ja kogemused võimaldavad sul töötada ka teistes valdkondades, näiteks infotehnoloogias, elektroonikatööstuses, telekommunikatsioonis jm."],
        language: .eesti,
        majorWebsite: "https://lennuakadeemia.ee/sisseastuja/oppekavad/lennundustehnika/ohusoiduki-ehitus-ja-hooldus",
        spots: 27,
        duration: 4,
        studyLocation:  [.reola],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Sissejuhatus lennundusse", eapCount: 3),
                    Course(name: "Lennundusõigus", eapCount: 3),
                    Course(name: "Kõrgem matemaatika I", eapCount: 6),
                    Course(name: "MATLAB lennundusinseneridele", eapCount: 3),
                    Course(name: "Informaatika", eapCount: 3),
                    Course(name: "Insenerigraafika I", eapCount: 3),
                    Course(name: "Programmeerimise alused", eapCount: 6),
                    Course(name: "Matemaatika alused*", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Lennundusjulgestus", eapCount: 1),
                    Course(name: "Lennundusohutus", eapCount: 2),
                    Course(name: "Tutvumispraktika lennundusettevõtetes", eapCount: 1),
                    Course(name: "Kõrgem matemaatika II", eapCount: 6),
                    Course(name: "Lennundusfüüsika", eapCount: 6),
                    Course(name: "Insenerigraafika II", eapCount: 3),
                    Course(name: "Elektrotehnika", eapCount: 3),
                    Course(name: "Lennunduse inglise keel", eapCount: 6),
                    Course(name: "Eesti õigekeelsus ja väljendusõpetus", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Aerodünaamika", eapCount: 3),
                    Course(name: "Avioonika alused", eapCount: 3),
                    Course(name: "Elektroonika", eapCount: 6),
                    Course(name: "Inimfaktor sidetehnikas", eapCount: 2),
                    Course(name: "Raadiotehnika alused", eapCount: 3),
                    Course(name: "Lennuliikluse korraldamine", eapCount: 6),
                    Course(name: "Lennundusalased õigusaktid", eapCount: 3),
                    Course(name: "Hooldusprotseduurid I", eapCount: 3),
                    Course(name: "Erialapraktika I", eapCount: 4),
                    Course(name: "Teoreetiline mehaanika", eapCount: 3),
                    Course(name: "Materjalid ja detailid", eapCount: 4)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Mehhatroonikasüsteemid", eapCount: 6),
                    Course(name: "Vene keel 0 > A1*", eapCount: 6),
                    Course(name: "Raadioelektroonika montaaži praktika", eapCount: 3),
                    Course(name: "Seire alused", eapCount: 3),
                    Course(name: "Katsetehnika raadioelektroonikas", eapCount: 3),
                    Course(name: "Side ja sidevõrgud", eapCount: 5),
                    Course(name: "Õhusõiduki ehitus inglise keeles", eapCount: 4),
                    Course(name: "RPA projekteerimine I", eapCount: 3),
                    Course(name: "Õhusõiduki digitaalelektroonika", eapCount: 3),
                    Course(name: "Hooldusprotseduurid II", eapCount: 5),
                    Course(name: "Õhusõiduki ehitusmehaanika alused", eapCount: 3)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Inglise keel inseneridele*", eapCount: 3),
                    Course(name: "Signaalid ja signaalitöötlus", eapCount: 6),
                    Course(name: "Raadioelektroonika seadmete tehnoloogia praktika", eapCount: 3),
                    Course(name: "Raadiosageduslik elektroonika", eapCount: 6),
                    Course(name: "Seire", eapCount: 6),
                    Course(name: "Tootmistehnoloogia", eapCount: 3),
                    Course(name: "Erialapraktika II", eapCount: 4),
                    Course(name: "RPA projekteerimine II", eapCount: 2),
                    Course(name: "Õhusõidukite aerodünaamika, ehitus ja süsteemid I", eapCount: 5),
                    Course(name: "Gaasiturbiinmootorid", eapCount: 5),
                    Course(name: "Sensoorika*", eapCount: 6),
                    Course(name: "Algoritmid ja andmestruktuurid*", eapCount: 6),
                    Course(name: "Tarkade asjade võrgud*", eapCount: 6),
                    Course(name: "Robotite juhtimine ja tarkvara*", eapCount: 6),
                    Course(name: "Sardsüsteemide alused*", eapCount: 6),
                    Course(name: "Programmeerimine I*", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Lennundusmeteoroloogia", eapCount: 3),
                    Course(name: "Inglise keel sideinseneridele*", eapCount: 3),
                    Course(name: "Arvutivõrgud", eapCount: 3),
                    Course(name: "Küberturvalisus lennunduses", eapCount: 3),
                    Course(name: "Raadionavigatsioon", eapCount: 5),
                    Course(name: "Raadiolainete levi ja antennid", eapCount: 4),
                    Course(name: "Lennundusside", eapCount: 3),
                    Course(name: "Õhuseire- ja lennuandmete töötlus", eapCount: 3),
                    Course(name: "Õhusõidukite aerodünaamika, ehitus ja süsteemid II", eapCount: 5),
                    Course(name: "RPA konstrueerimine", eapCount: 5),
                    Course(name: "Inimfaktor õhusõiduki hoolduses", eapCount: 2),
                    Course(name: "Kolbmootorid", eapCount: 2),
                    Course(name: "Lennunduse raadioside", eapCount: 2),
                    Course(name: "Propellerid", eapCount: 1),
                    Course(name: "Erialapraktika III", eapCount: 6),
                    Course(name: "Kopterite aerodünaamika, ehitus ja süsteemid*", eapCount: 3),
                    Course(name: "Teadustöö alused", eapCount: 3)
                ]
            ),
            Module(
                name: "4. õppeaasta sügissemester",
                courses: [
                    Course(name: "Juhendamise praktika", eapCount: 2),
                    Course(name: "Raadiomõõtmised lennunduses", eapCount: 6),
                    Course(name: "Süsteemihaldus", eapCount: 6),
                    Course(name: "Ettevõttepraktika", eapCount: 27),
                    Course(name: "Raadionavigatsiooni projekt", eapCount: 2),
                    Course(name: "Praktika hooldusettevõttes", eapCount: 30),
                    Course(name: "Lennuliikluse insener-tehnilise personali koolituse eksamid*", eapCount: 3)
                ]
            ),
            Module(
                name: "4. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Juhendamise praktika", eapCount: 2),
                    Course(name: "Ettevõttepraktika", eapCount: 27),
                    Course(name: "Lennuliikluse insener-tehnilise personali koolituse eksamid*", eapCount: 3),
                    Course(name: "Lõputöö", eapCount: 9)
                ]
            )
            
        ]
    ),
    majorsMinors(
        name: "Lennunduskorraldus",
        level: .applied,
        type: .transport,
        requirements: [
            Requirements(term: "Lai/kitsas matemaatika või füüsika riigieksam"),
            Requirements(term: "Sisseastumiseksam")
        ],
        description: ["Selleks et lennundusettevõte kui tervik töötaks ilma tõrgeteta, on vaja tagada kõikide üksuste koordineeritud tegevus. Lennunduskorralduse eriala lõpetaja on laialdaste lennundusvaldkonna majandus- ja juhtimisalaste teadmistega spetsialist, kes vastutab lennundusettevõtte igapäevase juhtimis- ning arendustegevuse eest.", "Lennunduskorralduse erialal õpitakse tundma erinevate lennundusettevõtete töökorraldust. Teoreetilise õppetöö käigus omandatakse lennunduse baasteadmised,  ärivaldkonna üldised õppeained ning erialaained (broneerimissüsteemide kasutamine, lennujaama tehnika, lennundusettevõtte töö korraldamine jt).", "Saad teadmised sellest, kuidas lennundusettevõtted toimivad, omandad juhtimisalased oskused ning suudad juhtida protsesse klienditeenindusest logistikani, majandusarvestusest turunduseni ning lennundusjärelvalvest turuanalüüsini.", "Õppetöös kasutatakse kaasaegset ning Eestis ainulaadset lennundusalast kirjandust ja kaasatakse oma eriala tippspetsialiste, kellest paljud teevad oma igapäevast tööd just lennundusettevõtete juhtivatel positsioonidel.", "Rohkete erialapraktikate raames näevad üliõpilased lisaks teoreetiliste teadmiste rakendamisele reaalses töökeskkonnas lennundust seestpoolt, mis omakorda loob eelduse edukaks spetsialiseerumiseks. Valikuid spetsialiseerumiseks on mitmeid: klienditeenindusest lennundusteabe vahetuse korralduseni, tulude juhtimisest lennuohutuse juhtimiseni, lennundusvaldkonna järelevalvest turuanalüüsini.", "Lõpetajana võid sa tööd leida lennundusettevõttes aga ka riigiasutuses. Peamised tööandjad on Tallinna Lennujaam ja Tallinn Airport GH, aga regionaallennujaamad, erinevad lennundusettevõtted, sh Nordica, Panaviatic, Õhuvägi, Lennuliiklusteeninduse AS, Politsei- ja Piirivalveameti lennusalk, Magnetic MRO, Majandus- ja Kommunikatsiooniministeerium, Lennuamet jt."],
        outcomes: ["Suhtub oma erialasesse tegevusse kõrgendatud vastutustundega, mis on suunatud lennuohutuse tagamisele", "Selgitab suuliselt ja kirjalikult eesti ja/või inglise keeles erialaga seonduvaid probleeme ning osaleb erialastes aruteludes", "Kasutab analüüsi- ja sünteesioskust oma valdkonnas", "Loob eeldused õpingute jätkamiseks magistriõppes", "Omab rakenduskõrgharidusele ning rahvusvahelistele lennundusstandarditele vastavaid pädevusi, mis võimaldavad töötada lennundusvaldkonnas nii Eestis kui ka välismaal", "Tunneb meeskonnatöö iseärasusi ja tähtsust ning oskab töötada meeskonnas, seostades erinevaid mõjusid keskkonna, ressursside, standardite ja inimese võimete vahel", "Arvestab lennundusettevõtte juhtimisel rahvusvahelisi nõudeid", "Omab teadmisi lennundusettevõtte allüksuste tööde juhtimisest ja koordineerimisest", "Omab teadmisi lennundusettevõtte finantsmajandusliku ja strateegilise tegevuse planeerimisest ja analüüsimisest", "Tunneb personalipoliitika ja klienditeeninduse põhiprintsiipe ning rakendab neid lennundusettevõttes", "Orienteerub erinevate lennundusettevõtete töökorralduse praktikas ja on suuteline osalema lennundusettevõtte tegevuse planeerimisel.", "Lennunduskorralduse eriala lõpetanuna oled sa laialdaste lennundusvaldkonna majandus- ja juhtimisalaste teadmistega spetsialist, kes vastutab lennundusettevõtte juhtimis- ning arendustegevuse eest."],
        language: .eesti,
        majorWebsite: "https://lennuakadeemia.ee/sisseastuja/oppekavad/lennunduskorraldus",
        spots: 15,
        duration: 4,
        studyLocation:  [.reola],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Lennunduse inglise keel", eapCount: 6),
                    Course(name: "Sissejuhatus lennundusse", eapCount: 3),
                    Course(name: "Sissejuhatus majandusteooriasse", eapCount: 6),
                    Course(name: "Matemaatika alused", eapCount: 3),
                    Course(name: "Kõrgem matemaatika I", eapCount: 6),
                    Course(name: "Informaatika", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Ettevõtluse alused", eapCount: 6),
                    Course(name: "Statistika ja ökonomeetria alused", eapCount: 6),
                    Course(name: "Lennundusohutus", eapCount: 2),
                    Course(name: "Lennundusjulgestus", eapCount: 1),
                    Course(name: "Lennujaama maapealne teenindus", eapCount: 6),
                    Course(name: "Projekti- ja tulemusjuhtimine lennutranspordis", eapCount: 3),
                    Course(name: "Logistika", eapCount: 3),
                    Course(name: "Eesti õigekeelsus ja väljendusõpetus*", eapCount: 3),
                    Course(name: "Aeronavigatsiooni alused*", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Lennundustehnika", eapCount: 6),
                    Course(name: "Õhusõiduk ja selle sooritusvõimed", eapCount: 6),
                    Course(name: "Lennuliikluse korraldamine", eapCount: 6),
                    Course(name: "Militaar- ja üldlennundus", eapCount: 3),
                    Course(name: "Lennundusõigus", eapCount: 3),
                    Course(name: "Kvaliteedijuhtimise alused", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Lendude planeerimine ja monitooring", eapCount: 3),
                    Course(name: "Lennundusettevõtte töö korraldamine", eapCount: 6),
                    Course(name: "Rahvusvaheline majandus ja lennundus", eapCount: 3),
                    Course(name: "Lennutranspordi ökonoomika", eapCount: 6),
                    Course(name: "Teadustöö alused", eapCount: 3),
                    Course(name: "Turundus*", eapCount: 3),
                    Course(name: "Lennundusmeteoroloogia*", eapCount: 3),
                    Course(name: "Andmete analüüs ja visualiseerimine MS Excelis ja Power BI-s*", eapCount: 3)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Ärieetika ja kommunikatsioon", eapCount: 3),
                    Course(name: "Ettevõtte juhtimise üldkursus", eapCount: 6),
                    Course(name: "Majandusarvestus ja lennundusettevõtte rahandus", eapCount: 6),
                    Course(name: "Lennundussektori normatiivdokumentatsiooniga töötamise praktika", eapCount: 3),
                    Course(name: "Balti riikide majanduskeskkond*", eapCount: 6)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Erialapraktika", eapCount: 24),
                    Course(name: "Lõputöö", eapCount: 6),
                    Course(name: "Digitaalsed arengud lennunduses*", eapCount: 3),
                    Course(name: "Avaliku sektori majandus*", eapCount: 3)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Õhusõiduki juhtimine",
        level: .applied,
        type: .transport,
        requirements: [
            Requirements(term: "Lai matemaatika riigieksam"),
            Requirements(term: "Kutsesobivustest"),
            Requirements(term: "Intervjuu"),
            Requirements(term: "Tervisliku sobivuse kontroll")
        ],
        description: ["Piloodi eriala on maailmas ainulaadne, kus ka taevas pole piiriks. Seda kinnitavad nii lennuki- kui ka kopteripiloodi tudengid, kes Eesti Lennuakadeemias õhusõiduki juhtimise erialal õpivad ning lendamist naudivad. Kõik lennuakadeemia üliõpilased peavad teadma lennunduse põhitõdesid, eriti aga just tulevased piloodid.", "Sellel erialal saad õppida lennuki- või kopteripiloodiks, kes:", "• Peab tundma hästi õhusõiduki pardal asuvaid instrumente ja navigatsioonivahendeid, sest sageli pole silma järgi orienteerumine võimalik", "• On ka raadiooperaator, kuna õhusõiduki õhus navigeerimisel, õhkutõusmisel ja maandumisel peab piloot sidet maapeal asuvate lennujuhtidega, kes annavad vajalikku informatsiooni", "• Teeb enne ja pärast lendu arvestused kütuse, ajakulu jm kohta, samuti haldab erinevaid pardasüsteeme", "Oskab teha meeskonnatööd, kuna lisaks lennukile juhib piloot ka lennuki meeskonda.", "Esimesel kolmel semestril õpitakse alusaineid, 4. semestril algab erialaõpe. Erialaõpingud sisaldavad nii teooriat kui ka lennupraktikat.", "Lennupraktika käigus õpitakse tundma põhilisi lennuetappe (õhkutõus, horisontaallend, pöörangud, maandumine jne), omandatakse marsruutlennu oskused, õpitakse orienteeruma ja maanduma piiratud nähtavuse tingimustes. Lisaks sooritatakse õppelende teistele lennuväljadele. Eksamite eduka sooritamise järel väljastab Lennuamet sulle ametlenduri lennundusloa koos liinilenduri teooriapädevusega.", "Õppelendudeks kasutatakse ühemootorilist lennukit Cessna 172 ning kahemootorilist lennukit Piper PA-31 Navajo, kopteri õppelendudeks kahekohalist kopterit Robinson R22. Meeskonnatöö koolituseks, samuti erinevate ohtlike olukordade läbiharjutamiseks kasutatakse lennuki- ja kopterisimulaatorit. Kopteri juhtimise erialal läbitakse 155 tundi (sellest 25 tundi simulaatoril) ning lennuki juhtimise erialal 215 tundi (sellest 55 tundi simulaatoril) lennupraktikat.  ", "Piloodina võivad sinu tööandjaks olla Nordica, Airest, Fort Aero, Pakker Avio, Panaviatic, Politsei- ja Piirivalveameti lennusalk, Õhuvägi, aga ka välismaised lennufirmad nagu airBaltic, Smartlynx, WizzAir jt."],
        outcomes: ["Suhtub oma erialasesse tegevusse kõrgendatud vastutustundega, mis on suunatud lennuohutuse tagamisele", "Selgitab suuliselt ja kirjalikult eesti ja/või inglise keeles erialaga seonduvaid probleeme ning osaleb erialastes aruteludes", "Kasutab analüüsi- ja sünteesioskust oma valdkonnas", "Loob eeldused õpingute jätkamiseks", "Omab rakenduskõrgharidusele ning rahvusvahelistele lennundusstandarditele vastavaid pädevusi, mis võimaldavad töötada lennundusvaldkonnas nii Eestis kui ka välismaal", "Tunneb meeskonnatöö iseärasusi ja tähtsust ning oskab töötada meeskonnas, seostades erinevaid mõjusid keskkonna, ressursside, standardite ja inimese võimete vahel.", "",",Õppekava läbimisel lennuki eriala üliõpilane:", "Valdab teoreetilisi teadmisi liinipiloodile (ATP(A)) vajalikul tasemel", "Omab praktilisi algseid lennukogemusi liinipiloodile vajalikul tasemel (komisjoni määrus (EL) nr 1178/2011)", "", "Õppekava läbimisel kopteri eriala üliõpilane", "Valdab teoreetilisi teadmisi liinipiloodile (ATP(H)) vajalikul tasemel", "Omab praktilisi lennukogemusi ametpiloodile vajalikul tasemel (komisjoni määrus (EL) nr 1178/2011)."],
        language: .eesti,
        majorWebsite: "https://lennuakadeemia.ee/sisseastuja/oppekavad/ohusoiduki-juhtimine",
        spots: 10,
        duration: 4,
        studyLocation:  [.reola],
        eap: 240,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "1. õppeaasta sügissemester",
                courses: [
                    Course(name: "Sissejuhatus majandusteooriasse", eapCount: 6),
                    Course(name: "Sissejuhatus lennundusse", eapCount: 3),
                    Course(name: "Kõrgem matemaatika I", eapCount: 6),
                    Course(name: "Informaatika", eapCount: 3),
                    Course(name: "Materjaliõpetus", eapCount: 3)
                ]
            ),
            Module(
                name: "1. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Lennundusohutus", eapCount: 2),
                    Course(name: "Lennundusjulgestus", eapCount: 1),
                    Course(name: "Ettevõtluse alused", eapCount: 6),
                    Course(name: "Lennundusfüüsika", eapCount: 6),
                    Course(name: "Kõrgem matemaatika II", eapCount: 6),
                    Course(name: "Elektrotehnika", eapCount: 3),
                    Course(name: "Lennunduse inglise keel", eapCount: 6)
                ]
            ),
            Module(
                name: "2. õppeaasta sügissemester",
                courses: [
                    Course(name: "Lennundusõigus", eapCount: 3),
                    Course(name: "Aerodünaamika", eapCount: 3),
                    Course(name: "Elektroonika", eapCount: 6),
                    Course(name: "Avioonika alused", eapCount: 3),
                    Course(name: "Raadiotehnika alused", eapCount: 3)
                ]
            ),
            Module(
                name: "2. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Lennundusõigusaktid I", eapCount: 2),
                    Course(name: "Lend ja plaan I", eapCount: 3),
                    Course(name: "Õhusõiduki ehitus I", eapCount: 4.5),
                    Course(name: "Käitamisprotseduurid I", eapCount: 1.5),
                    Course(name: "Navigatsioon I", eapCount: 5.5),
                    Course(name: "Lennundusraadioside I", eapCount: 6),
                    Course(name: "Aerodünaamika I", eapCount: 2.5),
                    Course(name: "Meteoroloogia I", eapCount: 3),
                    Course(name: "Kopterite aerodünaamika", eapCount: 3.5)
                ]
            ),
            Module(
                name: "3. õppeaasta sügissemester",
                courses: [
                    Course(name: "Aerodünaamika II", eapCount: 2),
                    Course(name: "Käitamisprotseduurid II", eapCount: 2),
                    Course(name: "Navigatsioon II", eapCount: 5),
                    Course(name: "Lennundusõigusaktid II", eapCount: 1.5),
                    Course(name: "Õhusõiduki ehitus II", eapCount: 5),
                    Course(name: "Meteoroloogia II", eapCount: 3.5),
                    Course(name: "Lend ja plaan II", eapCount: 3.5),
                    Course(name: "Kopteri ehitus", eapCount: 4.5)
                ]
            ),
            Module(
                name: "3. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Lend ja plaan III", eapCount: 3.5),
                    Course(name: "Meteoroloogia III", eapCount: 3),
                    Course(name: "Navigatsioon III", eapCount: 5),
                    Course(name: "Lennundusõigusaktid III", eapCount: 1.5),
                    Course(name: "Lennundusraadioside II", eapCount: 2),
                    Course(name: "Inimfaktor I", eapCount: 3.5),
                    Course(name: "Kopterite käitamisprotseduurid", eapCount: 3),
                    Course(name: "Käitamisprotseduurid III", eapCount: 1.5),
                    Course(name: "Aerodünaamika III", eapCount: 1.5)
                ]
            ),
            Module(
                name: "4. õppeaasta sügissemester",
                courses: [
                    Course(name: "Erialane inglise keel III", eapCount: 3),
                    Course(name: "Inimfaktor II", eapCount: 2.5),
                    Course(name: "Kopteri ametpiloodi teooriaeksamid", eapCount: 3),
                    Course(name: "Õhusõiduki ehitus III", eapCount: 2)
                ]
            ),
            Module(
                name: "4. õppeaasta kevadsemester",
                courses: [
                    Course(name: "Kopteri lennumeeskonna koostöö", eapCount: 5),
                    Course(name: "Kopteri lennupraktika", eapCount: 39),
                    Course(name: "Kopteri liinipiloodi teooriaeksamid", eapCount: 5),
                    Course(name: "Lennuki lennumeeskonna koostöö", eapCount: 5),
                    Course(name: "Lennuki lennupraktika", eapCount: 48),
                    Course(name: "Lennuki liinipiloodi teooriaeksamid", eapCount: 5),
                    Course(name: "Lõputöö", eapCount: 10)
                ]
            )
        ]
    ),
]
