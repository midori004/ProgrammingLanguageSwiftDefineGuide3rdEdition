
struct SimpleDate {
    var year, month, day: Int
    
    static func isLeap(_ y: Int) -> Bool {
        return (y % 4 == 0) && (y % 100 != 0 || y % 400 == 0)
    }
    
    static func daysOfMonth(_ m: Int, year: Int) -> Int {
        switch m {
        case 2:
            return isLeap(year) ? 29 : 28
        case 4, 6, 9, 11:
            return 30
        default:
            return 31
        }
    }
}

SimpleDate.isLeap(2000)
SimpleDate.daysOfMonth(2, year: 2000)
