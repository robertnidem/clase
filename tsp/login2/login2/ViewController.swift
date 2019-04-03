//
//  ViewController.swift
//  login2
//
//  Created by macbook on 4/3/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPasword: UIButton!
    @IBOutlet weak var forgotUserName: UIButton!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = username.text
        }
        
    }

    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "Next", sender: forgotUserName)
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "Next", sender: forgotPasword)
    }
    
}

