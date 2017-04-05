//
//  ViewController.swift
//  project-07-timesTable
//
//  Created by Andrews Frempong on 03/04/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentSliderValue = 1
    
    @IBOutlet weak var currentSliderValueLabel: UILabel!
    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func onSliderChange(_ sender: UISlider) {
        //print(round(sender.value))
        
        currentSliderValue = Int(round(sender.value))
        
        currentSliderValueLabel.text = String(currentSliderValue)
        
        //reload data when currentSliderValue changes
        table.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Number")
        
        let multiplicationResult = (indexPath.row + 1) * currentSliderValue
        
        cell?.textLabel?.text = String("\(currentSliderValue) * \(indexPath.row + 1) = \(multiplicationResult)")
        
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentSliderValueLabel.text = String(currentSliderValue)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

