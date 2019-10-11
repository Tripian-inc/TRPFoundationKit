//
//  FoundationKitTest.swift
//  TRPFoundationKitTests
//
//  Created by Evren Yaşar on 11.10.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import XCTest
@testable import TRPFoundationKit
class FoundationKitInfoTest: XCTestCase {
    
    func testFrameworkVersion() {
        let version = FoundationKitInfo().version()
        XCTAssertNotNil(version)
        
        if let v = Bundle(for: type(of: self)).infoDictionary?["CFBundleShortVersionString"] as? String {
            XCTAssert(v == version!)
        }
    }
    
}
