let tallinnaÜlikoolRaka = [
    majorsMinors(
        name: "Filmikunst",
        level: .applied,
        type: .BFM,
        requirements: [
            Requirements(term: "Essee", percentage: 0),
            Requirements(term: "CV", percentage: 0),
            Requirements(term: "Portfoolio", percentage: 0),
            Requirements(term: "Loomingulised katsed", percentage: 100)
        ],
        description: ["BFMi filmikunsti õppekava on ainus koht Eestis, kus on võimalik erialase spetsialiseerumisega filmikunsti õpet läbida", "Esimesel aastal läbitakse ühiselt filmikunsti alusaineid ning teisest aastast hakkab erialane spetsialiseerumine toimima eriala meistriklassides, kus iganädalaselt kohtutakse oma eriala meistriga. Lisaks sooritatakse kolmel järjestikusel semestril gruppidena ette antud ülesande järgi semestrifilm, mille teostamine toimub läbi erialaõppejõududest koosneva kunstinõukogu ees oma projekti esitlemise.", "Filmikunsti rakenduskõrgharidus valmistab ette spetsialiste, kes omavad teadmisi filmi väljendusvahenditest. Juba kooli sisseastumisel tuleb spetsialiseeruda ühele kuuest valdkonnast:", "režii", "stsenaristika", "produktsioon", "operatsioonitöö", "montaaž", "heli"],
        outcomes: ["Õppekava lõetanu:", "Omab baasteadmisi filmikunstist fookusega ühel filmi erialal (filmirežii, operaatoritöö, montaaž, produtseerimine, heli, stsenaristika, filmiteadus) ning mõistab oma eriala seotust teiste filmikunsti valdkondadega", "Tunneb filmikunsti peamisi nüüdisaegseid tehnoloogilisi vahendeid ja töövõtteid ning oskab neid iseseisvalt kasutada", "Suudab osaleda mängufilmi- või dokumentaalfilmi tootmises oma erialale vastavas assisteerivas rollis ning iseseisvalt tegeleda oma erialaga filmi lühivormides", "Hindab meeskonnatöö tähtsust ning suudab tulemuslikult töötada filmigrupi teiste liikmetega", "On valmis jätkama õpinguid magistritasemel, süvendades teadmisi ja oskuseid valitud filmierialal", "Oskab ära tunda interdistsiplinaarseid seoseid erinevate erialade rakendusalades", "Oskab sõnastada erialaga seotud probleeme ning analüüsida ja hinnata erinevaid lahendusi","Lõpetajatel on vajalikud oskused ja teadmised, et töötada filmitootmise nn teises lülis - režissööri, operaatori, helioperaatori, montaažirežissööri, produtsendi assistentidena."],
        language: .eesti,
        majorWebsite: "https://www.tlu.ee/bfm",
        spots: 36,
        duration: 4,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Erialapraktika I (praktika)", eapCount: 15),
                    Course(name: "Erialapraktika II (praktika)", eapCount: 15)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Praktiline filmiprojekt I - režissöör", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt II - režissöör", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt III - režissöör", eapCount: 6),
                            Course(name: "Praktiline filmiprojekt I - helioperaator", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt II - helioperaator", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt III - helioperaator", eapCount: 6),
                            Course(name: "Praktiline filmiprojekt I - produtsent", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt II - produtsent", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt III - produtsent", eapCount: 6),
                            Course(name: "Praktiline filmiprojekt I - operaator", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt II - operaator", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt III - operaator", eapCount: 6),
                            Course(name: "Praktiline filmiprojekt I - monteerija", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt II - monteerija", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt III - monteerija", eapCount: 6),
                            Course(name: "Praktiline filmiprojekt I - stsenarist", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt II - stsenarist", eapCount: 5),
                            Course(name: "Praktiline filmiprojekt III - stsenarist", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Üleülikoolilised ained",
                courses: [
                    Course(name: "Õppimine kommunikatsiooni- ja loomevaldkonnas I", eapCount: 5),
                    Course(name: "Õppimine kommunikatsiooni- ja loomevaldkonnas II", eapCount: 2),
                    Course(name: "Üld- ja sotsiaalpsühholoogia", eapCount: 6),
                    Course(name: "ELU - Erialasid Lõimiv Uuendus", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriala valikmoodulid",
                courses: [],
                submodules: [
                    Submodule(
                        name: "Filmiproduktsioon",
                        courses: [
                            Course(name: "Produktsiooni seminar I", eapCount: 3),
                            Course(name: "Produktsiooni seminar II", eapCount: 3),
                            Course(name: "Produktsiooni seminar III", eapCount: 3),
                            Course(name: "Produktsiooni meistriklass I", eapCount: 6),
                            Course(name: "Produktsiooni meistriklass II", eapCount: 6),
                            Course(name: "Produktsiooni meistriklass III", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Filmimontaaž",
                        courses: [
                            Course(name: "Montaaži seminar I", eapCount: 3),
                            Course(name: "Montaaži seminar II", eapCount: 3),
                            Course(name: "Montaaži seminar III", eapCount: 3),
                            Course(name: "Montaaži meistriklass I", eapCount: 6),
                            Course(name: "Montaaži meistriklass II", eapCount: 6),
                            Course(name: "Montaaži meistriklass III", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Stsenaristika",
                        courses: [
                            Course(name: "Mütoloogia", eapCount: 3),
                            Course(name: "Narratiivi teooria ja film", eapCount: 3),
                            Course(name: "Draamateooria ajalugu ja alused", eapCount: 3),
                            Course(name: "Stsenaristika meistriklass I", eapCount: 6),
                            Course(name: "Stsenaristika meistriklass II", eapCount: 6),
                            Course(name: "Stsenaristika meistriklass III", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Filmi helisalvestus ja helirežii",
                        courses: [
                            Course(name: "Heli eriala seminar I", eapCount: 3),
                            Course(name: "Heli eriala seminar II", eapCount: 3),
                            Course(name: "Heli eriala seminar III", eapCount: 3),
                            Course(name: "Heli eriala meistriklass I", eapCount: 6),
                            Course(name: "Heli eriala meistriklass II", eapCount: 6),
                            Course(name: "Heli eriala meistriklass III", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Filmioperaatoritöö",
                        courses: [
                            Course(name: "Operaatoritöö seminar I", eapCount: 3),
                            Course(name: "Operaatoritöö seminar II", eapCount: 3),
                            Course(name: "Operaatoritöö seminar III", eapCount: 3),
                            Course(name: "Operaatoritöö meistriklass I", eapCount: 6),
                            Course(name: "Operaatoritöö meistriklass II", eapCount: 6),
                            Course(name: "Operaatoritöö meistriklass III", eapCount: 6)
                        ]
                    ),
                    Submodule(
                        name: "Filmirežii",
                        courses: [
                            Course(name: "Töö näitlejaga I", eapCount: 3),
                            Course(name: "Töö näitlejaga II", eapCount: 3),
                            Course(name: "Töö näitlejaga III", eapCount: 3),
                            Course(name: "Režii meistriklass I", eapCount: 6),
                            Course(name: "Režii meistriklass II", eapCount: 6),
                            Course(name: "Režii meistriklass III", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Erialane võõrkeel",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Erialane inglise keel II", eapCount: 6)
                ]
            ),
            Module(
                name: "Filmikunsti rakenduslik täiendusmoodul",
                courses: [
                    Course(name: "Režissööri esimese ja teise assistendi töötuba", eapCount: 8),
                    Course(name: "Võtteplatsi mänedžeri ja tootmise koordinaatori töötuba", eapCount: 8),
                    Course(name: "Operaatori esimese ja teise assistendi töötuba", eapCount: 8),
                    Course(name: "Tegevprodutsendi ja produktsiooni mänedžeri töötuba", eapCount: 8),
                    Course(name: "Eriefektide töötuba", eapCount: 8),
                    Course(name: "Helitaustade, dialoogi järelsalvestuse ja dubleerimise töötuba", eapCount: 8),
                    Course(name: "Dokumentaalfilmi projekt", eapCount: 8),
                    Course(name: "Valgusmeistri, valgustaja ja võttetehnika kinnitamise töötuba", eapCount: 8),
                    Course(name: "Stsenaariumitoimetaja töötuba", eapCount: 8),
                    Course(name: "Filmiheli ja -pildi restaureerimise töötuba", eapCount: 8),
                    Course(name: "Värvimääraja, digitaalse kujutise tehnoloogi töötuba", eapCount: 8),
                    Course(name: "Filmiheli kokkusalvestaja töötuba", eapCount: 8),
                    Course(name: "Teleseriaali stsenaristi töötuba", eapCount: 8),
                    Course(name: "Järeltootmise spetsialisti töötuba", eapCount: 8),
                    Course(name: "Visuaalefektide töötuba", eapCount: 8)
                ]
            ),
            Module(
                name: "Filmikunsti üldained",
                courses: [
                    Course(name: "Maailma filmikunsti ajalugu I", eapCount: 3),
                    Course(name: "Eesti filmikunsti ajalugu I", eapCount: 3),
                    Course(name: "Eesti filmikunsti ajalugu II", eapCount: 3),
                    Course(name: "Eesti filmikunsti ajalugu III", eapCount: 3),
                    Course(name: "Filmitootmise tehnoloogiad", eapCount: 3),
                    Course(name: "Filmiliigid ja -žanrid", eapCount: 3),
                    Course(name: "Eesti filmikunsti ajalugu IV", eapCount: 3),
                    Course(name: "Filmitootmise alused", eapCount: 3),
                    Course(name: "Helikujundus ja muusika AV teoses", eapCount: 3),
                    Course(name: "Sissejuhatus filmikeele reeglitesse", eapCount: 6),
                    Course(name: "Filmi väljendusvahendid ja audiovisuaalne loo jutustamine", eapCount: 6),
                    Course(name: "Kunstiajalugu filmitegijale I", eapCount: 3),
                    Course(name: "Kunstiajalugu filmitegijale II", eapCount: 3),
                    Course(name: "Stsenaariumi analüüs töömeetodina", eapCount: 3),
                    Course(name: "Praktiline filmianalüüs", eapCount: 3),
                    Course(name: "Maailma filmikunsti ajalugu II", eapCount: 4),
                    Course(name: "Maailma filmikunsti ajalugu III", eapCount: 4),
                    Course(name: "Maailma filmikunsti ajalugu IV", eapCount: 4),
                    Course(name: "Sissejuhatus filmitehnikasse", eapCount: 6),
                    Course(name: "Tööohutus ja esmaabi", eapCount: 3),
                    Course(name: "Meedia ja kommunikatsiooni õigusruum", eapCount: 4),
                    Course(name: "Seminaritöö", eapCount: 6),
                    Course(name: "Filmisemiootika", eapCount: 3),
                    Course(name: "Lühimängufilm", eapCount: 6)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Fotokunsti ajalugu ja fotokompositsiooni alused", eapCount: 3),
                            Course(name: "Kõneõpetus ja näitlejatöö alused", eapCount: 3),
                            Course(name: "Praktiline animatsioon", eapCount: 3),
                            Course(name: "Maailma filmikunsti ajalugu V", eapCount: 3),
                            Course(name: "Filmikriitika alused", eapCount: 3),
                            Course(name: "Religioon ja film", eapCount: 3),
                            Course(name: "Ülevaade Eesti kirjandusest", eapCount: 3),
                            Course(name: "Spetsiaalvõtete tehnoloogiad ja eriefektid", eapCount: 3),
                            Course(name: "Filmialane uurimistöö", eapCount: 6),
                            Course(name: "Värvusõpetus", eapCount: 3),
                            Course(name: "Kujundilugu", eapCount: 3),
                            Course(name: "Koostöö kunstnikuga", eapCount: 3),
                            Course(name: "Filmididaktika", eapCount: 6),
                            Course(name: "Sissejuhatus filmidramaturgiasse", eapCount: 3),
                            Course(name: "Joonestamine, maketeerimine ja 3D-mudeli konstrueerimine", eapCount: 3),
                            Course(name: "Dokumentaalfilm", eapCount: 6),
                            Course(name: "Filmiteadus", eapCount: 3),
                            Course(name: "Suur ELU I", eapCount: 4),
                            Course(name: "Suur ELU II", eapCount: 6)
                        ]
                    )
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Vabaained", eapCount: 16)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 6)
                ]
            )
        ]
    ),
    
    majorsMinors(
        name: "Käsitöötehnoloogiad ja Disain",
        level: .applied,
        type: .humanitaarteadus,
        requirements: [
            Requirements(term: "Sisseastumiskatse", percentage: 100)
        ],
        description: ["Tallinna Ülikooli Haapsalu kolledži käsitöötehnoloogiate ja disaini õppekava eesmärgiks on oskuslikult kasutada traditsioonilisi käsitöö võtteid tänapäevases tootedisainis. Õppetöös on rõhuasetus inimkesksel disainil, mille lähtekohaks on kasutajate vajaduste mõistmine ja loov probleemilahendamine. Töötatakse erinevate materjalidega (peamisteks materjalideks on puit, plastik ja metall) Haapsalu kolledži eeliseks õppekava rakendamisel on väga head töökojad ja laborid, kus tudeng saab oma ideed praktiliselt realiseerida. Kolledži käsitöötehnoloogiate ja disaini eriala on ainulaadse rakendusliku suunitlusega eriala, kus  tooted sünnivad ideest teostuseni põhimõttel. Õppekava oluliseks osaks on praktilised tootearendusprojektid koostöös erinevate ettevõtete ja organisatsioonidega.", "Kolledži käsitöötehnoloogiate ja disaini eriala on ainulaadse rakendusliku suunitlusega, mis toetub oma tegevuses pärimuslikule kultuurile. Tooted sünnivad ideest teostuseni põhimõttel, ühendades muistse ja moodsa, traditsioonilised ja tänapäevased tehnoloogiad, jätkusuutlikkuse ja ettevõtlikkuse.", "Käsitöötehnoloogiate ja disaini eriala sobib neile, kes on huvitatud kaasaegsest tootedisainist ja väärtustab traditsioonilisi käsitöötehnoloogiaid. Soovib arendada erialaseid oskusi ja loovust ning omandada teadmisi toodete väljatöötamise spetsiifikast. Ootame õppima nii gümnaasiumilõpetajaid kui ka juba töötavaid aktiivseid inimesi, kellel on soov ennast teostada erialaseid oskusi pakkuval õppekaval."],
        outcomes: [ "Tunneb käsitöötehnoloogia ja disaini eriala põhimõisteid, teoreetilisi printsiipe ja uurimismeetodeid", "Oskab määratleda käsitöötehnoloogia ja disainiga seotud probleeme ning analüüsida ja hinnata erinevaid lahendusi laiemas sotsiaalses kontekstis", "Valdab erialaseks tegevuseks olulisi oskusi, suudab kasutada ja valida tööks vajalikke vahendeid, materjale ning arvutiprogramme", "Oskab koostada, koordineerida ja juhtida erinevaid käsitöötehnoloogia ja disainiteemalisi projekte", "Oskab rakendada omandatud teadmisi ja oskusi praktilises töös ja tegutseda spetsialisti või ettevõtjana", "Tunneb kaasaja tehnoloogilisi võimalusi, lokaalkultuuri ja globaalse situatsiooni tingimusi", "Õppekava läbinul on võimalus suunduda tööle disainerina tööstuses, tehnoloogina käsitööettevõttes, plastmaterjalide modelleerijana, disainer-väikeettevõtjana, käsitöömeister-väikeettevõtjana."],
        language: .eesti,
        majorWebsite: "https://www.tlu.ee/haapsalu",
        spots: 15,
        duration: 3,
        studyLocation:  [.haapsalu],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Etnograafiapraktika (praktika)", eapCount: 3),
                    Course(name: "Loominguline praktika (praktika)", eapCount: 3),
                    Course(name: "Meistritöökoja praktika I (praktika)", eapCount: 4),
                    Course(name: "Meistritöökoja praktika II (praktika)", eapCount: 4),
                    Course(name: "Meistritöökoja praktika III (praktika)", eapCount: 4),
                    Course(name: "Näituse projekt (praktika)", eapCount: 4),
                    Course(name: "Ettevõttepraktika (praktika)", eapCount: 8)
                ]
            ),
            Module(
                name: "Üleülikoolilised ained",
                courses: [
                    Course(name: "Õppimine kõrgkoolis", eapCount: 6),
                    Course(name: "Üld- ja sotsiaalpsühholoogia", eapCount: 6),
                    Course(name: "ELU - Erialasid Lõimiv Uuendus", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriala kohustuslikud üldained",
                courses: [
                    Course(name: "Uurimistöö I", eapCount: 3),
                    Course(name: "Uurimistöö II", eapCount: 3),
                    Course(name: "Materjaliõpetus I: puit- ja saematerjalid", eapCount: 4),
                    Course(name: "Materjaliõpetus II: metallid ja sulamid", eapCount: 4),
                    Course(name: "Erialane arvutiõpetus", eapCount: 4),
                    Course(name: "3D modelleerimine", eapCount: 4),
                    Course(name: "Materjaliõpetus III – plastid ja vaigud", eapCount: 4),
                    Course(name: "Värvusõpetus", eapCount: 4),
                    Course(name: "Joonistamine I", eapCount: 4),
                    Course(name: "Joonistamine II", eapCount: 4),
                    Course(name: "Portfoolio", eapCount: 4),
                    Course(name: "Kompositsiooni alused", eapCount: 6),
                    Course(name: "Loomeettevõtlus", eapCount: 5),
                    Course(name: "Sissejuhatus disaini", eapCount: 4),
                    Course(name: "Tehniliste jooniste vormistamine", eapCount: 3),
                    Course(name: "Erialaprojekt I", eapCount: 5),
                    Course(name: "Erialaprojekt II", eapCount: 5),
                    Course(name: "Erialaprojekt III", eapCount: 5),
                    Course(name: "Erialaprojekt IV", eapCount: 5),
                    Course(name: "Erialaprojekt V", eapCount: 5)
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "Digifotograafia alused", eapCount: 3),
                    Course(name: "Kommunikatsioon ja esinemisoskus", eapCount: 4),
                    Course(name: "Puitkäsitööd", eapCount: 4),
                    Course(name: "Klaasi töötlemise tehnoloogiad", eapCount: 3),
                    Course(name: "Vanatehnika restaureerimine", eapCount: 3),
                    Course(name: "Autoriõigus ja patent", eapCount: 2),
                    Course(name: "Pärandvara restaureerimine", eapCount: 4),
                    Course(name: "Kujundusprogrammid", eapCount: 4),
                    Course(name: "Graafilise disaini alused", eapCount: 4),
                    Course(name: "Modelleerimine", eapCount: 3),
                    Course(name: "3D modelleerimine II", eapCount: 4),
                    Course(name: "Joonistamine III", eapCount: 4)
                ]
            ),
            Module(
                name: "Erialane inglise keel",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Erialane inglise keel II", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Vabaained", eapCount: 16)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 6)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Liiklusohtus",
        level: .applied,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Erialakatse", percentage: 0),
            Requirements(term: "Vestlus", percentage: 0)
        ],
        description: ["Liiklusohutuse õppekava õppeainetest 70% keskenduvad mootorsõidukijuhi õpetaja pädevuse saavutamiseks ja antud erialal töötamiseks vajalike teadmist ja oskuste kujundamiseks. Lisaks mootorsõidukijuhi õpetaja koolitusele keskendub õppekava ka laste liikluskasvatuse ja ohutu liikluskeskkonna planeerimise õpetamisele.", "Liiklusohutuse erialale ootame õppima nii gümnaasiumilõpetajaid kui ka juba töötavaid aktiivseid inimesi, kellel on huvi mootorsõidukijuhi õpetaja ja liiklusohutuse parendamise vastu ühiskonnas. Sisseastuja peab omama mootorsõiduki juhiluba.", "Tallinna Ülikooli Haapsalu kolledžis õpetatav liiklusohutuse eriala võimaldab omandada pädevused töötamaks mootorsõidukijuhi õpetajana, ning teadmised ja oskused, millega kujundada enda ja suunata teiste liiklusohutusega seotud hoiakuid ja käitumist ning planeerida ohutut liikluskeskkonda.", "Norra ja Soome partnerülikoolidega koostöös välja töötatud eriala on Eestis ainulaadne. Eriala õppejõududeks on oma ala tunnustatud eksperdid üle Eesti. Õpingute jooksul on soovijatel võimalus sooritada osa õppetööst ja/või praktikast välisriikide kõrgkoolide juures."],
        outcomes: [ "Süstemaatilise ja katkematu liiklusohutushariduse tagamiseks", "Liiklusohutuse põhimõistete ja teoreetiliste printsiipide tundmiseks", "Liiklusalaste analüüside ning uuringute mõistmiseks ja läbiviimiseks vajalike oskuste ja teadmiste kujunemiseks", "Liikluskäitumise interdistsiplinaarseks käsitlemiseks vajalike oskuste ja teadmiste kujunemiseks", "Ohutu liikluskeskkonna aluspõhimõtetest arusaamiseks", "Liiklusohutuse spetsialistina töötamiseks vajaliku valmisoleku kujunemiseks", "Magistritasemel õpingute jätkamiseks vajalike alusteadmiste omandamiseks", "Elukestvaks õppeks ja enese professionaalseks arendamiseks", "Rahvusvahelise liiklusohutuse aluste tundma õppimiseks.","Rakenduskõrgharidusega liiklusohutuse spetsialistil on võimalus suunduda tööle liiklusteooria- ja sõiduõpetajana, liiklusõigusrikkuja järelkoolitajana, laste liikluskoolitajana, mootorsõidukijuhi eksamineerijana, autokooli juhatajana, politsei süüteoennetuse spetsialistina liiklusohutuse alal, liiklusohutuse spetsialist-koordinaatorina kohalikus omavalitsuses või teedeehituse ja ehituse organisatsioonides jm liiklusohutusega seotud ametikohtadel."],
        language: .eesti,
        majorWebsite: "https://www.tlu.ee/haapsalu",
        spots: 15,
        duration: 3,
        studyLocation:  [.haapsalu],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Kohaliku omavalitsuse ja riigiasutuse liiklusohutusspetsialisti praktika (praktika)", eapCount: 5),
                    Course(name: "Liikluskorralduse praktika (praktika)", eapCount: 5),
                    Course(name: "Mootorsõidukijuhi õpetaja vaatluspraktika (praktika)", eapCount: 7),
                    Course(name: "Mootorsõidukijuhi õpetaja praktika (praktika)", eapCount: 8),
                    Course(name: "Liiklushariduse praktika (praktika)", eapCount: 5)
                ]
            ),
            Module(
                name: "Üleülikoolilised ained",
                courses: [
                    Course(name: "Õppimine kõrgkoolis", eapCount: 6),
                    Course(name: "Üld- ja sotsiaalpsühholoogia", eapCount: 6),
                    Course(name: "ELU - Erialasid Lõimiv Uuendus", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "A-kategooria ja A1- alamkategooria mootorsõidukijuhi õpetaja", eapCount: 6),
                    Course(name: "Jalgratta- ja pisimopeedijuhi õpetajakoolitus", eapCount: 3),
                    Course(name: "Esmaabi", eapCount: 2),
                    Course(name: "Mootorsõidukijuhi järelkoolitaja", eapCount: 6),
                    Course(name: "Liiklusharidus", eapCount: 5),
                    Course(name: "Mootorsõidukijuhi eksamineerija", eapCount: 4),
                    Course(name: "Liikuvuse planeerimine", eapCount: 4),
                    Course(name: "Reflekteeriv meeskond", eapCount: 3),
                    Course(name: "Mootorsõidukijuhi õpetaja kvalifikatsiooninõuetele vastavuse hindamine", eapCount: 2),
                    Course(name: "Ettevõtluse alused ja projektijuhtimine", eapCount: 5)
                ]
            ),
            Module(
                name: "Erialane inglise keel",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Erialane inglise keel II", eapCount: 6)
                ]
            ),
            Module(
                name: "Erialane uurimistöö",
                courses: [
                    Course(name: "Uurimistöö alused ja meetodid", eapCount: 3),
                    Course(name: "Uurimistöö I", eapCount: 3),
                    Course(name: "Uurimistöö II", eapCount: 3),
                    Course(name: "Andmeanalüüs: statistiline andmestik ja kirjeldav statistika", eapCount: 4)
                ]
            ),
            Module(
                name: "Liikluskäitumine ja -koolitus",
                courses: [
                    Course(name: "Liiklusalased õigusaktid", eapCount: 5),
                    Course(name: "Sotsiaalne mõjustamine", eapCount: 5),
                    Course(name: "Õppimise ja õpetamise alused", eapCount: 5),
                    Course(name: "Sõltuvusainete olemus ja riskeeriva käitumise ennetamine", eapCount: 4),
                    Course(name: "Suhtlemine õppeprotsessis", eapCount: 3),
                    Course(name: "Autokooli õppekava ja õppematerjalide koostamine", eapCount: 6),
                    Course(name: "Arengutreeningul põhinevad aktiivõppemeetodid", eapCount: 6),
                    Course(name: "Liiklusohutusele suunatud hoiakute kujundamine", eapCount: 6),
                    Course(name: "Sõiduki ehitus ning aktiivne ja passiivne turvalisus", eapCount: 6),
                    Course(name: "Libedasõidu riskivältimise õpetaja koolitus", eapCount: 3),
                    Course(name: "Sõit pimeda ajal", eapCount: 2)
                ]
            ),
            Module(
                name: "Ohutu liikluskeskkond ja selle planeerimine",
                courses: [
                    Course(name: "Ohutu liikluskeskkonna planeerimine ja korraldamine", eapCount: 6),
                    Course(name: "Liiklusohutusalased uuringud ja andmebaasid", eapCount: 5),
                    Course(name: "Arvutigraafika alused", eapCount: 3),
                    Course(name: "Liiklusohutusalase töö alused", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Vabaained", eapCount: 16)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 6)
                ]
            )
        ]
    ),
     majorsMinors(
        name: "Rakendusinformaatika",
        level: .applied,
        type: .digitehnoloogia,
        requirements: [
            Requirements(term: "Arvutipõhine test", percentage: 0),
            Requirements(term: "Vestlus", percentage: 0)
        ],
        description: ["Õpingud rakendusinformaatika õppekaval loovad eeldused infotehnoloogia olulisemate rakendusvaldkondade ning arengusuundade tundmaõppimiseks; toetavad tarkvaraarenduse ja disaini alaste pädevuste kujunemist; annavad baasteadmised ja oskused multimeediumi­vahenditel põhineva tarkvara loomiseks; loovad eeldused elukestvaks õppeks ning professionaalseks enesetäiendamiseks ning toetavad IT valdkonna arengut regioonis.", "Tarkvaraarenduse ja -disaini suunaline informaatika õpe sobib eelkõige neile, kes soovivad arendada oma loovust ja loogikat läbi infotehnoloogia erinevate tahkude. Kandidaadilt eeldame erialast huvi, aktiivset hoiakut, head analüüsivõimet, meeskonnatöö oskust ning pühendumist ülesannete lahendamisel.", "Tallinna Ülikooli Haapsalu kolledži rakendusinformaatika eriala näol on tegemist praktilise suunitlusega õppekavaga. Õpitakse erinevaid programmeerimiskeeli, tarkvaraarenduse meetodeid, kasutajakeskse disaini põhimõtteid ning oskust luua veebi- ja mobiilirakendusi ning videomänge. Õppekavas on oluline koht erinevate meedialiikide töötlemisel (kujundamine, 3D, heli- ja videotöötlus) ja kasutamisel tarkvararakendustes."],
        outcomes: [ "Omab teadmisi infotehnoloogia rakendamise ja integreerimise kohta erinevates valdkondades", "Oskab analüüsida, disainida ja testida erinevaid multimeediumi elemente ning kasutada neid tarkvaraarenduses", "Oskab valida ja kasutada sobivaid tarkvaraarenduse vahendeid, tehnoloogiaid ja meetodeid", "Oskab suhelda klientide ja äripartneritega", "Näeb vajadust jätkuõppeks ja elukestvaks õppeks läbi enesetäiendamise", "Tööd leiavad rakendusinformaatika eriala lõpetanud nii programmeerijate ja tarkvaraarendajatena kui ka kujundajate ja disaineritena reklaami- ja disainibüroodes ning tarkvara arendavates firmades. Lisaks võimaldavad õpingute käigus omandatud erialased baasteadmised töötada IT-spetsialistidena väga erinevates ettevõtetes. Üks on kindel: informaatika eriala lõpetanutel on tööturul suur konkurentsieelis!", "Õppekava lõpetanu võib tööd leida näiteks järgnevatel ametitel:", "Tarkvaraarendaja", "Programmeerija", "Infosüsteemide arendaja", "3D disainer", "Graafiline disainer", "Mängude kujundaja"],
        language: .eesti,
        majorWebsite: "https://www.tlu.ee/haapsalu",
        spots: 22,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Multimeediumi praktika (praktika)", eapCount: 10),
                    Course(name: "Valikpraktika (praktika)", eapCount: 10),
                    Course(name: "Ettevõttepraktika (praktika)", eapCount: 10)
                ]
            ),
            Module(
                name: "Üleülikoolilised ained",
                courses: [
                    Course(name: "Õppimine kõrgkoolis", eapCount: 6),
                    Course(name: "Üld- ja sotsiaalpsühholoogia", eapCount: 6),
                    Course(name: "ELU - Erialasid Lõimiv Uuendus", eapCount: 6)
                ]
            ),
            Module(
                name: "Eriala kohustuslikud ained",
                courses: [
                    Course(name: "Multimeedium", eapCount: 4),
                    Course(name: "Andmebaasid", eapCount: 3),
                    Course(name: "E-kommerts", eapCount: 3),
                    Course(name: "Programmeerimise alused", eapCount: 5),
                    Course(name: "IT ja õigus", eapCount: 4),
                    Course(name: "Videomängude disain", eapCount: 3),
                    Course(name: "Mobiilirakenduste arendamine", eapCount: 4),
                    Course(name: "Sissejuhatus informaatikasse", eapCount: 3),
                    Course(name: "Arvutivõrgud ja andmeside", eapCount: 4),
                    Course(name: "Sissejuhatus 3D graafikasse", eapCount: 3),
                    Course(name: "Riistvara ja operatsioonisüsteemide alused", eapCount: 4),
                    Course(name: "Sissejuhatus tarkvaraarendusse", eapCount: 5),
                    Course(name: "Veebiraamistikud", eapCount: 3),
                    Course(name: "Kasutajaliideste disain", eapCount: 4),
                    Course(name: "Veebiprogrammeerimine", eapCount: 6),
                    Course(name: "Veebirakendused ja nende loomine", eapCount: 3),
                    Course(name: "Kujundusgraafika", eapCount: 3),
                    Course(name: "Andmeturve", eapCount: 4),
                    Course(name: "Uurimistöö I", eapCount: 3),
                    Course(name: "Uurimistöö II", eapCount: 3),
                    Course(name: "Andmeanalüüs: statistiline andmestik ja kirjeldav statistika", eapCount: 4),
                    Course(name: "Praktiline matemaatika", eapCount: 4)
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "Programmeerimine II", eapCount: 3),
                    Course(name: "Reklaamidisain", eapCount: 3),
                    Course(name: "3D animatsioon", eapCount: 5),
                    Course(name: "Digitaalne helikujundus", eapCount: 3),
                    Course(name: "Andmebaasid II", eapCount: 3),
                    Course(name: "Multimeediumi programmeerimine", eapCount: 4),
                    Course(name: "Programmeerimine III", eapCount: 5),
                    Course(name: "Disaini alused", eapCount: 5),
                    Course(name: "Programmeerimine I", eapCount: 5),
                    Course(name: "Kujundusgraafika II", eapCount: 4),
                    Course(name: "Kasutajaliideste disain II", eapCount: 4)
                ]
            ),
            Module(
                name: "Erialane inglise keel",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Erialane inglise keel II", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Vabaained", eapCount: 16)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 6)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Tervisejuht",
        level: .applied,
        type: .sotsiaal,
        requirements: [
            Requirements(term: "Arvutipõhine test", percentage: 0),
            Requirements(term: "Vestlus", percentage: 0)
        ],
        description: ["Tallinna Ülikooli Haapsalu kolledži tervisejuhi õppekaval õppijal on võimalus omandada rakenduskõrgharidus, mille tulemusel saavutatakse head teoreetilised lähtekohad ja praktilised oskused ning kogemused rahvatervise valdkonnas. Praktika osakaal õppekavas on mahus 30 EAP-d, mis enamasti viiakse ellu kolledži praktika partnerite juures (näiteks Tervise Arengu Instituut, Sotsiaalministeerium, omavalitsused jne). Õppekava eesmärk on pakkuda tervisedenduse valdkonnas töötavatele spetsialistidele haridus, mis võimaldamaks edukalt täita ülesandeid rahvatervise ja tervisepoliitika valdkonnas. Õppekava läbides on võimalik valida toitumisnõustamise suund, mis oma olemuselt tähendab, et 30 EAP raames läbitakse kursused, mis toetavad otseselt toitumisnõustamisega seonduvate pädevuste ja oskuste omandamist, sh toitumisnõustaja kutseeksami edukat sooritamist.", "Tervisejuhi õppekavale ootame kandideerima kõiki, kel on huvi toitumisnõustamise, üksikisiku, organisatsiooni, paikkonna või riigi tasemel tervisedenduse korraldamise ja juhtimise vastu. Tänu sessioonõpe vormile, on õppimine Haapsalu kolledži tervisejuhi õppekaval sobilik töötavale täiskasvanule - üldjuhul toimub õppetöö neljapäevast laupäevani üle nädala ning paindlik lähenemine toetab praktika läbimist.", "Eesti tervisedenduse valdkonna areng eeldab positiivseid muutusi keskkonnas, et tervislikud valikud oleksid lihtsamini kättesaadavad. Muutusi on võimalik suunata nii enda isikliku kui organisatsioonide tervisekäitumise ja terviseprogrammide juhtimise kaudu. Õppeprotsess on tihedalt seotud kolledži allüksusena tegutseva Tervisedenduse ja Rehabilitatsiooni Kompetentsikeskusega, olles üheks praktikabaasiks. Lisaks saab praktikat läbida erinevates tervisedendusega tegelevates riiklikes või erasektori asutustes. Soovijatel on võimalus sooritada osa õppetööst ja/või praktikast välisriikide kõrgkoolide juures."],
        outcomes: [ "Mõistab sotsiaalse-, vaimse- ning füüsilise keskkonna tegureid ja olukordi, mis mõjutavad inimeste tervist ja heaolu", "Omab suhtlemis-, juhtimis- ja meeskonnatöö oskusi ning suudab algatada koostööd erinevate sektorite vahel terviseprobleemide lahendamiseks ning elukeskkonna tervisepotentsiaali soodustamiseks", "Tunneb ja oskab analüüsida rahvastiku tervise aktuaalseid probleeme ning hinnata nende lahendamiseks sobivaid strateegiaid ja meetodeid", "Tunneb kodanikuühiskonna võimalusi ja osalemise tasandeid tervisepoliitikas ning oskab kujundada erinevate sihtrühmade terviskäitumise hoiakuid", "Omab tervisenõustamise tööks vajalikke kompetentse lähtudes tõenduspõhistest soovitustest tervise hoidmiseks, edendamiseks ja haiguste ennetamiseks", "Mõistab enese professionaalse arengu ja elukestva õppe olulisust", "Tervisejuhi õppekaval pööratakse erilist tähelepanu toitumisnõustamisele, mis annab lõpetanule võimaluse jätkata toitumis- või liikumisnõustajana. Suurt rõhku pööratakse ka tervisedenduse üldteadmiste omandamisele ja silmaringi üldisele laiendamisele, mis annab lõpetajatele valmiduse töötada nii kaudselt kui otseselt tervisedendusega seotud valdkondades.", "Rakenduskõrgharidusega tervisejuhi eriala spetsialisti või projektijuhina on võimalus suunduda tööle nii kohalike omavalitsuste juurde, MTÜ-desse, kui ka teistesse tervisedenduslikesse avaliku (näiteks Tervise Arengu Instituut, Eesti Haigekassa; Sotsiaalministeerium) või erasektori organisatsioonidesse. Mitmed tervisejuhi õppekava vilistlased on loonud oma eraettevõtte, pakkudes tervisedenduslikke teenuseid, sh toitumise ja liikumise alast nõustamist."],
        language: .eesti,
        majorWebsite: "https://www.tlu.ee/haapsalu",
        spots: 22,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Praktika",
                courses: [
                    Course(name: "Vaatluspraktika (praktika)", eapCount: 6),
                    Course(name: "Terviseprojekti praktika (praktika)", eapCount: 6),
                    Course(name: "Rakenduspraktika I (praktika)", eapCount: 6),
                    Course(name: "Rakenduspraktika II (praktika)", eapCount: 6),
                    Course(name: "Põhipraktika (praktika)", eapCount: 6)
                ]
            ),
            Module(
                name: "Üleülikoolilised ained",
                courses: [
                    Course(name: "Õppimine kõrgkoolis", eapCount: 6),
                    Course(name: "Üld- ja sotsiaalpsühholoogia", eapCount: 6),
                    Course(name: "ELU - Erialasid Lõimiv Uuendus", eapCount: 6)
                ]
            ),
            Module(
                name: "Erialane inglise keel",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Erialane inglise keel II", eapCount: 6)
                ]
            ),
            Module(
                name: "Professionaalne areng",
                courses: [
                    Course(name: "Uurimistöö alused ja meetodid", eapCount: 3),
                    Course(name: "Uurimistöö I", eapCount: 3),
                    Course(name: "Uurimistöö II", eapCount: 3),
                    Course(name: "Juhtimine ja eestvedamine tervisedenduses", eapCount: 5),
                    Course(name: "Eluviisi nõustamine", eapCount: 5),
                    Course(name: "Andmeanalüüs: statistiline andmestik ja kirjeldav statistika", eapCount: 4),
                    Course(name: "Sissejuhatus kehasotsioloogiasse", eapCount: 3)
                ]
            ),
            Module(
                name: "Eriala valikained",
                courses: [
                    Course(name: "Õppimise ja õpetamise alused", eapCount: 5),
                    Course(name: "Epidemioloogia alused", eapCount: 2),
                    Course(name: "Toitumise ealised eripärad", eapCount: 4),
                    Course(name: "Toiduohutus", eapCount: 5),
                    Course(name: "Dietoloogia", eapCount: 4),
                    Course(name: "Rehabilitatsiooni alused", eapCount: 4),
                    Course(name: "Sektorite ülene koostöö tervisedenduses", eapCount: 5),
                    Course(name: "Terviseteadlikkus erinevatel eluetappidel", eapCount: 5)
                ]
            ),
            Module(
                name: "Tervisedendaja kompetentsus",
                courses: [
                    Course(name: "Meedia ja kommunikatsioon tervisedenduses", eapCount: 5),
                    Course(name: "Tervisedenduse alused", eapCount: 5),
                    Course(name: "Tervisedenduslike sekkumisprogrammide disainimine", eapCount: 5),
                    Course(name: "Globaalsed trendid ja tervisedendus", eapCount: 5),
                    Course(name: "Vaimne tervis ja heaolu", eapCount: 5),
                    Course(name: "Elukeskkond ja selle mõju tervisele", eapCount: 5),
                    Course(name: "Inimese anatoomia ja füsioloogia", eapCount: 4)
                ]
            ),
            Module(
                name: "Toitumisnõustamine",
                courses: [
                    Course(name: "Toitumise biokeemia", eapCount: 5),
                    Course(name: "Toitumisõpetus", eapCount: 7),
                    Course(name: "Liikumisfüsioloogia ja terviseseisundi hindamise meetodid", eapCount: 6),
                    Course(name: "Toitumine ja tervis", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Vabaained", eapCount: 16)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 6)
                ]
            )
        ]
    ),
    majorsMinors(
        name: "Noorsootöö",
        level: .applied,
        type: .haridusteadus,
        requirements: [
            Requirements(term: "Akadeemiline test", percentage: 25),
            Requirements(term: "E-etteütlus", percentage: 25),
            Requirements(term: "CV", percentage: 5),
            Requirements(term: "Vestlus", percentage: 45)
        ],
        description: ["Läbi noorsootöö saad omandada eluks vajalikke oskusi ning kujundada enda väärtusi. Noorsootöö arendab individuaalseid teadmisi, oskusi, hoiakuid ning aitab luua suhtlusvõrgustikku ja sotsiaalset kapitali.", "Noorsootöö õpingud pakuvad mitmekülgseid ja põhjalikke teadmisi nii hariduse kui ka noortevaldkonnast, avades ühtlasi võimalusi enda proovilepanekuks noorsootöötajana erinevates keskkondades, olgu selleks noortekeskus, kool, noortelaager, malev, huviring, spordi-, sotsiaal- või kultuuriasutus, või hoopis tänaval mobiilse noorsootöötaja rollis.", "Alates 2019. aastast saavad Tallinna Ülikooli noorsootöö eriala rakenduskõrghariduse õppekava lõpetajad lisaks kõrgharidusdiplomile ka märke noorsootöötaja tase 6 kutse omandamisest.", "Noorsootöö õpe on korraldatud sessioonõppes, mis toimub viis korda semestris ühe nädala vältel. Noorsootöö erialal õpitakse ülikoolis aina enam mitteformaalses keskkonnas ning tavapärasele auditoorsele tööle on õppetöösse integreeritud õppekäigud, osalemine noorte info- ja haridusmessidel ning suurüritustel jm. Samuti korraldatakse noorsootöö erialapäeva ja osaletakse tegevustega ka Eesti noorsootöö nädala raames.", "Oluline osa õppest moodustavad erisugused praktikad: noorsootöö vaatluspraktika, laagripraktika, noortegrupi juhendamise praktika, kohaliku omavalitsuse praktika, projektitöö praktika ja üldine noorsootöö praktika."],
        outcomes: [ "Sõnastab noorsootöö eriala põhimõisted, lähtekohad ja eesmärgid ning analüüsib eriala aktuaalseid probleeme ja nende lahendusvõimalusi", "Omab süsteemset ülevaadet rahvusvahelisest ja riiklikust noortepoliitikast ning noorsooliikumise ja -töö ajaloost ning tõlgendab noorsootöö seadusandlust", "Analüüsib ja rakendab omandatud teadmisi ja oskusi erialaseks arenguks ja noorte arengu toetamiseks", "Planeerib, juhib, teostab ja analüüsib noorsootöö valdkonna protsessipõhiseid tegevusi ja projekte", "Kasutab interaktiivseid ja kaasaegseid keskkondi, meetodeid ja IKT-vahendeid informatsiooni kogumiseks ja teabe edastamiseks","Noorsootöö eriala spetsialiste õpetatakse Eestis juba 20 aastat. Eriala lõpetanuid võib kohata riigiasutustes, maavalitsustes ja kohalikes omavalitsustes juhatajate ja spetsialistidena, noorsootöö asutustes, mittetulundusühingutes, huvikoolides, haridusasutustes, koolides, noorsootöö õppejõududena ning koolitajatena mitteformaalse õppe valdkonnas."],
        language: .eesti,
        majorWebsite: "https://www.tlu.ee/hti",
        spots: 30,
        duration: 3,
        studyLocation:  [.tallinn],
        eap: 180,
        cost: Cost(amount: 0, currency: .euro, interval: .full),
        modules: [
            Module(
                name: "Noorsootöö praktika",
                courses: [
                    Course(name: "Noorsootöö praktika (praktika)", eapCount: 8),
                    Course(name: "Laagripraktika (praktika)", eapCount: 6),
                    Course(name: "Kohaliku omavalitsuse noorsootöö praktika (praktika)", eapCount: 6),
                    Course(name: "Noortegrupi juhendamise praktika (praktika)", eapCount: 6),
                    Course(name: "Vaatluspraktika (praktika)", eapCount: 3)
                ]
            ),
            Module(
                name: "Üleülikoolilised ained",
                courses: [
                    Course(name: "Õppimine kõrgkoolis", eapCount: 6),
                    Course(name: "Üld- ja sotsiaalpsühholoogia", eapCount: 6),
                    Course(name: "ELU - Erialasid Lõimiv Uuendus", eapCount: 6)
                ]
            ),
            Module(
                name: "Noorsootöö alused",
                courses: [
                    Course(name: "Noored ja noortegrupid", eapCount: 6),
                    Course(name: "Noorsootöö alused", eapCount: 6),
                    Course(name: "Haavatavad sihtrühmad noorsootöös", eapCount: 6),
                    Course(name: "Sotsiaalpedagoogika ja nõustamise alused", eapCount: 6),
                    Course(name: "Noorsootöötaja identiteet ja professionaalsus", eapCount: 6)
                ]
            ),
            Module(
                name: "Noorsootöö keskkonnad ja meetodid",
                courses: [
                    Course(name: "Laagritöö", eapCount: 3),
                    Course(name: "Mitteformaalõppe keskkonnad ja meetodid", eapCount: 6),
                    Course(name: "Noorte ettevõtlikkus ja karjäär", eapCount: 6),
                    Course(name: "Kultuuridevaheline dialoog ja noorsootöö mitmekultuurilises keskkonnas", eapCount: 3),
                    Course(name: "Koolinoorsootöö", eapCount: 3),
                    Course(name: "Tervisekasvatus noorsootöös", eapCount: 3)
                ],
                submodules: [
                    Submodule(
                        name: "Valikained",
                        courses: [
                            Course(name: "Haridustehnoloogia õppeprotsessis", eapCount: 3),
                            Course(name: "Foorumteater mitteformaalse õppe meetodina", eapCount: 3),
                            Course(name: "Kogukonnatöö ja mobiilne noorsootöö", eapCount: 3),
                            Course(name: "Väärtuskasvatus ja inimõigused noorsootöö kontekstis", eapCount: 3)
                        ]
                    )
                ]
            ),
            Module(
                name: "Noorsootöö korraldamine",
                courses: [
                    Course(name: "Kaasav noorsootöö", eapCount: 6),
                    Course(name: "Arendus- ja võrgustikutöö noortevaldkonnas", eapCount: 3),
                    Course(name: "Noortepoliitika ja noorsootöö korraldus", eapCount: 6),
                    Course(name: "Projektitöö noorsootöös", eapCount: 6),
                    Course(name: "Infotöö, kriitiline mõtlemine ja suhtlus noorsootöös", eapCount: 6)
                ]
            ),
            Module(
                name: "Uurimistöö",
                courses: [
                    Course(name: "Uurimistöö alused ja meetodid", eapCount: 6),
                    Course(name: "Uurimisseminar I", eapCount: 3),
                    Course(name: "Uurimisseminar II", eapCount: 3)
                ]
            ),
            Module(
                name: "Erialane inglise keel",
                courses: [
                    Course(name: "Erialane inglise keel I", eapCount: 6),
                    Course(name: "Erialane inglise keel II", eapCount: 6)
                ]
            ),
            Module(
                name: "Vabaained",
                courses: [
                    Course(name: "Vabaained", eapCount: 16)
                ]
            ),
            Module(
                name: "Lõputöö",
                courses: [
                    Course(name: "Lõputöö", eapCount: 6)
                ]
            )
        ]
    )
]
