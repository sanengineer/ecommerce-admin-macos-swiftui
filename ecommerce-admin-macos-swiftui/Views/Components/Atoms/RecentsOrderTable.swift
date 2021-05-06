//
//  RecentsOrderTable.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct RecentsOrderTable: View {
    
    @State var orders: [Order]?
    @State var orderStatus: String = ""
    
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
    
    var loader: some View {
        if let unwrappedOrders = orders {
            return AnyView (
                ForEach(unwrappedOrders) { order in
                    LazyVStack {
                        HStack(spacing: 13){

                        Text(order.shipping_track_id ?? "no data")
                            .frame(width: 120, alignment: .leading)
                            .lineSpacing(2)
                            .font(.system(size: 12, weight: .regular))
                            .offset(x: -30)

//                                    Text(order.name?.capitalized ?? "San Engineer")
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
//                                            .overlay(
//                                        RoundedRectangle(cornerRadius: 5.0)
//                                            .stroke(Color.orange, lineWidth: 2))
                                    .foregroundColor(Color.white)
                                    .background(Color.orange.opacity(1.0))
                                    .cornerRadius(4.0)
                                    .offset(x:-14)
                            case "done":
                                Text(order.status)
                                    .frame(width: 60, height: 18)
                                    .lineSpacing(2)
                                    .font(.system(size:11, weight:.medium))
//                                            .overlay(
//                                        RoundedRectangle(cornerRadius: 5.0)
//                                            .stroke(Color.green, lineWidth: 2))
                                    .foregroundColor(Color.white)
                                    .background(Color.green.opacity(0.9))
                                    .cornerRadius(4.0)
                                    .offset(x:-14)
                            case "canceled":
                                Text(order.status)
                                    .frame(width: 60, height: 18)
                                    .lineSpacing(2)
                                    .font(.system(size:11, weight:.medium))
//                                            .overlay(
//                                        RoundedRectangle(cornerRadius: 5.0)
//                                            .stroke(Color.red, lineWidth: 2))
                                    .foregroundColor(Color.white)
                                    .background(Color.red.opacity(0.9))
                                    .cornerRadius(4.0)
                                    .offset(x:-14)
                            default:
                                Text(order.status)
                                    .frame(width: 60, height: 18)
                                    .lineSpacing(2)
                                    .font(.system(size:11, weight:.medium))
//                                            .overlay(
//                                        RoundedRectangle(cornerRadius: 5.0)
//                                            .stroke(Color.yellow, lineWidth: 2))
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
                }
            )
        }
        else {
            return AnyView (
                ForEach(0..<10) { _ in
                    LazyVStack {
                        HStack(spacing: 13){

                            Text("............")
                                .frame(width: 120, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .regular))
                                .offset(x: -30)
                            
                            Text("....... .........")
                                .frame(width: 140, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .regular))
                                .offset(x: -6)

                            Text(".......")
                                .frame(width: 90,alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .regular))
                                .offset(x: 30)
                            
                            Text(".......")
                                .frame(width: 60, height: 18)
                                .lineSpacing(2)
                                .font(.system(size:11, weight:.medium))
                                .foregroundColor(Color.white)
                                .background(Color.gray.opacity(0.8))
                                .cornerRadius(4.0)
                                .offset(x:-14)
                                    
                            Text(".......")
                                .frame(width: 90, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .regular))

                    }
                    .offset(x: 10)
                    .frame(height:26)
                    .padding(2)
                    }
                    .redacted(reason: .placeholder)
                }
            )
        }
    }
    
    var body: some View {
        HStack{
            VStack{
                HStack(alignment:.top){
                    VStack(alignment: .leading){
                        Text("Recents Order").font(.system(size: 14, weight: .bold))
                    }
                
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("More")
                            .font(.system(size: 10, weight: .bold))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(Color.blue.opacity(0.2)).cornerRadius(5.0)
                            .foregroundColor(.blue)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
 
                VStack{
                    VStack{
                        HStack(spacing: 13){

                        Text("Track ID")
                            .frame(width: 120, alignment: .leading)
                            .lineSpacing(2)
                            .font(.system(size: 12, weight: .bold))
                            .offset(x: -30)


                            Text("Name")
                                .frame(width: 140, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
                                .offset(x: -6)

                            Text("Items")
                                .frame(width: 90, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
                                .offset(x: 30)

                            Text("Status")
                                .frame(width: 64, alignment: .center)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
                                .offset(x: -18)


                            Text("Total")
                                .frame(width: 90, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
         
                    }
                    .offset(x: 10)
                    .frame(height:26)
                    .padding(2)
                    }
                    
                    Rectangle()
                        .foregroundColor(Color.gray.opacity(0.2))
                        .frame(height: 1)
                }
                
                VStack{
                        loader
                            .onAppear{ orderRestApi().getOrders { orders in
                                        self.orders = orders
                                            }
                                    }
                }
                .padding(.top, 8)
                
                Spacer()
            }
        }
        .padding(13)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct RecentsOrderTable_Previews: PreviewProvider {
    static var previews: some View {
        RecentsOrderTable()
    }
}

