//
//  HelperFunctions.swift
//  CTSwiftHelper
//
//  Created by 和泉田領一 on 2015/09/18.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import Foundation

enum CTSwiftHelperError: ErrorType {
    case IncompatibleTypeError(message: String)
}

public func assign<T>(inout variable variable: T)(value: T) {
    variable = value
}

public func value<T>(from object: T)(forKey key: String) -> Any? {
    let mirror = Mirror(reflecting: object)
    
    for (name, value) in mirror.children where name == key {
        return value
    }
    
    return nil
}

public func isType<T, U>(type: T.Type)(object: U) -> Bool {
    return object is T
}

public func cast<T, U>(to type: T.Type)(object: U) throws -> T {
    if isType(type)(object: object) {
        return object as! T
    }
    
    throw CTSwiftHelperError.IncompatibleTypeError(message: "Object type is \(object.dynamicType), but required type is \(type.self)")
}
