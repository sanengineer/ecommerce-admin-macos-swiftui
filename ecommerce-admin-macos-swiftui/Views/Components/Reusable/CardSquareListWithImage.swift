//
//  CardSquareListWithImage.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 14/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct CardSquareListWithImage: View {
    var titleCard: String
    var titleCardSize: CGFloat
    var params: Range<Int>
    var imageUrl: String
    var titleList: String
    var subtitleList: String
    var isAnimating: Binding<Bool>
    
    var body: some View {
        Text("Hallo")
//        HStack {
//            Text("Hello")
//            VStack{
//                HStack(alignment:.top){
//                    VStack(alignment: .leading){
//                        Text(titleCard).font(.system(size: titleCardSize, weight: .bold))
//                    }
//
//                    Spacer()
//
//                    Button(action: {}, label: {
//                        Text("More")
//                            .font(.system(size: 10, weight: .bold))
//                            .padding(.horizontal, 10)
//                            .padding(.vertical, 4)
//                            .background(Color.blue.opacity(0.2)).cornerRadius(5.0)
//                            .foregroundColor(.blue)
//                    })
//                    .buttonStyle(PlainButtonStyle())
//                }
//                Spacer()
//                HStack{
//                    ScrollView {
//                        ForEach(params) { product in
//                            LazyVStack {
//                                HStack(spacing: 13){
//                                    WebImage(url: URL(string: imageUrl), isAnimating: isAnimating)
//                                        .customLoopCount(1)
//                                        .playbackRate(2.0)
//                                        .playbackMode(.bounce)
//                                        .resizable()
//                                        .frame(width: 40, height: 40)
//                                        .cornerRadius(6.0)
//
//                                Text(titleList).frame(width: 160, height: 100, alignment: .leading).lineSpacing(2)
//                                    .font(.system(size: 12, weight: .semibold))
//
//                                    Text(subtitleList).frame(width: 90, height: 100, alignment: .leading).lineSpacing(2).font(.system(size: 12, weight: .semibold))
//                                }
//                            .offset(x: 1)
//                            .frame(height:50)
//                            .padding(2)
//                            }
//                        }
//                    }
//                }
//                .padding(.top, 8)
//            }
//            .padding(13)
//            .frame(width: 351, height: 301, alignment: .center)
//            .background(Color.gray.opacity(0.1))
//            .cornerRadius(10)
//        }
    }
}

