//
//  TabButton.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//

import SwiftUI

struct TabButton: View {

    var image: String
    var title: String
    
    @Binding var selectedTab : String

    var body: some View {
        Button(action: {withAnimation {selectedTab = title }}, label: {
            HStack(spacing: 10){
                Image(systemName: image)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(selectedTab == title ? .white : .gray)
                Text(title)
                    .fontWeight(.medium)
                    .font(.system(size: 12))
                    .foregroundColor(selectedTab == title ? .white : .gray)
            }
            
            .padding(.all, 10)
            .frame(width: 130, height: 40, alignment: .leading)
            .background(Color.primary.opacity(selectedTab == title ? 0.15 : 0))
            .cornerRadius(6)
        })
        .buttonStyle(PlainButtonStyle())
    }
}

//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton()
//    }
//}
