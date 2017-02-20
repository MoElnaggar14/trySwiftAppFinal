//
//  UIColorExtension.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/11/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit
import DynamicColor

extension UIColor {
    
    static func trySwiftMainColor() -> UIColor {
        return UIColor(hexString: "#f0501d")
    }
    
    static func trySwiftTitleColor() -> UIColor {
        return UIColor.trySwiftMainColor().lighter(amount: 0.1).desaturated()
    }
    
    static func trySwiftSubtitleColor() -> UIColor {
        return .darkGray
    }
    
    static func trySwiftAccentColor() -> UIColor {
        return UIColor(red: 0, green: 178 / 255, blue: 234 / 255, alpha: 1.0)
    }
    
    static func trySwiftNavigationBarColor() -> UIColor {
        return  UIColor(hexString: "#f06d00")
    }
    
    static func twitterBlue() -> UIColor {
        return UIColor(hexString: "#ff5a00").darkened(amount: 0.1).desaturated()
    }
}





