//
//  ViewController.swift
//  Typecasting
//
//  Created by macbook on 5/22/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func accion(_ sender: Any) {
        if let sender = sender as? UISlider{
            print("Esto es un slider")
        }
            
        else if let sender = sender as? UIButton{
            print("Esto es un boton")
            
            if let uilabel = sender.titleLabel{
                
                if let text = uilabel.text{
                    print(text)
                    sender.titleLabel?.text = "Te llamabas, ya no"
                }
                
            }
            
        }
            
        else if let sender = sender as? UISwitch{
            print("Esto es un switch")
        }
    }
    
}

