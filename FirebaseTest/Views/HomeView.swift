//
//  HomeView.swift
//  FirebaseTest
//
//  Created by Abdullah Hafiz on 25/09/1446 AH.
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    @EnvironmentObject var authManager: AuthViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            if let userEmail = Auth.auth().currentUser?.email {
                Text("Welcome, \(userEmail)")
                    .font(.title2)
                    .fontWeight(.medium)
            } else {
                Text("Welcome!")
                    .font(.title2)
                    .fontWeight(.medium)
            }
            
            Button("Log Out") {
                authManager.logOut()
            }
            .font(.title3)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .navigationTitle("Home")
    }
}



#Preview {
    HomeView()
}
