//
//  SwiftUIView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

struct Products: View {
    
    @State var products = [Product]()
    
    var body: some View {
        HStack{
            VStack{
                List(products, id: \.id) { product in
                    
                    VStack(alignment: .leading){
//                        Text(String(product.id.self))
                        Text(product.name)
                        Text(product.image_featured)
                        Text(product.descriptions)
                        Text(String(product.price))
                        
                    }
                    
                }.onAppear{ productRestApi().getProducts{
                    products in
                    self.products = products
                }
                    
                }
            }
        }
    }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
