//
//  UIViewController+Extension.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/27/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var identifier : String {
        return String(describing:self)
    }
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return
            storyboard.instantiateViewController(identifier: identifier) as! Self
        
    }
}
