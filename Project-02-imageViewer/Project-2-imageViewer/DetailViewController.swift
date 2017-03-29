//
//  DetailViewController.swift
//  Project-2-imageViewer
//
//  Created by Andrews Frempong on 27/03/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //selectedImage is optional because it won't exist the first time DetailViewController is loaded
    var selectedImage: String?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        
        //4- when it is loaded, show image
            //To show image we need:
            //a) image property on imageView and set it equal to a function
            //b) The function is called UIImage which takes a named parameter and
            //searches for that name in the app bundle to load it
        
        if let imageToLoad = self.selectedImage {
            
            imageView.image = UIImage(named: imageToLoad)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //5- show image full screen on tap when DetailViewController screen appears
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
        
    }
    
    
    //5- DO NOT show image full screen on tap when DetailViewController screen disappears
    //as it may cause issues on tap when we have the list of images showing
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        
        //this
        navigationController?.hidesBarsOnTap = false
    }

}
