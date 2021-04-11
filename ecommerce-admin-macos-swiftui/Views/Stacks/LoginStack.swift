//
//  LoginStack.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 10/04/21.
//
import Foundation
import SwiftUI

struct LoginStack: View {
    
    @State private var usernameField: String
    @State private var passwordField: String

    init(){
        let authuser = AuthUser.init(username: UserDefaults.standard.string(forKey: "username_field") ?? "", password: UserDefaults.standard.string(forKey: "password_field") ?? "")
        self._usernameField = State(initialValue: authuser.username)
        self._passwordField = State(initialValue: authuser.password)
    }

    var body: some View {
        HStack {
            
            Spacer()
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .center, spacing: 60){
                    HStack(spacing: 20){
                        VStack(spacing:10){
                            Text("San Coffee")
                                .font(.system(size: 30, weight: .bold))
                            Text("Admin Dashboard")
                                .font(.system(size: 11, weight: .semibold))
                        }
                    }
  
                    
                    HStack {
                        VStack(spacing: 26){
                            
                            // Contianer Username
                            VStack(alignment: .leading, spacing: 10){
                                Text("Username").fontWeight(.bold)
                               
                                HStack{
                                    TextField("Name", text: $usernameField)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .padding(8)
                               
                                }
                                .colorScheme(.light)
                                .background(Color.white)
                                .cornerRadius(8)
                            }
   
                            
                            // Contianer Password
                            VStack(alignment: .leading, spacing: 10){
                                Text("Password").fontWeight(.bold)
                                
                                HStack{
                                    SecureField("Info", text: $passwordField)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .padding(8)
                                }
                                .colorScheme(.light)
                                .background(Color.white)
                                .cornerRadius(8)
                            }
  
                        }
                        .frame(width: 200, height: 90, alignment: .leading)
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 50)
                    .padding(.bottom, 60)
                    .background(Color.primary.opacity(0.1))
                    .cornerRadius(12)
                    
                    HStack{
                        Button("logout"){
                            authController().authLogout()
                        }
                        
                        Button("save"){
                            UserDefaults.standard.setValue(self.usernameField, forKey: "username_field")
                            UserDefaults.standard.setValue(self.passwordField, forKey: "password_field")
                            
                            DispatchQueue.main.async {
                                authController().authLogin()
                            }
                            
 
                        }
                        
                        Button("show"){
                            
                            let username = UserDefaults.standard.string(forKey: "username_field") ?? "no username"
                            let password = UserDefaults.standard.string(forKey: "password_field") ?? "no password"
                            
                            let authfunc = AuthUser.self
                            
                           let auth = authfunc.init(username:  UserDefaults.standard.string(forKey: "usname_field") ?? "", password:  UserDefaults.standard.string(forKey: "pass_field") ?? "")
                            
//                            print(self.$usernameField)
//                            print(self.$passwordField)
                            print(username)
                            print(password)
                            
                            authController().getKey()
                            
                            
                            print(auth.username)
                            print(auth.password)
 
                        }
//                        .buttonStyle(T##style: PrimitiveButtonStyle##PrimitiveButtonStyle)
                    }
                   
                    .padding(20)
                    
                }
                
                
                
                .padding(.top, 30)
                .padding(.bottom, 40)
                .padding(.horizontal, 30)

                Spacer()
            }
            
            Spacer()
        }
        .frame(
            minWidth: 600, minHeight: 400,
            alignment: .center)
    }
}


struct LoginStack_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}
