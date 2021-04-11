//
//  OrdereController.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

class orderRestApi {
    func getOrders(completion:@escaping ([Order]) -> ()){
        
    let url = Environment.orderURL.absoluteURL
    
    let request = URLRequest(url: url)
    
    print(request)
    
    URLSession.shared.dataTask(with: request){ (data, response, error) in
        
    let orders = try! JSONDecoder().decode([Order].self, from: data!)
    
    print(orders)
    
    DispatchQueue.main.async {
        completion(orders)
    }
    
    print("DATA:\(data!)")
    print("RESPONSE:\(response!)")
    print("ERROR:\(error?.localizedDescription ?? "uknown error")")
    
    }.resume()
    }
}
