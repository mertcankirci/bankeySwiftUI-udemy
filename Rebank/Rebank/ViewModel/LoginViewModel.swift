//
//  LoginViewModel.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 19.03.2023.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var users: [User] = [User(username: "user1", password: "pass")]
    
    func login(username: String, password: String) -> Bool {
        
        if username != "" && password != "" {
            for user in users {
                if user.username == username && user.password == password {
                    return true
                }
            }
        }
        return false
    }
}
