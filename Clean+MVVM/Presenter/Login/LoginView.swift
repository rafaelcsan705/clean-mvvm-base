//
//  LoginView.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            TextField(text: $viewModel.email) {
                Text("Email:")
                    .font(.title2)
            }
            
            TextField(text: $viewModel.password) {
                Text("Password:")
                    .font(.title2)
            }
        }
        .padding()
    }
}

