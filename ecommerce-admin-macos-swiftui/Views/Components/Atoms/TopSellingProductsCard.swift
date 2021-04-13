//
//  TopSellingProductsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct TopSellingProductsCard: View {
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
                    Text("Table")
                }
               
              
            }
            .padding(11)
            .frame(width: 351, height: 301, alignment: .trailing)
            .background(Color.black.opacity(0.1))
            .cornerRadius(10)

        }
        
    }
}

struct TopSellingProductsCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
