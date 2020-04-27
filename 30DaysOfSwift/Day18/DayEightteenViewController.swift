//
//  DayEightteenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/25/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import WebKit
import UIKit


class DayEightteenViewController: UIViewController {

    @IBOutlet weak var addressbar: UITextField!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addressbar.becomeFirstResponder()
    }
    
    @IBAction func didTapGo(_ sender: UIButton){
        self.view.endEditing(true)
        guard let url = URL(string: addressbar.text!) else {
            return
        }
        webView.load(URLRequest(url: url))
    }

}

extension DayEightteenViewController : WKNavigationDelegate {
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
            addressbar.text = webView.url?.absoluteString
        }
    }

