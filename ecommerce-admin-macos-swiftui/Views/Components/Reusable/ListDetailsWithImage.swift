//
//  ListDetailsWithImage.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 03/05/21.
//

import SwiftUI


struct ListDetailsWithImage: View {
    
    @State var toggleOnListActive = false
    @State var selectedTab: String
    @State var foreColor: Color? = Color.primary
    @State var backColor: Color? = Color.primary.opacity(0.0)
    @State var productName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack(spacing: 10){
                Toggle(isOn: $toggleOnListActive){
                    Text("Select")
                }.labelsHidden()
                
                Text(selectedTab)
                    .font(.system(size: 10, weight: .bold))
                    .foregroundColor(foreColor)
                    .padding(.vertical, 2)
                    .padding(.horizontal, 6)
                    .background(backColor)
                    .cornerRadius(4)
                   
            }
            .padding(13)
            
            Rectangle()
                .foregroundColor(Color.gray.opacity(0.2))
                .frame(height: 1)
            
            HStack{
                Text(productName)
            }
            .frame(height: 100)
            .padding(13)
            
            Rectangle()
                .foregroundColor(Color.gray.opacity(0.2))
                .frame(height: 1)
            
            HStack{
                Text("Text")
            }
            .padding(.top, 13)
            .padding(.bottom, 13)
            .padding(.horizontal, 13)
        }
//        .frame(height: 400)
//        .padding(13)
        .background(Color.primary.opacity(0.1))
        .cornerRadius(10)
        
    }
}
