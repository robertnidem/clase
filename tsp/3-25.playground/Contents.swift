import UIKit

let age = 20
let months = 6
let name = "Roberto"
let firstName = "Medina"
let lastName = "Ortiz"
let birthday = "18-08-1998"

let isHappy = true
func hello(nombre:String)->String
{
    print ("Hola " + nombre)
    print("Hola \(nombre)")
    print("Hola",nombre)
    let saludo = "Hola"+name
    return saludo
    
}
let saludo = hello(nombre: name)
print ;(saludo)

