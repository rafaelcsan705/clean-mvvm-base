//
//  LoginUseCase.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

struct LoginUseCase {
    let repository: LoginRepository
    
    func execute(credentials: LoginRequest) async throws -> LoginResponse {
        return try await repository.login(with: credentials)
    }
}
