//Solution goes in Sources
struct SumOfMultiples {
    
    static func toLimit(_ value:Int, inMultiples: [Int]) -> Int{
        
        var arrayResult : [Int] = [Int]()
        
        guard value > 0 , value > 1 else{
            return 0
        }
        let limit = Array(1...value-1)
        
        for num in inMultiples{
            
            arrayResult += limit.filter {
                
                 $0.isMultiple(of: num) && !arrayResult.contains($0)
            }
        }
        
        return arrayResult.reduce(0,+ )
        
    }
}
