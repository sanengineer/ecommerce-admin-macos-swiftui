//
//  HomeStack.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//
import Foundation
import SwiftUI

struct HomeStack: View {
    var body: some View {
        HStack {
            TopBar()
            SearchComponent()
        }.padding(.horizontal, 18.0 )
        
        VStack {
            UserView()
        }
        .ignoresSafeArea(.all, edges: .all)
        
    }
}

struct HomeStack_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeStack()
    }
    
}
