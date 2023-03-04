//
//  ResultViewController.swift
//  Tipsy
//
//  Created by German Paul on 04.03.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bill = 0.0
    var persons = 1
    var tip = 0.1
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.2f", (bill*(1.0+tip))/Double(persons))
        splitLabel.text = "Split between \(persons) people, with \(Int(tip*100))% tip"
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
