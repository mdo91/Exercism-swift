//Solution goes in Sources
struct Raindrops {
    var factors = [3,5,7]
    var number:Int
    
    var sounds :String{
        get{
            let result  =  factors.filter({
                self.number.isMultiple(of: $0)})
            let finalResult = result.map({ x in
                if x == 3 {
                    return "Pling"}
                    if x == 5{
                        return "Plang"}
                    if x == 7{
                        return "Plong"}
                return ""
            }) as [String]
            
            guard !result.isEmpty else {
                return "\(self.number)"
            }
            
            var msg = ""
            for message in finalResult{
                msg += message
            }
            
            return msg
        }
        
    }
    init(_ number: Int){
        self.number = number
    }
}
