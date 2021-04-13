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
//                .background(Color.red)
                
//                Spacer()
                
              VStack {
               
//                    Spacer()
                LightChartView(data: [0.4, 33.9, 40.0, 22.4, 10.5, 31.4, 11.67, 0.4, 33.9, 22.4 , 9.67, 33.9], type: .curved,visualType: .outline(color: .green, lineWidth: 2))
                    
//                    LineView(data: [0.4, 33.9, 40.0, 22.4, 10.5, 31.4, 11.67, 0.4, 33.9, 22.4 , 9.67, 33.9], title: "", legend: "k", style: ChartStyle(backgroundColor: Color.black, accentColor: Colors.OrangeStart, secondGradientColor: Colors.OrangeEnd, textColor: Color.white, legendTextColor: Color.white, dropShadowColor: Color.red ), valueSpecifier: "9", legendSpecifier: "3")
//                        .frame(width: 610, height: 500, alignment: .center)
                 
//                    Spacer()
                }
//                .background(Color.green)
               

            }
            .frame(width:634, height: 130)
//            .background(Color.blue)
            .padding(11)

            
        }
        .frame(minWidth: 658, alignment: .trailing)
        .background(Color.primary.opacity(0.1))
        .cornerRadius(10)
    }
}

struct SalesReportChart_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
