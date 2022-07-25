var ebs = School(
    name: .ebs,
    description: ["1988. aastal asutatud Tallinnas ja Helsingis tegutsev Estonian Business School (EBS) on vanim äriharidust pakkuv ülikool Baltimaades. Enam kui 1400 tudengiga EBSi eesmärk on anda ettevõtlikele inimestele akadeemilisi teadmisi bakalaureuse-, magistri- ning doktoriõppe tasemel ning edendada praktilisi oskusi teadmiste edukaks rakendamiseks. EBSi missioon on aidata õppuritel seada ning saavutada nende karjääri-, finants- ja elueesmärke läbi kraadi- ja elukestva õppe, kvaliteetse kontaktibaasi ning praktilisel kogemusel põhineva eksperimenteerimise. Aidata organisatsioonidel saavutada nende eesmärke läbi elukestvalt õppiva inimressursi ning EBSi kogunenud ja kaasatud oskusteadmiste rakendamise. EBSi visioon on olla rahvusvahelise tippakrediteeringuga elukestva õppe ja teadmiste jagamise kogukond. EBS kasutab ja arendab õppurite eesmärkide saavutamiseks sobivamaid õppemeetodeid ja -vorme lähtudes oma missioonist. EBS on avalikele ja eraõiguslikele organisatsioonidele partneriks uute toodete, teenuste ja protsesside arendamisel. EBS on kompetentsikeskus töötajate ja meeskondade oskuste ning arengust tuleneva motivatsiooni kasvatamisel."],
    location: Location(
        city: .tallinn,
        aadress: "A. Lauteri 3",
        latitude: 59.432066,
        longitude: 24.756594,
        mapLink: .ebs_tallinn,
        branches: [
            Branch(city: .helsingi, address: "Mechelininkatu 3c", latitude: 60.1694493, longitude: 24.9191788, mapLink: .ebs_helsingi),
            Branch(city: .tallinn, address: "A. Lauteri 3", latitude: 59.432066, longitude: 24.756594, mapLink: .ebs_tallinn)
        ]
    ),
    website: "https://www.ebs.ee/",
    students: 1400,
    contact: ContactInfo(phonenumber: "+3726651340", address: "A. Lauteri 3", email: "vastuvott@ebs.ee"),
    socialMedia: [
        SocialMedia(website: .twitter, link: "https://twitter.com/ebsestonia?lang=en"),
        SocialMedia(website: .facebook, link: "58125552133"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/user/ebsikasest/videos"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/estonianbusinessschool/")],
    logo: .ebs,
    image: .ebs,
    imageUrls: [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Estonian_Business_School.JPG/1920px-Estonian_Business_School.JPG",
        "https://www.studyinestonia.ee/sites/default/files/2021-03/ebscampus1.jpg"
    ],
    internationalStudents: 162,
    worldRanking: 6808,
    vastuvõtt: ["01.12.2020 - 04.01.2021"]
)
