//Solution goes in Sources
struct GradeSchool {
    var students : [Int:[String]] = [Int:[String]]()
    
    var roster: [Int:[String]]{
        return students
    }
    
    var sortedRoster : [Int:[String]] {
        return students.mapValues({$0.sorted()})
    }
    
    mutating func addStudent(_ studentName: String, grade:Int) -> [Int:[String]]{
        var student : [String] = [String]()
        student.append(studentName)
        guard (students[grade]?.append(studentName)) != nil else{
            students[grade] = student
            return students
        }
        return students
    }
    
    func studentsInGrade(_ num:Int) -> [String]{
        guard (students[num] != nil) else { return [String]()}
        return students[num]!
    }
}
