//
//  Array+Helper.swift
//  CTSwiftHelper
//
//  Created by 和泉田領一 on 2015/09/20.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import Foundation

public extension CollectionType {
    
    public func sliding(size size: Index.Distance, step: Index.Distance = 1) -> [SubSequence] {
        var reachedEnd = false
        return indices
            .filter { (index: Index) -> Bool in index.distanceTo(index) % step == 0 }
            .flatMap { index -> SubSequence? in
                if reachedEnd {
                    return nil
                }
                
                let lastIndex = index.advancedBy(size, limit: endIndex)
                
                reachedEnd = lastIndex.distanceTo(endIndex) == 0
                
                return self[index..<lastIndex]
        }
    }
    
}
