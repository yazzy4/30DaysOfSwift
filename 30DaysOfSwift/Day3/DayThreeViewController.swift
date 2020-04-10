//
//  DayThreeViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/9/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayThreeViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.alpha = 0.5
        self.title = "Alpha Slider"
       
    }
    
    @IBAction func didChangeSliderValue(_ sender: UISlider) {
        label.alpha = CGFloat(sender.value)
    }
    

}
