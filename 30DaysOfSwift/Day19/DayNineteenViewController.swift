//
//  DayNineteenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/27/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import LocalAuthentication

class DayNineteenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.authUserWithBiometrics()
    }

    func authUserWithBiometrics(){
        let context: LAContext = LAContext()
        let localizedReasonMessage = "Authentification Needed For App!"
        var authError: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: localizedReasonMessage) { (success, evaluationError) in
                if success {
                    DispatchQueue.main.async{
                        print("Auth Cleared")
                        self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                    }
                }
                else {
                    DispatchQueue.main.async {
                        self.view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
                    }
                if let error = evaluationError as? NSError {
                        print()
                    }
                }
               
            }
            
        }
        
    }
    
    func laErrorMessage(errorCode: Int) -> String{
        
    }
}
