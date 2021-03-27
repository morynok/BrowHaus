//
//  RegisterViewController.swift
//  BrowHaus
//
//  Created by corneliu postolache on 2/18/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var phoneTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    // Navigate to Home Screen
                    
                    self.performSegue(withIdentifier: K.segueRegister, sender: self)
                    
                    self.nameTextfield.text = ""
                    self.phoneTextfield.text = ""
                    self.emailTextfield.text = ""
                    self.passwordTextfield.text = ""
                }
            }
        }
    }
}
