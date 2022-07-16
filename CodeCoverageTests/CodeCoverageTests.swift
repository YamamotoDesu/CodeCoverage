//
//  CodeCoverageTests.swift
//  CodeCoverageTests
//
//  Created by 山本響 on 2022/07/16.
//

import XCTest
@testable import CodeCoverage

class CodeCoverageTests: XCTestCase {

//    func test_zero() {
//        XCTFail("Test not yet implemented")
//    }
    
    func test_max_with1And2_shouldReturnSomething() {
        let result = CoveredClass.max(1, 2)
        
        XCTAssertEqual(result, -123)
        // XCTAssertEqual failed: ("2") is not equal to ("-123")
    }
    
    func test_max_with1And2_shouldReturn2() {
        let result = CoveredClass.max(1, 2)
        
        XCTAssertEqual(result, 2)
    }
    
    func test_max_with3And2_shouldReturn3() {
        let result = CoveredClass.max(3, 2)
        
        XCTAssertEqual(result, 3)
    }
    
    func test_commaSeparated_from2to4_shouldReturnSomething() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        
        XCTAssertEqual(result, "FOO")
        // XCTAssertEqual failed: ("2,3,4") is not equal to ("FOO")
    }
    
    func test_commaSeparated_from2to4_shouldReturn234SeparatedByCommas() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        
        XCTAssertEqual(result, "2,3,4")
    }
    
    func test_commaSeparated_from2to2_shouldReturnSomething() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)
        
        XCTAssertEqual(result, "FOO")
        // XCTAssertEqual failed: ("2") is not equal to ("FOO")
    }
    
    func test_commaSeparated_from2to2_shouldReturn2WithNoComa() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)
        
        XCTAssertEqual(result, "2")
    }
    
    func test_area_withWidth7_shouldBeSomething() {
        let sut = CoveredClass()
        
        sut.width = 7
        
        XCTAssertEqual(sut.area, -1)
        // XCTAssertEqual failed: ("49") is not equal to ("-1")
    }
    
    func test_area_withWidth7_shouldBe49() {
        let sut = CoveredClass()
        
        sut.width = 7
        
        XCTAssertEqual(sut.area, 49)
    }

}
