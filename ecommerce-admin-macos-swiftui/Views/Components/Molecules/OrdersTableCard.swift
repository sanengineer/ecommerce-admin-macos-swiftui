//
//  OrdersTableCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 02/05/21.
//

import SwiftUI

struct OrdersTableCard: View {
    
    @State var orders = [Order]()
    @StateObject var orderStatus = PublishedConstants()
    @State var pickTabOrder = "All Order"
    @State var toggleOnSelectAllListActive = false
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 20){
                
                
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("Recent Orders")
                            .font(.system(size: 14, weight: .bold))
                    }
                    
                    Spacer()
                    
                }
                
                HStack(spacing:2) {
                    NavigationOrderStatus(selectedTab: $orderStatus.selectedTabOrderStatus)
                }
                .padding(2)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(7)
                
                Toggle(isOn: $toggleOnSelectAllListActive){
                    Text("Select All")
                        .font(.system(size: 10, weight: .bold))
                        .padding(.horizontal, 10)
                }
                
                ZStack{
                    switch orderStatus.selectedTabOrderStatus {
                    case "Recents Order" : OrdersStatusRecentsRowCard()
                    case "In Shipping" : OrdersStatusInShippingRowCard()
                    case "Done Order" : ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.green, backColor: Color.green.opacity(0.2), productName: "ok")
                    case "Canceled Order" : ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.red, backColor: Color.red.opacity(0.2), productName: "ok")
                    default:
                        OrdersStatusAllRowCard()
                    }
                }
                
               
            }
        }
        .padding(13)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}
