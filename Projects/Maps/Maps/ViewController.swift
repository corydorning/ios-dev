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
    
    // runs on map longpress of 2s and is passed gestureRecognizer var with a type of UIGestureRecognizer
    @objc func longpress(gestureRecognizer: UIGestureRecognizer) {
        let touchpoint = gestureRecognizer.location(in: self.map)
        
        // convert touchpoint to map coordinate
        let coordinate = map.convert(touchpoint, toCoordinateFrom: self.map)
        
        // add new annotation
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = coordinate
        
        annotation.title = "New Place"
        annotation.subtitle = "Some day I'd like to visit"
        
        map.addAnnotation(annotation)
    }
    
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
        
        // add annotation
        let annotation = MKPointAnnotation()
        
        annotation.title = "Home"
        annotation.subtitle = "Case De Dorning"
        annotation.coordinate = location
        
        map.addAnnotation(annotation)
        
        // longpress for annotations, the ":" is needed for the action function longpress in order to pass data
        // otherwise it just runs the longpress method but doesn't pass the data of where the longpress is
        let uiLongPress = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        
        // add length of time for long press action
        uiLongPress.minimumPressDuration = 2
        
        // add long press gesture to the map
        map.addGestureRecognizer(uiLongPress)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

