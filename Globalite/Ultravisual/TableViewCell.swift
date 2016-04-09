//
//  TableViewCell.swift
//  Ultravisual
//
//  Created by Raha Ghassemi on 4/9/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var headlineLabel: UITextView!
    @IBOutlet weak var staffPickLabel: UITextView!
    @IBOutlet var publisherImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        headlineLabel.font = UIFont(name: "Georgia", size: 16)
//        staffPickLabel.font = UIFont(name: "Avenir", size: 14)
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
