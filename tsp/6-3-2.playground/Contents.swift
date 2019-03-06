import UIKit

import Foundation

let secretWord = "banana"
let guess = "manzana"
if secretWord == guess
{
    print("Adivnaste")
}
else
{
    print("No adivinaste")
}

func isLeapYear(_ year: Int)
{
    if year%4 == 0
    {
        if year%100 != 0
        {
            print("es una año bisiesesto")
        }
        else
        {
            if year%400 != 0
            {
                print("No es una año bisiesto")
            }
            else
            {
                print("Es un año bisiesto")
            }
        }
    }
    return
}

isLeapYear(2000)
isLeapYear(1900)

func number(_ numero: Int , isDivisibleBy: Int)-> Bool
{
    if numero % isDivisibleBy == 0
    {
        return true
    }
    else
    {
        return false
    }
}

