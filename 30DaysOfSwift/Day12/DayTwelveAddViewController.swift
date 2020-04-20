//
//  DayTwelveAddViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/20/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

@objc protocol DayTwelveAddViewControllerDelegate: class {
    func didAddNewItem(controller: DayTwelveAddViewController, item: String)
    @objc optional func thisDoesntDoAnything()
    
}

class DayTwelveAddViewController: UIViewController {
    
    static let identifier = "addNew"
    
    @IBOutlet weak var textView: UITextView!
    
    weak var delegate: DayTwelveAddViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add done button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(didTapDoneButton(_:)))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.textView.becomeFirstResponder()
    }

    @objc func didTapDoneButton(_ sender: UIBarButtonItem){
        if let text = textView.text {
            //do something with text
            self.delegate?.didAddNewItem(controller: self, item: text)
            self.navigationController?.popViewController(animated: true)
        }
    }

}
