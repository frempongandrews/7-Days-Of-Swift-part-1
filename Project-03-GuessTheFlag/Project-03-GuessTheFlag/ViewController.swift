//
//  ViewController.swift
//  Project-03-GuessTheFlag
//
//  Created by Andrews Frempong on 28/03/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

import GameplayKit

class ViewController: UIViewController {
    
    var score = 0
    
    var correctAnswer = 0
    
    var titleA: String = ""
    
    
    var countries = [String] ()
    
    @IBOutlet weak var flag1: UIButton!
    
    @IBOutlet weak var flag2: UIButton!
    
    @IBOutlet weak var flag3: UIButton!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    //functions/methods below
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += [
            "estonia", "france", "germany", "ireland", "italy", "monaco",
            "nigeria", "poland", "russia", "spain", "uk", "us"
        ]
        
        askQuestion()
    }
    
    func askQuestion (action: UIAlertAction! = nil) {
        let flags = [flag1, flag2, flag3]

        
        //return shuffled countries each time the function is called
        
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        
        //setting background images for buttons/flags
        
        var count = 0
        
        for flag in flags {
            flag?.setImage(UIImage(named: countries[count]), for: .normal)
            flag?.layer.borderWidth = 1
            count += 1
        }
        
//        flag1.setImage(UIImage(named: countries[0]), for: .normal)
//        flag2.setImage(UIImage(named: countries[1]), for: .normal)
//        flag3.setImage(UIImage(named: countries[2]), for: .normal)
        
        //choosing which country to show in nav bar
        correctAnswer = Int(arc4random_uniform(3))
        title = countries[correctAnswer].uppercased()
        
    }
    
    func showFeedback (feedbackTitle: String = "", feedbackMessage: String = "") {
        
        let alert = UIAlertController(title: "\(feedbackTitle)",
                                      message: "\(feedbackMessage)",
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "Continue",
                                   style: .default,
                                   handler: askQuestion)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func onFlagClick(_ sender: UIButton) {
        
        if (sender.tag == correctAnswer) {
//            print("yes")
            
            showFeedback(feedbackTitle: "Correct!", feedbackMessage: "Keep Going")
            
            score = score + 1
            
        } else {
//            print("wrong")
            
            showFeedback(feedbackTitle: "Wrong!", feedbackMessage: "You Can Do Better...")
            
            score = score - 1
        }
        
        scoreLabel.text = "Score: \(score)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

