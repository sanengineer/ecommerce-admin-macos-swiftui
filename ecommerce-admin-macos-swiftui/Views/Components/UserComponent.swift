import Foundation
import SwiftUI

struct UserView: View {
    
    @State var users = [User]()
   
    var body: some View {
            HStack {
                List(users, id: \.id) { user in
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.system(size: 12, weight: .bold, design: .default))
                        Text(user.username)
                            .font(.system(size: 12, weight: .medium, design: .default))
                    }
                }
            .onAppear { fetchApi().getUsers { users in
                self.users = users } }
            }
       }
  }


struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
    
}
