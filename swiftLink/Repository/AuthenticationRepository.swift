//
//  AuthenticationRepository.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import Foundation

final class AuthenticationRepository {
    
    private let authenticationFirebaseResource: AuthenticationFirebaseResourse
    
    init(authenticationFirebaseResource: AuthenticationFirebaseResourse = AuthenticationFirebaseResourse()) {
        self.authenticationFirebaseResource = authenticationFirebaseResource
    }
    
    func getCurrentUser() -> User? {
        authenticationFirebaseResource.getCurrentUser()
    }
    
    func createnewUser(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
        authenticationFirebaseResource.createNuewUser(email: email, password: password, completion: completion)
    }
    
    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        
        authenticationFirebaseResource.login(email: email, password: password, completion: completion)
    }
    
    func logout() throws {
        try authenticationFirebaseResource.logout()
    }
}
