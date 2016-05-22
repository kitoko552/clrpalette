//
//  Result.swift
//  ColorPaletteGenarator
//
//  Created by Kosuke Kito on 2016/05/22.
//  Copyright © 2016年 Kosuke Kito. All rights reserved.
//

enum Result {
    case Success(message: Message)
    case Failure(message: Message)
    
    enum Message: String {
        case Usage = "Usage: $ clr CLR_FILE_NAME COLOR_JSON_FILE"
        case Success = "SUCCESS: clr file has created."
        case NoSuchFile = "No such file."
        case SerializationFailed = "Failed to serialize from data."
        case WriteToFileFailed = "Failed to write to file."
    }
}