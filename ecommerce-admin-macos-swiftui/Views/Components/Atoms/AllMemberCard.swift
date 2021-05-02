//
//  AllMemberCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct AllMemberCard: View {
    
    @State var usersNumber = Int()
    var widthFrame: CGFloat
    
    var body: some View {
        CardInfoMedium(image: "rectangle.stack.person.crop" ,imageSize: 24, infoData: String(Int(usersNumber)), infoDataSize: 40, title: "All Member", titleSize: 13 , subtitle: "Since Stand", colorFore: Color.orange, colorBack: Color.orange.opacity(0.1), widthFrame: widthFrame)
        
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
