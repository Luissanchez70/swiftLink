//
//  LoginAutenticationView.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import SwiftUI

struct LoginAuthenticationView: View {
    @State var userEmail: String = ""
    @State var userPassword: String = ""

    var body: some View {
        VStack {
            DismissView()
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
                .onChange(of: userEmail) {
                    print(userEmail)
                }
            SecureField("user email", text: $userPassword)
                .padding(10)
                .frame(width: 250)
                .keyboardType(.emailAddress)
                .border(Color.gray)
                .onChange(of: userPassword) {
                    print(userPassword)
                }
            Button(action: {
                print("login")
            }, label: {
                Text("Login email")
            })
            Spacer()
            
        }.padding()
    }
}

#Preview {
    LoginAuthenticationView()
}
