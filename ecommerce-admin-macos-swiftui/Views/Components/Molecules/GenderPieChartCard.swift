//
//  GenderPieChartCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 30/04/21.
//

import SwiftUI

struct GenderPieChartCard: View {
    var body: some View {
        HStack {
            VStack {
                HStack(alignment: .top) {
                    Text("Gender")
                        .font(.system(size: 14, weight: .bold))
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack{
                    
                }
                .padding(.top, 8)
            }
        }
        .padding(13)
        .frame(width: 140, height: 229, alignment: .center)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}
