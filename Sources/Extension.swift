//
//  Extension.swift
//  ColorPaletteGenarator
//
//  Created by Kosuke Kito on 2016/05/22.
//  Copyright © 2016年 Kosuke Kito. All rights reserved.
//

import AppKit

extension NSColor {
    convenience init?(hexString: String) {
        let hex: String
        if hexString.hasPrefix("#") {
            hex = String(hexString.characters.dropFirst())
        } else if hexString.hasPrefix("0x") {
            hex = hexString.stringByReplacingOccurrencesOfString("0x", withString: "")
        } else {
            hex = hexString
        }
        
        guard hex.characters.count == 6 || hex.characters.count == 8 else {
            return nil
        }
        
        if let number = Int(hex, radix: 16) {
            self.init(hex: number)
        } else {
            return nil
        }
    }
    
    convenience init(hex: Int) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let blue = CGFloat(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}


extension NSColorList {
    convenience init(name: String, colors: [String : NSColor]) {
        self.init(name: name)
        
        colors.forEach { key, value in
            setColor(value, forKey: key)
        }
    }
}