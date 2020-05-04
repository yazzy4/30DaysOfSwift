//
//  DayTwentyFiveViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/4/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import CoreLocation

class DayTwentyFiveViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var locationLabel: UILabel!
    
    var locationManager: CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()

        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        self.locationLabel.text = "Error getting location\(error.localizedDescription)"
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            <#code#>
        }
    }


}
