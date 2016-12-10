//
//  LocationData.swift
//  Hey Brad!
//
//  Created by David Rayman on 12/10/16.
//  Copyright © 2016 David Rayman. All rights reserved.
//

import UIKit
import MapKit

class LocationData: CLLocationManager {
    
    
    
    var currentLocation = CLLocation.init(coordinate: currentLocation, altitude: self.currentAltitude?, horizontalAccuracy: self.currentHAccuracy?, verticalAccuracy: self.currentVAccuracy?, timestamp: self.currentTime?)
    
    
    var currentAltitude = CLLocationDistance()
    var currentHAccuracy = CLLocationAccuracy()
    var currentVerticalAccuracy = CLLocationAccuracy()
    var currentTime = Date()
    

}
