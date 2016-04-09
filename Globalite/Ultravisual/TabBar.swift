//
//  TabBar.swift
//  Ultravisual
//
//  Created by Raha Ghassemi on 4/8/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class TabBar: UITabBarController, UINavigationControllerDelegate {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
   override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        UITabBar.appearance().tintColor = UIColor(red: 51/255, green: 255/255, blue: 204/255, alpha: 1.0)
        
        // Sets the default color of the background of the UITabBar
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        
        // Sets the background color of the selected UITabBarItem (using and plain colored UIImage with the width = 1/5 of the tabBar (if you have 5 items) and the height of the tabBar)
        
        
    }

}
