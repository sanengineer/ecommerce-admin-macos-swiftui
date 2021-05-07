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
            
            Button(action: {withAnimation {
                self.settings.isloggedIn = false
            }}, label: {
                Text("Logout")
            })
            
            Button(action: { withAnimation {
                settings.isPresented.toggle()
                
                print(settings.isPresented)
            }}, label: {
                Text("Button")
            })
            .sheet(isPresented: $settings.isPresented, content: {
                ModalView()
            })
            
            CustomerStack()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
