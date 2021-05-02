//
//  AllProductCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 01/05/21.
//

import SwiftUI

struct AllProductCard: View {
    @State var productsNumber = Int()
    var widthFrame: CGFloat
    
    var body: some View {
        CardInfoMedium(image: "tag", imageSize: 24, infoData: String(Int(productsNumber)), infoDataSize: 40, title: "Products", titleSize: 13, subtitle: "Number", colorFore: Color.blue, colorBack: Color.blue.opacity(0.1), widthFrame: widthFrame)
        
            .onAppear { productRestApi().getProductsNumber { (products_number) in
                self.productsNumber = products_number
            }}
        
    }
}
