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
        ScrollView{
            HStack{
                VStack(spacing: 13){
                    OrdersTableCard()
                }
                .padding(.top, 13)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
                .frame(width: 685, alignment: .center)
            }
        }
       
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        Orders()
    }
}
