//
//  Window_Shopper_AppTests.swift
//  Window Shopper AppTests
//
//  Created by Ajinkya Sonar on 11/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import XCTest

class Window_Shopper_AppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    // Testing Calculation
    func testGetHours() {
        
        let wage = Wage()
        
        XCTAssert(wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
