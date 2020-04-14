//
//  DaySevenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/14/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DaySevenViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First View"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(didPressDoneButton(_:)))

    }
    
    @objc func didPressDoneButton(_ sender: UIBarButtonItem){
        performSegue(withIdentifier: DaySevenDetailViewController.identifier, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DaySevenDetailViewController.identifier {
            let vc = segue.destination as! DaySevenDetailViewController
            vc.text = self.textView.text!
        }
    }

}

class DaySevenDetailViewController: UIViewController {

    static let identifier = "day7Detail"
    var text: String?
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second View"
        textView.text = text

    }
    

}
