//
//  ViewController.swift
//  ejemplo1
//
//  Created by Usuario invitado on 3/4/19.
//  Copyright © 2019 Nidem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagen: UIImageView!
    
    
    @IBAction func cambiaColor(_ sender: Any) {
        view.backgroundColor = .red
        imagen.image = UIImage(named: "imagen2")
        button.setTitle("hola", for: .normal
        )
    }
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagen.image = UIImage(named: "imagen3")
        
        button.setTitle("mi boton", for: .normal)
        // Do any additional setup after loading the view, typically from a nib.

        
        
    }


}

