//
//  ViewController.swift
//  navigation
//
//  Created by macbook on 4/1/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    @IBAction func yellowButtonTaped(_ sender: Any) {
        if segueSwitch.isOn {
            
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    @IBAction func greenButtonTaped(_ sender: Any) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)

        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
        
    
 


}

