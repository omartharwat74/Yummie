//
//  AllDishes.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/29/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation

struct AllDishes : Decodable {
    let categories : [DishCategory]?
    let populars : [Dish]?
    let specials : [Dish]?
    
}
