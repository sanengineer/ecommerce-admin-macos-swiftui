//
//  Categories.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import SwiftUI

var categorieScreen = NSScreen.main

struct Categories: View {
    var body: some View {
        VStack{
            HStack {
                Text("Hello, World!")
            }
            .frame(width: 200, height: 400, alignment: .leading)
            .background(Color.red)
        }
        .frame(width: 400, height: 500 ,alignment: .leading)
        .background(Color.yellow)
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
