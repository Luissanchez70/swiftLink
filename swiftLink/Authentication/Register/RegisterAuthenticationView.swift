//
//  RegisterAutenticationView.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import SwiftUI

struct RegisterAuthenticationView: View {
    
    @State var userEmail: String = ""
    @State var userPassword: String = ""
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            DismissView()
            Image("firebaselogo")
                .resizable()
                .scaledToFit()
            Text("Register")
                .frame(width: 250)
                .font(.title)
                .bold()
            
            TextField("register email", text: $userEmail)
                .padding(10)
                .frame(width: 250)
                .keyboardType(.emailAddress)
                .border(Color.gray)
                
            SecureField("create password", text: $userPassword)
                .padding(10)
                .frame(width: 250)
                .keyboardType(.default)
                .border(Color.gray)
            
            Button(action: {
                authenticationViewModel.createNewUser(email: userEmail, password: userPassword)
            }, label: {
                Text("Register email")
            })
            Spacer()
        }
        .padding()
    }
}

#Preview {
    RegisterAuthenticationView(authenticationViewModel: AuthenticationViewModel())
}