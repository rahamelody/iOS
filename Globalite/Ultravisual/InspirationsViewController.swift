//
//  InspirationsViewController.swift
//  RWDevCon
//
//  Created by Mic Pringle on 02/03/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit
var inspirations = Inspiration.allInspirations()
var currentIndex:Int = 0
var inspirationView:InspirationsViewController?
var detailViewController:TableViewController?
var cells:InspirationCell?

class InspirationsViewController: UICollectionViewController {
  
//  let inspirations = Inspiration.allInspirations()
  
//  override func preferredStatusBarStyle() -> UIStatusBarStyle {
//    return UIStatusBarStyle.LightContent
//  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
   
      view.backgroundColor = UIColor.blackColor()

    collectionView!.backgroundColor = UIColor.clearColor()
    collectionView!.decelerationRate = UIScrollViewDecelerationRateFast
  }

}

extension InspirationsViewController {
  
//  override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//    return 1
//  }
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return inspirations.count
  }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("InspirationCell", forIndexPath: indexPath) as! InspirationCell
        cell.inspiration = inspirations[indexPath.item]
        
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let layout = collectionViewLayout as! UltravisualLayout
        let offset = layout.dragOffset * CGFloat(indexPath.item)
        if collectionView.contentOffset.y != offset {
            collectionView.setContentOffset(CGPoint(x: 0, y: offset), animated: true)
            
            
        }
        
        print("You selected item #\(indexPath.item)!")
    }
   
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //
                if let cell = sender as? UICollectionViewCell, indexPath = collectionView!.indexPathForCell(cell) {
                    // use indexPath
        if segue.identifier == "segue" {
            let detailVC: TableViewController = segue.destinationViewController as! TableViewController
            detailVC.topicSelected = String(indexPath.item)
        
        
                } else {
            
                }
            }
        }


}