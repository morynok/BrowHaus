//
//  LoginViewController.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/18/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var recoveremailTextfield: UITextField!
    @IBOutlet weak var commentTextfield: UILabel!
    
    
    @IBAction func loginPressed(_ sender: Any) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.commentTextfield.text = ""
                    self.commentTextfield.text = "\(e.localizedDescription)"
                } else {
                    self.performSegue(withIdentifier: K.segueLogin, sender: self)
                }
            }
        }
    }
    
    @IBAction func resetpasswordPressed(_ sender: UIButton) {
        if let email = recoveremailTextfield.text {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let e = error {
                print(e)
            } else {
                self.recoveremailTextfield.text = ""
                self.commentTextfield.text = " Please check your email Inbox and follow the link in order to reset your password!"
            }
        }
    }
    }
    
}




