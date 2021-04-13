//
//  TopSellingProductsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct TopSellingProductsCard: View {
    var body: some View {
        HStack{
            Text("Top Selling Product")
            Spacer()
        }
        .frame(width: 351, height: 301, alignment: .trailing)
        .background(Color.red)
        .cornerRadius(10)
    
    }
}

struct TopSellingProductsCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
