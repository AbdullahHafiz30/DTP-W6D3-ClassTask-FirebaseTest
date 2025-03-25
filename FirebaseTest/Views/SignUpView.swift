//
//  SignUpView.swift
//  FirebaseTest
//
//  Created by Abdullah Hafiz on 25/09/1446 AH.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var AuthManager: AuthViewModel
    
    var body: some View {
        VStack{
            
            Form {
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                
                Button("Sign Up", action: {
                    self.AuthManager.signUp(email: self.email, password: self.password)
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
            
            
            
        }.navigationTitle("SignUp")
    }
}


#Preview {
    SignUpView()
}
