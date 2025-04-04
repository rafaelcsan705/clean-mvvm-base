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
            HStack {
                Text("Username:")
                    .font(.title2)
                Spacer()
                Text(viewModel.userName)
                    .font(.headline)
            }
            HStack {
                Text("Password:")
                    .font(.title2)
                Spacer()
                Text(viewModel.password)
                    .font(.headline)
            }
        }
        .padding()
        .onAppear {
            viewModel.validateLogin()
        }
    }
}

