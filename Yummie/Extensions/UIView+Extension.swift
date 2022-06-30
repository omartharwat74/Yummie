//
//  File.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/22/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import UIKit

extension UIView {
   @IBInspectable var cornerRadius : CGFloat {
        get {return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
            
        }
    }
    
}
