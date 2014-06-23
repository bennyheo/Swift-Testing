//
//  BNRQuizViewController.swift
//  BNR-1
//
//  Created by Benny Heo on 6/10/14.
//  Copyright (c) 2014 BennyMadeIt. All rights reserved.
//

import UIKit

class BNRQuizViewController: UIViewController {
    
    @IBOutlet var answerLabel: UILabel
    @IBOutlet var questionLabel: UILabel
    
    var questions = [  "From what is cognac made?",
                        "What is 7+7?",
                        "What is the capital of Vermont"]
    
    var answers = [    "grapes",
                        "14",
                        "Montpelier"]
    
    var question: String?
    var current = 0
    
    @IBAction func showQuestion(sender : AnyObject) {
        current += 1
        
        if current == questions.count{
            current = 0
        }
        questionLabel.text = questions[current]
        answerLabel.text = "???"
    }
  
    @IBAction func showAnswer(sender : AnyObject) {
        answerLabel.text = answers[current]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
