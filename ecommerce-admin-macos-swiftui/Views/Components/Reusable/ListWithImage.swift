//
//  ListWithImage.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 14/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ListWithImage: View {
    
    var listTitle: String
    var listSubTittle: String
    var isAnimating: Binding<Bool>
    var imageUrl: String
    var offsetListSubtitle: CGFloat
    
    var body: some View {
        LazyVStack {
            HStack(spacing: 13){
                WebImage(url: URL(string: imageUrl), isAnimating: isAnimating)
                    .customLoopCount(1)
                    .playbackRate(2.0)
                    .playbackMode(.bounce)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(6.0).offset(x: 18)

            Text(listTitle).frame(width: 160, height: 100, alignment: .leading).lineSpacing(2)
                .font(.system(size: 12, weight: .semibold)).offset(x: 18)
                
                Image(systemName: "heart.fill").frame(width: 20).font(.system(size: 14)).foregroundColor(Color.red.opacity(0.4)).offset(x: 26)
 
                Text(listSubTittle).frame(width: 90, height: 100, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .semibold)).offset(x: offsetListSubtitle)
        }
        .offset(x: 10)
        .frame(height:50)
        .padding(2)
        }
    }
}
