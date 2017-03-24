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


    
    
    
    @IBOutlet weak var screenLabel: UILabel!
    
    @IBAction func getNumber(_ sender: UIButton) {
        //numbers pressed
        //identify using tags
        
//       print(sender.tag)
        
        if (isCalculating == true) {
            screenLabel.text = ""
            
        }

        screenLabel.text = screenLabel.text! + String(sender.tag)
        
        
        isCalculating = false
        

    }
    
    @IBAction func getOperation(_ sender: UIButton) {

        //operation signs pressed
        //identify using tags
        
        isCalculating = true
        
        
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
            return
            print(prevValue)
        }
        
        //subtraction
        if (sender.tag == 11) {
            
            
            
            if (havePrevValue != true) {
                prevValue = Double(screenLabel.text!)!
            } else {
                return
            }
            
            havePrevValue = true
            screenLabel.text = "-"
            currentOperator = "-"
            
            
//            print(prevValue)
        }
        
}
    
    
    @IBAction func onResetClick(_ sender: UIButton) {
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
        
        
        //addition
        if (currentOperator == "+") {
            if (screenLabel.text == "+") {
                return
            } else {
                currentValue = Double(screenLabel.text!)!
            }
            
            //print(currentValue + prevValue)
            result = prevValue + currentValue
            
        }
        
        //subtraction
        if (currentOperator == "-") {
            if (screenLabel.text == "-") {
                return
            } else {
                currentValue = Double(screenLabel.text!)!
            }
            
            //print(currentValue + prevValue)
            result = prevValue - currentValue
            
        }
        
        
        //valid for all operators
        screenLabel.text = String(result)
        currentValue = 0
        prevValue = 0
        isCalculating = false
        havePrevValue = false
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

