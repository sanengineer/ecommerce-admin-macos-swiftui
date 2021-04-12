//
//  Dashboard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

struct Dashboard: View {
    
    @EnvironmentObject var settings: PublishedConstants
    var body: some View {
        VStack{
            HStack{
                
                Button("logout"){
                    self.settings.isloggedIn = false
                        authController().authLogout()
                }
                
                Button("show"){
                    authController().getKey()
                }
                
                Text("Hello, World!")
                Spacer()
            }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
