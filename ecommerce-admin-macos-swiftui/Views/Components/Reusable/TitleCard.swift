//
//  TitleCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 30/04/21.
//
import SwiftUI

struct TitleCard: View {
    
    var titleCard: String
    var titleCardFontSize: CGFloat = 12
    var titleCardFontWeight: Font.Weight = .bold
    var buttonCard: String
    var buttonAction: Void
    var buttonLabelTitle: String
    var buttonLabelFontWeight: Font.Weight
    var buttonLabelFontSize: CGFloat
    var loopButtonStart : Int
    var loopButtonEnd : Int
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(titleCard).font(.system(size: titleCardFontSize , weight: titleCardFontWeight))
            
            Spacer()
            
            ForEach(loopButtonStart..<loopButtonEnd){ _ in
                Button(action: { buttonAction }, label: {
                    Text(buttonLabelTitle)
                        .fontWeight(buttonLabelFontWeight)
                        .font(.system(size: buttonLabelFontSize))
                })
            }
            
        }
    
    }
}

