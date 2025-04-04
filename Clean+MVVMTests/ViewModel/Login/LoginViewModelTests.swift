//
//  LoginViewModelTests.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import XCTest
@testable import Clean_MVVM

final class LoginViewModelTests: XCTestCase {
    func testValidateLogin_shouldUpdateUserNameAndPassword() {
        let mockRepository = MockLoginRepository()
        let viewModel = LoginViewModel(repository: mockRepository)
        
        viewModel.validateLogin()
        
        XCTAssertEqual(viewModel.userName, "teste_user")
        XCTAssertEqual(viewModel.password, "1234")
    }
}
