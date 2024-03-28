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

    func testVillainLevelDefault() {
        let villainLevelDefault = ""
        XCTAssertEqual(villainLevelDefault, "Lv1 -> Lv2")
    }
    
    func testModularSetDefault() {
        let modularSetList = viewModel.output.modularSetList.value
        let modularSet = modularSetList[0]
        XCTAssertNotEqual(modularSet, nil)
    }
    
    func testVillainDefault() {
        let villainList = viewModel.output.villainList.value
        let villain = villainList[0]
        XCTAssertNotEqual(villain, nil)
    }
}



