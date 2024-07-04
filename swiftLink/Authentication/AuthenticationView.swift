//
//  ContentView.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import SwiftUI

enum AuthenticationSheet: String, Identifiable {
    case login, register
    
    var id: String {
        rawValue
    }
}

struct AuthenticationView: View {
    @State var authenticationSheet: AuthenticationSheet?
    
    var body: some View {
        VStack {
            Image("firebaselogo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
          
            Button {
                authenticationSheet = .login
            } label: {
                Label("Accede con Email", systemImage: "envelope.fill")
                Spacer()
            }.tint(.white)
            .bold()
            .frame(width: 250)
            .padding(10)
            .background(Color.yellow)
            .cornerRadius(10)
            

            Button {
                authenticationSheet = .register
            } label: {
                Label("Registrarse con Email", systemImage: "envelope.fill")
                Spacer()
            }.tint(.white)
            .bold()
            .frame(width: 250)
            .padding(10)
            .background(Color.orange)
            .cornerRadius(10)
            
            Spacer()
        }.sheet(item: $authenticationSheet) { sheet in
            switch sheet {
            case .login:
                LoginAuthenticationView()
            case .register:
                RegisterAuthenticationView(authenticationViewModel: AuthenticationViewModel())
            }
        }
    }
}

#Preview {
    AuthenticationView()
}

