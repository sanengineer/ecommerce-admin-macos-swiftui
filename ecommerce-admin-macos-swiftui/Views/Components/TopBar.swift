//
//  TopBar.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//

import SwiftUI

struct TopBar: View {
//    @Binding var selectedTab : String
    
    var body: some View {
            Button(action: {}, label: {
                HStack {
                    Image(systemName: "sidebar.squares.left")
                        .font(.system(size: 14, weight: .semibold))
                }
            }).buttonStyle(PlainButtonStyle())
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}
