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
     
        
        let latitude: CLLocationDegrees = 15.477871
        let longtitude : CLLocationDegrees = 108.582324
        let latDenta = 0.05
        let longDenta = 0.05
         
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDenta, longitudeDelta: longDenta)
        
        
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
        let region : MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: span)
        
        
        map.setRegion(region, animated: true)
       
        // create flag
        
        let annotation = MKPointAnnotation()
        annotation.title = "My Home"
        
        annotation.subtitle = "i'm living at here"
        
        annotation.coordinate = coordinates
        map.addAnnotation(annotation)
        
        let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(ViewController.longpress(gestureRecognizer:)))
        
        uilpgr.minimumPressDuration = 1
        
        map.addGestureRecognizer(uilpgr)
         
        
       
        
    }
    @objc func longpress( gestureRecognizer : UIGestureRecognizer) {
                
        let touchPoint = gestureRecognizer.location(in: self.map)
        
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)
        
        let annonation = MKPointAnnotation()
        
        annonation.coordinate = coordinate
        
        annonation.title = "New Place"
        
        annonation.subtitle = "Maybe i'll go here too..."
        
        map.addAnnotation(annonation)
        
}

}

