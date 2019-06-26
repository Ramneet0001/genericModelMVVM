//
//  UserViewModel.swift
//  genericModelMVVM
//
//  Created by STUser on 26/06/19.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class UserViewModel {

    let userDetailModel : UserDetailModel
    
    private(set) var firstName = ""
    private(set) var lastName = ""
    private(set) var address = "default"
    private(set) var company = ""
    
    init(userDetailModel: UserDetailModel) {
        
        self.userDetailModel = userDetailModel
        
        updateProperties()
    }
    
    private func updateProperties(){
        
        firstName = setFirstName(userDetail: userDetailModel)
        lastName = setLastName(userDetail: userDetailModel)
    }
    
}


extension UserViewModel {
    
    private func setFirstName(userDetail: UserDetailModel) -> String {
        return userDetail.firstName ?? ""
    }
    private func setLastName(userDetail: UserDetailModel) -> String {
        return userDetail.lastName ?? ""
    }
   
}
