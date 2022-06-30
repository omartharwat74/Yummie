//
//  OnBoardingCollectionViewCell.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/24/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    // MARKS : OUTLETS
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    func setUp(_ slide : OnBoardingSlide)  {
        slideImageView.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
    
    
}
