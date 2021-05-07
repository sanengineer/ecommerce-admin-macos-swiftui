//
//  RecentOrderCell.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 07/05/21.
//

import SwiftUI

struct RecentOrderCell: View {
    
    @State var orderStatus: String = ""
    @State var tapped: Bool = false
    var order: Order
    
    var bgColorToShow: Color {
        switch orderStatus {
                case "pending":
                    return .red
                case "process":
                    return .green
                case "done":
                    return .blue
                case "canceled":
                    return .black
                default:
                    return .gray
            }
        }
    
    var body: some View {
        LazyVStack {
            HStack(spacing: 13){

            Text(order.shipping_track_id ?? "no data")
                .frame(width: 120, alignment: .leading)
                .lineSpacing(2)
                .font(.system(size: 12, weight: .regular))
                .offset(x: -30)

                Text(order.name)
                    .frame(width: 140, alignment: .leading)
                    .lineSpacing(2)
                    .font(.system(size: 12, weight: .regular))
                    .offset(x: -6)

                Text(order.shipping_cost ??  "no data")
                    .frame(width: 90,alignment: .leading)
                    .lineSpacing(2)
                    .font(.system(size: 12, weight: .regular))
                    .offset(x: 30)


                switch order.status {
                case "process":
                    Text(order.status)
                        .frame(width: 60, height: 18)
                        .lineSpacing(2)
                        .font(.system(size:11, weight:.medium))
                        .foregroundColor(Color.white)
                        .background(Color.orange.opacity(1.0))
                        .cornerRadius(4.0)
                        .offset(x:-14)
                case "done":
                    Text(order.status)
                        .frame(width: 60, height: 18)
                        .lineSpacing(2)
                        .font(.system(size:11, weight:.medium))
                        .foregroundColor(Color.white)
                        .background(Color.green.opacity(0.9))
                        .cornerRadius(4.0)
                        .offset(x:-14)
                case "canceled":
                    Text(order.status)
                        .frame(width: 60, height: 18)
                        .lineSpacing(2)
                        .font(.system(size:11, weight:.medium))
                        .foregroundColor(Color.white)
                        .background(Color.red.opacity(0.9))
                        .cornerRadius(4.0)
                        .offset(x:-14)
                default:
                    Text(order.status)
                        .frame(width: 60, height: 18)
                        .lineSpacing(2)
                        .font(.system(size:11, weight:.medium))
                        .foregroundColor(Color.white)
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(4.0)
                        .offset(x:-14)
                }


                Text(order.total ?? "no data").frame(width: 90, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .regular))

        }
        .offset(x: 10)
        .frame(height:26)
        .padding(2)
        }
        .onHover { tapper in
            tapped.toggle()
            print("\nTAPPER:",tapper, "\n")
        }
       
        .foregroundColor(tapped ? .secondary : .primary)
//        .background(tapped ? Color.primary.opacity(0.1) : Color.primary.opacity(0.0))
        .cornerRadius(4)
            
    }
}

