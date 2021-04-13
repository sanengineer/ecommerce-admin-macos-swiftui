//
//  Dashboard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

struct Dashboard: View {
   
    var body: some View {
    
            ScrollView() {
                    HStack {
                        VStack(spacing: 13){
                           
                            HStack(spacing: 13) {
    //                            Spacer()
                                NewMemberCard()
                                AllMemberCard()
                                EmptyStockCard()
                                SalesCard()
    //                            Spacer()
                            }
                            
                            HStack {
                                SalesReportChart()
                            }
                                
                            HStack(spacing: 13) {
    //                            Spacer()
                                TopSellingProductsCard()
                                MostLovedProductsCard()
    //                            Spacer()
                            }
                          
                            HStack {
                                RecentsOrderTable()
                            }
                           
                        }
                    }
                .padding(.top, 13)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
//                    .frame(width: 1053, alignment: .center) // width without sidebar left
                    .frame(width: 685, alignment: .center)

            }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
