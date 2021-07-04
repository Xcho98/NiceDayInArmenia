//
//  UserResponse.swift
//  NiceDayInArmenia
//
//  Created by XchoBeglaryan on 01.07.21.
//

import UIKit

class UserResponse: NSObject {

    var firstName: String = ""
    var lastName: String = ""
    var dob: String = ""
    var profileImage: String = ""
    
    func parseFrom(value: NSDictionary?) -> UserResponse {
        
        firstName = value?["firstName"] as? String ?? ""
        lastName = value?["lastName"] as? String ?? ""
        dob = value?["DOB"] as? String ?? ""
        profileImage = value?["profileImage"] as? String ?? ""
        return self
    }
}
