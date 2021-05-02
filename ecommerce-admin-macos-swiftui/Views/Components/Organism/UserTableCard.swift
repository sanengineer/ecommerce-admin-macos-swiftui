//
//  UserTableCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 30/04/21.
//

import SwiftUI

struct UserTableCard: View {
    
    @State var users = [User]()
    
    var body: some View {
        HStack {
            VStack (alignment: .center) {
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Text("Recent User")
                            .font(.system(size: 14, weight: .bold))
                    }
                    Spacer()
                }
                
                VStack{
                    VStack {
                        HStack(spacing: 13){
                            Text("Name")
                                .frame(width: 120, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
//                                .offset(x: -30)
                            
                            Text("Phone")
                                .frame(width: 120, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
//                                .offset(x: -30)
                            
                            Text("Email")
                                .frame(width: 180, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
//                                .offset(x: -30)
                            
                            Text("City")
                                .frame(width: 120, alignment: .leading)
                                .lineSpacing(2)
                                .font(.system(size: 12, weight: .bold))
//                                .offset(x: -30)
                        }
                    }
                    .offset(x: 10)
                    .frame(height: 26)
                    .padding(2)
                }
                .frame(width: 618, alignment: .leading)
                .border(width: 1, edges: [.bottom], color: .gray, opacity: 0.1)

                
                
                VStack{
                    ForEach(users){ user in
                        LazyVStack (alignment: .leading) {
                            HStack(spacing: 13){
                                Text(user.name)
                                    .frame(width: 120, alignment: .leading)
                                    .lineSpacing(2)
                                    .font(.system(size: 12, weight: .light))
    //                                .offset(x: -30)
                                
                                Text(user.mobile ?? "no contact")
                                    .frame(width: 120, alignment: .leading)
                                    .lineSpacing(2)
                                    .font(.system(size: 12, weight: .light))
    //                                .offset(x: -30)
                                
                                Text(user.email ?? "no email")
                                    .frame(width: 180, alignment: .leading)
                                    .lineSpacing(2)
                                    .font(.system(size: 12, weight: .light))
    //                                .offset(x: -30)
                                
                                Text(user.city ?? "no city")
                                    .frame(width: 120, alignment: .leading)
                                    .lineSpacing(2)
                                    .font(.system(size: 12, weight: .light))
    //                                .offset(x: -30)
                            }
                            .offset(x: 10)
                            .frame(height: 14)
                            .padding(2)
                            
                        }
                    }
                }
            }
            .onAppear { fetchApi().getUsers { users in
                self.users = users } }
        }
        .padding(13)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

extension View {
    func border(width: CGFloat, edges:[Edge], color:Color, opacity: Double) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color).opacity(opacity))
    }
}

struct EdgeBorder: Shape {
    var width: CGFloat
    var edges: [Edge]
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing : return rect.maxX - width
                }
            }
            
            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing:
                    return rect.minY
                case .bottom:
                    return rect.maxY - width
                }
            }
            
            var w: CGFloat {
                switch edge {
                case .top, .bottom:
                    return rect.width
                case .leading, .trailing:
                    return self.width
                }
            }
            
            var h:CGFloat {
                switch edge {
                case .top, .bottom:
                    return self.width
                case .leading, .trailing:
                    return rect.height
                }
            }
            
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}
