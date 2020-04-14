//
//  DayEightViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/14/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayEightViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.keyboardType = .twitter
        textView.keyboardAppearance = .dark
        
       
    }
    


}
