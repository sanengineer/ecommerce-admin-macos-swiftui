//
//  TopSellingProductsCard.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 13/04/21.
//

import SwiftUI

struct TopSellingProductsCard: View {
    
    @State var products = [Product]()

//    @State var productEnvObj: PublishedConstants
    
    var body: some View {
        
        HStack {
            VStack{
                HStack(alignment:.top){
                    VStack(alignment: .leading){
                        Text("Top Selling Product").font(.system(size: 14, weight: .bold))
                    }
                
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("More")
                            .font(.system(size: 10, weight: .bold))
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(Color.blue.opacity(0.2)).cornerRadius(5.0)
                            .foregroundColor(.blue)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                Spacer()
                HStack{
                    ScrollView {
                        
                        ForEach(products) { product in
                   
                            VStack {

                            HStack(spacing: 13){

                                Image(systemName: "person")
//                                    Text(String(product.id))
                                Text(product.name.capitalized)
                                    .font(.system(size: 12, weight: .semibold))
                            Spacer()
                                        Text(product.descriptions)
                                Text(String(product.price))



                            }

                            .frame(height:30)
                            .padding(0)
                            .background(Color.red)
                            }
                        }
                    .onAppear{ productRestApi().getProducts{
                        products in
                        self.products = products
                            }
                        }
                    }
                    
                }
                .padding(.top, 20)
      
            }
            .padding(13)
            .frame(width: 351, height: 301, alignment: .trailing)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
    }
}

struct TopSellingProductsCard_Previews: PreviewProvider {
    static var previews: some View {
       TopSellingProductsCard()
    }
}





//struct SearchFieldEditingStyle: TextFieldStyle {
//        @Binding var focused : Bool
//        func _body(configuration: TextField<Self._Label>) -> some View {
//            configuration
//                .padding(2)
//                .background(RoundedRectangle(cornerRadius: 10, style: .continuous)
//                                .stroke(focused ? Color.red : Color.white, lineWidth: 2)).padding()
//        }
//    }


//struct ListStylingTopSelling: ListStyle {
//    static func _makeView<SelectionValue>(value: _GraphValue<_ListValue<ListStylingTopSelling, SelectionValue>>, inputs: _ViewInputs) -> _ViewOutputs where SelectionValue : Hashable {
//
//    }
//
//    static func _makeViewList<SelectionValue>(value: _GraphValue<_ListValue<ListStylingTopSelling, SelectionValue>>, inputs: _ViewListInputs) -> _ViewListOutputs where SelectionValue : Hashable {
//        <#code#>
//    }
//
//}

struct ClearCell: ViewModifier {
    
//    func preferredColorScheme(_ colorScheme: ColorScheme?) -> some View{
//        VStack{}.background(Color.red.opacity(0.0))
//    }
//
    
      func body(content: Content) -> some View {
          content
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
//              .offset(x: 10)
              .padding(10)
//              .font(.system(size: 18, weight: .bold, design: .rounded))
              .foregroundColor(.black)
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .preferredColorScheme(.some(.dark))
            .listStyle(PlainListStyle())
            .listRowBackground(Color.black.opacity(0.0))
      }
  }

