//
//  TopBar.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//

import SwiftUI

struct TopBar: View {
    
    @State var searchField: String = ""
    @State var searchFieldEditing = false
    
    var screen = NSScreen.main!.visibleFrame
    
    var body: some View {
                HStack {
                    VStack {
                        Button(action: toggleSidebar , label: {
                            Image(systemName: "sidebar.squares.left")
                                .font(.system(size: 14, weight: .semibold))
                        })        
                    }
                    VStack {
                        SearchComponent().frame(width: 600, alignment: .center)
                    }
                    VStack {
                        Button("Test") {
                            print("Hello Button")
                        }
                    }
                }
                .frame(alignment: .center)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar()
    }
}

func toggleSidebar() {
//    #if os(macOS)
    NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
//    #endif
}
