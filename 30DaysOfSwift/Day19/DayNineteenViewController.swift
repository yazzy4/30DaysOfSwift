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
                    print(self.laErrorMessage(errorCode: error.code))
                    }
                }
               
            }
            
        }
        
    }
    
    func laErrorMessage(errorCode: Int) -> String{
        var message = ""
        
        switch errorCode {
        case LAError.appCancel.rawValue:
            message = "Auth was cancelled by application"
        case LAError.authenticationFailed.rawValue:
            message = "User failed to provide valid credentials"
        case LAError.invalidContext.rawValue:
            message = "Invalid context"
        case LAError.passcodeNotSet.rawValue:
            message = "Passcode is not set on device"
        case LAError.systemCancel.rawValue:
            message = "Auth was cancelled due to system event"
        case LAError.touchIDLockout.rawValue:
            message = "Too many failed attempts"
        case LAError.touchIDNotEnrolled.rawValue:
            message = "Touch ID not available on device"
        case LAError.userCancel.rawValue:
            message = "User cancelled"
        case LAError.userFallback.rawValue:
            message = "User selected fallback"
            
        default:
            message = "No valid choice"
        }
        return message
    }
}
