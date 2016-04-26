//
//  ViewController.swift
//  TinderLike
//
//  Created by Raha Ghassemi on 3/14/16.
//  Copyright © 2016 Stefan Lage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let man1 = UIButton()
    var controller = SLPagingViewSwift!()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addMan()
        // Do any additional setup after loading the view.
    }

    func addMan() {
        self.man1.frame = CGRectMake(200, 50, 150, 150)
        self.man1.layer.cornerRadius = self.man1.frame.size.width/2
        self.man1.clipsToBounds = true
        self.man1.layer.borderWidth = 3.0
        self.man1.layer.borderColor = UIColor.whiteColor().CGColor
        self.man1.setImage(UIImage(named: "man1"), forState: .Normal)
        
        man1.setTitle("Drag Me", forState: UIControlState.Normal)
        man1.addTarget(self, action: #selector(ViewController.wasDragged(_:event:)), forControlEvents: UIControlEvents.TouchDragInside)
        
    }
    
    func wasDragged (buttn : UIButton, event :UIEvent)
    {
        let touch : UITouch = (event.touchesForView(buttn)?.first)! as UITouch
        let previousLocation : CGPoint = touch .previousLocationInView(buttn)
        let location : CGPoint = touch .locationInView(buttn)
        let delta_x :CGFloat = location.x - previousLocation.x
        let delta_y :CGFloat = location.y - previousLocation.y
        buttn.center = CGPointMake(buttn.center.x + delta_x,
            buttn.center.y + delta_y);
        
    }


}
