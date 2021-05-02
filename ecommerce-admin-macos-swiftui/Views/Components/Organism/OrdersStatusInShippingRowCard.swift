//
//  OrderStatusInShippingRowCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//


import SwiftUI

struct OrdersStatusInShippingRowCard: View {
    
    @State var orderStatusInShipping = [Order]()
    @StateObject var orderStatus = PublishedConstants()
    
    var body : some View {
        
        LazyVStack (spacing: 30){
            ForEach(orderStatusInShipping){ order in
                ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.purple, backColor: Color.purple.opacity(0.2), productName: order.name)
                }
        }
       .onAppear {
            DispatchQueue.main.async {
                orderRestApi().getOrders { orders in
                    print("\nORDERS:",orders, "\n")
                    self.orderStatusInShipping = orders }
            }
         }
    }
}

