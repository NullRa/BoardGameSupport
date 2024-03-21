//
//  MarvelViewTests.swift
//  BoardGameSupportTests
//
//  Created by 禾智 on 2024/3/21.
//

import XCTest
@testable import BoardGameSupport

final class MarvelViewTests: XCTestCase {

    var viewModel: MarvelViewModel!
    
    override func setUpWithError() throws {
        viewModel = MarvelViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }

    func testNameDefault() {
        let index = viewModel.output.index.value
        let testArray = viewModel.output.testArray.value
        let testName = testArray[index]
        XCTAssertNotEqual(testName, nil)
    }
    
    func testIndexDefault() {
        let testIndex = viewModel.output.index.value
        XCTAssertEqual(testIndex, 0)
    }
}



