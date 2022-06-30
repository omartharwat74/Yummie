//
//  DishListTableViewCell.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/27/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
    
      static let identifier = String(describing:DishListTableViewCell.self)
    
    // MARK : OUTLETS
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setup(dish:Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
    }
    func setup(order:Order) {
        dishImageView.kf.setImage(with: order.dish?.image?.asUrl)
        titleLabel.text = order.dish?.name
        descriptionLabel.text = order.name
    }

   
    
}
