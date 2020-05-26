//
//  SecondVC.swift
//  BMI Calculator
//
//  Created by Ahmed Shoman on 4/9/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    var BMI : String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = BMI
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
   
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
