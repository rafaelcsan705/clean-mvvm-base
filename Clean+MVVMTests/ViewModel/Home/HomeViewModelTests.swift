//
//  HomeViewModelTests.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import XCTest
import Combine
@testable import Clean_MVVM

final class HomeViewModelTests: XCTestCase {
    private var cancellables = Set<AnyCancellable>()
    
    func testFetchWelcomeMessage_shouldUpdateWelcomeMessage() {
        let mockWelcomeRepository = MockWelcomeRepository()
        let viewModel = HomeViewModel(repository: mockWelcomeRepository)
        viewModel.loadMessage()
        assert(viewModel.message == "Teste Unitário Welcome Message.")
    }
    
    func testMessage_isPublishedCorrectly_afterLoadMessage() {
        // Arrange
        let mockWelcomeRepository = MockWelcomeRepository()
        let viewModel = HomeViewModel(repository: mockWelcomeRepository)
        let expectation = expectation(description: "Message should be updated")
        
        // Act + Observe
        viewModel.$message
            .dropFirst() // Ignora o valor inicial ""
            .sink { value in
                assert(value == "Teste Unitário Welcome Message.")
                expectation.fulfill()
            }
            .store(in: &cancellables)
        viewModel.loadMessage()
        // Assert
        wait(for: [expectation], timeout: 1.0)
    }
}
