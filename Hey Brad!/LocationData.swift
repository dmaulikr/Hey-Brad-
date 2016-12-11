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
    
    
    
  //  var locationData = CLLocation(coordinate: CLLocationCoordinate2D?, altitude: CLLocationDistance, horizontalAccuracy: CLLocationAccuracy, verticalAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: Date)
    
   // var currentLocation = CLLocationCoordinate2D!
    var currentAltitude = CLLocationDistance()
    var currentHAccuracy = CLLocationAccuracy()
    var currentVerticalAccuracy = CLLocationAccuracy()
    var currentTime = Date()
    

}
