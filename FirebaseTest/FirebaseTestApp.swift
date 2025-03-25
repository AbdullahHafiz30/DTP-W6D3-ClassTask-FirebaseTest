//
//  FirebaseTestApp.swift
//  FirebaseTest
//
//  Created by Abdullah Hafiz on 25/09/1446 AH.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct FirebaseTestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @ObservedObject private var AuthManager = AuthViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            if AuthManager.isAuthenticated{
                HomeView()
                    .environmentObject(AuthManager)
            } else {
                LoginView()
                    .environmentObject(AuthManager)
            }
        }
    }
}
