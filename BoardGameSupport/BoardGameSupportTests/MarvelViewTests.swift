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

    func testHeroStyleDefault() {
        let heroStyleList = viewModel.output.heroStyleList.value
        let heroStyleDefault = heroStyleList[0]
        XCTAssertEqual(heroStyleDefault, "Aggression")
    }
    
    func testHeroDefault() {
        let heroList = viewModel.output.heroList.value
        let heroDefault = heroList[0]
        XCTAssertEqual(heroDefault, "Spider-Man")
    }
    
    func testVillainLevelDefault() {
        let villainLevelList = viewModel.output.villainLevelList.value
        let villainLevelDefault = villainLevelList[0]
        XCTAssertEqual(villainLevelDefault, "Lv1 -> Lv2")
    }
    
    func testModularSetDefault() {
        let modularSetList = viewModel.output.modularSetList.value
        let modularSet = modularSetList[0]
        XCTAssertEqual(modularSet, "Bomb Scare")
    }
    
    func testVillainDefault() {
        let villainList = viewModel.output.villainList.value
        let villain = villainList[0]
        XCTAssertEqual(villain, "Rhino")
    }
}



