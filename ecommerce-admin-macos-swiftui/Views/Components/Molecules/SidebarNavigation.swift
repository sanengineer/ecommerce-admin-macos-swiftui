//
//  Sidebar.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 08/04/21.
//
import SwiftUI

struct SidebarNavigation: View {
    
    @StateObject var customerData = PublishedConstants()
    
 
    var body: some View {

            HStack {
                NavigationView{
                    VStack{
                        TabButton(image: "desktopcomputer", title: "Dashboard", selectedTab: $customerData.selectedTab)
                        TabButton(image: "person.2", title: "Customers", selectedTab: $customerData.selectedTab)
                        TabButton(image: "tag", title: "Products", selectedTab: $customerData.selectedTab)
                        TabButton(image: "square.stack.3d.up.badge.a", title: "Categories", selectedTab: $customerData.selectedTab)
                        TabButton(image: "bag", title: "Orders", selectedTab: $customerData.selectedTab)
                        
                        Spacer()
                    }
                    HStack{
                        HStack{
                            ZStack {
                            switch customerData.selectedTab {
                            case "Dashboard": Dashboard()
                            case "Customers": UserView()
                            case "Products": Products()
                            case "Categories": Categories()
                            case "Orders": Orders()
                            default : Text("")
                                }
                            }
                        }
                       
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigation) {
                            Button(action: {
                                print("Hello Button")
                            }, label: {
                                Text("Button")
                            })
                        }
                        ToolbarItem(placement: .navigation) {
                            Button("New"){
                               
                                print("Hello World")
                            }
                        }
                        ToolbarItem(placement: .navigation) {
                            TopBar()
//                                .background(Color.red)
                        }
                    }
                    .padding(.top, 1.0)
                }
            }
    }
}

struct SidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
       SidebarNavigation()
    }
}
