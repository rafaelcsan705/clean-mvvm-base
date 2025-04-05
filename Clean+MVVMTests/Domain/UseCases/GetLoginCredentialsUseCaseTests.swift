//
//  GetLoginCredentialsUseCaseTests.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import XCTest
@testable import Clean_MVVM

final class GetLoginCredentialsUseCaseTests: XCTestCase {
    func testExecute_shouldReturnMockedCredentials() async throws {
        // Arrange
        let repository = MockLoginRepository()
        let useCase = LoginUseCase(repository: repository)
        let credentials = LoginRequest(email: "teste_user", password: "1234")
        
        // Act
        let result = try await useCase.execute(credentials: credentials)
        
        // Assert
        assert(result.token == "MOCK_TOKEN_ON_TESTS")
    }
}
