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
        
        let username = payload.username
        let password = payload.password
        
        let loginString = NSString(format: "%@:%@", username, password)
        let loginData: NSData = loginString.data(using: String.Encoding.utf8.rawValue)! as NSData
        let base64LoginString = loginData.base64EncodedString(options: [])

        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData)

        request.httpMethod = "POST"
        request.httpBody = try! JSONSerialization.data(withJSONObject: json , options: [])
        request.addValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
       
        print("\nURL: \n \(url)")
        print("\nREQUEST: \n \(request)")
        print("\nJSON PAYLOAD: \n \(json)")
        print("\nLOGIN_DATA:\n", loginData)
        print("\nBASE64LOGIN_STRING:\n", base64LoginString)

        let task = urlsession.dataTask(with: request) { data, response, error in
                guard let data = data else {
                  print(String(describing: error))
                  semaphore.signal()
                  return
                }
            
            print("\nDATA:\n \(data)")
            print("\nRESPONSE:\n \(response!)")
            print("\nERROR: \n \(error?.localizedDescription ?? "unknown error")")
            
            print("\n RESPONSE:", String(data: data, encoding: .utf8)!)
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
