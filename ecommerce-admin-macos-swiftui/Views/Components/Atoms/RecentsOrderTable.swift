//
//  RecentsOrderTable.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct RecentsOrderTable: View {
    
    @State var orders = [Order]()
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

                        Text("Track ID").frame(width: 120, alignment: .leading).lineSpacing(2)
                            .font(.system(size: 12, weight: .bold))
                            .offset(x: -30)


                            Text("Name")
                                .frame(width: 140, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .bold))
                                .offset(x: -6)

                            Text("Items")
                                .frame(width: 90, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .bold))
                                    .offset(x: 30)

                            Text("Status").frame(width: 64, alignment: .center).lineSpacing(2).font(.system(size: 12, weight: .bold)).offset(x: -18)


                            Text("Total").frame(width: 90, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .bold))


                    }
                    .offset(x: 10)
                    .frame(height:26)
                    .padding(2)
                    }
                }
                
                .onAppear{ orderRestApi().getOrders { orders in
                            self.orders = orders
                                }
                        }
                
                VStack{
                        ForEach(orders) { order in
                            LazyVStack {
                                HStack(spacing: 13){

                                Text(order.shipping_track_id ?? "no data").frame(width: 120, alignment: .leading).lineSpacing(2)
                                    .font(.system(size: 12, weight: .regular))
                                    .offset(x: -30)

//                                    Text(order.name?.capitalized ?? "San Engineer")
                                    Text(order.name)
                                        .frame(width: 140, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .regular))
                                        .offset(x: -6)

                                    Text(order.shipping_cost ??  "no data")
                                        .frame(width: 90,alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .regular))
                                            .offset(x: 30)

                                    
                                    switch order.status {
                                    case "process": Text(order.status).frame(width: 60, height: 18).lineSpacing(2).font(.system(size:11, weight:.bold)).foregroundColor(Color.white.opacity(0.4)).background(Color.orange.opacity(1.0)).cornerRadius(5.0).offset(x:-14)
                                    case "done": Text(order.status).frame(width: 60, height: 18).lineSpacing(2).font(.system(size:11, weight:.bold)).foregroundColor(Color.green.opacity(1.0)).background(Color.green.opacity(0.3)).cornerRadius(5.0).offset(x:-14)
                                    case "canceled": Text(order.status).frame(width: 60, height: 18).lineSpacing(2).font(.system(size:11, weight:.bold)).foregroundColor(Color.red.opacity(1.0)).background(Color.red.opacity(0.3)).cornerRadius(5.0).offset(x:-14)
                                    default: Text(order.status).frame(width: 60, height: 18).lineSpacing(2).font(.system(size:11, weight:.bold)).foregroundColor(Color.white.opacity(0.4)).background(Color.yellow.opacity(1.0)).cornerRadius(5.0).offset(x:-14)
                                    }
                                   
//                                    Text(order.status).frame(width: 60, height: 15, alignment: .center).lineSpacing(2).font(.system(size: 11, weight: .bold)).padding(2).foregroundColor(Color.white.opacity(0.6))
//                                        .background(bgColorToShow)
//                                        .cornerRadius(5.0).offset(x: -14)
                                    
                           

                                    Text(order.total ?? "no data").frame(width: 90, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .regular))


                            }
                            .offset(x: 10)
                            .frame(height:26)
                            .padding(2)
                            }
                        }
                  
               
                    
//                    VStack{
//                        ForEach(1..<5){
//                            Text("Row \($0)")
//                        }
//                    }
                    
                    
                }
//                .background(Color.red)
                .padding(.top, 8)
                
                Spacer()
            }
        }
        .padding(13)
        .frame(width: 658, height: 800, alignment: .center)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

struct RecentsOrderTable_Previews: PreviewProvider {
    static var previews: some View {
        RecentsOrderTable()
    }
}

