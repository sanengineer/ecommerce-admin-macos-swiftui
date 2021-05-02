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
        ScrollView(){
            HStack{
                VStack(spacing: 13){
                    HStack (spacing: 13){
                        AllProductCard(widthFrame: 152)
                        EmptyStockCard(widthFrame: 150)
                        
                        ProductIndoCardSquare(widthFrame: 110, heightFrame: 99, paddingBottom: 8, imageSize: 42, titleFontSize: 13, subtitleFontSize: 9)
                                VStack(spacing: 13){
                                    HStack(spacing: 13){
                                        ProductIndoCardSquare(widthFrame: 96, heightFrame: 43, paddingBottom: 30)
                                        ProductIndoCardSquare(widthFrame: 96, heightFrame: 43, paddingBottom: 30)
                                    }
                                    HStack(spacing: 13){
                                        ProductIndoCardSquare(widthFrame: 96, heightFrame: 43, paddingBottom: 30)
                                        ProductIndoCardSquare(widthFrame: 96, heightFrame: 43, paddingBottom: 30)
                                    }
                            }
                  
                   
                }
                    
                    ProductsTableCard()
            }
            .padding(.top, 13)
            .padding(.bottom, 20)
            .padding(.horizontal, 20)
            .frame(width: 685, alignment: .center)
        }
        }
    }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
