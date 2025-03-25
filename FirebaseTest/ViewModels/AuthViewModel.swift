//
//  AuthViewModel.swift
//  FirebaseTest
//
//  Created by Abdullah Hafiz on 25/09/1446 AH.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    @Published var isAuthenticated: Bool = false
    @Published var errorMessage: String?
    
    func checkUserSession() {
        if Auth.auth().currentUser != nil {
            isAuthenticated = true
        } else {
            isAuthenticated = false
        }
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            DispatchQueue.main.async {
                if let error = error {
                    self.errorMessage = error.localizedDescription
                } else {
                    self.isAuthenticated = true
                }
            }
        }
    }
    
    func LogIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            DispatchQueue.main.async {
                if let error = error {
                    self.errorMessage = error.localizedDescription
                } else {
                    self.isAuthenticated = true
                }
            }
        }
    }
    
    
    func logOut() {
        do {
            try Auth.auth().signOut()
            DispatchQueue.main.async {
                self.isAuthenticated = false
            }
        } catch {
            print("Error signing out: \(error.localizedDescription)")
        }
    }
}
