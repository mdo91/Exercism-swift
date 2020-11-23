//Solution goes in Sources
func compute(_ value: String, against: String)->Int?{
    guard value.count == against.count else {
        return nil
    }
    var index = -1
    let array = Array(against)
    let result = value.filter { char  in
        index += 1
        return array[index] == char

    }
    return against.count - result.count
}


