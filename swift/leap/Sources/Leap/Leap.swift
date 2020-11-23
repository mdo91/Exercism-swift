//Solution goes in Sources

struct LeapYear {
    var isLeapYear: Bool = false
}
func Year(calendarYear:Int)->LeapYear{
    var leapYear = LeapYear()
    
   
    if calendarYear % 4 == 0 {
        leapYear.isLeapYear = true
    }

    if calendarYear % 100 == 0 && calendarYear % 400 == 0{
        leapYear.isLeapYear = true
    }else if calendarYear % 100 == 0{
        leapYear.isLeapYear = false
    }
    
    return leapYear
}
