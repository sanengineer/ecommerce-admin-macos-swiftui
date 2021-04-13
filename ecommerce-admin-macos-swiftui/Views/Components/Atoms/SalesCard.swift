//
//  SalesCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct SalesCard: View {
    
    var body: some View {
        CardInfoMedium(image: "tag", imageSize: 26, infoData: "9999+", infoDataSize: 40, title: "Sales Product", titleSize: 13, subtitle: "All Time", colorFore: Color.blue, colorBack: Color.blue.opacity(0.1))
    }
}

struct SalesCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
