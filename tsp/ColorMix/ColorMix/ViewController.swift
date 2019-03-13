//
//  ViewController.swift
//  ColorMix
//
//  Created by macbook on 3/11/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var RedSwitch: UISwitch!
    @IBOutlet weak var GreenSwitch: UISwitch!
    @IBOutlet weak var BlueSwitch: UISwitch!
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello mine Iphone")
        ColorView.layer.borderWidth = 5
        ColorView.layer.cornerRadius = 20
        ColorView.layer.borderColor = UIColor.black.cgColor
    }
    
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if RedSwitch.isOn{
            red = CGFloat(RedSlider.value)
        }
        if GreenSwitch.isOn{
            green = CGFloat(GreenSlider.value)
        }
        if BlueSwitch.isOn{
            blue = CGFloat(BlueSlider.value)
        }
        
        ColorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
    }
    
    @IBAction func SwitchAction(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func SliderAction(_ sender: Any) {
        updateColor()
    }
    
    
    @IBAction func ResetAction(_ sender: Any) {
        RedSwitch.isOn = true
        BlueSwitch.isOn = true
        GreenSwitch.isOn = true
       
        RedSlider.value = 0.5
        GreenSlider.value = 0.5
        BlueSlider.value = 0.5
        
        ColorView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
}
