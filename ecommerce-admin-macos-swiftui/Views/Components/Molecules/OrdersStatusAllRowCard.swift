//
//  OrdersStatusAllRowCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//

import SwiftUI

struct OrdersStatusAllRowCard: View {
    
    @State var orderStatusAll: [Order]?
    @StateObject var orderStatus = PublishedConstants()
    
    var loader: some View {
        if let unwrappedOrderStatusAll = orderStatusAll {
            return AnyView (
                ForEach(unwrappedOrderStatusAll){ order in
                    ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.primary, backColor: Color.black.opacity(0.1), productName: order.name)
                }
            )
        }
        else {
            return AnyView (
                ForEach(0..<5){ _ in
                    ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.primary, backColor: Color.black.opacity(0.1), productName: ".........")
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
                self.orderStatusAll = orders } }
        
    }
}
