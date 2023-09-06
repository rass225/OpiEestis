import UIKit

struct NetworkManager {
    private let firebase: FirebaseManager
    
    init(
        firebase: FirebaseManager = .init()
    ) {
        self.firebase = firebase
    }
}

extension NetworkManager {
    func fetchColleges(completion: @escaping (Result<[College], Error>) -> ()) {
        firebase.fetchSchools(completion: completion)
    }
    
    func fetchMajors(_ ref: String) async -> [Major]? {
        if let url = Bundle.main.url(forResource: ref, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Major].self, from: data)
                return jsonData
            } catch {
                print("Error loading file:", error)
            }
        } else {
            print("Error loading file:", ref)
        }
        return nil
    }
    
    func fetchCurriculumData(from urlString: String) async throws -> Data {
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        if let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) {
            return data
        } else if let httpResponse = response as? HTTPURLResponse {
            throw URLError(.badServerResponse, userInfo: ["HTTPStatusCode": httpResponse.statusCode])
        } else {
            throw URLError(.unknown)
        }
    }
    
    func fetchImages(urls: [URL]) async -> [URL: UIImage?] {
        var imageCache: [URL: UIImage?] = [:]
        
        await withTaskGroup(of: (URL, UIImage?).self) { group in
            for url in urls {
                group.addTask {
                    if let image = await self.fetchImageAsync(from: url) {
                        return (url, image)
                    }
                    return (url, nil)
                }
            }
            
            for await (url, image) in group {
                imageCache[url] = image
            }
        }
        
        return imageCache
    }
    
    func openLink(with url: URL) {
        UIApplication.shared.open(url)
    }
    
    func openLink(with urlString: String) {
        if let validLink = URL(string: urlString) {
            UIApplication.shared.open(validLink)
        } else {
            print("Not valid URL string: \(urlString)")
        }
    }
    
    func callNumber(with phoneNumber: String) {
        let baseUrl = OEAppearance.Locale.network.telHttps
        let urlString = baseUrl + phoneNumber
        if let validLink = URL(string: urlString) {
            UIApplication.shared.open(validLink)
        } else {
            print("Not valid phone number: \(urlString)")
        }
    }
    
    func openMail(with emailAddress: String) {
        let prefix = "mailto:"
        let urlString = prefix + emailAddress
        if let validLink = URL(string: urlString) {
            UIApplication.shared.open(validLink)
        } else {
            print("Not valid email: \(urlString)")
        }
    }
}

private extension NetworkManager {
    func fetchImageAsync(from url: URL) async -> UIImage? {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return UIImage(data: data)
        } catch {
            print("Error fetching image async: \(error)")
            return nil
        }
    }
}
