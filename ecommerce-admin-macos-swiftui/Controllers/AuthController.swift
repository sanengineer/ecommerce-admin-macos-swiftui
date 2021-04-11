//
//  AuthController.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 10/04/21.
//

import Foundation

class authController {

    func authLogin(){
        let semaphore = DispatchSemaphore (value: 0)
        let url = Environment.userURL.appendingPathComponent("/auth/login")

        let urlsession = URLSession.shared

        let payload = AuthUser.init(username: UserDefaults.standard.string(forKey: "username_field") ?? "", password: UserDefaults.standard.string(forKey: "password_field") ?? "")

        var json = [String:Any]()
        json["username"] = payload.username
        json["password"] = payload.password
    
        
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)

        request.httpMethod = "POST"
        request.httpBody = try! JSONSerialization.data(withJSONObject: json , options: [])
        request.addValue("Basic c2FuZW5naW5lZXI6MTIz", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
       
        
        print("URL: \n \(url) \n")
        print("REQUEST: \n \(request) \n")
        print("JSON PAYLOAD: \n \(json) \n")

        let task = urlsession.dataTask(with: request) { data, response, error in
                guard let data = data else {
                  print(String(describing: error))
                  semaphore.signal()
                  return
                }
            
            print("DATA:\n \(data) \n ")
            print("RESPONSE:\n \(response!) \n")
            print("ERROR: \n \(error?.localizedDescription ?? "unknown error") \n")
            
            print("\n RESPONSE:", String(data: data, encoding: .utf8)!, "\n")
            semaphore.signal()
            
            }

            task.resume()
            semaphore.wait()
    }
    
   
    func setKey() {
        
        let defaults = UserDefaults.standard
        defaults.setValue("Storing First Key", forKey: keys.firstKey)
        defaults.setValue("Storing Second Key", forKey: keys.secondKey)
        
        defaults.setValue("userDefaults_username", forKey: PublishedConstants().fieldUsername )
        defaults.setValue("userDefaults_password", forKey:  PublishedConstants().fieldPassword)
        
        print(defaults.string(forKey: keys.firstKey) ?? "no")
        print(defaults.string(forKey: keys.secondKey) ?? "no")
    }
   
    
    func getKey() {
        
//        authLogin()
//        sendPost
       
//        let payload = AuthUser.init(username: "sanengineer", password: "123")
//       
//        
//        
//        print(payload.username)
//        print(payload.password)
        
        let ok = UserDefaults.standard.object(forKey: "userDefaults_username")
        
        let defaults = UserDefaults.standard
        
        if let stringOne = defaults.object(forKey: "userDefaults_username") {
            print(stringOne) // Some String Value
            print(defaults)
        }
        else {
            print("no value")
            print(ok ?? "no")
        }
        
    }
}


struct keys {
    static let firstKey = "1Key"
    static let secondKey = "2Key"
}
