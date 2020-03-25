//
//  DayOneViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 3/24/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayOneViewController: UIViewController {
    
    @IBOutlet weak var currentCountLabel: UILabel!
    
    let formatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tap Counter"
        formatter.allowsFloats = false
      
    }
    
    @IBAction func tapButtonPressed(_ sender: UIButton) {
        if let numberFromLabel = formatter.number(from: currentCountLabel.text ?? "") {
                  currentCountLabel.text = "\(numberFromLabel.intValue + 1)"
              }
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
    }
    

}
