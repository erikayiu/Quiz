//
//  ResultsViewController.swift
//  Quiz
//
//  Created by UCode on 5/26/18.
//  Copyright © 2018 Erika Yiu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quiz: Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        showResults(score: quiz.score)
        
    }
    
    func showResults(score: Int){
        scoreLabel.text = String(score)
    }

}
