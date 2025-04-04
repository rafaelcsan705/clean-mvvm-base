//
//  GetWelcomeMessageUseCase.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

struct GetWelcomeMessageUseCase {
    let repository: WelcomeRepository
    
    func execute() -> WelcomeMessage {
        return repository.fetchWelcomeMessage()
    }
}
