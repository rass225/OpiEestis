import Foundation
import SwiftUI
import Combine

class SchoolViewPresenter: ObservableObject {
    
    
    
    let size = SizeObject()
    
    @Published var descriptionIsShown = false
    @Published var navigationSelectionTag: Int? = 0
    
    
    
    func toSocialMedia(socialMedia: SocialMedia) {
        if socialMedia.website == "Facebook" {
            let appURL = NSURL(string: "fb://profile/\(socialMedia.link)")!
            UIApplication.shared.open(appURL as URL)
        } else {
            guard let url = URL(string: socialMedia.link as String) else { return }
            UIApplication.shared.open(url)
        }
    }
    
    func toAbout() { descriptionIsShown.toggle() }
    
    
}
