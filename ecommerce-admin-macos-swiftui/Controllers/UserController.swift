import Foundation

class fetchApi {
    func getUsers(completion:@escaping ([User]) -> ()){
//
//    guard let url = URL(string:  Environment.userURL.absoluteURL ) else {
//        print("WRONG URL")
//        return
//    }
    let semaphore = DispatchSemaphore (value: 0)
    let url = Environment.userURL.absoluteURL
    
    let request =  URLRequest(url: url)
    
    //debug
    print("\nREQUEST_GET_USERS:", request, "\n")

    URLSession.shared.dataTask(with: request){(data, response, error) in
        
        guard let data = data else {
            print(String(describing: error))
            semaphore.signal()
            return
        }
        
        
        do {
            let users = try JSONDecoder().decode([User].self, from: data)
            print(users)
                        
            DispatchQueue.main.async {
                completion(users)
            }
        } catch let err {
            print("ERROR:", err)
        }
     
        //debug
        print("DATA:\(data)")
        print("RESPONSE:\(response!)")
        print("ERROR MESSAGE: \(error?.localizedDescription ?? "Unknown Error")")
    }.resume()
}
    
    func getUsersNumber(completion:@escaping (Int) -> ()) {
        let semaphore = DispatchSemaphore (value: 0)
        let url = Environment.userURL.appendingPathComponent("/count")
        let request = URLRequest(url: url)
        let urlSession = URLSession.shared
        
        let task = urlSession.dataTask(with: request){ data, response, error in
            
            guard let data = data else {
                print(String(describing: error))
                semaphore.signal()
                return
            }
            
            do {
                let users_number = try JSONDecoder().decode(Int.self, from: data)
                DispatchQueue.main.async {
                    completion(users_number)
                }
            } catch let err {
                //debug
                print("\nERROR_USER_NUMBER:", err, "\n")
            }
            
            //debug
            print("\nDATA_USER_NUMBER:",data, "\n")
            
            semaphore.signal()
            
        }
        
        task.resume()
        semaphore.wait()
    }
}

