//
//  QuizViewController.swift
//  Quiz
//
//  Created by UCode on 5/5/18.
//  Copyright © 2018 Erika Yiu. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerButton0: UIButton!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    
    let quiz = Quiz(questions: [
        Question(text: "How many birthdays does a person have in their life time?", answers: [
            Answer(text: "It depends on how long they live", isCorrect: false),
            Answer(text: "1", isCorrect: true),
            Answer(text: "85", isCorrect: false),
            Answer(text: "100", isCorrect: false)
        ]),
        Question(text: "How was the duck able to pay for its grapes?", answers: [
            Answer(text: "It used its credit card", isCorrect: false),
            Answer(text: "It put it on its bill", isCorrect: true),
            Answer(text: "It used cash", isCorrect: false),
            Answer(text: "It used its debit card", isCorrect: false)
            ]),
        Question(text: "What is Bruce Lee's favorite drink?", answers: [
            Answer(text: "tea", isCorrect: false),
            Answer(text: "water", isCorrect: true),
            Answer(text: "juice", isCorrect: false),
            Answer(text: "coffee", isCorrect: false)
            ]),
    ])
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        show(question: quiz.currentQuestion)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func show(question: Question) {
        questionLabel.text = question.text
        answerButton0.setTitle(question.answers[0].text, for: .normal)
        answerButton1.setTitle(question.answers[1].text, for: .normal)
        answerButton2.setTitle(question.answers[2].text, for: .normal)
        answerButton3.setTitle(question.answers[3].text, for: .normal)
        
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let isCorrect = quiz.currentQuestion.check(index: sender.tag)
        
        if isCorrect {
            quiz.increaseScore()
        }
        
        if quiz.currentQuestionNumber < quiz.questions.count {
            quiz.next()
            show(question: quiz.currentQuestion)
        }
        else {
            print("Out of Questions")
        }
        
    }
    


}

