//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by German Paul on 01.03.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question : String
    let answer : [String]
    let correctAnswer : String
    init(q: String, a: [String], correctAnswer: String) {
        self.question = q
        self.answer = a
        self.correctAnswer = correctAnswer
    }
}
