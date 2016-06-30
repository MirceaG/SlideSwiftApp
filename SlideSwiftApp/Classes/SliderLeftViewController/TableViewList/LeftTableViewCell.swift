//
//  LeftTableViewCell.swift
//  SlideSwiftApp
//
//  Created by Mircea Grecu on 29/06/2016.
//  Copyright © 2016 Mircea Grecu. All rights reserved.
//

import Foundation



class LeftTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "ListCellIdentifier"
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var imageListItem: UIImageView!
    
    func configureCellWith(description: String, imagePath:String) {
        self.descriptionLabel.text = description
        self.imageListItem.image = UIImage(named: imagePath)
    }
}