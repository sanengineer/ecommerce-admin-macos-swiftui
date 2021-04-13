//
//  CardInfoMedium.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct CardInfoMedium: View {
    
    var image: String
    var imageSize: CGFloat
    var infoData: String
    var infoDataSize: CGFloat
    var title: String
    var titleSize: CGFloat
    var subtitle: String
    var colorFore: Color
    var colorBack: Color
    
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0){
            HStack(alignment: .top){
                Text(infoData).font(.system(size: infoDataSize, weight: .bold))
                        .foregroundColor(colorFore)
                }
      
            HStack {
                HStack {
                    VStack {
                        Spacer()
                        Image(systemName: image).font(.system(size: imageSize, weight: .bold))
                            .frame(width:40)
                            .padding(.top, 4)
                            .foregroundColor(colorFore)
        
                        Spacer()
                    }
                    Spacer()
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 2){
                        Text(title)
                            .font(.system(size: titleSize, weight: .bold))
                        Text(subtitle).font(.system(size: 9, weight: .medium))
                    }
                }
                .frame(width: 90)
            }
            
        }
        .padding(10)
        .frame(width: 154, height: 99, alignment: .trailing)
        .background(colorBack)
        .cornerRadius(10)
        
    }
}
