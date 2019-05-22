//
//  ViewController.swift
//  Any
//
//  Created by macbook on 5/20/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func accion(_ sender: Any) {
        
        if let sender = sender  as? UIButton{
            print("Esto es un boton")
        }
        else if let sender = sender as? UISwitch{
            print("Esto es un switch")
        }
        else if let sender = sender as? UISlider{
            print("Esto es un slider")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

