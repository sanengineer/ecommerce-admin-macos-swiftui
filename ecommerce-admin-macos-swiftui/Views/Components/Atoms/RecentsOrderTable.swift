//
//  RecentsOrderTable.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct RecentsOrderTable: View {
    var body: some View {
        HStack{
            VStack{
               
                Text("Recents Order")
                
                Spacer()
            }
        }
        .frame(width: 654, height: 800, alignment: .trailing)
        .background(Color.red)
        .cornerRadius(10)
    }
}

struct RecentsOrderTable_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
