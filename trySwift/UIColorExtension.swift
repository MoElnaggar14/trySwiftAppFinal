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
        return UIColor(hexString: "#B8322B")
    }
    
    static func trySwiftTitleColor() -> UIColor {
        return UIColor.trySwiftMainColor().lightenColor(0.1).desaturatedColor()
    }
    
    static func trySwiftSubtitleColor() -> UIColor {
        return .darkGrayColor()
    }
    
    static func trySwiftAccentColor() -> UIColor {
        return UIColor(hexString: "#4FD5D6")
    }
    
    static func twitterBlue() -> UIColor {
        return UIColor(hexString: "#4FD5D6").darkenColor(0.1).desaturatedColor()
    }
}
