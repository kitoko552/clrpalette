//
//  Application.swift
//  ColorPaletteGenarator
//
//  Created by Kosuke Kito on 2016/05/22.
//  Copyright © 2016年 Kosuke Kito. All rights reserved.
//

import AppKit

struct Application {
    private let arguments: [String]

    init(arguments: [String]) {
        self.arguments = arguments
    }
    
    func run() -> Result {
        if arguments.count < 2 {
            return Result.Failure(message: .Usage)
        }
        
        guard let jsonData = NSData(contentsOfFile: arguments[2]) else {
            return Result.Failure(message: .NoSuchFile)
        }
        
        guard let json = try? NSJSONSerialization.JSONObjectWithData(jsonData, options: .MutableContainers) as! [String : AnyObject] else {
            return Result.Failure(message: .SerializationFailed)
        }
        
        var colors = [String : NSColor]()
        json.forEach { key, value in
            if let hexString = value as? String, color = NSColor(hexString: hexString) {
                colors[key] = color
            }
        }
        
        let hasSucceded = NSColorList(name: arguments[1], colors: colors).writeToFile(nil)
        if hasSucceded {
            return Result.Success(message: .Success)
        } else {
            return Result.Failure(message: .WriteToFileFailed)
        }
    }
}