//
//  DismissView.swift
//  swiftLink
//
//  Created by Luis Fernando Sanchez Muñoz on 4/7/24.
//

import SwiftUI

struct DismissView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.gray)
            })
            
        }
    }
}

#Preview {
    DismissView()
}
