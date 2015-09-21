//
//  NSDate+HelperTests.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/21.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import XCTest

class NSDate_HelperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testComparable() {
        let aDate = NSDate(timeIntervalSince1970: 0)
        let bDate = NSDate(timeIntervalSince1970: 1)
        XCTAssertTrue(aDate == aDate)
        XCTAssertTrue(aDate < bDate)
        XCTAssertFalse(aDate > bDate)
    }
    
}
