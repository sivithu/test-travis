//
//  Algo2020TestCase.swift
//  Algo2020Tests
//
//  Created by Vithursan Sivakumaran on 08/01/2020.
//  Copyright © 2020 Vithursan Sivakumaran. All rights reserved.
//

import XCTest
@testable import Algo2020

class Algo2020TestCase: XCTestCase {

    var algo: Algo2020!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.algo = Algo2020(val: 2_0_2_0)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        self.algo = nil
    }

    func testNotNull() {
        XCTAssertNotNil(self.algo)
    }
    
    func testLessThan() {
        XCTAssertTrue(self.algo.isLess(than: 1999))
        XCTAssertTrue(self.algo.isLess(than: 2019))
        XCTAssertFalse(self.algo.isLess(than: 2020))
        XCTAssertFalse(self.algo.isLess(than: 2021))
    }
    
    func testGreaterThan() {
        XCTAssertFalse(self.algo.isGreater(than: 1999))
        XCTAssertFalse(self.algo.isGreater(than: 2019))
        XCTAssertFalse(self.algo.isGreater(than: 2020))
        XCTAssertTrue(self.algo.isGreater(than: 2021))
    }

}
