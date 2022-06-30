//
//  Dish.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/26/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation

struct Dish : Decodable {
    let id,name,description,image : String?
    let calories : Int?
    
    var formattedCalories : String {
        return "\(calories ?? 0) calories"
    }
    
}
