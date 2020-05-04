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
            guard error == nil else {
               self.locationLabel.text = "Error getting location\(error!.localizedDescription)"
                return
            }
            if placemarks!.count > 0 {
                let placeMark = placemarks![0]
                self.locationManager.stopUpdatingLocation()
                
                let locality = placeMark.locality ?? ""
                let postalCode = placeMark.postalCode ?? ""
                let adminArea = placeMark.administrativeArea ?? ""
                let country = placeMark.country ?? ""
                
                self.locationLabel.text = "\(locality), \(postalCode), \(adminArea), \(country)"
            } else {
                self.locationLabel.text = "There is no placemark data"
            }
        }
    }


}
