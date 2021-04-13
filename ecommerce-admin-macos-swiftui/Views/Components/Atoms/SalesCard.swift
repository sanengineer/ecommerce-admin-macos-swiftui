//
//  SalesCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct SalesCard: View {
    
    var screen = NSScreen.main!.visibleFrame

    
    var body: some View {
        HStack{
            Text("New Member Card")
        }
        .frame(width: screen.width / 8.0, height: screen.width / 9, alignment: .trailing)
        .background(Color.red)
        .cornerRadius(10)
    }
}

struct SalesCard_Previews: PreviewProvider {
    static var previews: some View {
        SalesCard()
    }
}
