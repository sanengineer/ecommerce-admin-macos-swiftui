//
//  ProductModel.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

struct Product: Codable{
    let id: UUID
    let image_featured: String
    let name: String
    let price: Int
    let descriptions: String
}
