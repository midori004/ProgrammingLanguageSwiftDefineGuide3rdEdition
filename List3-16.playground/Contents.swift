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
    let index: Int
    
    init(_ v: Double) {
        index = ValueInLine._pool.count
        ValueInLine._pool.append(v)
    }
    var value: Double {
        get { return ValueInLine._pool[index] }
        nonmutating set { ValueInLine._pool[index] = newValue }
    }
    
    static func clear() {
        for i in 0..<_pool.count { _pool[i] = 0.0 }
    }
}
