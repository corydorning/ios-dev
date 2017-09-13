//
//  ViewController.swift
//  Finding User Location
//
//  Created by Cory Dorning on 9/13/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//
// NOTE: Core Locations library was added under Build Phases > Link Library w/ Binary

import UIKit

// import map kit for map kit view
import MapKit

// import core location library
import CoreLocation


// add location delegate
class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    @IBOutlet weak var labelLatitude: UILabel!
    @IBOutlet weak var labelLongitude: UILabel!
    @IBOutlet weak var labelCourse: UILabel!
    @IBOutlet weak var labelSpeed: UILabel!
    @IBOutlet weak var labelAltitude: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    
    // create location manager instance
    var locationManager = CLLocationManager()
    
    // runs every time users location is updated
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // current location, just get the first
        let userLocation: CLLocation = locations[0]
        
        // set latitude
        labelLatitude.text = String(userLocation.coordinate.latitude)
        
        // set longitude
        labelLongitude.text = String(userLocation.coordinate.longitude)
        
        // set course
        labelCourse.text = String(userLocation.course)
        
        // set speed
        labelSpeed.text = String(userLocation.speed)
        
        // set altitude
        labelAltitude.text = String(userLocation.altitude)
        
        // geocode is address to location, reverse is lat/long to address
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) in
            if error != nil {
                print(error!)
            } else {
                // address details, just get the first placemark
                if let placemark = placemarks?[0] {
                    
                    // street number
                    var subThoroughfare = ""
                    
                    if placemark.subThoroughfare != nil {
                        subThoroughfare = placemark.subThoroughfare!
                    }
                    
                    // street name
                    var thoroughfare = ""
                    
                    if placemark.thoroughfare != nil {
                        thoroughfare = placemark.thoroughfare!
                    }
                    
                    // city
                    var subAdministrativeArea = ""
                    
                    if placemark.subAdministrativeArea != nil {
                        subAdministrativeArea = placemark.subAdministrativeArea!
                    }
                    
                    // state
                    var administrativeArea = ""
                    
                    if placemark.subAdministrativeArea != nil {
                        administrativeArea = placemark.administrativeArea!
                    }
                    
                    // zip code
                    var postalCode = ""
                    
                    if placemark.postalCode != nil {
                        postalCode = placemark.postalCode!
                    }
                    
                    // country
                    var country = ""
                    
                    if placemark.country != nil {
                        country = placemark.country!
                        
                    }
                    
                    // set nearest address
                    self.labelAddress.text = "\(subThoroughfare) \(thoroughfare)\n\(subAdministrativeArea), \(administrativeArea) \(postalCode) \n \(country)"
                    
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // location manager settings
        
        // set location manager delegate to view controller
        // allows view controller to control location manager
        locationManager.delegate = self
        
        // set accuracy to common standard
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // request authorization to get users location when app is in use
        locationManager.requestWhenInUseAuthorization()
        
        // monitor location
        locationManager.startUpdatingLocation()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

