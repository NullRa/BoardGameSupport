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

    func testVillainNameDefault() {
        let villainList = viewModel.output.villainList.value
        let villainName = villainList[0]
        XCTAssertNotEqual(villainName, nil)
    }
}



