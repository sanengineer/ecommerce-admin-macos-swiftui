//
//  OrdersStatusRecentsRowCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//

import SwiftUI

struct OrdersStatusRecentsRowCard: View {
    
    @State var orderStatusRecents = [Order]()
    @StateObject var orderStatus = PublishedConstants()
    
    var body : some View {
        
        LazyVStack(spacing: 30){
            ForEach(orderStatusRecents){ order in
                ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.blue, backColor: Color.blue.opacity(0.2), productName: order.name)
            }
        }
        
       .onAppear { orderRestApi().getOrders { orders in
                self.orderStatusRecents = orders } }
        
    }
}

