import Foundation

extension Date {
    var dateString: String {
        return self.formatted(date: .numeric, time: .omitted)
    }
    
    var timeString: String {
        return self.formatted(date: .omitted, time: .shortened)
    }
    
    var dateAndTimeString: String {
        return self.formatted(date: .numeric, time: .shortened)
    }
}
