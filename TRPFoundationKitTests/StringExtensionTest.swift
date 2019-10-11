//
//  StringTest.swift
//  TRPFoundationKitTests
//
//  Created by Evren Yaşar on 11.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import Foundation

import XCTest
@testable import TRPFoundationKit

class StringExtensionTest: XCTestCase {
    
    func testToLocation() {
        let ankara = "39.90,32.62"
        let converted = ankara.toLocation()
        XCTAssertNotNil(converted)
        
        XCTAssert(converted!.lat == 39.90,"Lat couldn't converted")
        XCTAssert(converted!.lon == 32.62,"Lon couldn't converted")
        converted?.prnt()
    }
    
    func testToLocationWrongParams() {
        let ankara = "39.90-32.62"
        let converted = ankara.toLocation()
        XCTAssertNil(converted)
    }
    
    
    func testToLocationWithoutDot() {
        let ankara = "39,32"
        let converted = ankara.toLocation()
        XCTAssertNotNil(converted)
        
        XCTAssert(converted!.lat == 39,"Lat couldn't converted")
        XCTAssert(converted!.lon == 32,"Lon couldn't converted")
    }
}
