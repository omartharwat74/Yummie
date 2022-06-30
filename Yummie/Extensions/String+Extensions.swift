//
//  String+Extensions.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/25/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation

extension String {
    var asUrl : URL? {
        return URL(string: self)
    }
}
