//
//  TRPApiKeyControllerTest.swift
//  TRPFoundationKitTests
//
//  Created by Evren Yaşar on 17.12.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import XCTest
@testable import TRPFoundationKit

class TRPApiKeyControllerTest: XCTestCase {

    func testMainBundle() {
        let trpApiKey = TRPApiKeyController.getKey(TRPApiKeys.trpApiKey)
        XCTAssertNil(trpApiKey)
    }
    
    func testTestBundleTRPApiKeyWrongValue() {
        let trpApiKey = TRPApiKeyController.getKey(.trpApiKey, bundle: Bundle(for: type(of: self)))
        XCTAssertNotNil(trpApiKey)
        XCTAssertNotEqual(trpApiKey!, "12345678")
    }
    
    func testTestBundleTRPApiKey() {
        let trpApiKey = TRPApiKeyController.getKey(.trpApiKey, bundle: Bundle(for: type(of: self)))
        XCTAssertNotNil(trpApiKey)
        XCTAssertEqual(trpApiKey!, "1234")
    }
    
    
    func testTestBundleTRPMapBoxApiKey() {
        
        let apiKey = TRPApiKeyController.getKey(.trpGooglePlace, bundle: Bundle(for: type(of: self)))
        XCTAssertNotNil(apiKey)
        XCTAssertEqual(apiKey!, "3456")
    }

    func testTestBundleTRPGoogleApiKey() {
        let apiKey = TRPApiKeyController.getKey(.mglMapboxAccessToken, bundle: Bundle(for: type(of: self)))
        XCTAssertNotNil(apiKey)
        XCTAssertEqual(apiKey!, "5678")
    }
    
    
    func testMissingParameters() {
        let apiKey = TRPApiKeyController.checkMissingApiKeys(TRPApiKeys.allCases)
        XCTAssertEqual(apiKey.count, 3)
    }

    
    func testMissingParametersWithCurrentBundle() {
        let apiKey = TRPApiKeyController.checkMissingApiKeys(TRPApiKeys.allCases, bundle: Bundle(for: type(of: self)))
        XCTAssertEqual(apiKey.count, 0)
    }
}
