//
//  LoginViewModel.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//
import Combine

class LoginViewModel: ObservableObject {
    let loginUseCase: GetLoginCredentialsUseCase
    
    @Published var userName: String = ""
    @Published var password: String = ""
    
    init(repository: LoginRepository = LoginRepositoryImpl()) {
        loginUseCase = GetLoginCredentialsUseCase(repository: repository)
    }
    
    func validateLogin() {
        let credentials = loginUseCase.execute()
        userName = credentials.username
        password = credentials.password
    }
}
