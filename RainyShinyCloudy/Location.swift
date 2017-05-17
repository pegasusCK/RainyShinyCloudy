//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Chihkao Yu on 5/17/17.
//  Copyright © 2017 Chihkao Yu. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    
    //singleton class, variable made available from anywhere inside project
    static var sharedInstance = Location()
    
    //class initializer
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}  // class Location
