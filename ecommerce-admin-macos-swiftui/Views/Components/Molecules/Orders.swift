//
//  Orders.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

struct Orders: View {
    
    @State var orders = [Order]()
    
    var body: some View {
        HStack{
            VStack {
                List(orders, id: \.id) { order in
                    VStack(alignment: .leading) {
                        Text(order.name ?? "no name")
                            .font(.system(size: 14, weight: .bold))
                        Text(order.user_id).background(Color.red)
                            .font(.system(size: 12, weight: .medium))
                        Text(order.shipping_platform ?? "notfound" ).background(Color.red)
                            .font(.system(size: 12, weight: .medium))
                        Text(order.order_geo_loc ?? "not found").background(Color.red)
                            .font(.system(size: 12, weight: .medium))
                        
                    }
                }
                .onAppear { orderRestApi().getOrders { orders in
                self.orders = orders } }
            }.ignoresSafeArea(.container)
        }
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Orders()
    }
}
