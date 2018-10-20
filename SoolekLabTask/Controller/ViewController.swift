//
//  ViewController.swift
//  SoolekLabTask
//
//  Created by shady on 10/18/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
   
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var variableLabelText: UILabel!
    
    @IBOutlet weak var loginButtonAnimation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func registraionAction(_ sender: Any) {
        
         self.performSegue(withIdentifier: "registerData", sender: self)
    }
    
    @IBAction func loginAction(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
            
            if error == nil {
                
                print("Log in successful!")
                
               self.performSegue(withIdentifier: "goToData", sender: self)
                
             
            } else {
                
                
                print(error!)
                
                self.loginButtonAnimation.vibration()
                
                self.variableLabelText.text = "Error in Login "
                
            }
            
        }
        
    }
    
}

