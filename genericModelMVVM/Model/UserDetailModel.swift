//
//  UserDetailModel.swift
//  genericModelMVVM
//
//  Created by STUser on 26/06/19.
//  Copyright © 2019 abc. All rights reserved.
//

    // This file was generated from JSON Schema using quicktype, do not modify it directly.
    // To parse the JSON, add this file to your project and do:
    //
    //   let userDetailModel = try? newJSONDecoder().decode(UserDetailModel.self, from: jsonData)
    
    // Use this link to create model:  https://app.quicktype.io

        

    import Foundation
    
    // MARK: - UserDetailModel
    struct UserDetailModel: Codable {
        let firstName, lastName: String?
        let detail: Detail?
    }
    
    // MARK: - Detail
    struct Detail: Codable {
        let degignation, companyName: String?
        let address: Address?
    }
    
    // MARK: - Address
    struct Address: Codable {
        let lat, lag: Double?
    }


