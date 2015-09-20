//
//  SequenceType+HelperTests.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/20.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import XCTest
@testable import CTSwiftHelper

class SequenceType_HelperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGroupBy() {
        let array = [(1, "a"), (1, "b"), (1, "c"), (2, "d"), (2, "e"), (2, "f"), (3, "g"), (3, "h"), (3, "i")]
        let grouped = array.groupBy { $0.0 }
        if let group = grouped[1] {
            XCTAssertEqual(group.count, 3)
            XCTAssertTrue(group.contains { $0.0 == 1 && $0.1 == "a" })
            XCTAssertTrue(group.contains { $0.0 == 1 && $0.1 == "b" })
            XCTAssertTrue(group.contains { $0.0 == 1 && $0.1 == "c" })
        } else {
            XCTFail()
        }
        if let group = grouped[2] {
            XCTAssertEqual(group.count, 3)
            XCTAssertTrue(group.contains { $0.0 == 2 && $0.1 == "d" })
            XCTAssertTrue(group.contains { $0.0 == 2 && $0.1 == "e" })
            XCTAssertTrue(group.contains { $0.0 == 2 && $0.1 == "f" })
        } else {
            XCTFail()
        }
        if let group = grouped[3] {
            XCTAssertEqual(group.count, 3)
            XCTAssertTrue(group.contains { $0.0 == 3 && $0.1 == "g" })
            XCTAssertTrue(group.contains { $0.0 == 3 && $0.1 == "h" })
            XCTAssertTrue(group.contains { $0.0 == 3 && $0.1 == "i" })
        } else {
            XCTFail()
        }
    }
    
    func zipWithIndex() {
        let range = 0...100
        let zipped = range.zipWithIndex()
        XCTAssertEqual(zipped.count, 101)
        for (index, element) in zipped {
            XCTAssertEqual(index, element)
        }
    }
    
}
