//
//  LoginViewController.swift
//  LoginExample
//
//  Created by Digvijay Singh on 01/07/23.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginclicked(_ sender: UIButton) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in
            if error != nil {
                print("error")
            }
            else {
                // Go to our home screen
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
        }
    }
}
    

