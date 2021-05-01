import Foundation

struct User: Codable, Identifiable {
    let id: UUID
    let name: String
    let mobile: String?
    let email: String
    let city: String?
    
    init(
        id: UUID,
        name: String,
        mobile: String?,
        email: String,
        city: String?
    ){
        self.id = id
        self.name = name.capitalized
        self.mobile = mobile
        self.email = email
        self.city = city?.capitalized
    }
}
