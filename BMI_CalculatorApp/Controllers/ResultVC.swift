//
//  ResultVC.swift
//  BMI_CalculatorApp
//
//  Created by Sanjarbek Abdurayimov on 21/11/23.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLbl: UILabel!
    var colorBmi = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = UserDefaults.standard.string(forKey: "bmi") ?? ""
        adviceLbl.text = UserDefaults.standard.string(forKey: "bmiAdvice")
        self.view.backgroundColor = colorBmi
       
    }


    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
