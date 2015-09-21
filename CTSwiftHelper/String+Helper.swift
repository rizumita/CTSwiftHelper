//
//  String+Helper.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/20.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import Foundation

public extension String {

    var firstLetter: String? {
        return self[safe: startIndex].map { String($0) }
    }
    
    subscript(safe index: Index) -> Character? {
        guard index.distanceTo(startIndex) < characters.count else {
            return nil
        }
        
        return self[index]
    }
    
}