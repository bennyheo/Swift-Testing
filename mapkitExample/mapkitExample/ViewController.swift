//
//  ViewController.swift
//  mapkitExample
//
//  Created by Benny Heo on 6/9/14.
//  Copyright (c) 2014 BennyMadeIt. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate{
                            
    @IBOutlet var mapView : MKMapView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var latitude:CLLocationDegrees = 48.399193
        var longitude:CLLocationDegrees = 9.993341
        
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var ourLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(ourLocation, span)
        
        self.mapView.setRegion(theRegion, animated: true)
        
        var mapPin = MKPointAnnotation()
        mapPin.coordinate = ourLocation
        mapPin.title = "Church"
        mapPin.subtitle = "Famous Church in Germany, Ulm Minster"
        
        self.mapView.addAnnotation(mapPin)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

