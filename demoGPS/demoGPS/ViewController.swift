//
//  ViewController.swift
//  demoGPS
//
//  Created by admin on 2018/10/19.
//  Copyright © 2018 demo. All rights reserved.
//

import UIKit
import CoreLocation



class ViewController: UIViewController , CLLocationManagerDelegate{
    
    let locationManager:CLLocationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        for currentLocation in locations {
            debugPrint("\(index):\(currentLocation)")
        }
    }
}

