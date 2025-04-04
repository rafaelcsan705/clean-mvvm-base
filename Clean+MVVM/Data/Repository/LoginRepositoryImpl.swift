//
//  LoginRepositoryImpl.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

struct LoginRepositoryImpl: LoginRepository {
    func getLoginCredentials() -> LoginCredentials {
        return LoginCredentials(username: "rafaelcsan705", password: "teste123_password")
    }
}
