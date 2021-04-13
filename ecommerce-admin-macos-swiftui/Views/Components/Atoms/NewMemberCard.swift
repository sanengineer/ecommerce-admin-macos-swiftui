//
//  NewMemberCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct NewMemberCard: View {

    var body: some View {
        VStack(alignment: .trailing, spacing: 0){
            HStack(alignment: .top){
                    Text("9999+").font(.system(size: 40, weight: .bold))
                        .foregroundColor(Color.green)
                }
            
            HStack {
                HStack {
                 
                    VStack {
                        Spacer()
                        Image(systemName: "person.crop.circle.badge.plus").font(.system(size: 30, weight: .bold))
                            .foregroundColor(Color.green)
                            .frame(alignment: .leading)
                        Spacer()
                    }
                    Spacer()
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 2){
                        Text("New Member")
                            .font(.system(size: 13, weight: .bold))
                 
                        Text("From Last Month").font(.system(size: 9, weight: .medium))
                        
                    }
                    .frame(width: 90)
                }
            }
            
        }
        .padding(10)
        .frame(width: 154, height: 99, alignment: .trailing)
        .background(Color.green.opacity(0.1))
        .cornerRadius(10)
    }
}

struct NewMemberCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
