//
//  ProfileView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var settings: PublishedConstants
    
    var body: some View {
        VStack {
            Button("logout"){
                DispatchQueue.main.async {
                    self.settings.isloggedIn = false
                }
                
                print("Log Out")
                
                print(settings.isloggedIn)
//                    authController().authLogout()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
