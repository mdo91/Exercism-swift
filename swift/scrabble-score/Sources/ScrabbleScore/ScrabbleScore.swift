//Solution goes in Sources
struct Scrabble {
    var score : Int {
        guard let word = word else {return 0}
        return Scrabble.score(word)
        
    }
    
    static let letters  = ["A":1, "E": 1, "I":1, "O":1,"U":1,"L":1,"N":1,"R":1,"S":1,"T":1
                    ,"D":2,"G":2,"B":3,"C":3,"M":3,"P":3,
                    "F":4,"H":4,"V":4,"W":4,"Y":4,"K":5,
                    "J":8,"X":8,"Q":10,"Z":10]
    var word:String?
    
    init(_ word:String? = nil) {
        if let word = word{
            self.word = word
            }
        }
    
    static func score(_ word:String) -> Int{
        var countScore = 0
         let letters = word.characters
        _ = letters.map({
               if let letterValue = Scrabble.letters[String($0.uppercased())]{
                countScore += letterValue}})
        return countScore
        }
}
