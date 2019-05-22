import UIKit

var str = "Hello, playground"

func printFullName(firstName : String, middleName: String?, lastName:String)->String{
    if let middleName = middleName{
        return firstName+middleName+lastName
    }
    else{
        return firstName+lastName
    }
}

printFullName(firstName: "Roberto", middleName: "Arturo", lastName: "Medina")
