//
//  OrderStatusInShippingRowCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//


import SwiftUI

struct OrdersStatusInShippingRowCard: View {
    
    @State var orderStatusInShipping: [Order]?
    @StateObject var orderStatus = PublishedConstants()
    
    var loader: some View {
        if let unwrappedOrdesStatusInShipping = orderStatusInShipping {
            return AnyView (
                ForEach(unwrappedOrdesStatusInShipping){ order in
                    ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.purple, backColor: Color.purple.opacity(0.2), productName: order.name)
                    }
            )
        }
        else {
            return AnyView (
                ForEach(0..<5){ _ in
                    ListDetailsWithImage(selectedTab: "\(orderStatus.selectedTabOrderStatus)", foreColor: Color.purple, backColor: Color.purple.opacity(0.2), productName: "..........")
                    }
                .redacted(reason: .placeholder)
            )
        }
    }
    
    var body : some View {
        
        LazyVStack (spacing: 30){
           loader
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

