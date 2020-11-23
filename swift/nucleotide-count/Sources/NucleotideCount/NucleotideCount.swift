//Solution goes in Sources

class DNA {
    
    var nucleotides: [String:Int] = ["A":0, "C": 0, "G":0,"T":0]
    var strand:String
    
    init?(strand:String) {

        self.strand = strand

        let result = self.strand.flatMap {
            char in
            
           guard let exit = nucleotides[String(char)] else{
               return nil
           }
            return ""
        }
        
        if !strand.isEmpty{
            if result.isEmpty {
                return nil
            }
        }

    }
    public func count(_ char:Character) -> Int{
        
        if char.isWhitespace {
            return 0
        }
        _ = strand.map {
            nucleotides[String($0)]! += 1
         }
        return  nucleotides[String(char)]!

    }
    
    public  func counts() -> [String:Int]{
        _ = strand.map {
            nucleotides[String($0)]! +=  1
        }
        
        return nucleotides
    }
}
