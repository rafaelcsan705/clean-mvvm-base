//
//  WelcomeRepositoryImpl.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

struct WelcomeRepositoryImpl: WelcomeRepository {
    func fetchWelcomeMessage() -> WelcomeMessage {
        return WelcomeMessage(message: "Olá, Rafael! Bem-vindo de volta 👋")
    }
}
