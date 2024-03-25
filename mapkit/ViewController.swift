//
//  ViewController.swift
//  mapkit
//
//  Created by Berezhnova <3 on 23.03.2024.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let location = CLLocationCoordinate2DMake(62.038291, 129.732322)
        let span = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
        let regoin = MKCoordinateRegion(center: location, span: span)
        map.setRegion(regoin, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Петра Алексеева 25"
        annotation.subtitle = "Колледж связи и информационных технологий"
        map.addAnnotation(annotation)
    }
    
    
    @IBAction func sput_click(_ sender: UIButton) {
        map.mapType = .satellite
    }
    

    @IBAction func twod_click(_ sender: UIButton) {
        map.mapType = .standard
    }
    
}

