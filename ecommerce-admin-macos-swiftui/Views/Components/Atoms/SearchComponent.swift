//
//  SwiftUIView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//
import Foundation
import SwiftUI

struct SearchComponent: View {

    @State var searchField: String = ""
    @State var searchFieldEditing = false
    var screen = NSScreen.main!.visibleFrame
    
    var body: some View {
        
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search here..", text: self.$searchField, onEditingChanged: { edit in
                    self.searchFieldEditing = edit
                })
            }
            .padding(8.0)
            .textFieldStyle(PlainTextFieldStyle())
            .background(Color.black.opacity(0.1))
            .font(.system(size: 12, weight: .medium, design: .default))
                            .textFieldStyle(SearchFieldEditingStyle(focused:$searchFieldEditing))
    }
//        .frame(width: screen.width - 30, alignment: .center)
        .cornerRadius(8.0)
}

struct SearchComponent_Previews: PreviewProvider {
    static var previews: some View {
        SearchComponent()
    }
}
    
struct SearchFieldEditingStyle: TextFieldStyle {
        @Binding var focused : Bool
        func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
                .padding(2)
                .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(focused ? Color.red : Color.white, lineWidth: 2)).padding()
        }
    }
}

