//
//  NavigationOrderStatus.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//

import SwiftUI

struct NavigationOrderStatus: View {
    
    var selectedTab: Binding<String>
    
    var body: some View {
        TabNavButton(title: "All Order", width: 100,  selectedTab: selectedTab)
        TabNavButton(title: "Recents Order", width: 120, selectedTab: selectedTab)
        TabNavButton(title: "In Shipping", width: 120, selectedTab: selectedTab)
        TabNavButton(title: "Done Order", width: 120, selectedTab: selectedTab)
        TabNavButton(title: "Canceled Order", width: 130, selectedTab: selectedTab)
    }
}
