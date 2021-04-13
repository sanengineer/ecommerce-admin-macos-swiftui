//
//  MostLovedProductsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct MostLovedProductsCard: View {
    var body: some View {
        HStack{
            Text("Most Loved Product")
        }
        .frame(width: 293, height: 301, alignment: .trailing)
        .background(Color.red)
        .cornerRadius(10)
    }
}

struct MostLovedProductsCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
