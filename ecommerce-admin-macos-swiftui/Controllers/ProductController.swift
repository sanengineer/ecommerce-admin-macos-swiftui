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
    
    func getProductsNumber(completion:@escaping (Int) -> ()){
        let semaphore = DispatchSemaphore (value: 0)
        let url = Environment.productURL.appendingPathComponent("/count")
        guard let token = UserDefaults.standard.string(forKey: "tokenString_local") else {
            print(String(describing: Error.self))
            return
        }
        
        var request = URLRequest(url: url)
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        let urlSession = URLSession.shared
        
        let task = urlSession.dataTask(with: request){ data, response, error in
            
            guard let data = data else {
                print(String(describing: error))
                semaphore.signal()
                return
            }
            
            do {
                let products_number = try JSONDecoder().decode(Int.self, from: data)
                DispatchQueue.main.async {
                    completion(products_number)
                }
            } catch let err {
                //debug
                print("\nERROR_PRODUCTS_NUMBER", err, "\n")
            }
            
            semaphore.signal()
        }
        
        task.resume()
        semaphore.wait()
       
    }
}
