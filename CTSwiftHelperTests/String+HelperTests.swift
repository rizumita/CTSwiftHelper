//
//  String+HelperTests.swift
//  CTSwiftHelper
//
//  Created by 和泉田 領一 on 2015/09/21.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import XCTest

class String_HelperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSubscriptSafe() {
        let oneString = "a"
        XCTAssertEqual(oneString[oneString.startIndex], Character("a"))
        
        let twoString = "ab"
        XCTAssertEqual(twoString[twoString.startIndex], Character("a"))
        XCTAssertEqual(twoString[twoString.endIndex.predecessor()], Character("b"))
    }
    
    func testFirstLetter() {
        let zeroString = ""
        XCTAssertNil(zeroString.firstLetter)
        
        let oneString = "a"
        XCTAssertEqual(oneString.firstLetter, "a")
        
        let twoString = "ab"
        XCTAssertEqual(twoString.firstLetter, "a")
    }
    
}
