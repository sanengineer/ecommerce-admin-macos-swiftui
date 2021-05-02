//
//  ProductInfoCardSquare.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 02/05/21.
//

import SwiftUI

struct ProductIndoCardSquare: View {
    
    var widthFrame: CGFloat
    var heightFrame: CGFloat
    var paddingTop: CGFloat?
    var paddingBottom: CGFloat?
    var imageSize: CGFloat?
    var titleFontSize: CGFloat?
    var subtitleFontSize: CGFloat?
    
    var body: some View {
        CardInfoOrButtonResponsive(colorFore: Color.primary, title: "Add", subtitle: "Product", image: "plus", imageSize: imageSize ?? 24, colorBack: Color.gray.opacity(0.1), widthFrame: widthFrame, heightFrame: heightFrame, paddingTop: paddingTop ?? 10, paddingBottom: paddingBottom ?? 10, titleFontSize: titleFontSize ?? 10, subtitleFontSize: subtitleFontSize ?? 8)
    }
}
