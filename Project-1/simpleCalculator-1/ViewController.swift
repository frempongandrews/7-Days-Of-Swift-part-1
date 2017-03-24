//
//  ViewController.swift
//  simpleCalculator-1
//
//  Created by Andrews Frempong on 22/03/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var prevValue: Double = 0
    var currentValue: Double = 0;
    var result: Double = 0
    var isCalculating = false
    var havePrevValue = false
    var currentOperator = ""
    var reset = false
    
    
    
    @IBOutlet weak var screenLabel: UILabel!
    
    @IBAction func getNumber(_ sender: UIButton) {
        //numbers pressed
        //identify using tags
        
//       print(sender.tag)
        
        if (isCalculating == true) {
            screenLabel.text = ""
        }
        
        if (reset == true) {
            screenLabel.text = ""
        }
        
        if let screenValue = screenLabel.text {
            screenLabel.text = screenValue + String(sender.tag)
        }
        
        isCalculating = false
        

    }
    
    @IBAction func getOperation(_ sender: UIButton) {

        //operation signs pressed
        //identify using tags
        
        
        if (screenLabel.text == "" || screenLabel.text == "+") {
            return
        }
        
        if (havePrevValue == true && isCalculating == true) {
            return
        }
        
        
        //addition
        if (sender.tag == 10) {
            
            if (havePrevValue != true) {
                prevValue = Double(screenLabel.text!)!
            } else {
                return
            }
            
            havePrevValue = true
            screenLabel.text = "+"
            currentOperator = "+"
            isCalculating = true
            
            print(prevValue)
        }
        
        //reset
        
        if (sender.tag == 15) {
            print("reset pressed")
            havePrevValue = false
            screenLabel.text = ""
            currentOperator = ""
            isCalculating = false
        }
        
        
            
            
}
    
    
    @IBAction func getResult(_ sender: UIButton) {
        //equal sign pressed
        
        if (currentOperator == "+") {
            if (screenLabel.text == "+") {
                return
            } else {
                currentValue = Double(screenLabel.text!)!
            }
            
            //        print(currentValue + prevValue)
            result = currentValue + prevValue

        }
        
        
        //valid for all operators
        screenLabel.text = String(result)
        currentValue = 0
        prevValue = 0
        isCalculating = false
        havePrevValue = false
        reset = true
        
        
        
}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

