//
//  ViewController.swift
//  RGB-Project
//
//  Created by Israel Manzo on 5/24/17.
//  Copyright © 2017 Israel Manzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorSlider: UISlider!

    @IBOutlet weak var blueColorSlider: UISlider!
    
    @IBOutlet weak var greenColorSlider: UISlider!
    
    @IBOutlet weak var colorRGBView: UIView!
    
    @IBOutlet weak var redLbl: UILabel!
    
    @IBOutlet weak var blueLbl: UILabel!
    
    @IBOutlet weak var greenLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorRGBView.layer.cornerRadius = 125
        colorRGBView.layer.borderWidth = 5
        colorRGBView.layer.borderColor = UIColor.black.cgColor
        
    }

    @IBAction func selectionColorSlider(_ sender: UISlider) {
        
        let red = CGFloat(redColorSlider.value)
        let blue = CGFloat(blueColorSlider.value)
        let green = CGFloat(greenColorSlider.value)
        
        colorRGBView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        redLbl.text = "Red: \(redColorSlider.value)"
        blueLbl.text = "Blue: \(blueColorSlider.value)"
        greenLbl.text = "Green: \(greenColorSlider.value)"
        
    }
 
}







