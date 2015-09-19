//
//  CTSwiftHelperTests.swift
//  CTSwiftHelperTests
//
//  Created by 和泉田領一 on 2015/09/18.
//  Copyright © 2015年 CAPH. All rights reserved.
//

import XCTest
@testable import CTSwiftHelper

class Sample {
    var a: String = "test"
}

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
        let s = Sample()
        
        assign(variable: &s.a)(value: "new value")
        XCTAssertEqual(s.a, "new value")
    }

    func testValueFromObjectForKey() {
        do {
            let avalue = try value(from: Sample())(forKey: "a") as! String
            XCTAssertEqual(avalue, "test")
        }
        catch {
            XCTFail()
        }

        do {
            try value(from: Sample())(forKey: "b")
            XCTFail()
        }
        catch {
        }
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
    
    func testNot() {
        let flagClosure = { (text: String) -> Bool in text.characters.count > 3 }
        XCTAssertTrue(not(flagClosure)(arg: ""))
        XCTAssertFalse(not(flagClosure)(arg: "abcd"))
    }

}
