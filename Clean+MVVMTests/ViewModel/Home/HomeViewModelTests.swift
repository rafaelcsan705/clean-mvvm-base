//
//  HomeViewModelTests.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import XCTest
@testable import Clean_MVVM

final class HomeViewModelTests: XCTestCase {
    
    func testfetchWelcomeMessage_shouldUpdateWelcomeMessage() {
        let mockWelcomeRepository = MockWelcomeRepository()
        let viewModel = HomeViewModel(repository: mockWelcomeRepository)
        viewModel.loadMessage()
        XCTAssertEqual(viewModel.message, "Teste Unitário Welcome Message.")
    }
}
