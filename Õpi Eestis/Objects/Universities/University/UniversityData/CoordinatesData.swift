import Foundation

enum coordinates: String, CaseIterable, Codable {
    case mainor = "https://maps.apple.com/?address=Suur-S%C3%B5jam%C3%A4e%2010A,%2011415%20Tallinn,%20Estonia&auid=7223836979417184260&ll=59.422706,24.800080&lsp=9902&q=Mainori%20K%C3%B5rgkool&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJiknKVU4ibVNQDEXvQTfkso4QDml/nqUr7ZNQEHTJ60sGM84QFAE&t=m"
    case kunstiAkadeemia = "https://maps.apple.com/?address=Lembitu%2012,%2010114%20Tallinn,%20Estonia&auid=11345190248154032345&ll=59.430483,24.755400&lsp=9902&q=Eesti%20Kunstiakadeemia%20-%20Vabade%20Kunstide%20Teaduskond&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJilwcfmlhbZNQDH3+rBLHb84QDnuRh8CrLdNQEHXoMjcosM4QFAE&t=m"
    case lennuAkadeemia = "https://maps.apple.com/?address=Lennu,%2061707%20%C3%9Clenurme,%20Estonia&auid=17520612382695991048&ll=58.310812,26.693838&lsp=9902&q=Estonian%20Aviation%20Academy&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJCnTBJg/qydNQDFr39lML7E6QDkfydIe5idNQEEx2w5xD7I6QA%3D%3D&t=m"
    case emu = "https://maps.apple.com/?address=F.%20R.%20Kreutzwaldi%201A,%2051014%20Tartu,%20Estonia&auid=5131150893300068101&ll=58.388475,26.697252&lsp=9902&q=Maa%C3%BClikooli%20Peahoone&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJinw/tNZIzFNQDFDHGBmMbA6QDlu1Pm1STJNQEHtGD2SlLQ6QFAE&t=m"
    case muusikaAkadeemia = "https://maps.apple.com/?address=R%C3%A4vala%20puiestee%2016,%2010141%20Tallinn,%20Estonia&auid=221645104458708084&ll=59.431273,24.748163&lsp=9902&q=Estonian%20Academy%20of%20Music%20and%20Theatre&_ext=ChkKBAgEEHUKBAgFEAMKBQgGEN8BCgQIChAAEiYpII+Ffq22TUAx5Hb+iUe9OEA5nmSr2tO3TUBBava7Jc3BOEBQBA%3D%3D&t=m"
    case ebs = "https://maps.apple.com/?address=A.%20Lauteri%203,%2010114%20Tallinn,%20Estonia&auid=15147328229495807121&ll=59.432066,24.756594&lsp=9902&q=Estonian%20Business%20School&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJikGoKxkvbZNQDGd6cz/b784QDmEddLA47dNQEH/H8qf9cM4QFAE&t=m"
    case kaitseväeAkadeemia = "https://maps.apple.com/?address=V%C3%B5ru%201a,%2050111%20Tartu,%20Estonia&auid=5114530989716375948&ll=58.372793,26.722121&lsp=9902&q=Kaitsev%C3%A4e%20%C3%9Chendatud%20%C3%95ppeasutused&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJil1vkRSEi9NQDHBUwQaq7Y6QDnzk2quODBNQEFLrFDCDbs6QFAE&t=m"
    case pallas = "https://maps.apple.com/?address=T%C3%A4he%2038B,%2050103%20Tartu,%20Estonia&auid=932124786654559867&ll=58.369390,26.729624&lsp=9902&q=K%C3%B5rgem%20Kunstikool%20Pallas&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJCkKqlfMtC5NQDHiSQKBj7g6QDmIf30o2y9NQEH6TBAS8rw6QA%3D%3D&t=m"
    case sisekaitseAkadeemia = "https://maps.apple.com/?address=Kase%2061,%2012012%20Tallinn,%20Estonia&auid=14522038457197770030&ll=59.455648,24.842846&lsp=9902&q=Sisekaitseakadeemia&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJilEsSZR27lNQDFYWU0YedQ4QDnChkytAbtNQEHQsbaN/9g4QFAE&t=m"
    case tehnikaKõrgkool = "https://maps.apple.com/?address=P%C3%A4rnu%20maantee%2062,%2010135%20Tallinn,%20Estonia&auid=1547570608297689757&ll=59.426357,24.741383&lsp=9902&q=Tallinna%20Tehnikak%C3%B5rgkool&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJCnGzE+s/7VNQDHNwrmMiLs4QDlEonUIJrdNQEF13wX6DcA4QA%3D%3D&t=m"
    case taltech = "https://maps.apple.com/?address=Ehitajate%20tee%205,%2012618%20Tallinn,%20Estonia&auid=13681828252165149428&ll=59.395331,24.671964&lsp=9902&q=Tallinn%20University%20of%20Technology&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAESJikcKEv5BrJNQDHixfvwwqk4QDma/XBVLbNNQEG0HPlOR644QFAE&t=m"
    case tallinnaÜlikool = "https://maps.apple.com/?address=Narva%20maantee%2025,%2010120%20Tallinn,%20Estonia&auid=1913970386826834602&ll=59.439310,24.771981&lsp=9902&q=Tallinn%20University&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAESJillk7LsmrdNQDE6VsJTRsM4QDnjaNhIwbhNQEEKLfcuzMc4QFAE&t=m"
    case tartuTervishoid = "https://maps.apple.com/?address=Nooruse%205,%2050411%20Tartu,%20Estonia&auid=1368067964328569308&ll=58.365378,26.691359&lsp=9902&q=Tartu%20Tervishoiu%20K%C3%B5rgkool&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJikZyXlLLy5NQDGmPQ7Twq46QDmXnp+nVS9NQEFgMfBCJbM6QFAE&t=m"
    case tallinnaTervishoid = "https://maps.apple.com/?address=K%C3%A4nnu%2067,%2013418%20Tallinn,%20Estonia&auid=8628042433900634829&ll=59.408920,24.709745&lsp=9902&q=Tallinna%20Tervishoiu%20K%C3%B5rgkool&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJinvbI/PxrNNQDFyngerRrM4QDltQrUr7bRNQEFcEHSAy7c4QFAE&t=m"
    case tartuÜlikool = "https://maps.apple.com/?address=University%20of%20Tartu%20main%20building,%20%C3%9Clikooli%2018,%2050090%20Tartu,%20Estonia&auid=7529161353632667989&ll=58.381114,26.719898&lsp=9902&q=Tartu%20%C3%9Clikool&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAESJikjIwyZMjBNQDEYY6v/GrY6QDmh+DH1WDFNQEF8S6Tvfbo6QFAE&t=m"
    case undefined = ""
}
