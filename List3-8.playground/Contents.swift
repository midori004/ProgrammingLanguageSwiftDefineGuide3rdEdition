//: Playground - noun: a place where people can play

struct Time {
    let hour, min : Int
    
    func advanced(min: Int) -> Time {
        var m = self.min + min
        var h = self.hour
        if m >= 60 {
            h = (h + m / 60) % 24
            m %= 60
        }
        return Time(hour: h, min:m)
    }
    
    func toString() -> String {
        let h = hour < 10 ? "\(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

let t1 = Time(hour:22, min:45)
let t2 = t1.advanced(min: 140)
print(t1.toString())
print(t2.toString())
