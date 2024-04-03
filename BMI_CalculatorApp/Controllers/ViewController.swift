//
//  ViewController.swift
//  BMI_CalculatorApp
//
//  Created by Sanjarbek Abdurayimov on 21/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLbl: UILabel!
    
    @IBOutlet weak var weightLbl: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLbl.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLbl.text = "\(weight)kg"
    }
    
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)

        
        
        let vc = ResultVC(nibName: "ResultVC", bundle: nil)
        UserDefaults.standard.setValue(calculatorBrain
            .getBMIValue(), forKey: "bmi")
        UserDefaults.standard.setValue(calculatorBrain
            .getAdvice(), forKey: "bmiAdvice")
        vc.colorBmi = calculatorBrain.getColor()
//        UserDefaults.standard.setValue(calculatorBrain
//            .getColor(), forKey: "bmiColor")
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

