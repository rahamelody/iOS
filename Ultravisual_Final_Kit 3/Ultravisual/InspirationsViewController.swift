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
var detailViewController:ProfileViewController?
var cells:InspirationCell?


class InspirationsViewController: UICollectionViewController {
    

  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let patternImage = UIImage(named: "Pattern") {
      view.backgroundColor = UIColor(patternImage: patternImage)
    }
    collectionView!.backgroundColor = UIColor.blackColor()
    collectionView!.decelerationRate = UIScrollViewDecelerationRateFast
  }
}


extension InspirationsViewController {
  

  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return inspirations.count
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("InspirationCell", forIndexPath: indexPath) as! InspirationCell
    cell.inspiration = inspirations[indexPath.item]
    
    //print(indexPath.item)
        return cell
  }

    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let layout = collectionViewLayout as! UltravisualLayout
        let offset = layout.dragOffset * CGFloat(indexPath.item)
        if collectionView.contentOffset.y != offset {
            collectionView.setContentOffset(CGPoint(x: 0, y: offset), animated: true)
            
            
        }
        

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let cell = sender as? UICollectionViewCell, indexPath = collectionView!.indexPathForCell(cell) {
            // use indexPath
            if segue.identifier == "profile" {
                let detailVC: ProfileViewController = segue.destinationViewController as! ProfileViewController
                detailVC.candidateSelected = String(indexPath.item)
                
            
        } else {
            print("error")
        }
    }
}

    

//
//}