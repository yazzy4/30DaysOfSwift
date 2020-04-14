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
        title = "Keyboard Appearance"
        
        textView.keyboardType = .twitter
        textView.keyboardAppearance = .dark
        
        //swipe gesture to make keyboard disappear
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(didSwipeDown(_:)))
        swipeGesture.direction = .down
        self.textView.addGestureRecognizer(swipeGesture)
       
    }
    
    @objc func didSwipeDown(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .down {
            self.view.endEditing(true)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if self.textView.canBecomeFirstResponder {
            self.textView.becomeFirstResponder()
        }
    }


}
