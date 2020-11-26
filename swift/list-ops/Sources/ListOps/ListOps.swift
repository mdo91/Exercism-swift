//Solution goes in Sources
struct ListOps {
    
    static func append(_ array: [Int],_ secondArray:[Int]) -> [Int]{
        var arrayResult = Array(repeating: Int(), count: array.count + secondArray.count)

        
        
        for index in 0..<array.count {
            
            arrayResult[index] = array[index]
        }
        for index in 0..<secondArray.count{
            arrayResult[array.count + index] = secondArray[index]
        }
        
        return arrayResult
        
    }
    
    static func concat(_ array: [Int],_ secondArray:[Int]?=nil, _ thirdArray:[Int]?=nil, _ forthArray:[Int]?=nil ) -> [Int]{
        guard (secondArray != nil) && thirdArray != nil && forthArray != nil  else {
            return [Int]()
        }
        var arrayResult = Array(repeating: Int(), count: array.count + secondArray!.count + thirdArray!.count + forthArray!.count)
  
        for index in 0..<array.count {
            
            arrayResult[index] = array[index]
        }
        for index in 0..<secondArray!.count{
            arrayResult[array.count + index] = secondArray![index]
        }
        for index in 0..<thirdArray!.count{
            arrayResult[array.count + secondArray!.count + index] = thirdArray![index]
        }
        
        for index in 0..<forthArray!.count{
            arrayResult[array.count + secondArray!.count + thirdArray!.count + index] = forthArray![index]
        }
        
        return arrayResult
    }
    
    static func filter(_ array: [Int],_ closure: (Int)->Bool) -> [Int]{
        
        var arrayResult : [Int] = []
        var resultIndex = 0
        for index in 0..<array.count{
            
            if closure(array[index]){
                arrayResult.insert(array[index], at: resultIndex)
                resultIndex += 1
            }
        }

        return arrayResult
    }
    
    static func length(_ array: [Int])-> Int{
        
        return array.count
    }
    
    static func map(_ array: [Int], _ closuer : (Int)->Int) -> [Int]{
        
        var result : [Int] = []
        for index in 0..<array.count{
            result.insert(closuer(array[index]), at: index)
        }
        return result
    }
    
    static func foldLeft(_ array: [Int], accumulated: Int, combine: (Int, Int) ->Int )->Int{
        var result = 0
        for index in 0..<array.count{
            result += array[index]
        }
        return combine(accumulated,result)

    }
    
    static func foldRight(_ array:[Int],accumulated: Int, combine:(Int, Int) ->Int ) ->Int{
        
        guard !array.isEmpty else{
            return accumulated
        }
        var result : Int?
        for index in 0..<array.count{
            if result != nil{
                result! = combine(result! ,(array[array.count - index - 1]))
            }else{
                result = ((array[array.count - index - 1]) )
                
            }
           
        }

        return combine(accumulated, result! )
        
    }
    
    static func foldRight(_ array:[String],accumulated: String, combine:(String, String) -> String ) ->String{
        var result = ""
        for index in 0..<array.count{
            result += array[index]
        }
        return combine(result,accumulated)
    }
    
    static func reverse(_ array:[Int]) -> [Int]{
        
        var result = array
        for index in 0..<array.count{
            result[index] = array[array.count - index - 1]
        }
        return result
    }
}


