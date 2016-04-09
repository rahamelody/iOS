//
//  TutorialCell.swift
//  RWDevCon
//
//  Created by Mic Pringle on 27/02/2015.
//  Copyright (c) 2015 Ray Wenderlich. All rights reserved.
//

import UIKit

class InspirationCell: UICollectionViewCell {
  
  @IBOutlet private weak var imageView: UIImageView!
  @IBOutlet private weak var imageCoverView: UIView!
  @IBOutlet private weak var titleLabel: UILabel!

  
  var inspiration: Inspiration? {
    didSet {
      if let inspiration = inspiration {
        imageView.image = inspiration.backgroundImage
        titleLabel.text = inspiration.title

      }
    }
  }
  
  override func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes) {
    super.applyLayoutAttributes(layoutAttributes)
    
    let featuredHeight = UltravisualLayoutConstants.Cell.featuredHeight
    let standardHeight = UltravisualLayoutConstants.Cell.standardHeight
        
    let delta = 1 - ((featuredHeight - CGRectGetHeight(frame)) / (featuredHeight - standardHeight))
    
    let minAlpha: CGFloat = 0.25
    let maxAlpha: CGFloat = 0.75
    
    imageCoverView.alpha = maxAlpha - (delta * (maxAlpha - minAlpha))
    
    let scale = max(delta, 0.5)
    titleLabel.transform = CGAffineTransformMakeScale(scale, scale)
    

  }
  
}
