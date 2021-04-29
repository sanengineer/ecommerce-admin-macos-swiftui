//
//  OrderModel.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

struct Order: Codable, Identifiable{

    let id : UUID
    let name: String
    let user_id: String
    let total: String?
    let shipping_cost: String?
    let shipping_platform: String?
    let shipping_track_id: String?
    let order_geo_loc: String?
    let status: String
//    let descriptions: String
//    let price : Int
//    let image_featured: String
//    let sku : String?
//    let stock: Float?
//    let categories_id : UUID?
//    let varian_id: UUID?
//    let topping_id: UUID?
//    let image_galleries_id: UUID?
    
    init(
        id : UUID,
        name: String,
        user_id: String,
        total: String? = nil,
        shipping_cost: String? = nil,
        shipping_platform: String? = nil,
        shipping_track_id: String? = nil,
        order_geo_loc: String? = nil,
        status: String
//        descriptions: String,
//         price : Int,
//         image_featured: String,
//         sku : String? = nil,
//         stock: Float? = nil,
//         categories_id : UUID? = nil,
//         varian_id: UUID? = nil,
//         topping_id: UUID? = nil,
//         image_galleries_id: UUID? = nil,
    ) {
        self.id = id
        self.name = name
        self.user_id = user_id
        self.total = total
        self.shipping_cost = shipping_cost
        self.shipping_platform = shipping_platform
        self.shipping_track_id = shipping_track_id
        self.order_geo_loc = order_geo_loc
        self.status = status
    }
}
