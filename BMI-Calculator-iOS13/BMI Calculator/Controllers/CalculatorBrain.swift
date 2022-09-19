//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Connie Zhou on 7/9/22.


import UIKit
struct CalculatorBrain{
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight:Float){
        let bmiValue = weight / pow(height,2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        let advice = bmi?.advice ?? "No Advice"
        return advice
    }
    
    func getColor() -> UIColor{
        let color = bmi?.color ?? UIColor.white
        return color
    }
}
