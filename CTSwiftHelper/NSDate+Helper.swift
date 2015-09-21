//
//  NSDate+Helper.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/21.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import Foundation

extension NSDate: Comparable { }

public func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs === rhs || lhs.compare(rhs) == .OrderedSame
}

public func <(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedAscending
}
