//
//  ProfileViewController.swift
//  Blacklisted
//
//  Created by Raha Ghassemi on 11/20/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit




    class ProfileViewController: UICollectionViewController {
        
        var inspirations = Inspiration.allInspirations()
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let patternImage = UIImage(named: "Pattern") {
                view.backgroundColor = UIColor(patternImage: patternImage)
            }
            collectionView!.backgroundColor = UIColor.blackColor()
            collectionView!.decelerationRate = UIScrollViewDecelerationRateFast
        }
        
        
        
    }
    
    extension ProfileViewController {
        
        override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
            return 1
        }
        
        override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return inspirations.count
        }
        
        override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("InspirationCell", forIndexPath: indexPath) as! InspirationCell
            cell.inspiration = inspirations[indexPath.item]
            print(indexPath)
            return cell
        }
        
    
        

        
  
    }
    
    
    
