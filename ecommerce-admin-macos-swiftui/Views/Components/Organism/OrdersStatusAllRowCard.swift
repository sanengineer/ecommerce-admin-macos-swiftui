//
//  OrdersStatusAllRowCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//

import SwiftUI

struct OrdersStatusAllRowCard: View {
    
    @State var orderStatusAll = [Order]()
    @StateObject var orderStatus = PublishedConstants()
    
    var body : some View {
        
        LazyVStack(spacing: 30){
            ForEach(orderStatusAll){ order in
                ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.primary, backColor: Color.black.opacity(0.1), productName: order.name)
            }
        }
        
       .onAppear { orderRestApi().getOrders { orders in
                self.orderStatusAll = orders } }
        
    }
}
