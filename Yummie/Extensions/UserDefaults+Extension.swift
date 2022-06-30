//
//  UserDefaults+Extension.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/30/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation

extension UserDefaults {
    private enum UserDefaultsKeys : String {
        case hasOnboarded
    }
    var hasOnboarded : Bool {
        get {
            bool(forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
        
        set {
            set(newValue, forKey: UserDefaultsKeys.hasOnboarded.rawValue)
        }
    }
}
