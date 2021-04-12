//
//  ContentView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 12/04/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: PublishedConstants

    var body: some View {
        if settings.isloggedIn {
            return AnyView(HomeStack())
        } else {
            return AnyView(LoginStack())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
