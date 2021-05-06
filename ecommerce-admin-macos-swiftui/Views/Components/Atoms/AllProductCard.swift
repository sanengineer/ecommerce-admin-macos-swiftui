//
//  AllProductCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 01/05/21.
//

import SwiftUI

struct AllProductCard: View {
    @State var productsNumber: Int?
    
    var widthFrame: CGFloat
    
    var loader: some View {
        if let unwrappedProductsNumber = productsNumber {
            return AnyView (
                CardInfoMedium(image: "tag", imageSize: 24, infoData: String(Int(unwrappedProductsNumber)), infoDataSize: 40, title: "Products", titleSize: 13, subtitle: "Number", colorFore: Color.blue, colorBack: Color.blue.opacity(0.1), widthFrame: widthFrame)
                
            )
        }
        else {
            return AnyView (
                CardInfoMedium(image: "tag", imageSize: 24, infoData: "...", infoDataSize: 40, title: "Products", titleSize: 13, subtitle: "Number", colorFore: Color.blue, colorBack: Color.blue.opacity(0.1), widthFrame: widthFrame)
                    .redacted(reason: .placeholder)
            )
        }
    }
    
    var body: some View {
//        CardInfoMedium(image: "tag", imageSize: 24, infoData: String(Int(productsNumber)), infoDataSize: 40, title: "Products", titleSize: 13, subtitle: "Number", colorFore: Color.blue, colorBack: Color.blue.opacity(0.1), widthFrame: widthFrame)
//
        loader
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                    productRestApi().getProductsNumber { (products_number) in
                    self.productsNumber = products_number
                    }
                }
            }
        
    }
}
