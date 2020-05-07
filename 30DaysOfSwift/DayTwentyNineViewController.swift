//
//  DayTwentyNineViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/7/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwentyNineViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = ""
        self.resultLabel.text = ""
        title = "Language Detector"
    }
   
    @IBAction func detectLang(_ sender: UIButton){
        
    }

}
