//
//  HomeView.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    
    var body: some View {
        VStack {
            Button {
                authenticationViewModel.logout()
            } label: {
                Text("Logout")
            }

            
        }
        
    }
}

#Preview {
    HomeView(authenticationViewModel: AuthenticationViewModel())
}
