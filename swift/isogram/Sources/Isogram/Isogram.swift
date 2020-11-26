//Solution goes in Sources
struct Isogram {
    
    static func isIsogram(_ word: String) -> Bool{
        var uniqueLetters = ""
        var status = true
        _ = word.lowercased().filter({$0.isLetter}).compactMap { letter in
            if !uniqueLetters.contains(letter){
                uniqueLetters += "\(letter)"
            }else{
                status = false
            }
           
        }
        return status
    }
}
