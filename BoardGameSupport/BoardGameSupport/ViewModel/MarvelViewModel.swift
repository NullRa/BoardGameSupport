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
    private let villainList = BehaviorRelay<[String]>(value: ["Rhino", "Klaw", "Ultron", "random"])
    
    private let disposeBag = DisposeBag()
    
    struct Input {}
    
    struct Output {
        let villainList: BehaviorRelay<[String]>
    }
    
    let input: Input
    
    let output: Output
    
    init() {
        self.input = Input()
        self.output = Output(
            villainList: villainList
        )
    }
}
