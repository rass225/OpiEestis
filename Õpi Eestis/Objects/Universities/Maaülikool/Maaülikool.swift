var maaülikool = School(
    name: .maaülikool,
    description: ["Eesti Maaülikool on ainus ülikool Eestis, mis kuulub põllumajanduse ja metsanduse valdkonnas maailma 50 parima ülikooli edetabelisse, olles 48. kohal. Maaülikool kuulub taime- ja loomateaduste ning keskkonna ja ökoloogia valdkonnas maailmas 1% enim viidatud teadusasutuste hulka.", "Meie vastutus seisneb põllumajanduse ja maamajanduse, metsanduse, keskkonnateaduste, veterinaarmeditsiini ja loomakasvatuse, tehnika- ja inseneriteaduste koostoimes. Maaülikool loob ja jagab teadmisi biomajanduse edendajatele looduse ja inimese hüvanguks.", "Modernses ülikoolilinnakus õpib ligi 3000 tudengit ning töötab enam kui 900 inimest, kellest umbes pooled teevad rahvusvahelisel tasemel teadus- ja õppetööd.", "Meie enam kui 27 000 vilistlast hindavad maaelu põhiväärtusi ning kujundavad säästlikku ja looduslähedast eluhoiakut.", "Eesti Maaülikooli koosseisu kuulub 5 instituuti, 1 kolledž ja 2 teaduskeskust. Suur osa meie teadus- ja õppetööst viiakse läbi ligi 40 hektaril laiuvas ülikoolilinnakus, kus õppehoonete ja raamatukogu kõrval on silmside kaugusel Tartu üks pilkupüüdvamaid spordihooneid ning kõrgeim üliõpilasühiselamu. Teadus- ja praktikabaasid asuvad lisaks ka Järvselja õppe- ja katsemetskonnas, Polli Aiandusuuringute Keskuses, Rõhu katsejaamas ning Võrtsjärve kaldal asuvas Limnoloogiakeskuses.", "Eesti Maaülikool kannab praegust nime 2005. aastast. Ülikooli juured ulatuvad aastasse 1873, mil Tartus alustas tööd veterinaariakool. Aastatel 1951-1991 kandis kõrgkool Eesti Põllumajanduse Akadeemia ning aastatel 1991-2005 Eesti Põllumajandusülikooli nime."],
    location: Location(city: .tartu, aadress: "Kreutzwaldi 1", coordinates: .emu),
    website: "https://www.emu.ee/",
    students: 2900,
    contact: ContactInfo(phonenumber: "+3727313001", address: "Kreutzwaldi 1", email: "info@emu.ee"),
    socialMedia: [
        SocialMedia(website: .twitter, link: "https://twitter.com/maaylikool?lang=en"),
        SocialMedia(website: .facebook, link: "319434497842"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/user/EestiMaaulikool"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/maaylikool/?hl=en")
    ],
    logo: .emu,
    image: .emu,
    internationalStudents: 120,
    worldRanking: 1906,
    vastuvõtt: ["28.06.2021 - 07.07.2021"]
)

let maaülikoolEducation: [majorsMinors] = maaülikoolBaka + maaülikoolMaka + maaülikoolRaka + maaülikoolInter + maaülikoolDoktor
