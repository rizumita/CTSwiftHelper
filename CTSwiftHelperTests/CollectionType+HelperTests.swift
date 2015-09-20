//
//  CollectionType+HelperTests.swift
//  CTSwiftHelper
//
//  Created by 和泉田領一 on 2015/09/20.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import XCTest

class CollectionType_HelperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSliding() {
        let array = Array(0..<10)
        let sliding = array.sliding(size: 4, step: 3)
        let expect: [ArraySlice<Int>] = [[0, 1, 2, 3], [3, 4, 5, 6], [6, 7, 8, 9]]
        for (index, slice) in sliding.enumerate() {
            XCTAssertEqual(Array(slice), Array(expect[index]))
        }
    }
    
}
