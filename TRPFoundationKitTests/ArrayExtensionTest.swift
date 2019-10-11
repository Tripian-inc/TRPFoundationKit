//
//  ArrayExtensionTest.swift
//  TRPFoundationKitTests
//
//  Created by Evren Yaşar on 11.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import XCTest
@testable import TRPFoundationKit

class ArrayExtensionTest: XCTestCase {
    
    func testToArray() {
        let array = [1,2,3]
        let result = array.toString()
        XCTAssert(result == "1,2,3")
        
        let resultPlus = array.toString("+")
        XCTAssert(resultPlus == "1+2+3")
    }
    
}
