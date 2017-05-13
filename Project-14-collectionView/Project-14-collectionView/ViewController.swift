//
//  ViewController.swift
//  Project-14-collectionView
//
//  Created by Andrews Frempong on 13/05/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

struct Movie {
    var movieTitle: String
    var movieImage: UIImage
}

class ViewController: UICollectionViewController {
    
    var movieArr = [
        
        Movie(movieTitle: "iron man: civil war", movieImage: #imageLiteral(resourceName: "civil war")),
        Movie(movieTitle: "dunkirk", movieImage: #imageLiteral(resourceName: "dunkirk")),
        Movie(movieTitle: "war of the planet of the apes", movieImage: #imageLiteral(resourceName: "apes")),
        Movie(movieTitle: "justice league", movieImage: #imageLiteral(resourceName: "justice league")),
        Movie(movieTitle: "spiderman", movieImage: #imageLiteral(resourceName: "spider man")),
        Movie(movieTitle: "logan", movieImage: #imageLiteral(resourceName: "logan")),
        Movie(movieTitle: "blade runner", movieImage: #imageLiteral(resourceName: "blade runner")),
        Movie(movieTitle: "batman", movieImage: #imageLiteral(resourceName: "batman"))
    ]
    
    override func viewDidLoad() {
        
        title = "Best Movies Of 2017"
        
        //layout config
        
        let width = ((collectionView?.frame.width)! / 2) - 4
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: 300)
    }
    
}

extension ViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieArr.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.mainImage.image = movieArr[indexPath.row].movieImage
        cell.mainTitle.text = (movieArr[indexPath.row].movieTitle).capitalized
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.gray.cgColor
        
        return cell
    }
    
}
