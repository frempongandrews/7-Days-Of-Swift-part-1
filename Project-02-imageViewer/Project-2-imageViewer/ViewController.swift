//
//  ViewController.swift
//  Project-2-imageViewer
//
//  Created by Andrews Frempong on 25/03/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Images"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            
            if (item.hasPrefix("nssl")) {
                
                pictures.append(item)
                
            }
        }
        
//        print(pictures)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //1- To decide how many rows to show and how each cell shpuld look like, we need 2 functions:
    //a) numberOfRows inSection(returns an Integer)
    //b) cellForRowAt IndexPath (returns a cell)
    //override means the method has been already defined, but it's default behaviour
    //is to return 0 rows
    
    //SUMMARY STEP 1
    //In code below, just remember that 2 functions are needed to show data in a row(autocompletion will
    //help for now: 1) number of rows in section(it returns an integer) 2) cell for row at indexPath (it returns a cell)
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        
        cell.textLabel?.text = pictures[indexPath.row]
        
        return cell
    }
    
    //2- now to view the image in the following screen(DetailVieController), I will run a function when I tap on a row.
        //1- The function name is didSelectRowAt IndexPath
    
    //3- once I tap on a row I want the following to happen
        //1-set vc to the DetailViewController I have previously set with the storyboard.instantiateViewController method
        //PS: every viewController has a storyboard property
        //2-set the selectedImage property of vc to the name of the taped image
        //3- Push vc on navigationController by using the navigationController.pushViewController method
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            
            vc.selectedImage = pictures[indexPath.row]
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
}

