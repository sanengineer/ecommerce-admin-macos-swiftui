//
//  TopLocationsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 30/04/21.
//

import SwiftUI

struct TopLocationCard: View {
    
    var body: some View {
        HStack {
            VStack {
                HStack(alignment: .top){
                    Text("Top Location")
                        .font(.system(size: 14, weight: .bold))
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("City")
                            .font(.system(size: 10, weight: .medium))
                    })
                    .buttonStyle(PlainButtonStyle())

                    Button(action: {}, label: {
                        Text("Country")
                            .font(.system(size: 10, weight: .medium))
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                Spacer()
                HStack{
                    
                }
                .padding(.top, 8)
            }
        }
        .padding(13)
        .frame(width: 243, height: 229, alignment: .center)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}
