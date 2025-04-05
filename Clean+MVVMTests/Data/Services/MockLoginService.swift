//
//  MockLoginService.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 05/04/2025.
//

import XCTest
@testable import Clean_MVVM

final class MockLoginService: LoginService {
    override func loginRequest(request: LoginRequest) async throws -> LoginResponse {
        return LoginResponse(token: "TOKEN_MOCKADO")
    }
}
