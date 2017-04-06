struct DateWithString {
    let string: String
    let year, month, day: Int
    
    static let mons = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    static var longFormat = false
    
    init(_ y: Int, _ m: Int, _ d: Int) {
        year = y; month = m; day = d
        string = DateWithString.longFormat ? DateWithString.longString(y, m, d) : DateWithString.shortString(y, m, d)
    }
    
    static func twoDigits(_ n: Int) -> String {
        let i = n % 100
        return i < 10 ? "0\(i)" : "\(i)"
    }
    
    static func longString(_ y: Int, _ m: Int, _ d: Int) -> String {
        return "\(y)-" + twoDigits(m) + "-" + twoDigits(d)
    }
    
    static func shortString(_ y: Int, _ m: Int, _ d: Int) -> String {
        return twoDigits(d) + mons[m-1] + twoDigits(y)
    }
}

let a = DateWithString(2025, 1, 20)
print(a.string)
DateWithString.longFormat = true
let b = DateWithString(2025, 1, 21)
print(b.string)
