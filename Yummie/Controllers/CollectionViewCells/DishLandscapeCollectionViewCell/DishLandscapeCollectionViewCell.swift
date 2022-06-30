//
//  DishLandscapeCollectionViewCell.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/27/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {
    
     static let identifier = String(describing:DishLandscapeCollectionViewCell.self)
    
    // MARK : OUTLETS
    @IBOutlet var dishImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var caloriesLabel: UILabel!
    
    func setup(dish: Dish)  {
           titleLabel.text = dish.name
           caloriesLabel.text = dish.formattedCalories
           descriptionLabel.text = dish.description
           dishImageView.kf.setImage(with: dish.image?.asUrl)
       }
    

   

}
