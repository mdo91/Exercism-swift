//Solution goes in Sources

struct PhoneNumber: CustomStringConvertible {
    
    var number: String{
        guard self.givenNumber.count == 10 || self.givenNumber.count == 11 else{
            return "0000000000"
        }
        
        if self.givenNumber.count == 11{
            guard let planArea = Int(self.givenNumber.dropLast(10)) , planArea < 2 else{
                return "0000000000"
            }
            return String(self.givenNumber.dropFirst(1))
        }
        
        return self.givenNumber
    }
    var areaCode: String{
        return String(self.givenNumber.dropLast(7))
    }
    var description: String{

        let formattedNum = self.givenNumber.count == 11 ? Array(self.givenNumber.dropFirst(1)) : Array(self.givenNumber)
        return "(\(String(formattedNum[0...2]))) \(String(formattedNum[3...5]))-\(String(formattedNum[6...9]))"
    }
    let givenNumber: String
    public init(_ number: String){
        
        self.givenNumber = number.filter({$0.isNumber})
    }
}
