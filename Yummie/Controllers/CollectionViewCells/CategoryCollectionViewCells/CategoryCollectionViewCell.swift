//
//  CategoryCollectionViewCell.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/25/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit
import Kingfisher
class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing :CategoryCollectionViewCell.self )

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    func setup(category : DishCategory)  {
        categoryTitleLabel.text = category.title
        categoryImageView.kf.setImage(with: category.image.asUrl)
    }
    

}
