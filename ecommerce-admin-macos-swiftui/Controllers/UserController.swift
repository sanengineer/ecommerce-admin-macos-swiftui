import Foundation

class fetchApi {
   func getUsers(completion:@escaping ([User]) -> ()){
//
//    guard let url = URL(string:  Environment.userURL.absoluteURL ) else {
//        print("WRONG URL")
//        return
//    }
    
    let url = Environment.userURL.absoluteURL
    
    let request =  URLRequest(url: url)
    
    print(request)


    URLSession.shared.dataTask(with: request){(data, response, error) in
        let users = try! JSONDecoder().decode([User].self, from: data!)
                    print(users)
                    
                    DispatchQueue.main.async {
                        completion(users)
                    }
        
        print("DATA:\(data!)")
        print("RESPONSE:\(response!)")
        print("ERROR MESSAGE: \(error?.localizedDescription ?? "Unknown Error")")
    }.resume()
}
}

