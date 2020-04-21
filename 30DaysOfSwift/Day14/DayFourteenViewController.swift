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
        
        //add left nav bar item
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.cancel, target: self, action: #selector(dismissVC))
        
        //right nav bar item
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: nil, action: nil)
        
        let keyboardToolBar = UIToolbar()
        keyboardToolBar.sizeToFit()
        keyboardToolBar.setBackgroundImage(UIImage(), forToolbarPosition: UIBarPosition.any, barMetrics: UIBarMetrics.default)
        keyboardToolBar.setShadowImage(UIImage(), forToolbarPosition: UIBarPosition.any)
        
        //camera button
        let cameraButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.camera, target: nil, action: nil)
        cameraButton.tintColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        
        keyboardToolBar.items = [cameraButton]
        textView.inputAccessoryView = keyboardToolBar
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        textView.becomeFirstResponder()
    }
    
    @objc func dismissVC(){
        self.navigationController?.popViewController(animated: true)
    }

}
