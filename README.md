# 🍽 FirebaseTest – SwiftUI Firebase Auth App

This is a simple SwiftUI application integrated with Firebase Authentication. It allows users to **sign up**, **log in**, and **log out**, and displays the authenticated user's email on the home screen.

## 🧩 Features

- ✅ Firebase Authentication
- ✅ Email/Password Login & Signup
- ✅ SwiftUI-based UI
- ✅ Reactive state management with `@StateObject` & `@EnvironmentObject`
- ✅ Navigation based on authentication state

---

## 🚀 Setup Instructions

### 1. Clone the Repository

    git clone https://github.com/your-username/FirebaseTest.git
    cd FirebaseTest

### 2. Open in Xcode

Double-click on `FirebaseTest.xcodeproj` or open with:

    xed .

### 3. Add Firebase to the Project

- Go to [Firebase Console](https://console.firebase.google.com)
- Create a new iOS project
- Download `GoogleService-Info.plist` and add it to your project (drag it into Xcode)

### 4. Install Firebase SDK

This app uses **Swift Package Manager**:

1. In Xcode, go to: `File > Add Packages`
2. Enter this URL:  
       https://github.com/firebase/firebase-ios-sdk.git
3. Select the latest version and add:

   - `FirebaseAuth`
   - `FirebaseCore`

### 5. Configure Firebase in the App

Firebase is initialized in `AppDelegate.swift`:

    FirebaseApp.configure()

---

## 📂 Folder Structure

    FirebaseTest/
    ├── AppDelegate.swift
    ├── FirebaseTestApp.swift
    ├── ViewModels/
    │   └── AuthViewModel.swift
    ├── Views/
    │   ├── LoginView.swift
    │   ├── SignUpView.swift
    │   └── HomeView.swift
    └── GoogleService-Info.plist

---

## 🔑 Authentication Flow

| Action      | View        | Description                                |
|-------------|-------------|--------------------------------------------|
| Login       | `LoginView` | Users enter email/password to log in       |
| Sign Up     | `SignUpView`| Users create an account with email/password|
| Home Screen | `HomeView`  | Displays email + logout button             |
| Log Out     | `HomeView`  | Calls `AuthViewModel.logOut()`             |

Authentication state is managed in `AuthViewModel` using `@Published isAuthenticated`, and the app navigates between views automatically.

---

## ✅ Requirements

- Xcode 15+
- iOS 16+
- Firebase Account
- Swift 5.9+

---

## 📸 Screenshots *(Optional)*

![Simulator Screenshot - iPhone 16 Pro - 2025-03-26 at 01 38 22](https://github.com/user-attachments/assets/d577c2a7-b9c7-4f9c-abcf-86f54e5c3a65)
![Simulator Screenshot - iPhone 16 Pro - 2025-03-26 at 01 38 17](https://github.com/user-attachments/assets/3c360355-bd15-4803-9d7c-2e0ea6355a76)


---

## 📄 License

This project is open-source and available under the MIT License.

---

## 👨‍💻 Author

**Abdullah Hafiz**  
SwiftUI Developer and Firebase Enthusiast  
