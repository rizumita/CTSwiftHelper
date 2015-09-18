//
//  CTSwiftHelperError.swift
//  CTSwiftHelper
//
//  Created by 和泉田領一 on 2015/09/18.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import Foundation

enum CTSwiftHelperError: ErrorType {
    case UncontainedKeyError(message: String)
    case IncompatibleTypeError(message: String)
}
