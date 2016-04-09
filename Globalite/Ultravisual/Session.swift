//
//  Session.swift
//  RWDevCon
//
//  Created by Mic Pringle on 02/03/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

class Session {
  
  var title: String
  var backgroundImage: UIImage
  
  
  
  init(title: String, backgroundImage: UIImage) {
    self.title = title
    self.backgroundImage = backgroundImage
  }
  
  convenience init(dictionary: NSDictionary) {
    let title = dictionary["Title"] as? String
    let backgroundName = dictionary["Background"] as? String
    let backgroundImage = UIImage(named: backgroundName!)
    self.init(title: title!, backgroundImage: backgroundImage!.decompressedImage)
  }

}
