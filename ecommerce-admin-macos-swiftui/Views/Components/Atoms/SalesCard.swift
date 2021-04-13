//
//  SalesCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct SalesCard: View {
    
    var body: some View {
//        HStack{
            Text("Sales Card")
//        }
        .frame(width: 156, height: 99, alignment: .trailing)
        .background(Color.red)
        .cornerRadius(10)
    }
}

struct SalesCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
