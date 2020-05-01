//
//  DayTwentyThreeViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/1/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwentyThreeViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CIFilter & GCD"
    }
    
    @IBAction func didTapProcessImage(_ sender: UIButton){
        self.applyFilter()
    }
    
    func applyFilter(){
        DispatchQueue.global().async {
            sleep(10)
        }
    }

}
