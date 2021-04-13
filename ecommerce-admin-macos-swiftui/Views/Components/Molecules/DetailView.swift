//
//  DetailView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var publishedConstant: PublishedConstants
    
    var body: some View {
        
       
        
        HStack {
            
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
            .background(Color.blue)
            
        ExpandedView().frame(width: publishedConstant.rightBarExpanded ? nil : 0)
//        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}

struct ExpandedView: View {
    var body: some View {
        
        HStack {
//            Divider()
            
            VStack {
                Text("Hello VStack")
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.gray)
        }
    }
}

