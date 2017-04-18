//
//  TableViewCell.swift
//  Project-11-CustomTableViewCell
//
//  Created by Andrews Frempong on 18/04/2017.
//  Copyright © 2017 Andrews Frempong. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
