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
  var speaker: String
  var room: String
  var time: String
  var backgroundImage: UIImage
    
//    var top20:  <Array>
  
  var roomAndTime: String {
    get {
      return "\(time) • \(room)"
    }
  }
  
  init(title: String, speaker: String, room: String, time: String, backgroundImage: UIImage) {
    self.title = title
    self.speaker = speaker
    self.room = room
    self.time = time
    self.backgroundImage = backgroundImage
//    self.top20 = top20
  }
  
  convenience init(dictionary: NSDictionary) {
    let title = dictionary["Title"] as? String
    let speaker = dictionary["Speaker"] as? String
    let room = dictionary["Room"] as? String
    let time = dictionary["Time"] as? String
    let backgroundName = dictionary["Background"] as? String
    let backgroundImage = UIImage(named: backgroundName!)
//    let top20 = Dictionary["Top 20"] as? String

    
    self.init(title: title!, speaker: speaker!, room: room!, time: time!, backgroundImage: backgroundImage!.decompressedImage)
  }

}
