//
//  LoginViewModelTests.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import XCTest
import Combine
@testable import Clean_MVVM

final class LoginViewModelTests: XCTestCase {
    private var cancellables = Set<AnyCancellable>()
    
    func testValidateLogin_shouldUpdateEmailAndPassword() async throws {
        // Arrange
        let mockRepository = MockLoginRepository()
        let viewModel = LoginViewModel(loginRepository: mockRepository)
        viewModel.email = "eve.holt@reqres.in"
        viewModel.password = "cityslicka"
        
        // Act
        try await viewModel.login()
        
        // Assert
        assert(viewModel.token == "MOCK_TOKEN_ON_TESTS")
    }
}
