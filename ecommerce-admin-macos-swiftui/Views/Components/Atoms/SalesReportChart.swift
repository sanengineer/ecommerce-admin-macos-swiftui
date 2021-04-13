//
//  SalesReportChart.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct SalesReportChart: View {
    var body: some View {
        HStack(alignment: .center) {

            VStack(alignment: .center, spacing: nil, content: {
                
                HStack{
                    Text("Sales Report").font(.system(size: 14, weight: .bold))
                    Spacer()
                    Button(action: {}, label: {
                        Text("More")
                            .font(.system(size: 10, weight: .bold))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(Color.blue.opacity(0.2)).cornerRadius(5.0)
                            .foregroundColor(.blue)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("Chart")
                    Spacer()
                }
//                .background(Color.green)
//
            })
            .frame(width:634)
//            .background(Color.blue)
            .padding(11)

            
        }
        .frame(minWidth: 658, minHeight: 133, alignment: .trailing)
        .background(Color.primary.opacity(0.1))
        .cornerRadius(10)
    }
}

struct SalesReportChart_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
