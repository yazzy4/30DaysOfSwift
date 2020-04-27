//
//  DayEightteenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/25/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import WebKit

class DayEightteenViewController: UIViewController {

    @IBOutlet weak var addressBar: UITextField!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addressBar.becomeFirstResponder()
    }
    
    @IBAction func didTapGo(_ sender: UIButton){
        self.view.endEditing(true)
        guard let url = URL(string: addressBar.text!) else {
            return
        }
        webView.load(URLRequest(url: url))
    }

}

extension DayEightteenViewController : WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        addressBar.text = webView.url?.absoluteString
    }
}
