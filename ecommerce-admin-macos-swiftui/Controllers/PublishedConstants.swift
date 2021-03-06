//
//  CustomerStack.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//

import SwiftUI

class PublishedConstants: ObservableObject {
    
    @Published var selectedTab = "Dashboard"
    
    @Published var selectedTabOrderStatus = "All Order"
    
    @Published var authenticate: Bool = false

    @Published var isloggedIn: Bool = false

    @Published var fieldUsername: String = ""
    
    @Published var fieldPassword: String = ""
    
    @Published var rightBarExpanded = false
    
    @Published var isPresented: Bool = false
    
    @State var products = [Product]()
    
    @Published var pickedTabProduct = "All"
  
}
