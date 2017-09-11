//
//  ViewController.swift
//  Maps
//
//  Created by Cory Dorning on 9/11/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set lat/long (home)
        let lat: CLLocationDegrees = 38.978319
        let long: CLLocationDegrees = -84.516796
        
        // set lat/long delta
        let latDelta: CLLocationDegrees = 0.05
        let longDelta: CLLocationDegrees = 0.05
        
        // set span
        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        // set location
        let location = CLLocationCoordinate2D(latitude: lat, longitude: long)
        
        // set region
        let region = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

