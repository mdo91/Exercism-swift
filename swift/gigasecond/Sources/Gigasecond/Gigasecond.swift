//Solution goes in Sources
import Foundation
struct Gigasecond:CustomStringConvertible {
    
    var description: String {
        
        get {return self.date}
    }
    
    var date : String
    
    init?(from givenDate:String) {

        guard let Gs = Gigasecond.calculateGs(date:givenDate) else{
            return nil
        }
        self.date = Gs
    }

    static func calculateGs(date:String) -> String?{
        
        let RFC3339DateFormatter = DateFormatter()
        let billionSec = 1_000_000_000
        RFC3339DateFormatter.locale = Locale(identifier: "en_US_POSIX")
        RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        RFC3339DateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        guard let givenDate = RFC3339DateFormatter.date(from: date) else{
            return nil
        }
        
        let date = Date(timeInterval: Double(billionSec), since: givenDate)
        return RFC3339DateFormatter.string(from: date)
    }

}
