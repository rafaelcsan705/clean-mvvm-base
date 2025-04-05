//
//  LoginRepository.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

protocol LoginRepository {
    func login(with credentials: LoginRequest) async throws -> LoginResponse
}
