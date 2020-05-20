//
//  ViewController.swift
//  Maps
//
//  Created by TrungLD on 5/20/20.
//  Copyright © 2020 TrungLD. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        let latitude: CLLocationDegrees = 15.430690
        let longtitude : CLLocationDegrees = 108.658070
        let latDenta = 0.05
        let longDenta = 0.05
         
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDenta, longitudeDelta: longDenta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
        let region : MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        
        map.setRegion(region, animated: true)
    }


}

