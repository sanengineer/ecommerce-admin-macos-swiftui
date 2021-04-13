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
    @EnvironmentObject var settings: PublishedConstants
    @State private var buttonTappedLogin: Bool = false
    @State private var buttonBackColor: Color = .yellow

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
                
                VStack(alignment: .center, spacing: 30){
                    HStack(spacing: 20){
                        VStack(spacing:10){
                            Text("San Coffee")
                                .font(.system(size: 30, weight: .bold))
                            Text("Admin Dashboard")
                                .font(.system(size: 11, weight: .semibold))
                        }
                    }.padding(.bottom, 40)
  
                    
                    HStack {
                        VStack(spacing: 26){
                            
                            // Contianer Username
                            VStack(alignment: .leading, spacing: 10){
                                Text("Username")
                                    .fontWeight(.bold)
                
                                HStack{
                                    TextField("username", text: $usernameField)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .padding(8)
                                    }
                                    .background(Color.primary.opacity(0.2))
                                    .cornerRadius(8)
                                }
                            
                            // Contianer Password
                            VStack(alignment: .leading, spacing: 10){
                                Text("Password").fontWeight(.bold)
                                
                                HStack{
                                    SecureField("password", text: $passwordField)
                                        .textFieldStyle(PlainTextFieldStyle())
                                        .padding(8)
                                }
                                .background(Color.primary.opacity(0.2))
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
                        Button {
                            self.settings.isloggedIn = true
                            UserDefaults.standard.setValue(self.usernameField, forKey: "username_field")
                            UserDefaults.standard.setValue(self.passwordField, forKey: "password_field")
                            authController().authLogin()
                        } label: {
                            Text("Login")
                                .foregroundColor(buttonTappedLogin ? .black : .white)
                                .padding(.vertical,8)
                                .padding(.horizontal, 14)
                                .font(.system(size: 14, weight: .semibold))
                                .background(buttonTappedLogin ? Color.primary.opacity(0.8) : Color.primary.opacity(0.2))
                                .onHover { tapper in
                                    buttonTappedLogin = tapper
                                }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .cornerRadius(8)
                    }
                }
                .padding(.top, 30)
                .padding(.bottom, 40)
                .padding(.horizontal, 30)

                Spacer()
            }
            
            Spacer()
        }
        .frame(width: 1244, height: 700, alignment: .center)
    }
}


struct LoginStack_Previews: PreviewProvider {
    static var previews: some View {
        HomeStack()
    }
}



