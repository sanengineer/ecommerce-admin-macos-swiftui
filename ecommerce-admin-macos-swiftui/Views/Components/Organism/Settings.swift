//
//  Settings.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct Settings: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            Button("show"){
                authController().getKey()
            }
            
            
            Text("Hello Settings")
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
