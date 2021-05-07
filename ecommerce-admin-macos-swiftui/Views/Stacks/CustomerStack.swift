//
//  CustomerStack.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 29/04/21.
//

import SwiftUI

struct CustomerStack: View{
    @State var hoveredTwo = false
    
    
    var body: some View {
        
        ScrollView(){
            HStack {
                VStack(spacing: 13){
                    HStack(spacing: 13){
                        Text("Hello")
                        
                        VStack(spacing: 90) {
                            ForEach(0..<2) { _ in
                                CircleView()
                                
                            }
                        }
                        .frame(minWidth:300,maxWidth:.infinity,minHeight:300,maxHeight:.infinity)
                        
                        VStack(spacing: 90) {
                            ForEach(0..<2) { _ in
                                Circle().fill(Color.blue).frame(width: 50, height: 50)
                                    .scaleEffect(self.hoveredTwo ? 2.0 : 1.0)
                                .animation(.default)
                                .onHover { hover in
                                        print("Mouse hover: \(hover)")
                                    self.hoveredTwo.toggle()
                                }
                            }
                        }
                        .frame(minWidth:300,maxWidth:.infinity,minHeight:300,maxHeight:.infinity)
                        
                        
                        
                        
                    }
                }
            }
        }
    }
}

struct CircleView: View {
    @State var hovered = false

    var body: some View {
        Circle().fill(Color.red).frame(width: 50, height: 50)
            .scaleEffect(self.hovered ? 2.0 : 1.0)
        .animation(.default)
        .onHover { hover in
                print("Mouse hover: \(hover)")
            self.hovered.toggle()
        }
    }
}
