//
//  MarvelViewModel.swift
//  BoardGameSupport
//
//  Created by 禾智 on 2024/3/20.
//

import Foundation
import RxSwift
import RxRelay

class MarvelViewModel: ViewModelType {
    private var testArray: [String] = ["default" ,"test1", "test2", "test3", "test4", "test5", "random"]
//    private let testName = BehaviorRelay(value: "self.testArray[0]")
    private let testIndex = BehaviorRelay(value: 0)
    
    private let disposeBag = DisposeBag()
    
    struct Input {}
    
    struct Output {
        let index: BehaviorRelay<Int>
    }
    
    let input: Input
    
    let output: Output
    
    init() {
        self.input = Input()
        self.output = Output(
            index: testIndex
        )
    }
}
