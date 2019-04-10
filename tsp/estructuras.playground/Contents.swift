import UIKit
struct StepCounter {
    var totalSteps:  Int = 0{
        willSet{
            print ("About the total steps to \(newValue)")
            
        }
        didSet{
            if (totalSteps>oldValue) {
                print("Aded \(totalSteps - oldValue) steps" )
            }
        }
    }
}

var pasosNidem = StepCounter()
pasosNidem.totalSteps
pasosNidem.totalSteps = 10

