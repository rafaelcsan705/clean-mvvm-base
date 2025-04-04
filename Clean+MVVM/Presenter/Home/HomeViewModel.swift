//
//  HomeViewModel.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

class HomeViewModel {
    private let getWelcomeMessageUseCase: GetWelcomeMessageUseCase
    var message: String = ""
    
    init(repository: WelcomeRepository = WelcomeRepositoryImpl()) {
        self.getWelcomeMessageUseCase = GetWelcomeMessageUseCase(repository: repository)
    }
    
    func loadMessage() {
        let welcome = getWelcomeMessageUseCase.execute()
        message = welcome.message
    }
}
