//
//  HomeTests.swift
//  BoardGameSupportTests
//
//  Created by 禾智 on 2024/3/20.
//

import XCTest
@testable import BoardGameSupport

final class DonateTests: XCTestCase {

//    var viewModel: DonateViewModel!
    
    override func setUpWithError() throws {
//        viewModel = DonateViewModel()
    }

    override func tearDownWithError() throws {
//        viewModel = nil
    }
    
//    func addQuantity(times: Int) {
//        for _ in 1...times {
//            viewModel.input.add.onNext(())
//        }
//    }
//    
//    func testCurrentPage(){
//        let page = viewModel.output.currentPage.value
//        
//        XCTAssertEqual(page, 0)
//    }
//    
//    func testNumberOfPagesDefaults(){
//        let pages = viewModel.output.numberOfPages.value
//        
//        XCTAssertEqual(pages, 3)
//    }
//    
//    func testBalanceDefault() {
//        let balance = viewModel.output.balance.value
//        
//        XCTAssertEqual(balance, "19834.15")
//    }
//    
//    func testTapBalanceRefresh() {
//        viewModel.input.tapRefreshBalance.onNext(())
//        let loading = viewModel.output.balanceLoading.value
//        
//        XCTAssertEqual(loading, true)
//    }
//    
//    func testBalanceLoadingDefault() {
//        let loading = viewModel.output.balanceLoading.value
//        
//        XCTAssertEqual(loading, false)
//    }
//    
//    func testTotalPriceDeleteQuantity() {
//        viewModel.input.selectedIndex.onNext(1)
//        viewModel.input.delete.onNext(())
//        let totalPrice = viewModel.output.totalPrice.value
//        
//        XCTAssertEqual(totalPrice, 750)
//    }
//    
//    func testTotalPriceAddQuantity() {
//        viewModel.input.selectedIndex.onNext(1)
//        viewModel.input.add.onNext(())
//        let totalPrice = viewModel.output.totalPrice.value
//        
//        XCTAssertEqual(totalPrice, 1500)
//    }
//    
//    func testTotalPriceChnageQuantity() {
//        viewModel.input.selectedIndex.onNext(1)
//        //後台更新價格後會出現selectedIndex重置為nil的情況
//        guard let index = viewModel.output.selectedIndex.value,
//              let price = viewModel.output.list.value[index]?.donateItemPrice?.doubleValue else {
//            let totalPrice = viewModel.output.totalPrice.value
//            XCTAssertEqual(totalPrice, 0.0)
//            return
//        }
//        viewModel.input.quantity.onNext("1")
//        let quantity = Double(viewModel.output.quantity.value)
//        let totalPrice = viewModel.output.totalPrice.value
//        
//        XCTAssertEqual(totalPrice, quantity*price)
//    }
//    
//    func testTotalPriceDefault() {
//        let totalPrice = viewModel.output.totalPrice.value
//        
//        XCTAssertEqual(totalPrice, 0)
//    }
//    
//    func testListDefault(){
//        let listCount = viewModel.output.list.value.count
//        
//        XCTAssertEqual(listCount != 0, true)
//    }
//    
//    func testChangeSelectedIndex(){
//        viewModel.input.selectedIndex.onNext(5)
//        let index = viewModel.output.selectedIndex.value
//        
//        XCTAssertEqual(index, 5)
//    }
//    
//    func testSelectedIndexDefault(){
//        let index = viewModel.output.selectedIndex.value
//        
//        XCTAssertEqual(index, nil)
//    }
//    
//    func testChangeQuantityException() {
////        viewModel.input.quantity.onNext("100")
////        viewModel.input.quantity.onNext("test!@#^- -%")
//        viewModel.input.quantity.onNext("-100")
//        let quantity = viewModel.output.quantity.value
//        
//        XCTAssertEqual(quantity, 1)
//    }
//    
//    func testChangeQuantity() {
//        viewModel.input.quantity.onNext("100")
//        let quantity = viewModel.output.quantity.value
//        
//        XCTAssertEqual(quantity, 100)
//    }
//    
//    func testQuantityNotGreaterThanMax() {
//        addQuantity(times: 100000)
//        let quantity = viewModel.output.quantity.value
//        
//        XCTAssertEqual(quantity, 9999)
//    }
//    
//    func testQuantityNotNegativeNumber() {
//        viewModel.input.delete.onNext(())
//        let quantity = viewModel.output.quantity.value
//        
//        XCTAssertEqual(quantity, 1)
//    }
//    
//    func testQuantityOne() {
//        addQuantity(times: 1)
//        let quantity = viewModel.output.quantity.value
//        
//        XCTAssertEqual(quantity, 2)
//    }
//    
//    func testQuantityDefault() {
//        let quantity = viewModel.output.quantity.value
//        
//        XCTAssertEqual(quantity, 1)
//    }
}
