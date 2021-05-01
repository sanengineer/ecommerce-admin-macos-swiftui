//
//  LineChartCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 29/04/21.
//

import SwiftUI

struct LineChartCard: View {
    
    var body: some View {
       
        HStack {
            VStack{
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("Age Range")
                            .font(.system(size: 14, weight: .bold))
                    }
                    
                    Spacer()

                    Button(action: {}, label: {
                        Text("all")
                            .font(.system(size: 10, weight: .medium))
                    }).buttonStyle(PlainButtonStyle())

                    Button(action: {}, label: {
                        Text("woman")
                            .font(.system(size: 10, weight: .medium))
                    }).buttonStyle(PlainButtonStyle())

                    Button(action: {}, label: {
                        Text("man")
                            .font(.system(size: 10, weight: .medium))
                    }).buttonStyle(PlainButtonStyle())
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
