//
//  ViewController.swift
//  Hey Brad!
//
//  Created by David Rayman on 12/10/16.
//  Copyright © 2016 David Rayman. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getLocationData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getLocationData() {
        // Initilaize a CLLocation
        
    }


}

