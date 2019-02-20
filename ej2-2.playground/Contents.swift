import UIKit

let ticketSold = 1060
let ticketPrice = 50
let printingCosts = 20
let advertising = 50

let ganancias = ticketSold*ticketPrice
let gastos = printingCosts+advertising
let total = ganancias - gastos

let premio = ganancias/2
let remuneracion = (total-premio)/10
let ganancianeta = total-premio-remuneracion

