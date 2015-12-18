//
//  Profile.swift
//  Blacklisted
//
//  Created by Raha Ghassemi on 11/20/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel2: UILabel!
    
    @IBOutlet weak var imageView2: UIImageView!
    var inspiration: Inspiration? {
        didSet {
            if let inspiration = inspiration {
                imageView2.image = inspiration.backgroundImage
                titleLabel2.text = inspiration.title

            }
        }
    }
    

}