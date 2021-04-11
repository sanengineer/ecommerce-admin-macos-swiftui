//
//  AuthController.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 10/04/21.
//

import Foundation

class authController {
    
    
//    func authLogin() {
//        let url = Environment.userURL.appendingPathComponent("/auth/login")
//
//        print(url)
//
//        let urlsession = URLSession.shared
//
//        var json = [AuthUser]()
//
//
//       do {
//            var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)
//
//            print(request)
//
//            request.httpMethod = "POST"
//            request.httpBody = try! JSONSerialization.data(withJSONObject: parameters, options: [])
//            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//                        request.addValue("application/json", forHTTPHeaderField: "Accept")
//
//            let task = urlsession.dataTask(with: request)
//
//            task.resume()
//        }
//       catch {}
//    }
    
   
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
