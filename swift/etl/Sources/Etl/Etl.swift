//Solution goes in Sources
struct ETL {
    
    static func transform(_ data: [Int:[String]]) -> [String:Int]{
        var letters = [String:Int]()
         _ = data.map({ x in
                        x.value.compactMap({letters[$0.lowercased()] = x.key})
         })
        return  letters
    }
}
