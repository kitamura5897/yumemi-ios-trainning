//
//  Weather.swift
//  yumemi-ios-trainning
//
//  Created by 喜多村海人 on 2023/02/25.
//

import Foundation
import UIKit.UIImage

enum Weather: String {
   case sunny
   case rainy
   case cloudy
    
    private var color: UIColor {
        switch self {
        case .sunny:
            return .red
        case .cloudy:
            return .gray
        case .rainy:
            return .blue
        }
    }
    
    var image: UIImage? {
        return UIImage(named: rawValue)?.withTintColor(color)
    }
}
