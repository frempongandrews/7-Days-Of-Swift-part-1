//
//  ViewController.swift
//  Project-11-CustomTableViewCell
//
//  Created by Andrews Frempong on 18/04/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

struct movie {
    let movieName: String!
    let movieImage: UIImage!
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var movieArr = [movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieArr = [
            movie(movieName: "Captain America", movieImage: #imageLiteral(resourceName: "civilWar")),
            movie(movieName: "Batman", movieImage: #imageLiteral(resourceName: "batman")),
            movie(movieName: "Interstellar", movieImage: #imageLiteral(resourceName: "interstellar")),
            movie(movieName: "Ex Machina", movieImage: #imageLiteral(resourceName: "exmachina"))
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as? TableViewCell
        
        cell?.mainImage.image = movieArr[indexPath.row].movieImage
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

