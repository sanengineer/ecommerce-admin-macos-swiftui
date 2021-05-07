//
//  Dashboard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

struct Dashboard: View {
    
//    var order: Order
   
    var body: some View {
    
            ScrollView() {
                    HStack {
                        VStack(spacing: 13){
                           
                            HStack(spacing: 13) {
                                NewMemberCard()
                                AllMemberCard(widthFrame: 156)
                                EmptyStockCard(widthFrame: 156)
                                SalesCard(widthFrame: 155)
                            }
                            
                            HStack {
                                SalesReportChart()
                            }
                                
                            HStack(spacing: 13) {
                                TopSellingProductsCard()
                                MostLovedProductsCard()
                            }
                          
                            HStack {
                                RecentsOrderTable()
                            }
                           
                        }
                    }
                .padding(.top, 13)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
                .frame(width: 685, alignment: .center)

            }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
