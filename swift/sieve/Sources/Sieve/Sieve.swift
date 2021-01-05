//Solution goes in Sources
struct Sieve {
    var primes : [Int]{
        var array = Array(2...self.limit)
        
        for number in array{
            array = array.filter({ number != $0 ? !$0.isMultiple(of: number) : number == $0})
        }
        return array
    }
    var limit: Int
    init(_ limit: Int) {
        self.limit = limit
    }
}
