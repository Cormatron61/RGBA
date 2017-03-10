//
//  ViewController.swift
//  rgb
//
//  Created by student on 10/17/16.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBAction func redSlider(_ sender: UISlider) {
        doColors()
    }
    
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBAction func greenSwitch(_ sender: UISwitch) {
        doColors( )
    }
    
    

    @IBAction func greenSlider(_ sender: UISlider) {
        doColors( )
    }
    
    @IBOutlet weak var greenSlider: UISlider!
    
    
    @IBOutlet weak var redSwitch: UISwitch!

    @IBAction func redSwitch(_ sender: UISwitch) {
        doColors( )
    }
    // yada yada yada
    @IBOutlet weak var alphaSwitch: UISwitch!
    
    @IBAction func alphaSwitch(_ sender: UISwitch) {
        doColors()
    }
    
    
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBAction func alphaSlider(_ sender: UISlider) {
        doColors()
    }
    

    @IBOutlet weak var view1: UIView!


    @IBAction func reset(_ sender: UIButton) {
        alphaSlider.value = 0.5
        blueSlider.value = 0.5
        redSlider.value = 0.5
        greenSlider.value = 0.5
        alphaSwitch.isOn = true
        redSwitch.isOn = true
        blueSwitch.isOn = true
        greenSwitch.isOn = true
        doColors()
    }

    @IBAction func blueSlider(_ sender: UISlider) {
        doColors()
    }

    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
        doColors()
    }
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    func doColors(){
        var myBlue: CGFloat = 0
        if blueSwitch.isOn {
            myBlue = CGFloat(blueSlider.value)
        }
        var myRed: CGFloat = 0
        if redSwitch.isOn {
            myRed = CGFloat(redSlider.value)
        }
        var myGreen: CGFloat = 0
        if greenSwitch.isOn {
            myGreen = CGFloat(greenSlider.value)
        }
        var myAlpha: CGFloat = 0
        if alphaSwitch.isOn {
            myAlpha = CGFloat(alphaSlider.value)
        }
        let myColor = UIColor(red: myRed, green: myGreen, blue: myBlue, alpha: myAlpha)
        view1.backgroundColor = myColor
    }

}

