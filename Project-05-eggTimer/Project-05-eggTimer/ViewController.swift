//
//  ViewController.swift
//  Project-05-eggTimer
//
//  Created by Andrews Frempong on 31/03/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    //start timer
    func run () {
        
       time -= 1
       timeLabel.text = String(time)
    }
    
    @IBAction func startTimer(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.run), userInfo: nil, repeats: true)
//        print("Play Pressed")
    }
    @IBAction func pauseTimer(_ sender: UIBarButtonItem) {
       timer.invalidate()
    }
    
 
    //add 10 seconds
    @IBAction func plus10(_ sender: UIBarButtonItem) {
        
        if let tempTime = timeLabel.text {
            time = Int(tempTime)!
            
            //making it get to max of 210
            if (time <= 200) {
                time += 10
            }
            
            timeLabel.text = String(time)
        }
        
    }
    
    //reset timer
    @IBAction func onReset(_ sender: UIBarButtonItem) {
        
        timer.invalidate()
        
        time = 210
        
        timeLabel.text = String(time)
//        print(time)
    }
    
    
    //substract 10 seconds
    @IBAction func minus10(_ sender: UIBarButtonItem) {
        
        if let tempTime = timeLabel.text{
            time = Int(tempTime)!
            
            //reducing by 10
            
            if (time > 10) {
                time -= 10
            }
            
            timeLabel.text = String(time)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        timeLabel.text = String(time)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

