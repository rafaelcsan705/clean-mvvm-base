//
//  LoginRepositoryTests.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 05/04/2025.
//

import XCTest
@testable import Clean_MVVM

final class LoginRepositoryTests: XCTestCase {
    
    func testLogin_shouldReturnExpectedMockToken() async throws {
        // Arrange
        let service = MockLoginService()
        let repository = LoginRepositoryImpl(service: service)
        let credentials = LoginRequest(email: "test@example.com", password: "123456")
        
        // Act
        let response = try await repository.login(with: credentials)
        // Assert
        print("Rafael - Token: \(response.token)")
        assert(response.token == "TOKEN_MOCKADO")
    }
    
    
    func testLogin_shouldReturnExpectedRealTokenWithSuccess() async throws {
        // Arrange
        let repository = LoginRepositoryImpl()
        let credentials = LoginRequest(email: "eve.holt@reqres.in", password: "cityslicka")
        
        // Act
        let response = try await repository.login(with: credentials)
        // Assert
        print("Rafael - Token: \(response.token)")
        assert(response.token == "QpwL5tke4Pnpja7X4")
    }
}
