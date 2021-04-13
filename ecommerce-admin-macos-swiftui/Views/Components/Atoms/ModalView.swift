//
//  ModalView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 14/04/21.
//
import SwiftUI
import Foundation

struct ModalView: View {
    
//    @SwiftUI.Environment(\.presentationMode) var presentationMode
    
//    @EnvironmentObject var publishedContant: PublishedConstants
   
    var body: some View {
       
//        Button(action: { withAnimation {
//            publishedContant.presentationMode.wrappedValue.dismiss()
//        }
//
//        }, label: {
            Text("Logout")
//        })
        .font(.title)
        .padding()
        .frame(width: 400, height: 500, alignment: .center)
        .background(Color.black)
    }
}
