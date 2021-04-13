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
                self.settings.isloggedIn = false
                    authController().authLogout()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
