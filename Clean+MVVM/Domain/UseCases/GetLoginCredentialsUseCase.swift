//
//  GetLoginCredentialsUseCase.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

struct GetLoginCredentialsUseCase {
    let repository: LoginRepository
    
    func execute() -> LoginCredentials {
        return repository.getLoginCredentials()
    }
}
