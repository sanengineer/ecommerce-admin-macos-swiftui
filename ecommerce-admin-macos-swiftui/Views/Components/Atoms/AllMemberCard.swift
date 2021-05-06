//
//  AllMemberCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct AllMemberCard: View {
    
    @State var usersNumber: Int?
    var widthFrame: CGFloat
    
    var loader: some View {
        if let unwrappedUsersNumber = usersNumber {
            return AnyView (
                CardInfoMedium(image: "rectangle.stack.person.crop" ,imageSize: 24, infoData: String(Int(unwrappedUsersNumber)), infoDataSize: 40, title: "All Member", titleSize: 13 , subtitle: "Since Stand", colorFore: Color.orange, colorBack: Color.orange.opacity(0.1), widthFrame: widthFrame)
            )
        }
        else {
            return AnyView (
                CardInfoMedium(image: "rectangle.stack.person.crop" ,imageSize: 24, infoData: "..", infoDataSize: 40, title: "All Member", titleSize: 13 , subtitle: "Since Stand", colorFore: Color.orange, colorBack: Color.orange.opacity(0.1), widthFrame: widthFrame)
                    .redacted(reason: .placeholder)
            )
        }
    }
    
    var body: some View {
            loader
            .onAppear { fetchApi().getUsersNumber { usersNumber in
                self.usersNumber = usersNumber
            }}
    }
}

struct AllMemberCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
