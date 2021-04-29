//
//  OrdereController.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 09/04/21.
//

import Foundation

class orderRestApi {
    func getOrders(completion:@escaping ([Order]) -> ()){
        
    let semaphore = DispatchSemaphore (value: 0)
    let url = Environment.orderURL.absoluteURL
    let token = UserDefaults.standard.string(forKey: "tokenString_local")!
        
    var request = URLRequest(url: url)
        
    request.httpMethod = "GET"
    request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
    print("\nREQUEST: \n \(request)")
    print("\nTOKEN: \n \(token)")
    
    URLSession.shared.dataTask(with: request){(data, response, error) in

        guard let data = data else {
          print(String(describing: error))
          semaphore.signal()
          return
        }
        
        do {
            let orders = try JSONDecoder().decode([Order].self, from: data)
            
            DispatchQueue.main.async {
                completion(orders)
            }

            print("DATA:\(data)")
            print(orders)
        } catch let err {
            print("Session Error: ",err)
        }

     
    
    print("DATA:\(data)")
    print("RESPONSE:\(response!)")
    print("ERROR:\(error?.localizedDescription ?? "uknown error")")
    
    }.resume()
    }
}
