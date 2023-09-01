import Foundation
import MapKit

extension MKMapSnapshotter {
    func snapshot() async throws -> MKMapSnapshotter.Snapshot {
        return try await withCheckedThrowingContinuation { continuation in
            self.start { (snapshot, error) in
                if let snapshot = snapshot {
                    continuation.resume(returning: snapshot)
                } else if let error = error {
                    continuation.resume(throwing: error)
                } else {
                    continuation.resume(throwing: NSError(domain: "UnknownError", code: 0, userInfo: nil))
                }
            }
        }
    }
}
