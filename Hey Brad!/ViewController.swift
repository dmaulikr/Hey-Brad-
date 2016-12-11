//
//  ViewController.swift
//  Hey Brad!
//
//  Created by David Rayman on 12/10/16.
//  Copyright © 2016 David Rayman. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation




class ViewController: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var map: MKMapView!
    let locationManager:CLLocationManager = CLLocationManager()
    
    var model = LocationModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set self as delegate for the location manager
        self.locationManager.delegate = self

        // Check if this app has permission to use location services
        let authorizationStatus:CLAuthorizationStatus = CLLocationManager.authorizationStatus()
        
        if authorizationStatus == CLAuthorizationStatus.denied {
            // TODO: Tell user that functionality may be limitied
        }
        else if authorizationStatus == CLAuthorizationStatus.notDetermined {
            // Manually prompt the user for permission
            
            self.locationManager.requestAlwaysAuthorization()
            
        }
        else if authorizationStatus == CLAuthorizationStatus.authorizedWhenInUse {
                self.locationManager.requestAlwaysAuthorization()
        }
        
        
        
    // SET MAP PROPERTIES
        
        // Make the map hybrid 
        map.mapType = MKMapType(rawValue: 2)!
    
    }
    @IBAction func goToCurrentLocation(_ sender: UIButton) {
        let newLocation:CLLocationManager = CLLocationManager()
        
        let location = newLocation.location
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        
        let region = MKCoordinateRegion(center: location!.coordinate, span: span)
        
        map.setRegion(region, animated: true)
        
        map.showsUserLocation = true
        
        
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        NSLog("found")
        
        if locations.count > 0 {
            self.locationManager.stopUpdatingLocation()
            
            // Update the map with the location
            
            // Get the coordinate
            let location = locations[0] as CLLocation
            
            // Get the span
            let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            
            // Set the region
            let userRegion = MKCoordinateRegion(center: location.coordinate, span: span)
            
            // Set the region for the mapView
            map.setRegion(userRegion, animated: true)
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        NSLog("error in locating")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status == CLAuthorizationStatus.denied {
            // Tell the user that funcationality maybe disables
            
        }
        else if status == CLAuthorizationStatus.authorizedWhenInUse {
            self.locationManager.startUpdatingLocation()
        }
        else if status == CLAuthorizationStatus.authorizedAlways {
            self.locationManager.startUpdatingLocation()
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    func getLocationData() {
        // Initilaize a CLLocation
        
        // Find where the user is
        
        // Zoom in on the user
   
    }


}

