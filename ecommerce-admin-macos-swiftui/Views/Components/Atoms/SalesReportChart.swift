//
//  SalesReportChart.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct SalesReportChart: View {
    var body: some View {
        HStack{
            Spacer()
            Text("New Member Card")
            
        }
        .frame(minWidth: 658, minHeight: 133, alignment: .trailing)
        .background(Color.red)
        .cornerRadius(10)
    }
}

struct SalesReportChart_Previews: PreviewProvider {
    static var previews: some View {
        SalesReportChart()
    }
}
