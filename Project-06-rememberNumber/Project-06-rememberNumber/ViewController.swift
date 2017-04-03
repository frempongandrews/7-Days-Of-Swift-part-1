//
//  ViewController.swift
//  Project-06-rememberNumber
//
//  Created by Andrews Frempong on 03/04/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number = ""
    
    @IBOutlet weak var showNumber: UILabel!
    @IBOutlet weak var enterNumber: UITextField!
    
    
    
    @IBAction func onSaveNumber(_ sender: UIButton) {
        
        if (enterNumber.text != "") {
            number = enterNumber.text!
            
            UserDefaults.standard.set(number, forKey: "myNumber")
            
            showNumber.text = number
            
            enterNumber.text = ""
            
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myNumberObject = UserDefaults.standard.object(forKey: "myNumber")
        
        if let myNumber = myNumberObject as? String {
            
            number = myNumber
        }
        
        showNumber.text = number
        
        print("Number: \(number)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

