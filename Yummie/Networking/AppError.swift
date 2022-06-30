//
//  AppError.swift
//  Yummie
//
//  Created by Omar Tharwat on 6/29/22.
//  Copyright © 2022 Omar Tharwat. All rights reserved.
//

import Foundation

enum AppError : LocalizedError {
    case errorDecoding
    case unKnownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "Response could not be decoded"
        case .unKnownError:
            return "Bruhhh!!! I have no idea what go on"
        case .invalidUrl:
            return "HEYYY!!! Give me a valid URL"
        case .serverError(let error):
            return error
        }
    }
}
