//
//  ProductController.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

class productRestApi {
    func getProducts(completion:@escaping ([Product]) -> ()){
        
        let url = Environment.productURL.absoluteURL
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request){(data, response, error) in
            
            let products = try! JSONDecoder().decode([Product].self, from: data!)
            
            print(products)
            
            DispatchQueue.main.async {
                completion(products)
            }
            
            print("DATA: \(data!)")
            print("RESPONSE: \(response!)")
            print("ERROR: \(error?.localizedDescription ?? "UNKNOWN ERROR")")
            
        }.resume()
    }
}
