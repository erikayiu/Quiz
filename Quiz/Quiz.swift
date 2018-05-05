//
//  Quiz.swift
//  Quiz
//
//  Created by UCode on 5/5/18.
//  Copyright © 2018 Erika Yiu. All rights reserved.
//

import Foundation

class Quiz {
    var score: Int
    let questions: [Question]
    var currentQuestionIndex: Int
    
    var currentQuestion : Question {
        return questions[currentQuestionIndex]
    }
    
    var currentQuestionNumber : Int {
        return currentQuestionIndex + 1
    }
    
    
    
    init(questions: [Question]){
        score = 0
        self.questions = questions
        currentQuestionIndex = 0
    }
    
    func reset() {
        score = 0
        currentQuestionIndex = 0
    }
    
    func next()   {
       currentQuestionIndex = currentQuestionIndex + 1
    }
    
    
    
}
