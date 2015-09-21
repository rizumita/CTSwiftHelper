//
//  NSComparisonResult+Helper.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/21.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import XCTest

class NSComparisonResult_Helper: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitAscending() {
        XCTAssertEqual(NSComparisonResult(ascending: true), NSComparisonResult.OrderedAscending)
        XCTAssertEqual(NSComparisonResult(ascending: false), NSComparisonResult.OrderedDescending)
    }

}
