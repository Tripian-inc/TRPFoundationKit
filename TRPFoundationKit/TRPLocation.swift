//
//  TRPLocation.swift
//  TRPFoundationKit
//
//  Created by Evren Yaşar on 13.12.2018.
//  Copyright © 2018 Evren Yaşar. All rights reserved.
//

import Foundation

@objc public class TRPLocation:NSObject {
    
    public var lat:Double;
    public var lon:Double;
    
    public init(lat:Double, lon:Double) {
        self.lat = lat;
        self.lon = lon;
    }
    
    public func prnt() -> Void {
        print("Lat \(lat) Lon: \(lon)")
        
    }
    
}
