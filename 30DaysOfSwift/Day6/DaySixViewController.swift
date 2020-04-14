//
//  DaySixViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/13/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DaySixViewController: UIViewController {
    
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    var dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "MMM d, h:mm a"
        dateTimeLabel.text = dateFormatter.string(from: Date())
        title = "Current Date & Time"
    }
    
    @IBAction func didHitRefresh (_ sender: UIButton){
        dateTimeLabel.text = dateFormatter.string(from: Date())
        
    }

}
