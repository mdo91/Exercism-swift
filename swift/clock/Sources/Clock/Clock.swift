//Solution goes in Sources
import Foundation
class Clock:Equatable {
    
     var description:String{
        
        var totalTimeInSeconds = 0
        if let min = minutes{
            totalTimeInSeconds = (hours) * 60 * 60
            totalTimeInSeconds += (min) * 60
        }else{
            totalTimeInSeconds = (hours) * 60 * 60
        }
        
        let timeInterval = TimeInterval(totalTimeInSeconds)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)

        let givenDate = Date(timeIntervalSinceReferenceDate: 0)
        let date = Date(timeInterval: timeInterval, since: givenDate)
        
        return dateFormatter.string(from: date)
        
    }
    var hours:Int
    var minutes:Int?

    init(hours:Int,minutes:Int? = nil) {
        self.hours = hours
        self.minutes = minutes

    }
    
     func add(minutes: Int) -> String{
        guard self.minutes != nil else{
            self.minutes = minutes
            return description
        }
        self.minutes! += minutes
     
        return self.description
      
    }
    
    func subtract(minutes: Int)->String{
        guard self.minutes != nil else{
            self.minutes = minutes
            return description
        }
        self.minutes! -= minutes
        return self.description
    }
    
}
extension Clock{
    static func == (lhs: Clock, rhs: Clock) -> Bool {
        return lhs.description == rhs.description
    }
}
