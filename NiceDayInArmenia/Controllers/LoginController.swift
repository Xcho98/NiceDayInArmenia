//
//  LoginController.swift
//  NiceDayInArmenia
//
//  Created by XchoBeglaryan on 14.06.21.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class LoginController: UIViewController {

    var ref: DatabaseReference!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    private var tapGesture: UITapGestureRecognizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        configuration()
        login.layer.cornerRadius = login.frame.height / 2
    }
    
    func configuration() {
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapGesture(_:)))
        self.view.addGestureRecognizer(tapGesture!)
        email.delegate = self
        password.delegate = self
        login.layer.cornerRadius = login.frame.height / 2
    }

   
    @IBAction func loginSave(_ sender: UIButton) {
        if validate() {
            gotoHome()
        }
        
    }
    func gotoHome() {
        let home = self.storyboard?.instantiateViewController(withIdentifier: "HomeController") as! HomeController
        self.present(home, animated: true, completion: nil)
    }
    
    @discardableResult
    
    func validate() -> Bool {
        var result = false
        if email.emailValidation {
            
            email.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            result = true
        }
        if password.passwordValidation {
            password.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            result = true
        }
        return result
    }
    
    @objc func tapGesture(_ sender: UITapGestureRecognizer) {
        print(123)
        email.resignFirstResponder()
        password.resignFirstResponder()
        self.view.becomeFirstResponder()
    }
}

extension LoginController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == email {
            email.resignFirstResponder()
            password.becomeFirstResponder()
        } else {
            email.resignFirstResponder()
            password.resignFirstResponder()
        }
        return true
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        validate()
        
    }
}
