//
//  Question.swift
//  Quiz
//
//  Created by UCode on 5/5/18.
//  Copyright © 2018 Erika Yiu. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: [Answer]
    
    func check (index: Int) -> Bool {
        return answers[index].isCorrect
    }
    
}
