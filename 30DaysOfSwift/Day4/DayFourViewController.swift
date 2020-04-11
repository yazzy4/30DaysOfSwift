//
//  DayFourViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/10/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayFourViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

}

class TipModel {
    var mainAmount: Double?
    var tipPercentage: Double?
    
    func calculateTipAmount() -> (totalAmount: Double, tipAmount:Double){
        guard let mainAmount = mainAmount, let tipPercentage = tipPercentage else {
            return(0.0,0.0)
        }
        //How do you calculate tip? total * percent then percent + main amount
        return(mainAmount * tipPercentage, (mainAmount + tipPercentage) + tipPercentage)
    }
    
}
