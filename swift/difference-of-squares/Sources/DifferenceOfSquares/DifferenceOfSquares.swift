//Solution goes in Sources
import Foundation
struct Squares {
    
    
    var squareOfSum : Int {
        var result = 0.0
        
        for num in 1...value{
            result += Double(num)
        }
        
        return Int(pow(result, 2))
    }
    var sumOfSquares: Int  {
        
        var result = 0.0

        for num in 1...value{
            result += pow(Double(num), 2)
        }
        
        return Int(result)
    }
    
    var differenceOfSquares: Int{
        
        return squareOfSum - sumOfSquares
    }
    
    var value:Int

    init(_ value:Int) {
        self.value = value
        
        
    }
}
