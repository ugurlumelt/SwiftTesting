//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Meltem Uğurlu on 15.05.2024.
//

import XCTest
@testable import SwiftTesting

final class SwiftTestingTests: XCTestCase {
    
    
    let math = MathematicFunctions()
    
    func testAddIntegerFunction(){
        let result = math.addIntegers(x: 5, y: 8)
        
        XCTAssertEqual(result, 13)
        
        
    }
    
    func testMultiplyFunction(){
        let result = math.addIntegers(x: 5, y: 8)
        
        XCTAssertEqual(result, 40)
        
        
    }
    
    func testDivideIntegerFunction(){
        let result = math.addIntegers(x: 10, y: 2)
        
        XCTAssertEqual(result, 5)
        
        
    }
    
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
