//
//  OrdersStatusRecentsRowCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//

import SwiftUI

struct OrdersStatusRecentsRowCard: View {
    
    @State var orderStatusRecents: [Order]?
    @StateObject var orderStatus = PublishedConstants()
    
    var loader: some View {
        if let unwrappedOrderStatusRecents = orderStatusRecents {
            return AnyView (
                ForEach(unwrappedOrderStatusRecents){ order in
                    ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.blue, backColor: Color.blue.opacity(0.2), productName: order.name)
                }
            )
        }
        
        else {
            return AnyView (
                ForEach(0..<5){ _ in
                    ListDetailsWithImage(selectedTab: "...........", foreColor: Color.blue, backColor: Color.blue.opacity(0.2), productName: ".......")
                }
                .redacted(reason: .placeholder)
            )
        }
    }
    
    var body : some View {
        
        LazyVStack(spacing: 30){
           loader
        }
        
       .onAppear { orderRestApi().getOrders { orders in
                self.orderStatusRecents = orders } }
        
    }
}

