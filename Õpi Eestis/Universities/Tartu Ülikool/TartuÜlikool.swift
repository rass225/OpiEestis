import Foundation
var tartuÜlikool = School(
    name: .tartuÜlikool,
    description: ["Tartu Ülikool on vanim ja suurim Eestis tegutsev ülikool. Ainukese ülikoolina Baltimaades kuulub Tartu Ülikool 1,2% maailma parimate sekka. Tartu Ülikooli asutamisaastaks loetakse aastat 1632, kuid eestikeelse ülikoolina alustas see tööd alles 1919. aastal. Tartu Ülikool on kiirelt arenev rahvusvaheline teadusülikool, rahvusülikoolina Eesti akadeemilise vaimsuse keskus ja ühiskonna arengu eestvedaja. Tartu Ülikooli missiooniks, tema olemise ülimaks põhjuseks, on hoida alal ja kanda endas akadeemilist vaimsust, mille sihiks on teaduse kaudu tõeni jõudmine. Ülikooli eesmärgiks on anda oma panus maailmateadusesse, edendada teaduspõhisust Eesti ühiskonnas ja tagada Eesti haritlaskonna järelkasv.", "Tartu Ülikool on ainus Baltimaade ülikool maailma parimate ülikoolide 1,2% seas: kahes maailma mainekaimate hulka kuuluvas ülikoolide edetabelis esimese 300 hulgas (285. koht edetabelis QS World University Rankings 2021 ja 251.–300. koht edetabelis Times Higher Education World University Rankings 2021). Uue Euroopa parim ülikool (esikoht edetabelis Times Higher Education New Europe Ranking 2018) ning tärkava Euroopa ja Kesk-Aasia regiooni paremuselt teine ülikool (QS University Rankings: Emerging Europe and Central Asia 2021)", "Tartu Ülikool on maailma 1% viidatuimate ülikoolide ja teadusasutuste hulgas 12 teadusvaldkonnas. 64 Tartu Ülikooli teadlast kuulub 1% maailma enim viidatud teadlaste hulka (Web of Science)", "Üle poole Eesti doktoritöödest kaitstakse Tartu Ülikoolis. 2020. aastal kaitsti esialgsetel andmetel 111 doktoritööd. Üle poole Eesti teaduspublikatsioonidest avaldavad Tartu Ülikooli teadlased. Viimasel viiel aastal on Tartu Ülikooli teadlased avaldanud keskmiselt 3500 publikatsiooni aastas, sh keskmiselt 1300 Web of Science ja Scopus andmebaasis teaduspublikatsiooni."],
    location: Location(city: "Tartu", aadress: "Ülikooli 18", coordinates: "https://maps.apple.com/?address=University%20of%20Tartu%20main%20building,%20%C3%9Clikooli%2018,%2050090%20Tartu,%20Estonia&auid=7529161353632667989&ll=58.381114,26.719898&lsp=9902&q=Tartu%20%C3%9Clikool&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAESJikjIwyZMjBNQDEYY6v/GrY6QDmh+DH1WDFNQEF8S6Tvfbo6QFAE&t=m"),
    website: "https://ut.ee/en",
    students: 13412,
    contact: ContactInfo(phonenumber: "+3727375651", address: "Ülikooli 18", email: "info@ut.ee"),
    socialMedia: [
        SocialMedia(website: "Twitter", link: "https://twitter.com/unitartu"),
        SocialMedia(website: "Facebook", link: "112202581471"),
        SocialMedia(website: "Youtube", link: "https://www.youtube.com/user/tartuylikool/featured"),
        SocialMedia(website: "Instagram", link: "https://www.instagram.com/unitartu/?hl=en")
    ],
    logo: "Tartu Ülikool",
    image: "UniversityTartuImage",
    internationalStudents: 1800,
    worldRanking: 285,
    vastuvõtt: ["01.02 - 15.04.2021", "17.06 - 30.06.2021"],
    education: tartuÜlikoolRaka + tartuÜlikoolMaka + tartuÜlikoolBaka + tartuÜlikoolInter + tartuÜlikoolDoktor
)
