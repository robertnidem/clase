//
//  ViewController.swift
//  ppt
//
//  Created by macbook on 3/25/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func piedra(_ sender: Any) {
    }
    @IBAction func papel(_ sender: Any) {
    }
    @IBAction func tijera(_ sender: Any) {
    }
    var valorPiedra = 0
    var valorPapel = 0
    var valorTijera = 0
    override func viewDidLoad() {
        
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    if piedra.isOn{
    valorPiedra = 1
    
    }else if tijera.isOn{
    
    }else if papel.isOn{
    
    }


}

