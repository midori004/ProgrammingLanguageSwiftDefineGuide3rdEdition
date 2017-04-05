
struct Clock {
    var hour = 0, min = 0
    
    mutating func advance(min: Int) {
        let m = self.min + min
        if m >= 60 {
            self.min = m % 60
            let t = self.hour + m / 60
            self.hour = t % 24
        } else {
            self.min = m
        }
    }
    
    mutating func inc() {
        self.advance(min: 1)
    }
    
    func toString() -> String {
        let h = hour < 10 ? "\(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        return h + ":" + m
    }
}

var tic = Clock(hour: 19, min: 40)
tic.advance(min: 19)
tic.inc()
print(tic.toString())
