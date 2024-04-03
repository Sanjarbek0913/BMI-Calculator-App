//
//  CalculatorBrain.swift
//  BMI_CalculatorApp
//
//  Created by Sanjarbek Abdurayimov on 22/11/23.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    func getBMIValue() -> String {
        let bmiTo1DecimalPlaces = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlaces
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
}
