//
//  SalesCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct SalesCard: View {
    
    @State var orderNumber: Int?
    var widthFrame: CGFloat
    
    var loader: some View {
        if let unwrappedOrderNumber = orderNumber {
            return AnyView (
                CardInfoMedium(image: "tag", imageSize: 26, infoData: String(Int(unwrappedOrderNumber)), infoDataSize: 40, title: "Sales Product", titleSize: 13, subtitle: "All Time", colorFore: Color.blue, colorBack: Color.blue.opacity(0.1), widthFrame: widthFrame)
            )
        }
        else {
            return AnyView (
                CardInfoMedium(image: "tag", imageSize: 26, infoData: "...", infoDataSize: 40, title: "Sales Product", titleSize: 13, subtitle: "All Time", colorFore: Color.blue, colorBack: Color.blue.opacity(0.1), widthFrame: widthFrame)
                    .redacted(reason: .placeholder)
            )
        }
    }
    
    var body: some View {
            loader
            .onAppear { orderRestApi().getOrdersNumber { orders_number in
                self.orderNumber = orders_number
            }}
    }
}

struct SalesCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
