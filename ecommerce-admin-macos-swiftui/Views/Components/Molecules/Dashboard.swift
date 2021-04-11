//
//  Dashboard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        VStack{
            HStack{
                
                Button("logout"){
                    
              
                        authController().authLogout()
                  
                    
        
                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
