//
//  CardInfoOrButtonResponsive.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 02/05/21.
//

import SwiftUI


struct CardInfoOrButtonResponsive: View {
    var infoData: String?
    var infoDatasize: CGFloat?
    var colorFore: Color
    var title: String
    var subtitle: String
    var image: String
    var imageSize: CGFloat
    var colorBack: Color
    var widthFrame: CGFloat
    var heightFrame: CGFloat
    var paddingTop: CGFloat
    var paddingBottom: CGFloat
    var titleFontSize: CGFloat
    var subtitleFontSize: CGFloat

    var body: some View {
        VStack(alignment: .trailing, spacing: 0){
        
            HStack (alignment: .top) {
                Text(infoData ?? "").font(.system(size: infoDatasize ?? 0, weight: .bold))
                    .foregroundColor(colorFore)
                Spacer()
            } 
       
            Spacer()
            
            HStack {
                HStack{
                    VStack{
                        Image(systemName: image)
                            .font(.system(size: imageSize, weight: .bold))
                            .foregroundColor(colorFore)
                    }
                    Spacer()
                }
                
                HStack(alignment: .bottom){
                    VStack(alignment: .leading, spacing: 2){
                            Text(title)
                                .font(.system(size: titleFontSize, weight: .bold))
                            Text(subtitle)
                                .font(.system(size: subtitleFontSize, weight: .medium))
//                      Spacer()
                    }
                }
//                .padding(.bottom, 2)
//                .frame(width: 90)
            }
        }
        .padding(.top, paddingTop)
        .padding(.bottom, paddingBottom)
        .padding(.horizontal, 10)
        .frame(width: widthFrame, height: heightFrame, alignment: .trailing)
        .background(colorBack)
        .cornerRadius(10)
    }
}
