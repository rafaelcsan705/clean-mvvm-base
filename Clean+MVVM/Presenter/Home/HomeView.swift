//
//  HomeView.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//
import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.message)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
        }
        .onAppear {
            viewModel.loadMessage()
        }
    }
}
