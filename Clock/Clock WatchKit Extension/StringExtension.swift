//
//  StringExtension.swift
//  Clock
//
//  Created by TakanoriMatsumoto on 2015/04/08.
//  Copyright (c) 2015年 TakanoriMatsumoto. All rights reserved.
//

import Foundation
import UIKit


extension String {
    public var UIColor: UIKit.UIColor {
        var hex = self
        switch countElements(hex) {
            case 1:
                hex = hex.repeat(6)
            case 2:
                hex = hex.repeat(3)
            case 3:
                hex = hex[0].repeat(2) + hex[1].repeat(2) + hex[2].repeat(2)
            default:
                break
        }

        var r: UInt32 = 0
        var g: UInt32 = 0
        var b: UInt32 = 0
        
        NSScanner(string: "0x" + hex[0...1]).scanHexInt(&r)
        NSScanner(string: "0x" + hex[2...3]).scanHexInt(&g)
        NSScanner(string: "0x" + hex[4...5]).scanHexInt(&b)

        let red = CGFloat(Int(r))
        let green = CGFloat(Int(g))
        let blue = CGFloat(Int(b))

        return UIKit.UIColor(red: red, green: green, blue: blue, alpha: 0.7)
    }
    
    func repeat (countNumber: Int) -> String {
        return "".stringByPaddingToLength(countElements(self) * countNumber, withString: self, startingAtIndex:0)
    }
    
    subscript (i: Int) -> String {
        return String(Array(self)[i])
    }
    
    subscript (r: Range<Int>) -> String {
        return substringWithRange(Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex)))
    }


}
