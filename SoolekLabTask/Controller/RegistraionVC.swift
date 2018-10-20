//
//  RegistraionVC.swift
//  
//
//  Created by shady on 10/19/18.
//

import UIKit
import Firebase

class RegistraionVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordTextConfirmation: UITextField!
    
    @IBOutlet weak var varibleLabelText: UILabel!
    
    @IBOutlet weak var loginButtonAnimation: UIButton!
    
    @IBOutlet weak var registerButtonAnimation: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loginRAction(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
            
            if error != nil {
                
                print(error!)
                
                self.registerButtonAnimation.vibration()
 
                self.varibleLabelText.text = "Error in Login "
            } else {
                print("Log in successful!")
               
                self.performSegue(withIdentifier: "goToData", sender: self)
                
            }
            
        }
        
    }
    
    @IBAction func registerRAction(_ sender: Any) {
    if passwordText.text! == passwordTextConfirmation.text!
        
    { Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
            
            if error != nil {
    
                print(error!)
                
                self.registerButtonAnimation.vibration()
                
                self.varibleLabelText.text = "Error in Registration "
                
                
            } else {
                
                print("Registration Successful!")
                
                self.varibleLabelText.text = "Registration Successful "
                
            }
        
        }
        
    }
    else {
        
        registerButtonAnimation.vibration()
        
       varibleLabelText.text = "Please Enter a Validate Password"
        
        }
        
    }
    
}
