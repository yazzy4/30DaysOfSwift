//
//  DayTwentyTwoViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/29/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import UserNotifications

class DayTwentyTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [UNAuthorizationOptions.alert, .sound, .badge]) { (success, error) in
            
        }
    }
    
    @IBAction func didTapNotification(_ sender: UIButton){
        
    }

}
