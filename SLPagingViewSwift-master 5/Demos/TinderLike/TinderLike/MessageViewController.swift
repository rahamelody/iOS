//
//  MessageViewController.swift
//  TinderLike
//
//  Created by Raha Ghassemi on 4/18/16.
//  Copyright © 2016 Stefan Lage. All rights reserved.
//

import UIKit
//import FBSDKCoreKit
//import FBSDKLoginKit

class MessageViewController: UIViewController {
    
    var matchSelected:String = ""
    
    @IBOutlet var doodleButton: UIButton!
    
    @IBOutlet var openTableButton: UIButton!
    
    
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    @IBOutlet var imageGuy: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "ANDREW"
        imageGuy.image = UIImage(named: "man1")
        imageGuy.layer.cornerRadius = imageGuy.frame.size.width/2
        imageGuy.clipsToBounds = true
    }
    
   
    
    
}






