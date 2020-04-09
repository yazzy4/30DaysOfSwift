//
//  DayTwoViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 3/25/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwoViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    let numberFormatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberFormatter.allowsFloats = false
        self.title = "Gesture Tap Counter"
    }
    
    @IBAction func didTapScreen(_ sender: UITapGestureRecognizer) {
        incrimentCounter()
    }
    
    
    @IBAction func didHoldOnScreen(_ sender: UILongPressGestureRecognizer) {
        incrimentCounter()
    }
    
    func incrimentCounter(){
        if let number = numberFormatter.number(from: counterLabel.text!){
            counterLabel.text = "\(number.intValue + 1)"
        }
    }
}
