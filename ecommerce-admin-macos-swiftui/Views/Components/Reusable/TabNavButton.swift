//
//  TabNavButton.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//

import SwiftUI

struct TabNavButton: View {
    
    var title: String
    var width: CGFloat
    var height: CGFloat? = 30
    
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {withAnimation{ selectedTab = title}}, label: {
            HStack(alignment: .center){
                Text(title)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(selectedTab ==  title ? .none : .gray)
            }
            .padding(10)
            .frame(width: width, height: height)
            .background(Color.primary.opacity(selectedTab == title ? 0.25 : 0.05))
            .cornerRadius(6)
        })
        .buttonStyle(PlainButtonStyle())
    }
}

