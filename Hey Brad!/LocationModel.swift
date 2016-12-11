//
//  LocationModel.swift
//  Hey Brad!
//
//  Created by David Rayman on 12/10/16.
//  Copyright © 2016 David Rayman. All rights reserved.
//

import UIKit
import MapKit

protocol MKMapViewDelegate {
    
}


class LocationModel: CLLocationManager, MKMapViewDelegate {
    
    var inputLocationData = LocationData()
    
    func creatLocationObject() {
        
    }
    
    func servicesEnable() {
       
            
        
    }
    
    func enableLocationServices() {
        // Check and make sure location services is enabled
        
        // Determine authorization status and enable required services
        requestAlwaysAuthorization()
        
        // Enable location services
        enableLocationServices()
    }

}
