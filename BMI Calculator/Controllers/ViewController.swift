//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightShowLabel: UILabel!
    @IBOutlet weak var weightShowLable: UILabel!
    
    var calculateBrain = CalculatorBrain()
    
    var BMI = ""
    var height: Float = 0.0
    var weight:Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateBrain.getBmiValue()
    }

    @IBAction func heightAction(_ sender: UISlider) {
        let heightToShowInLabel = String(format: "%.2f", sender.value)
        heightShowLabel.text = "\(heightToShowInLabel)m"
        
        
    }
    @IBAction func weightAction(_ sender: UISlider) {
        let weightToShowInLabel = String(format: "%.0f", sender.value)
        weightShowLable.text = "\(weightToShowInLabel)kg"
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        height = heightSlider.value
        weight = weightSlider.value
        calculateBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "toSecondVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let des = segue.destination as! SecondVC
            des.BMI = calculateBrain.getBmiValue()
            des.advice = calculateBrain.getAdvice()
            des.color = calculateBrain.getColor()
            
        }
    }
    
    
}

