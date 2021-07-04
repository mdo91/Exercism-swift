//Solution goes in Sources

struct NumberClassifier {
    
    enum Classification{
        case perfect
        case abundant
        case deficient
    }
    
    let number:Int
    
    var classification:Classification{
        
        return determineClassification(number: self.number)
    }
    
    init(number:Int) {
        self.number = number
    }
    
    private func determineClassification(number:Int) -> Classification{
        var factories = [Int]()
        for num in 1..<number{
            number % num == 0 ? factories.append(num) : print("")
        }
        
        let result = factories.reduce(0, +)
        
        switch result {
        case  let value where value == number : return .perfect
        case let value where value > number : return .abundant
        case let value where value < number : return .deficient
        default: return .abundant
        }
    }
}
