//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by German Paul on 03.03.23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue = "0.0"
    var advice = "No advice"
    var color = UIColor.yellow
    
    @IBOutlet weak var bmiAdviceLabel: UILabel!
    @IBOutlet weak var bmiResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmiValue
        bmiAdviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    /*
     
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
