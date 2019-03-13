//
//  ViewController.swift
//  colorCH
//
//  Created by macbook on 3/13/19.
//  Copyright © 2019 nidem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlide: UISlider!
    @IBOutlet weak var greenSlide: UISlider!
    @IBOutlet weak var blueSlide: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setColor ( ) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        
        if redSwitch.isOn {
            red = CGFloat(redSlide.value)
        }
        if greenSwitch.isOn
        {
            green = CGFloat(greenSlide.value)
        }
        if blueSwitch.isOn
        {
            blue = CGFloat(blueSlide.value)
        }
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

    @IBAction func SwitchAction(_ sender: Any) {
        setColor()
    }
    
    @IBAction func slideAction(_ sender: Any) {
        setColor()
    }
    
    @IBOutlet var ResetAction: UIView!
    
}

