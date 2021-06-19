import SwiftUI

public extension Color {
    static let customBlue = Color.init(red: 20/255, green: 200/255, blue: 175/255)
    static let customGreen = Color.init(red: 20/255, green: 175/255, blue: 255/255)
    static let whiteDim = Color.init(red: 247/255, green: 247/255, blue: 247/255)
    static let whiteDim1 = Color.init(red: 242/255, green: 242/255, blue: 242/255)
    static let whiteDim2 = Color.init(red: 232/255, green: 232/255, blue: 232/255)
    static let white = Color.white
    static let black = Color.black
    
    // ÕE theme
    static let oeBlue = Color.init(red: 0, green: 118/255, blue: 200/255)
    
    internal enum SchoolThemes {
        internal enum TalTech {
            internal static let base = Color.init(red: 199/255, green: 24/255, blue: 129/255)
            internal static let bachelor = Color.init(red: 239/255, green: 74/255, blue: 179/255)
            internal static let masters = Color.init(red: 199/255, green: 24/255, blue: 129/255)
            internal static let doctor = Color.init(red: 79/255, green: 174/255, blue: 219/255)
            internal static let rakendus = Color.init(red: 170/255, green: 114/255, blue: 209/255)
            internal static let kutse = Color.black
        }
        internal enum TLÜ {
            internal static let base = Color.init(red: 165/255, green: 32/255, blue: 36/255)
            internal static let bachelor = Color.init(red: 220/255, green: 92/255, blue: 96/255)
            internal static let masters = Color.init(red: 165/255, green: 32/255, blue: 36/255)
            internal static let doctor = Color.init(red: 165/255, green: 132/255, blue: 136/255)
            internal static let rakendus = Color.init(red: 100/255, green: 30/255, blue: 30/255)
            internal static let kutse = Color.black
        }
        internal enum Mainor {
            internal static let base = Color.init(red: 250/255, green: 148/255, blue: 17/255)
            internal static let bachelor = Color.init(red: 250/255, green: 148/255, blue: 17/255)
            internal static let masters = Color.init(red: 200/255, green: 100/255, blue: 17/255)
            internal static let doctor = Color.black
            internal static let rakendus = Color.black
            internal static let kutse = Color.black
        }
        internal enum EKA {
            internal static let base = Color.init(red: 0, green: 210/255, blue: 160/255)
            internal static let bachelor = Color.init(red: 0, green: 210/255, blue: 160/255)
            internal static let masters = Color.init(red: 80/255, green: 150/255, blue: 120/255)
            internal static let doctor = Color.init(red: 110/255, green: 90/255, blue: 80/255)
            internal static let rakendus = Color.black
            internal static let kutse = Color.black
        }
        internal enum Lennuakadeemia {
            internal static let base = Color.init(red: 11/255, green: 30/255, blue: 91/255)
            internal static let bachelor = Color.black
            internal static let masters = Color.black
            internal static let doctor = Color.black
            internal static let rakendus = Color.init(red: 11/255, green: 30/255, blue: 91/255)
            internal static let kutse = Color.black
        }
        internal enum EMÜ {
            internal static let base = Color.init(red: 12/255, green: 108/255, blue: 76/255)
            internal static let bachelor = Color.init(red: 151/255, green: 17/255, blue: 53/255)
            internal static let masters = Color.init(red: 12/255, green: 108/255, blue: 76/255)
            internal static let doctor = Color.init(red: 102/255, green: 158/255, blue: 156/255)
            internal static let rakendus = Color.black
            internal static let kutse = Color.black
        }
        internal enum EBS {
            internal static let base = Color.init(red: 162/255, green: 133/255, blue: 95/255)
            internal static let bachelor = Color.init(red: 162/255, green: 133/255, blue: 95/255)
            internal static let masters = Color.init(red: 212/255, green: 183/255, blue: 145/255)
            internal static let doctor = Color.init(red: 88/255, green: 92/255, blue: 95/255)
            internal static let rakendus = Color.black
            internal static let kutse = Color.black
        }
        internal enum Kaitsevägi {
            internal static let base = Color.init(red: 232/255, green: 177/255, blue: 22/255)
            internal static let bachelor = Color.black
            internal static let masters = Color.init(red: 192/255, green: 142/255, blue: 56/255)
            internal static let doctor = Color.black
            internal static let rakendus = Color.init(red: 232/255, green: 177/255, blue: 22/255)
            internal static let kutse = Color.black
        }
        internal enum Pallas {
            internal static let base = Color.init(red: 216/255, green: 35/255, blue: 42/255)
            internal static let bachelor = Color.init(red: 216/255, green: 35/255, blue: 42/255)
            internal static let masters = Color.black
            internal static let doctor = Color.black
            internal static let rakendus = Color.black
            internal static let kutse = Color.black
        }
        internal enum Sisekaitse {
            internal static let base = Color.init(red: 13/255, green: 56/255, blue: 102/255)
            internal static let bachelor = Color.black
            internal static let masters = Color.init(red: 63/255, green: 136/255, blue: 122/255)
            internal static let doctor = Color.black
            internal static let rakendus = Color.init(red: 13/255, green: 56/255, blue: 102/255)
            internal static let kutse = Color.init(red: 120/255, green: 176/255, blue: 200/255)
        }
        internal enum TTK {
            internal static let base = Color.init(red: 1/255, green: 147/255, blue: 84/255)
            internal static let bachelor = Color.black
            internal static let masters = Color.black
            internal static let doctor = Color.black
            internal static let rakendus = Color.init(red: 1/255, green: 147/255, blue: 84/255)
            internal static let kutse = Color.black
        }
        internal enum TartuTervishoid {
            internal static let base = Color.init(red: 238/255, green: 28/255, blue: 41/255)
            internal static let bachelor = Color.black
            internal static let masters = Color.init(red: 230/255, green: 110/255, blue: 135/255)
            internal static let doctor = Color.black
            internal static let rakendus = Color.init(red: 238/255, green: 28/255, blue: 41/255)
            internal static let kutse = Color.init(red: 168/255, green: 50/255, blue: 50/255)
        }
        internal enum TÜ {
            internal static let base = Color.init(red: 8/255, green: 76/255, blue: 156/255)
            internal static let bachelor = Color.init(red: 88/255, green: 176/255, blue: 206/255)
            internal static let masters = Color.init(red: 8/255, green: 76/255, blue: 156/255)
            internal static let doctor = Color.init(red: 138/255, green: 146/255, blue: 136/255)
            internal static let rakendus = Color.init(red: 160/255, green: 116/255, blue: 106/255)
            internal static let kutse = Color.black
        }
        internal enum MuusikaAkadeemia {
            internal static let base = Color.init(red: 0/255, green: 0/255, blue: 0/255)
            internal static let bachelor = Color.init(red: 0/255, green: 0/255, blue: 0/255)
            internal static let masters = Color.init(red: 100/255, green: 100/255, blue: 100/255)
            internal static let doctor = Color.init(red: 200/255, green: 200/255, blue: 200/255)
            internal static let rakendus = Color.black
            internal static let kutse = Color.black
        }
    }
}
