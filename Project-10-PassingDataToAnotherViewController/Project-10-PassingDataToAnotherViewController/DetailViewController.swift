//
//  DetailViewController.swift
//  Project-10-PassingDataToAnotherViewController
//
//  Created by Andrews Frempong on 15/04/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var name = ""
    
    @IBOutlet weak var personLabel: UILabel!
    
    @IBAction func goBack(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        personLabel.text = name
        
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
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
