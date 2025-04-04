//
//  MockWelcomeRepository.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

@testable import Clean_MVVM

class MockWelcomeRepository: WelcomeRepository {
    func fetchWelcomeMessage() -> WelcomeMessage {
        return WelcomeMessage(message: "Teste Unitário Welcome Message.")
    }
}
