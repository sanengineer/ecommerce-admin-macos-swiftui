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
                        
                        TabButton(image: "person", title: "Profile", selectedTab: $customerData.selectedTab)
                        
                        TabButton(image: "gearshape", title: "Settings", selectedTab: $customerData.selectedTab)
                            .padding(.bottom, 20)
                    }.padding(.horizontal, 30) //Sidebar
                    HStack{
                        HStack{
                            ZStack {
                            switch customerData.selectedTab {
                            case "Dashboard": Dashboard()
                            case "Customers": UserView()
                            case "Products": Products()
                            case "Categories": Categories()
                            case "Orders": Orders()
                            case "Settings": Settings()
                            case "Profile": ProfileView()
                            default : Text("Default Case")
                                }
                            }
                            
                           
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                                TopBar()
                        }
                    }
                    .padding(.top, 1.0)
                }
//                .background(Color.orange)
                
                DetailsView()
                
                
            }
        
       
    }
}

struct SidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
