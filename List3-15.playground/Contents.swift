struct Ounce {
    var mL: Double = 0.0
    static let ounceUS = 29.5735
    
    init(ounce: Double) {
        self.ounce = ounce
    }
    
    var ounce: Double {
        get { return mL / Ounce.ounceUS }
        set { mL = newValue * Ounce.ounceUS }
    }
}

var a = Ounce(ounce: 2.0)
print(a.mL)
a.ounce += 8.0
print(a.ounce)
print(a.mL)

var b = Ounce(ounce: 2.0)
var c = Ounce(ounce: 10.0)
print("\(b.mL)mL, \(c.mL)mL")
swap(&b, &c)
print("\(b.mL)mL, \(c.mL)mL")
swap(&b, &c)
print("\(b.mL)mL, \(c.mL)mL")
swap(&b.ounce, &c.ounce)
print("\(b.ounce)oz, \(c.ounce)oz")

var z: Double = 0.1
swap(&b.ounce, &z)
print("\(b.ounce)oz, \(z)")
