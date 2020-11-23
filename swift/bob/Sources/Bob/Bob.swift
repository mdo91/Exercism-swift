//Solution goes in Sources
import Foundation
func hey(_ string: String)-> String{
    
    var response = ""
    var isYelling = false
    var text = string
    if (text.last == "!"){
        text.removeLast(1)
    }
    
    if text.contains("?"){
        let words = text.split(separator: " ")
        if text.last == "?"{
            let char = words[0].filter { $0.isUppercase
            }
            if char.count > 1{
                response = "Whoa, chill out!"
                
            }else{
                response = "Sure."
            }
            
        }else{
            response = "Whatever."
        }
    }else{
        
        let sentenceArray = text.split(separator:" ")

        if !sentenceArray.isEmpty{
  
            for word in sentenceArray{
                var index = 0
                for char in word {
                    if char.isUppercase && !char.isNumber{
                        index += 1
                    }
                    if index == word.count && word != "OK"{
                        
                         isYelling = true
                         response = "Whoa, chill out!"
                       
                    }else{
                        if isYelling{
                             response = "Whoa, chill out!"
                        }else{
                             response = "Whatever."
                        }
                    }
                }
            }
      
        }else{
            if text.isEmpty || text.trimmingCharacters(in: CharacterSet.whitespaces).isEmpty{
                response = "Fine. Be that way!"
            }else{
                response = "Whatever."
            }
            
        }
     
    }
    return response
}
