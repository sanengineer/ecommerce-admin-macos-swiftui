//
//  DetailView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct DetailsView: View {
    
    @EnvironmentObject var publishedConstant: PublishedConstants
    
    var body: some View {
        
        HStack {
//            Spacer()
//            VStack{
//                HStack{}
//                HStack {
//                    Text("Hello, Detail View")
//                }
//
//                Spacer()
//
//                HStack{
//                    Text("Hello")
//                }
//
               
            }
//            .background(Color.blue)
            
        ExpandedView().frame(width: publishedConstant.rightBarExpanded ? 0 : nil)
//        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}

struct ExpandedView: View {
    var body: some View {
        
        HStack {
 
            VStack {

                Text("Hello VStack")
               
                Spacer()
            }
            
           
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.primary.opacity(0.1))
        }
    }
}

