//
//  ProductModel.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

struct Product: Codable, Identifiable{
    let id: UUID
    let image_featured: String
    let name: String
    let price: Int
    let descriptions: String
    
    init(id:UUID, image_featured: String, name: String, price: Int, descriptions: String) {
        self.id = id
        self.image_featured = image_featured
        self.name = name
        self.price = price
        self.descriptions = descriptions
    }
}
