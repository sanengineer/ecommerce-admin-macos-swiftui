//
//  SalesReportChart.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI
import LightChart

struct SalesReportChart: View {
    
    var body: some View {
        HStack() {
            VStack{
                HStack(alignment:.top){
                    VStack(alignment: .leading, spacing: 4){
                        Text("Sales Report").font(.system(size: 14, weight: .bold))
                        Text("All Time").font(.system(size: 10, weight: .medium))
                    }
                   
                    Spacer()
                    Button(action: {
               
                    }, label: {
                        Text("More")
                            .font(.system(size: 10, weight: .bold))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(Color.blue.opacity(0.2)).cornerRadius(5.0)
                            .foregroundColor(.blue)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                
              VStack {
                LightChartView(data: [0.4, 33.9, 10.0, 22.4, 10.5, 21.4, 11.67, 0.4, 63.9, 72.4 , 80.67, 100.9], type: .curved,visualType: .outline(color: .green, lineWidth: 2))
                }
            }
            .frame(width:634, height: 130)
            .padding(11)
        }
        .frame(minWidth: 658, alignment: .trailing)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct SalesReportChart_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
