//
//  GetLoginCredentialsUseCaseTests.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import XCTest
@testable import Clean_MVVM

final class GetLoginCredentialsUseCaseTests: XCTestCase {
    
    func testExecute_shouldReturnMockedCredentials() {
        // Arrange
        let repository = MockLoginRepository()
        let useCase = GetLoginCredentialsUseCase(repository: repository)
        
        // Act
        let result = useCase.execute()
        
        // Assert
        assert(result.username == "teste_user")
        assert(result.password == "1234")
    }
}


