//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var maybeButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.updateCounterQuestions()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.updateUI()
         }
        
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        questionLabel.text = quizBrain.getNextQuestion()
        trueButton.setTitle(quizBrain.getAvailableAnswers()[0], for: .normal)
        falseButton.setTitle(quizBrain.getAvailableAnswers()[1], for: .normal)
        maybeButton.setTitle(quizBrain.getAvailableAnswers()[2], for: .normal)
        progressBar.progress = quizBrain.updateProgressBar()
        scoreLabel.text = "Score: \(quizBrain.getCounterScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        maybeButton.backgroundColor = UIColor.clear
        
    }
    

}

