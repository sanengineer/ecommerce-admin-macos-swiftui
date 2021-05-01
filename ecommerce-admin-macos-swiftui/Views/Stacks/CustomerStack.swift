//
//  CustomerStack.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 29/04/21.
//

import SwiftUI

struct CustomerStack: View{
    var body: some View {
        
        ScrollView(){
            HStack {
                VStack(spacing: 13){
                    HStack(spacing: 13){
                        Text("Hello")
                    }
                }
            }
        }
    }
}
