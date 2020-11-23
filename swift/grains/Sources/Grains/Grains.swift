//Solution goes in Sources
import Foundation
class Grains {
    
    static var total:UInt64 {

        _ = try! Grains.square(64)
        return results.reduce(0, +)
    }
    
    static var results : [UInt64] = [UInt64]()


    static func square(_ num:Int) throws -> UInt64{
     
        guard num < 65 else{
            throw GrainsError.inputTooHigh("Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        guard  num > 0 else{
            throw GrainsError.inputTooLow("Input[\(num)] invalid. Input should be between 1 and 64 (inclusive)")
        }

    
        results = [UInt64]()
   
        for number in 1...num{
            if number == 1{
                results.append(UInt64(number))
            }else if number == 2{
                results.append(UInt64(number))
            }else{
                print("results count \(results.count) number \(number)")
                let previousGainsAmount = results[number - 2] * 2
                results.append(previousGainsAmount)
            }

        }

        return results[num-1]
    }
    
    public enum GrainsError:Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }
}


