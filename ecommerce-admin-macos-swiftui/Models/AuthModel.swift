//
//  AuthModel.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 10/04/21.
//

import Foundation

struct AuthUser: Codable {
    
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }

}
