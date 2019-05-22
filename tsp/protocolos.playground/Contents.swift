import UIKit

var str = "Hello, playground"

print(str)

class Shoe:CustomStringConvertible,Comparable {
    static func < (lhs: Shoe, rhs: Shoe) -> Bool {
        return lhs.size == rhs.size
    }
    
    static func == (lhs: Shoe, rhs: Shoe) -> Bool {
        return lhs.size == rhs.size
        
    }
    
    var description: String{
        return "Shoe (color: \(color) size: \(size) hasLaces: \(hasLaces)"
    }
    
    var color:String
    var size: Int
    let hasLaces:Bool
    
    init(color:String,size:Int,hasLaces:Bool) {
        self.color=color
        self.size=size
        self.hasLaces=hasLaces
    }
}

var zapatilla = Shoe(color: "Rojo", size: 6, hasLaces: false)
print(zapatilla)
var tenis = Shoe(color: "blancos", size: 6, hasLaces: true)
print(tenis)
var tenis2 = tenis
tenis2.color = "Azul"
print(tenis)

tenis != zapatilla
