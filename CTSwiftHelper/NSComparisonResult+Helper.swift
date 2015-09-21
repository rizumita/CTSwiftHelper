//
//  NSComparisonResult+Helper.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/21.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import Foundation

public extension NSComparisonResult {
    
    init(ascending: Bool) {
        if ascending {
            self = NSComparisonResult.OrderedAscending
        } else {
            self = NSComparisonResult.OrderedDescending
        }
    }
    
}
