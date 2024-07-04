//
//  AutenticationFirebaseResourse.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
/*
   Logica para crear un usuario en firebase
 */

import Foundation
import FirebaseAuth

final class AuthenticationFirebaseResourse {
    
    func getCurrentUser() -> User? {
        
        guard let email = Auth.auth().currentUser?.email else {
            return nil
        }
        return User(email: email)
    }
    
    func createNuewUser(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                return completion(.failure(error))
            }
            
            let email = authResult?.user.email ?? "No email"
            completion(.success(User(email: email)))
        }
    }
    
    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                return completion(.failure(error))
            }
            
            let email = authResult?.user.email ?? "No email"
            completion(.success(User(email: email)))
        }
    }
    
    func logout() throws {
        try Auth.auth().signOut()
    }
}
