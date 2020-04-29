//
//  DayTwentyTwoViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/29/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import UserNotifications

class DayTwentyTwoViewController: UIViewController, UNUserNotificationCenterDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        center.requestAuthorization(options: [UNAuthorizationOptions.alert, .sound, .badge]) { (success, error) in
            
        }
    }
    
    @IBAction func didTapNotification(_ sender: UIButton){
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "New Course Announcement"
        content.subtitle = "30 Days of iOS 12"
        content.body = "Learn iOS 12 in 30 Days"
        content.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2.0, repeats: false)
        let request = UNNotificationRequest(identifier: "ContentIdentifier", content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if error != nil {
                print(error!.localizedDescription)
                
            }
        }
   
        
    }

}
