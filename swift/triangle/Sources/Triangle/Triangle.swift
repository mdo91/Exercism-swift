//Solution goes in Sources
struct Triangle {
    enum triangleKind:String{
        case Equilateral
        case Isosceles
        case ErrorKind
        case Scalene
    }
    
    var kind:String
    
    init(_ firstSide:Double, _ secondSide:Double, _ thirdSide:Double) {
        
        var allSides = [Double]()
        allSides.append(firstSide)
        allSides.append(secondSide)
        allSides.append(thirdSide)
        kind = ""
        let totalSum = allSides.reduce(0, +)

        let noneZeroErrorResult = allSides.filter({ num in
            !num.isZero && num > 0 && num < totalSum / 2
        })

        for index in 0..<allSides.count {
           
                if index != allSides.endIndex - 1  {
                    if allSides[index] == allSides.last{
                        kind = triangleKind.Isosceles.rawValue
                    }
                
                }
                if index != allSides.startIndex{
                    if allSides[index] == allSides.first{
                        kind = triangleKind.Isosceles.rawValue
                    }
                }
                
                if kind.isEmpty{
                    kind = triangleKind.Scalene.rawValue
                }

        }
        if allSides.first! * 3 == totalSum{
            kind = triangleKind.Equilateral.rawValue
        }
        if noneZeroErrorResult.count != allSides.count  {
            kind = triangleKind.ErrorKind.rawValue
        }
        
    }
}
