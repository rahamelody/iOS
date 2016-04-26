//
//  TableViewCell.swift
//  TinderLike
//
//  Created by Raha Ghassemi on 4/18/16.
//  Copyright © 2016 Stefan Lage. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

     var matchName: UILabel = UILabel()
     var descriptionLabel: UILabel = UILabel()
     var matchImage: UIImageView = UIImageView()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.matchName.frame = CGRectMake(70, 0, 150, 35)
        self.matchName.font = UIFont(name: "Futura", size: 15)
        self.matchName.textColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        self.descriptionLabel.frame = CGRectMake(70, 25, 300, 35)
        self.descriptionLabel.font = UIFont(name: "Avenir", size: 14)
        self.descriptionLabel.textColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        self.matchImage.frame = CGRectMake(10, 10, 50, 50)
        self.matchImage.layer.cornerRadius = matchImage.frame.size.width/2
        self.matchImage.clipsToBounds = true
        self.matchImage.layer.borderWidth = 1.5
        self.matchImage.layer.borderColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0).CGColor
        self.addSubview(self.matchName)
        self.addSubview(self.descriptionLabel)
        self.addSubview(self.matchImage)
    }
    
    required init?(coder decoder: NSCoder) {
        
        super.init(coder: decoder)

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
