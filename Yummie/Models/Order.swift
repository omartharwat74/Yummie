//
//  Order.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/28/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation

struct Order : Decodable {
    let id , name : String?
    let dish : Dish?
}
