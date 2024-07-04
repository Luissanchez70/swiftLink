//
//  LoginAutenticationView.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import SwiftUI

struct LoginAuthenticationView: View {
    
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @State var userEmail: String = ""
    @State var userPassword: String = ""

    var body: some View {
        VStack {
            DismissView(authenticationViewModel: authenticationViewModel)
            Image("firebaselogo")
                .resizable()
                .scaledToFit()
            
            Text("Login")
                .font(.title)
                .bold()
           
            TextField("user email", text: $userEmail)
                .padding(10)
                .frame(width: 250)
                .keyboardType(.emailAddress)
                .border(Color.gray)
            
            SecureField("user email", text: $userPassword)
                .padding(10)
                .frame(width: 250)
                .keyboardType(.emailAddress)
                .border(Color.gray)
               
            Button(action: {
                authenticationViewModel.login(email: userEmail, password: userPassword)
            }, label: {
                Text("Login with email").padding()
            })
            .frame(width: 250)
            .tint(Color.white)
            .background(.orange)
            .cornerRadius(10)
            
            if let error = authenticationViewModel.errorMessege {
                Text(error)
                    .foregroundStyle(.red)
                    .bold()
            }
            
            Spacer()
            
        }.padding()
    }
}

#Preview {
    LoginAuthenticationView(authenticationViewModel: AuthenticationViewModel())
}
