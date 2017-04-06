var serialNumber = 2127

struct LCD {
    struct Size {
        var width, height : Int
    }
    static var stdHight = 1080
    static var stdWidth = 1920
    static var stdSize = Size(width: stdWidth, height: stdHight)
    
    static func sn() -> Int {
        serialNumber += 1
        return serialNumber
    }
    
    let size: Size
    let serial = "CZ:" + String(LCD.sn())
    
    init(size: Size = LCD.stdSize) {
        self.size = size
    }
    
    func show() {
        print(serial, "(\(size.width)x\(size.height))")
    }
}

let display1 = LCD(size: LCD.Size(width: 800, height: 600))
display1.show()
LCD.stdHight = 1200
let display2 = LCD()
display2.show()
LCD.stdWidth = 2560
let display3 = LCD()
display3.show()

