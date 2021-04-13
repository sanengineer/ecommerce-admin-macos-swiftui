//
//  HomeStack.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//
import Foundation
import SwiftUI

var screen = NSScreen.main!.visibleFrame

struct HomeStack: View {
    
  var customerData = PublishedConstants ()
    
    var body: some View {
//        VStack{
            HStack{
                SidebarNavigation()
            }.environmentObject(customerData)
            .frame(width: 1244, height: 700, alignment: .center)
//        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }

}
