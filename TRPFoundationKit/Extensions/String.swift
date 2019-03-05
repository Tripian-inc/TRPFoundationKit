//
//  String.swift
//  TRPFoundationKit
//
//  Created by Evren Yaşar on 8.02.2019.
//  Copyright © 2019 Evren Yaşar. All rights reserved.
//

import Foundation
extension String {
    
    public func toLocation() -> TRPLocation? {
        let speratedString = self.components(separatedBy: ",")
        if speratedString.count == 2 {
            guard let lat = Double(speratedString[0]), let lon = Double(speratedString[1]) else {return nil}
            return TRPLocation(lat: lat, lon: lon)
        }
        return nil
    }
    
}
