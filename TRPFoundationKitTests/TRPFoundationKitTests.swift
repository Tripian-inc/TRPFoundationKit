//
//  TRPFoundationKitTests.swift
//  TRPFoundationKitTests
//
//  Created by Evren Yaşar on 9.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import XCTest
@testable import TRPFoundationKit
class TRPFoundationKitTests: XCTestCase {

    override func setUp() {
        print("SetUp")
    }

    override func tearDown() {
        print("TearDown")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testKitVersion() {
        let version = FoundationKitInfo().version()
        XCTAssertNotNil(version)
        XCTAssert(version!.count > 0, "Version number can not fatched")
    }
    
    func testStringToLocation() {
        let coordinateAnkara = "39.9334,32.85"
        let location = coordinateAnkara.toLocation()
        XCTAssertNotNil(location)
        XCTAssert(location!.lat == 39.9334, "Can not conver lat from string")
        XCTAssert(location!.lon == 32.85, "Can not conver lat from string")
    }
    
    
    func testWrongLocation() {
        let coordinateAnkara = "39.933432.85"
        XCTAssertNil(coordinateAnkara.toLocation())
    }
    
    
}
