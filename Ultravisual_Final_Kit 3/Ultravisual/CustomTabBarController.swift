//
//  CustomTabBarController.swift
//  Blacklisted
//
//  Created by Raha Ghassemi on 11/21/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        UITabBar.appearance().tintColor = UIColor.whiteColor()
        
        // Sets the default color of the background of the UITabBar
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        
        // Sets the background color of the selected UITabBarItem (using and plain colored UIImage with the width = 1/5 of the tabBar (if you have 5 items) and the height of the tabBar)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        
      
        
    }
    

  

}
