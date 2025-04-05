//
//  LoginRepositoryImpl.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import Foundation
import Combine

struct LoginRepositoryImpl: LoginRepository {
    private let service: LoginService
    
    init(service: LoginService = LoginService()) {
        self.service = service
    }
    
    let cancellables = Set<AnyCancellable>()
    func login(with credentials: LoginRequest) async throws -> LoginResponse {
        return try await service.loginRequest(request: credentials)
    }
}
