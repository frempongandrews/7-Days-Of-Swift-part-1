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
    var isCalculating = false
    var havePrevValue = false
    
    
    @IBOutlet weak var screenLabel: UILabel!
    
    @IBAction func getNumber(_ sender: UIButton) {
        //numbers pressed
        //identify using tags
        
//       print(sender.tag)
        
        if (isCalculating) {
            screenLabel.text = ""
        }
        
        if let screenValue = screenLabel.text {
            screenLabel.text = screenValue + String(sender.tag)
        }
        
        isCalculating = false
        

    }
    
    @IBAction func getOperation(_ sender: UIButton) {
        //if I have prevValue, do not add any more numbers
        if(havePrevValue) {
            return
        }
        //operation signs pressed
        //identify using tags
        if (screenLabel.text != "" && screenLabel.text != "+" && sender.tag != 15 && sender.tag != 14) {
            
            prevValue = Double(screenLabel.text!)!
            
            //print(prevValue)
            
            if (sender.tag == 10) {
                screenLabel.text = "+"
                
            }
            
            isCalculating = true
            havePrevValue = true
            
        }
        
        
        //Equals
       
        
    
    }
    
    
    @IBAction func getResult(_ sender: UIButton) {
        //equal sign pressed
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

