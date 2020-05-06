//
//  DayTwentySevenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/5/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwentySevenViewController: UIViewController {
    
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var outputTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cool Data Detector"

    }
    
    @IBAction func didTapParseButton(_ sender: UIButton){
        let inputString = inputTextView.text
        let typesToDetect: NSTextCheckingResult.CheckingType = [NSTextCheckingResult.CheckingType.address, .phoneNumber]
        let dataDetector = try? NSDataDetector(types: typesToDetect.rawValue)
        let range = NSMakeRange(0, inputString!.utf8.count)
        let matchesFound = dataDetector?.matches(in: inputString!, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: range)
        var detectedPhoneNumber = ""
        var detectedAdressComponents = [NSTextCheckingKey: String]()
        if let matches = matchesFound {
            for match in matches {
                if match.resultType == .address {
                    detectedAdressComponents[NSTextCheckingKey.street] = match.addressComponents![NSTextCheckingKey.street]
                      detectedAdressComponents[NSTextCheckingKey.city] = match.addressComponents![NSTextCheckingKey.city]
                      detectedAdressComponents[NSTextCheckingKey.state] = match.addressComponents![NSTextCheckingKey.state]
                      detectedAdressComponents[NSTextCheckingKey.zip] = match.addressComponents![NSTextCheckingKey.zip]
                  
                    
                } else if match.resultType == .phoneNumber {
                    detectedPhoneNumber = match.phoneNumber ?? ""
                }
            }
        }
        outputTextView.text = "Street: \(detectedAdressComponents[NSTextCheckingKey.street] ?? "") \n City: \(detectedAdressComponents[NSTextCheckingKey.city] ?? "")  \n State: \(detectedAdressComponents[NSTextCheckingKey.state] ?? "")\n Zipcode: \(detectedAdressComponents[NSTextCheckingKey.zip] ?? "")\n\n Phone Number:\(detectedPhoneNumber)"
    }

}
