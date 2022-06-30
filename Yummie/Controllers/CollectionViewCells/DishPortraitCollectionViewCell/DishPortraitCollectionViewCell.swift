//
//  DishPortraitCollectionViewCell.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/26/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing:DishPortraitCollectionViewCell.self)
    
    // MARK : OUTLETS
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish: Dish)  {
        titleLabel.text = dish.name
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
        dishImageView.kf.setImage(with: dish.image?.asUrl)
    }
    

}
