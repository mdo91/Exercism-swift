//Solution goes in Sources

public extension Array{
    func keep<T>(completion: @escaping (_ num: T) -> (Bool)) -> [T]{
        var result : [T] = []
        for item in self{
            
            if completion(item as! T){
                result.append(item as! T)
            }
        }
        return result
    }
    
}

public extension Array{
    func discard<T>(completion: @escaping (T) -> (Bool)) -> [T]{
        
        var result : [T] = []
        for item in self{
            
            if !completion(item as! T){
                result.append(item as! T)
            }
        }
        return result
    }
    
}
