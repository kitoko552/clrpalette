//
//  main.swift
//  ColorPaletteGenarator
//
//  Created by Kosuke Kito on 2016/05/22.
//  Copyright © 2016年 Kosuke Kito. All rights reserved.
//

import Foundation

let result = Application.run(Process.arguments)

switch result {
case .Success(let message):
    print(message.rawValue)
    exit(0)
case .Failure(let message):
    let stderr = NSFileHandle.fileHandleWithStandardError()
    if let data = message.rawValue.dataUsingEncoding(NSUTF8StringEncoding) {
        stderr.writeData(data)
    }
    
    exit(1)
}
