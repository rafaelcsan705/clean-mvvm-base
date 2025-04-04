//
//  GetWelcomeMessageUseCaseTest.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import XCTest
@testable import Clean_MVVM

private final class GetWelcomeMessageUseCaseTest: XCTestCase {
    
    func testExecuteShouldWelcomeMessage() {
        // Arrange
        let repository = MockWelcomeRepository()
        let useCase = GetWelcomeMessageUseCase(repository: repository)
        
        // Act
        let result = useCase.execute()
        
        // Assert
        assert(result.message == "Teste Unitário Welcome Message.")
    }
}
