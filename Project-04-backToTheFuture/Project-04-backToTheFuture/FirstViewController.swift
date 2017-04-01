//
//  FirstViewController.swift
//  Project-04-backToTheFuture
//
//  Created by Andrews Frempong on 29/03/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!

    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //this
        let year = Utilities().getCurrentYear()
        
//        label1.text = Utilities().getLetterAtIndex(str: year, index: 0)
//        label2.text = Utilities().getLetterAtIndex(str: year, index: 1)
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

