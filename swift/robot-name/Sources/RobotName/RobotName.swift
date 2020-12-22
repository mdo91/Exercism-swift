//Solution goes in Sources
struct Robot {
    
    var name:String

    static var generatedNames = [String]()
    
    init() {
        self.name = Robot.generateUniqueName()
        Robot.generatedNames.append(self.name)
    }
    public mutating func resetName(){
        self.name = Robot.generateUniqueName()
        Robot.generatedNames.append(self.name)
    }
    
     static func generateUniqueName() -> String{
        var alphabet = [String]()
        let numbers = Array(100...999)
        let startChar = Unicode.Scalar("A").value
        let endChar = Unicode.Scalar("Z").value

        for letter in startChar...endChar{
            alphabet.append(Unicode.Scalar(letter)!.description)
            
        }
        
        var generatedName = ""
        repeat{
            generatedName = alphabet.randomElement()! + alphabet.randomElement()! + "\(String(describing: numbers.randomElement()!))"
        }while Robot.generatedNames.contains(generatedName)
        
        return generatedName

        
    }
}
