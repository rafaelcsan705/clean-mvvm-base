//
//  LoginViewModel.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

class LoginViewModel {
    let loginUseCase: GetLoginCredentialsUseCase
    
    var userName: String = "rafaelcsan705"
    var password: String = "teste123_password"
    
    init(repository: LoginRepository = LoginRepositoryImpl()) {
        loginUseCase = GetLoginCredentialsUseCase(repository: repository)
    }
    
    func validateLogin() -> Bool {
        let credentials = loginUseCase.execute()
        return credentials.username == userName && credentials.password == password
    }
}
