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
        
    // debug
    print("\nREQUEST: \n \(request)\n")
    print("\nTOKEN: \n \(token)\n")
        
    URLSession.shared.dataTask(with: request){(data, response, error) in

        guard let data = data else {
          //debug
          print(String(describing: error))
          
          semaphore.signal()
          return
        }
        
        do {
            let orders = try JSONDecoder().decode([Order].self, from: data)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                completion(orders)
            }
        } catch let err {
            //debug
            print("Session Error: ",err)
        }

     
    //debug
    print("DATA:\(data)")
    print("RESPONSE:\(response!)")
    print("\nERROR:\(error?.localizedDescription ?? "uknown error")")
    
    }.resume()
    }
    
    
    func getOrdersNumber(completion: @escaping (Int) -> ()) {
        let semaphore = DispatchSemaphore (value: 0)
        let url = Environment.orderURL.appendingPathComponent("/count")
        let token = UserDefaults.standard.string(forKey: "tokenString_local")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    
        let urlSession = URLSession.shared
        
        let task  = urlSession.dataTask(with: request){ data, response, error in
            
            guard let data = data else {
                print(String(describing: error))
                semaphore.signal()
                return
            }
            
            do {
                let orders_number = try JSONDecoder().decode(Int.self, from: data)
                DispatchQueue.main.asyncAfter(wallDeadline: DispatchWallTime.now()+1) {
                    completion(orders_number)
                }
                
                //debug
                print("\nDATA_ORDER_NUMBER:", orders_number, "\n")
                
            } catch let err {
                //debug
                print("\nERROR_ORDER_NUMBER:", err, "\n")
            }
            
            //debug
            print("\nDATA_ORDER_NUMBER:", data, "\n")
            print("\nRESPONSE_ORDER_NUMBER:", response ?? "no response", "\n")
            
            semaphore.signal()
        }
        
        task.resume()
        semaphore.wait()
    }
}
