//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var tip = 0.1
    var persons = 1
    var bill = 0.0
    
    @IBOutlet weak var billTotalLabel: UITextField!
    @IBOutlet weak var personCountLabel: UILabel!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBAction func personCountStepper(_ sender: UIStepper) {
        billTotalLabel.endEditing(true)
        personCountLabel.text = String(format: "%.0f", sender.value)
        persons = Int(sender.value)
    }
    @IBAction func tipChosenButton(_ sender: UIButton) {
        billTotalLabel.endEditing(true)
        zeroPctButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPctButton.isSelected = false
        if sender == zeroPctButton {
            zeroPctButton.isSelected = true
            tip = 0.0
        } else if sender == tenPercentButton {
            tenPercentButton.isSelected = true
            tip = 0.1
        } else {
            twentyPctButton.isSelected = true
            tip = 0.2
        }
        
    }    
    @IBAction func calculateButton(_ sender: UIButton) {
        if billTotalLabel.text != nil {
            bill = Double(billTotalLabel.text!)!
        }
        print(String(format:"%.2f", (bill*(1.0+tip))/Double(persons)))
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bill = bill
            destinationVC.persons = persons
            destinationVC.tip = tip
        }
    }
    
}

