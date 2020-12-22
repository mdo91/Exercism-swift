//Solution goes in Sources
struct Garden {
    
    enum Plants: String {
        case violets = "V"
        case radishes = "R"
        case grass =  "G"
        case clover = "C"
    }
    var resultArray = [String:[Plants]]()
    var names : [String] = ["Alice", "Bob", "Charlie", "David",
                               "Eve", "Fred", "Ginny", "Harriet",
                               "Ileana", "Joseph", "Kincaid", "Larry"]

    var kidsSeats = [String:[Int]]()

    var children : [String]?
    var diagram : String
    
    init(_ diagram:String, children: [String]?=nil) {
 
        self.children = children?.sorted()
        self.diagram = diagram
        var studentNames : [String]
        if let children = children{
            studentNames = children.sorted()
        }else{
            studentNames = names
        }
        kidsSeats = seatsWithStudents(studentNames)
        resultArray = kidsWithPlants(studentNames)

    }
    
    func plantsForChild(_ name:String) -> [Plants]{
        return resultArray[name]!
    }
    mutating func seatsWithStudents(_ names:[String]) -> [String:[Int]]{
        var result = [String:[Int]]()
        var next = 0
        for name in names{
            result[name] = [next,next + 1]
            next += 2
        }
        return result
    }
    
    mutating func kidsWithPlants(_ names: [String]) -> [String: [Plants]]{
        
        var kids = [String: [Plants]]()
        let rows = diagram.split(separator: "\n")
        
        kidsSeats = seatsWithStudents(names)
        
        for plant in rows{
           var index = 0
            
            _ = plant.map({ letter in
                _ = kidsSeats.map({ studentName, seat in
                                if seat.contains(index){
                                    if let student = kids[studentName]{
                                        kids[studentName]!.append(Plants(rawValue: String(letter))!)
                                    }else{
                                        kids[studentName] = [Plants(rawValue: String(letter))!]}
                                }})
                index += 1})
        }
        return kids
    }
}
  
