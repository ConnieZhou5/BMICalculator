//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Connie Zhou on 7/8/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class secondViewController: UIViewController{
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
        label.text = "hello"
        label.frame = CGRect(x:0, y:0, width:100, height: 50)
        view.addSubview(label)
        
    }
}
