//
//  SequenceType+Helper.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/19.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import Foundation

public extension SequenceType {
    
    public func groupBy<U: Hashable>(@noescape retrieveKey: Generator.Element -> U) -> [U : [Generator.Element]] {
        var result: [U : [Generator.Element]] = [:]
        
        for element in self {
            let key = retrieveKey(element)
            result[key]?.append(element) ?? (result[key] = [element])
        }

        return result
    }

    public func zipWithIndex() -> [(Int, Generator.Element)] {
        return self.enumerate().map { (index, element) -> (Int, Generator.Element) in
            return (index, element)
        }
    }
    
}
