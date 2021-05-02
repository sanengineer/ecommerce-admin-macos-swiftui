//
//  EmptyStock.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct EmptyStockCard: View {
    var widthFrame: CGFloat
    var body: some View {
        CardInfoMedium(image: "trash", imageSize: 26, infoData: "9999+", infoDataSize: 40, title: "Empty Stock", titleSize: 13, subtitle: "Of Product", colorFore: Color.red, colorBack: Color.red.opacity(0.1), widthFrame: widthFrame)
    }
}

struct EmptyStockCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
