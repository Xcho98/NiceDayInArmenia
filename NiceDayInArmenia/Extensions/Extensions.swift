//
//  Extensions.swift
//  NiceDayInArmenia
//
//  Created by XchoBeglaryan on 14.06.21.
// Xcho

import UIKit

extension UITextField {
    
    var emailValidation: Bool {
        if !(self.text?.contains("@"))! || self.text!.count < 6 {
            self.layer.borderWidth = 5
            self.layer.borderColor = CGColor(red: 0, green: 0, blue: 250, alpha: 1)
            return false
        }
        return true
    }
    
    var passwordValidation: Bool {
        if self.text!.count < 6 {
            
            self.layer.borderWidth = 5
            self.layer.borderColor = CGColor(red: 0, green: 0, blue: 250, alpha: 1)
            return false
        }
        return true
    }
}
