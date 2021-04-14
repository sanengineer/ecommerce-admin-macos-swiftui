//
//  TopSellingProductsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.


import SwiftUI
import SDWebImageSwiftUI

struct TopSellingProductsCard: View {
    
    @State var products = [Product]()
    @State var isAnimating: Bool = true
    
    var body: some View {
        
        HStack {
            VStack{
                HStack(alignment:.top){
                    VStack(alignment: .leading){
                        Text("Top Selling Product").font(.system(size: 14, weight: .bold))
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
                Spacer()
                HStack{
                    ScrollView {
                        ForEach(products) { product in
                            LazyVStack {
                                HStack(spacing: 13){
                                
//                                LazyHStack {
                                    WebImage(url: URL(string: "\(product.image_featured)"), isAnimating: $isAnimating)
                                        .customLoopCount(1)
                                        .playbackRate(2.0)
                                        .playbackMode(.bounce)
                                        .resizable()
                                      
                                        .frame(width: 40, height: 40)
                                        .cornerRadius(6.0)
//                                }  .padding(2)
                                


                                Text(product.name).frame(width: 160, height: 100, alignment: .leading).lineSpacing(2)
                                    .font(.system(size: 12, weight: .semibold))
   
                               
                                    Text("Rp. \(String(product.price))").frame(width: 90, height: 100, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .semibold))
                                  
                              
                               

                            }
                            .offset(x: 1)
                            .frame(height:50)
                            .padding(2)
//                            .background(Color.red)
                            }
                        }
                    .onAppear{ productRestApi().getProducts{
                        products in
                        self.products = products
                            }
                        }
                    }
                }
                .padding(.top, 8)
            }
            .padding(13)
            .frame(width: 351, height: 301, alignment: .center)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }
}


struct TopSellingProductsCard_Previews: PreviewProvider {
    static var previews: some View {
       TopSellingProductsCard()
    }
}


struct ClearCell: ViewModifier {
      func body(content: Content) -> some View {
          content
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
//              .offset(x: 10)
              .padding(10)
//              .font(.system(size: 18, weight: .bold, design: .rounded))
              .foregroundColor(.black)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .preferredColorScheme(.some(.dark))
            .listStyle(PlainListStyle())
            .listRowBackground(Color.black.opacity(0.0))
      }
  }

