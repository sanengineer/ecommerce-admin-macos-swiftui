//
//  OrderModel.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

struct Order: Codable, Identifiable{
    let id: UUID?
    let name: String?
    let user_id: String
    let total: String?
    let shipping_cost: String?
    let shipping_platform: String?
    let shipping_track_id: String?
    let order_geo_loc: String?
}
