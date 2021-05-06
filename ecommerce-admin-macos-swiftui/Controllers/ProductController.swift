//
//  ProductController.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

class productRestApi {
    func getProducts(completion:@escaping ([Product]) -> ()){
        let semaphore = DispatchSemaphore (value: 0)
        let url = Environment.productURL.absoluteURL
        
        let request = URLRequest(url: url)
        let urlSession = URLSession.shared
        
        let task = urlSession.dataTask(with: request){(data, response, error) in
            
            guard let data = data else {
                print(String(describing: error))
                semaphore.signal()
                return
            }
            
            do {
                let products = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                    completion(products)
                }
            } catch let err {
                //debug
                print("\nERROR_ORDER_NUMBER:", err, "\n")
            }
            
            
            //debug
            print("DATA: \(data)")
            print("RESPONSE: \(String(describing: response))")
            print("ERROR: \(error?.localizedDescription ?? "UNKNOWN ERROR")")
            
            semaphore.signal()
            
        }
        task.resume()
        semaphore.wait()
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
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
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
