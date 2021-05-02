//
//  ProductsTableCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 02/05/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductsTableCard: View {
    
    @State var products = [Product]()
    @State var isAnimating: Bool = true
    @State var pickTabProduct = "All"
    @State var productToggleOnStockActive = true
    @State var productSelectEachToggleActive = false
    @State var productSelectAllToggleActive = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("Recent Products")
                            .font(.system(size:14, weight: .bold))
                    }
                    
                    Spacer()
                    VStack {
                        Picker("Picker", selection: $pickTabProduct) {
                            Text("All")
                                .tag("All")
                            Text("Coffee")
                                .tag("Coffee")
                            Text("Tea")
                                .tag("Tea")
                            Text("Pastry")
                                .tag("Pastry")
                        }
                        
                        .labelsHidden()
                    }
                    .frame(width: 80)
                }
                
                
                HStack(spacing: 30) {
                    Toggle(isOn: $productSelectAllToggleActive){
                        Text("Select All")
                    }
                    .labelsHidden()
                    
                    
                    Text("Name")
                        .frame(width: 118, alignment: .leading)
                        .font(.system(size: 12, weight: .bold))
//                        .background(Color.red)
            
                    Text("Descriptions")
                        .frame(width: 118, alignment: .leading)
                        .font(.system(size: 12, weight: .bold))
//                        .background(Color.red)

                    
                    Text("Stocks")
                        .frame(width: 62, alignment: .leading)
                        .font(.system(size: 12, weight: .bold))

                    
                    Text("Active")
                        .frame(width: 62, alignment: .leading)
                        .font(.system(size: 12, weight: .bold))

                    
                    Text("Price")
                        .frame(width: 100, alignment: .leading)
                        .font(.system(size: 12, weight: .bold))
                }
                .frame(height:40)
               
          
                Rectangle()
                    .foregroundColor(Color.gray.opacity(0.2))
                    .frame(height: 1)
                    .padding(.bottom, 8)
             
                    ForEach(products){ product in
                        LazyHStack(alignment: .top, spacing: 30){
                            Toggle(isOn: $productSelectEachToggleActive){
                                Text("Select Each")
                            }
                            .labelsHidden()
                            
                            LazyVStack(alignment: .leading,spacing: 8){
                                WebImage(url: URL(string: product.image_featured), isAnimating: $isAnimating)
                                    .customLoopCount(1)
                                    .playbackRate(2.0)
                                    .playbackMode(.bounce)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 118, height: 47)
                                    .cornerRadius(7)
                                
                                Text(product.name)
                                    .frame(alignment: .leading)
                                    .font(.system(size: 12, weight: .bold))
                            }
                            .frame(width:118)
//                            .background(Color.red)
                            
                            Text(product.descriptions)
                                .frame(width: 118, alignment: .leading)
                                .font(.system(size: 12, weight: .medium))
//                                .background(Color.red)
                            
                            Text("100")
                                .frame(width: 62, alignment: .leading)
                                .font(.system(size: 12, weight: .medium))
                            

                            Toggle(isOn: $productToggleOnStockActive){
                                Text("Product Available")
                            }
                            .toggleStyle(SwitchToggleStyle())
                            .labelsHidden()
                            
                            Text(String(Int(product.price)))
                                .frame(width: 100, alignment: .leading)
                                .font(.system(size: 12, weight: .bold))
                            
                        }
                        .frame(height: 122)
                    }
            }
            .onAppear{ productRestApi().getProducts { (products) in
                self.products = products
            }}
        }
        .padding(13)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

