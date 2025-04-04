//
//  MockLoginRepository.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//
@testable import Clean_MVVM

class MockLoginRepository: LoginRepository {
    func getLoginCredentials() -> LoginCredentials {
        return LoginCredentials(username: "teste_user", password: "1234")
    }
}
