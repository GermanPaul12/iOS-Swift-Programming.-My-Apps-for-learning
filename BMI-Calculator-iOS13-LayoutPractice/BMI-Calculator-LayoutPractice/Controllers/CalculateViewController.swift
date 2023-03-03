//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {


    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = sender.value
        weightLabel.text = String(format: "%.0fKg", weight)
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = sender.value
        heightLabel.text = String(format: "%.2fm", height)
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let weight = Float(weightSlider.value)
        let height = Float(heightSlider.value)
        calculatorBrain.calculateBMI(weight: weight, height: height)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.evaluateBMI()
            destinationVC.color = calculatorBrain.getBMIColor()
        }
    }
    
}

