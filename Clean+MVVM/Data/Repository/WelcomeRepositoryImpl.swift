//
//  WelcomeRepositoryImpl.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

protocol WelcomeRepository {
    func fetchWelcomeMessage() -> WelcomeMessage
}

struct WelcomeRepositoryImpl: WelcomeRepository {
    let repository: WelcomeRepository
    
    func fetchWelcomeMessage() -> WelcomeMessage {
        return repository.fetchWelcomeMessage()
    }
}
