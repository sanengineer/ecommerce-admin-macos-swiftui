//
//  DetailView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct DetailsView: View {
    
    @EnvironmentObject var publishedConstant: PublishedConstants
    
//    var order: Order
    
    var body: some View {
        
        HStack {
//            Text(order.name)
//            Text(order.status)
//            Text(order.shipping_cost ?? "no data")
//            Text("Hello")
            }
//            .background(Color.blue)
            
        ExpandedView().frame(width: publishedConstant.rightBarExpanded ? nil : 0)
//        }
        
    }
}

struct ExpandedView: View {
    var body: some View {
        
        HStack {
            VStack {
                Text("Hello VStack")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.primary.opacity(0.1))
        }
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}



