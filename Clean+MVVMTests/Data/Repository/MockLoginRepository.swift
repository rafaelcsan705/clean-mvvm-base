//
//  MockLoginRepository.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//
@testable import Clean_MVVM

class MockLoginRepository: LoginRepository {
    func login(with credentials: LoginRequest) -> LoginResponse {
        return LoginResponse(token: "MOCK_TOKEN_ON_TESTS")
    }
}

