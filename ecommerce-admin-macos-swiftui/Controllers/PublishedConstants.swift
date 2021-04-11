//
//  CustomerStack.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//

import SwiftUI

class PublishedConstants: ObservableObject {
    @Published var selectedTab = "Dashboard"
    
    @Published var authenticate: Bool = false
    
//    @Published var fieldUsername = "sanengineer"
    @Published var fieldUsername: String = ""
    @Published var fieldPassword: String = ""
}
