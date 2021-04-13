//
//  ModalView.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 14/04/21.
//
import SwiftUI
import Foundation

struct ModalView: View {
    
    @SwiftUI.Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Spacer()
            
            HStack(alignment: .center , spacing: 10) {
                
                Spacer()
                
                Button(action: { withAnimation {
                    presentationMode.wrappedValue.dismiss()
                }

                }, label: {
                    Text("dismiss")
                })
            }
        }
        .frame(width: 200, height: 150, alignment: .center)
        .padding()
    }
}
