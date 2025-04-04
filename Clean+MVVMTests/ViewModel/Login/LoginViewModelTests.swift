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
    
    func testValidateLogin_shouldUpdateUserNameAndPassword() {
        let mockRepository = MockLoginRepository()
        let viewModel = LoginViewModel(repository: mockRepository)
        
        viewModel.validateLogin()
        assert(viewModel.userName == "teste_user")
        assert(viewModel.password == "1234")
    }
    
    func testUserName_isPublishedCorrectly_afterValidateLogin() {
        // Arrange
        let mockRepository = MockLoginRepository()
        let viewModel = LoginViewModel(repository: mockRepository)
        let expectation = expectation(description: "Credentials should be updated")

        // Act + Observe
        viewModel.$userName
            .dropFirst()
            .sink { value in
                assert(value == "teste_user")
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        viewModel.validateLogin()
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testPassword_isPublishedCorrectly_afterValidateLogin() {
        // Arrange
        let mockRepository = MockLoginRepository()
        let viewModel = LoginViewModel(repository: mockRepository)
        let expectation = expectation(description: "Credentials should be updated")

        // Act + Observe
        viewModel.$password
            .dropFirst()
            .sink { value in
                assert(value == "1234")
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        viewModel.validateLogin()
        wait(for: [expectation], timeout: 1.0)
    }
}
