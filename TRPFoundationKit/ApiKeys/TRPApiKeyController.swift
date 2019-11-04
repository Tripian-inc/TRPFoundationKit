//
//  TRPApiKeyController.swift
//  TRPFoundationKit
//
//  Created by APPLE on 4.11.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import Foundation
public class TRPApiKeyController {
    
    /// Detect missing api key in info.Plist
    /// - Parameter frameworks: frameworks list
    public static func checkMissingApiKeys(_ frameworks: [TRPApiKeys]) -> [TRPApiKeys] {
        var missingKey = [TRPApiKeys]()
        for framework in frameworks {
            let key:String? = getKey(framework)
            if key == nil  {
                missingKey.append(framework)
            }else {
                if key!.count < 4 {
                    missingKey.append(framework)
                }
            }
        }
        return missingKey
    }
    
    public static func getKey(_ framework: TRPApiKeys) -> String? {
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist"), let dict = NSDictionary(contentsOfFile: path) {
            return dict[framework.rawValue] as? String
        }
        return nil
    }
}
