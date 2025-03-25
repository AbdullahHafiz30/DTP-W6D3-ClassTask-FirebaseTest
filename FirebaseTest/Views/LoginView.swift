//
//  LoginView.swift
//  FirebaseTest
//
//  Created by Abdullah Hafiz on 25/09/1446 AH.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var AuthManager: AuthViewModel
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome to Recepies")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Form {
                    TextField("Email", text: $email)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                    
                    Button("Login", action: {
                        self.AuthManager.LogIn(email: self.email, password: self.password)
                    }
                    )
                    .font(.title)
                    .bold(true)
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                
                HStack {
                    Text("Don't Have an Account ?")
                    NavigationLink("Sign Up", destination: SignUpView())
                }
                
                
                
            }.navigationTitle("Login")
        }
    }
}

#Preview {
    LoginView()
}
