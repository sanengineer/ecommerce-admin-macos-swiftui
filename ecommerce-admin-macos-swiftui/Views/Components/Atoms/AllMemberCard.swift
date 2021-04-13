//
//  AllMemberCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct AllMemberCard: View {
    var body: some View {
        CardInfoMedium(image: "rectangle.stack.person.crop" ,imageSize: 24, infoData: "9999+", infoDataSize: 40, title: "All Member", titleSize: 13 , subtitle: "Since Stand", colorFore: Color.orange, colorBack: Color.orange.opacity(0.1))
    }
}

struct AllMemberCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
