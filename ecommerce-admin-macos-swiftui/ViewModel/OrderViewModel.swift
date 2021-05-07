//
//  OrderViewModel.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 07/05/21.
//

import Foundation
import SwiftUI

class OrderViewModel: ObservableObject {

    @State var orders: [Order]?

    @Published var selectedOrder: String?
}
