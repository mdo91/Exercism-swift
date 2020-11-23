//Solution goes in Sources
import Foundation
struct Nucleotide {
    
    var value:String
    
    init(_ value:String) {
        self.value = value
    }
    
    func complementOfDNA()throws -> String{
        
     let value = validation(value: self.value)
        
        guard  !(value.1 != nil) else{
            let message = " is not a valid Nucleotide"
            throw RnaTranscription.TranscriptionError.invalidNucleotide("\(value.1!)" + message)
        }
        
        func calculateRNA(_ dNA: String)-> String{
            
            let result2 = dNA.reduce(into: "") { (data, value) in
                switch value{
                case "G":  data.append("C")
                case "C":  data.append("G")
                case "T":  data.append("A")
                case "A":  data.append("U")
                default: break
                    
                }
            }
            return result2
        }

        return calculateRNA(self.value)
    }
    
    func validation(value:String)->(Bool,Character?){

        var invalidChar :Character?
        let result = value.filter { char in
                        
            switch char{
            case "G","C","T","A": return true
            default: invalidChar = char
            return false
            }
        }
        if result.count != value.count{
            return (false,invalidChar)
        }
        return (!result.isEmpty,nil)

    }
}

public enum RnaTranscription {
    
    enum TranscriptionError:Error {
        case invalidNucleotide(String)
        
    }
}
