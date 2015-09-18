//
//  CTSwiftHelperTests.swift
//  CTSwiftHelperTests
//
//  Created by 和泉田領一 on 2015/09/18.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import XCTest
@testable import CTSwiftHelper

class CTSwiftHelperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAssign() {
        
    }

    func testValueFromObjectForKey() {
    }
    
    func testIsType() {
        XCTAssertTrue(isType(String.self)(object: "Test"))
        XCTAssertTrue(isType(AnyObject.self)(object: "Test"))
        XCTAssertFalse(isType(Int.self)(object: "Test"))
    }
    
    func testCast() {
        let result = try! cast(to: String.self)(object: ("Test" as AnyObject))
        XCTAssertEqual("\(result.dynamicType)", "\(String.self)")
        
        do {
            try cast(to: Int.self)(object: ("Test" as AnyObject))
            XCTFail()
        }
        catch {
        }
    }

}
