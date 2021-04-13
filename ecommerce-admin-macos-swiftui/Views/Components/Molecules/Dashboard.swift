//
//  Dashboard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

struct Dashboard: View {
    
    var screen = NSScreen.main!.frame
    var screen2 = NSScreen.main!.visibleFrame

    
    
   
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
                        
                        
                            SalesReportChart()
                       
                        
                        
                        HStack(spacing: 13) {
//                            Spacer()
                            TopSellingProductsCard()
                            MostLovedProductsCard()
//                            Spacer()
                        }
                      
                        
                        RecentsOrderTable()
                        
                      
                    }
                }
                .padding(.top, 13)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
//                .frame(width: 684, alignment: .center)
                .background(Color.yellow)
               
                Button("print"){
                    print(screen)
                    print(screen2)
                }
               
            }
  
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
