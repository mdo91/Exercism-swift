//Solution goes in Sources
typealias closure = (String) -> [String]

extension Array{

    func accumulate(_ closure : ((_ : Int) -> Int) ) -> [Int] {

        var val = [Int]()
        
        for x in self{
            let result = x as! Int
            val.append(closure(result))
           
        }

        return val
    }
    
    func accumulate(_ closure : (String) -> String ) -> [String] {

        var val = [String]()
        
        for x in self{
            let result = x as! String
            val.append(closure(result))

        }
        
        return val

    }
    
    func accumulate(_ closure : closure) -> [[String]]{
        
        var val = [[String]]()
        
        for x in self{
            let result = x as! String
            val.append(closure(result))

        }
        
        return val

    }
    
    
}
