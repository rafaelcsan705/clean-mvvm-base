//
//  LoginViewModel.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//
import Combine

class LoginViewModel: ObservableObject {
    let loginUseCase: LoginUseCase
    
    @Published var email: String = ""
    @Published var password: String = ""
    var token = ""
    
    init(loginRepository: LoginRepository = LoginRepositoryImpl()) {
        loginUseCase = LoginUseCase(repository: loginRepository)
    }
    
    func login() async throws {
        let credentials = LoginRequest(email: email, password: password)
        let value = try await loginUseCase.execute(credentials: credentials)
        token = value.token
        print("Rafael - Token: \(token)")
    }
}
