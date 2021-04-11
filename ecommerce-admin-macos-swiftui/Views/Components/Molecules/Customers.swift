import Foundation
import SwiftUI



struct UserView: View {
    
    @State var users = [User]()
    @State private var showText = true
   
    var body: some View {
        HStack {
            VStack {
                List(users, id: \.id) { user in
                    HStack(spacing: 40) {
                        Text(user.name)
                            .font(.system(size: 12, weight: .bold))
                        Text(user.username).background(Color.red)
                            .font(.system(size: 12, weight: .medium))
                    }.background(Color.red)
                }
            .onAppear { fetchApi().getUsers { users in
                self.users = users } }
            }.ignoresSafeArea(.container)
        }
       }
  }


struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
    
}
