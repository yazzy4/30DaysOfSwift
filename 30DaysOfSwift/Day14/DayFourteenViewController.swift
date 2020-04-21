//
//  DayFourteenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/21/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayFourteenViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Keyboard Accessories"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.becomeFirstResponder()
    }

}
