//
//  RegisterViewModel.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import Foundation

final class AuthenticationViewModel: ObservableObject {
    
    private let authenticationRepository: AuthenticationRepository
    @Published var user: User?
    @Published var errorMessege: String?
    
    init(authenticationRepository: AuthenticationRepository = AuthenticationRepository()) {
        self.authenticationRepository = authenticationRepository
    }
    
    func createNewUser(email: String, password: String) {
        authenticationRepository.createnewUser(email: email, password: password) {  result in
            
            switch result {
            case .success(let user):
                self.user = user
            case .failure(let error):
                self.errorMessege = error.localizedDescription
            }
            
        }
    }
}
