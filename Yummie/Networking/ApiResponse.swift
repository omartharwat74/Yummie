//
//  ApiResponse.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/29/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation

struct ApiResponse<T:Decodable> : Decodable {
    let status : Int
    let message : String?
    let data : T?
    let error : String?
}
