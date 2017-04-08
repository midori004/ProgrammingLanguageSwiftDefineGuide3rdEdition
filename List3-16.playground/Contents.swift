struct ValueWithCounter {
    private let _value: Double
    var count = 0
    
    init(_ v: Double) { _value = v }
    var value: Double { mutating get {
        count += 1
        return _value
    }}
}

struct ValueInLine {
    private static var _pool: [Double] = []
}
