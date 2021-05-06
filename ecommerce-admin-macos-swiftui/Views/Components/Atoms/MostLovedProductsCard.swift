//
//  MostLovedProductsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct MostLovedProductsCard: View {
    
    @State var products: [Product]? = nil
    @State var isAnimating: Bool = true
    
    var loader: some View {
        if let unwrappedProducts = products {
            return AnyView (
                ForEach(unwrappedProducts) { product in
                    ListWithImage(
                        listTitle: product.name ,
                        listSubTittle: "999",
//                                listSubTittle: String(product.price),
                        isAnimating: $isAnimating,
                        imageUrl: product.image_featured,
                        offsetListSubtitle: 20
                    )
                }
                
            )
        }
        else {
            return AnyView (
                ForEach(0..<5) { _ in
                    ListWithImage(
                        listTitle: "..................................." ,
                        listSubTittle: "....",
//                                listSubTittle: String(product.price),
                        isAnimating: $isAnimating,
                        imageUrl: "....",
                        offsetListSubtitle: 20
                    )
                    .redacted(reason: .placeholder)
                }
                
            )
        }
    }
    
    var body: some View {
        
        HStack {
            VStack{
                HStack(alignment:.top){
                    VStack(alignment: .leading){
                        Text("Most Loved Products").font(.system(size: 14, weight: .bold))
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
                      loader
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
            .frame(width: 322, height: 301, alignment: .center)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }
}

struct MostLovedProductsCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
