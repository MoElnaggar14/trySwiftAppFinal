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

    class func trySwiftMainColor() -> UIColor {
        return UIColor(hexString: "#C62128")
    }
    
    class func trySwiftTitleColor() -> UIColor {
        return UIColor.trySwiftMainColor().lightenColor(0.1).desaturatedColor()
    }
    
    class func trySwiftSubtitleColor() -> UIColor {
        return UIColor.darkGrayColor()
    }
    
    class func trySwiftAccentColor() -> UIColor {
        return UIColor(hexString: "#4FD5D6")
    }
}
