import UIKit

struct CalculatorBrain{
    var bmi = "0.0"
    
    
    mutating func calculateBMI(weight: Float, height: Float) {
        bmi = String(format: "%.1f", weight / (height*height))
    }
    func getBMIValue() -> String {
        return bmi
    }
    func evaluateBMI() -> String {
        if Float(bmi)! < 18.5 {
            return "Eat more!"
        }
        else if Float(bmi)! < 24.9 {
            return "You're mid."
        }
        else {
            return "Eat less!"
        }
    }
    func getBMIColor() -> UIColor {
        if Float(bmi)! < 18.5 {
            return UIColor.blue
        }
        else if Float(bmi)! < 24.9 {
            return UIColor.green
        }
        else {
            return UIColor.red
        }
    }
}

