//
//  HomeViewModel.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//
import Foundation
import Combine

class HomeViewModel: ObservableObject {
    private let getWelcomeMessageUseCase: GetWelcomeMessageUseCase
    @Published var message: String = ""
    
    init(repository: WelcomeRepository = WelcomeRepositoryImpl()) {
        self.getWelcomeMessageUseCase = GetWelcomeMessageUseCase(repository: repository)
        loadMessage()
    }
    
    func loadMessage() {
        let welcome = getWelcomeMessageUseCase.execute()
        message = welcome.message
    }
}
