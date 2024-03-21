//
//  HomeViewModel.swift
//  BoardGameSupport
//
//  Created by 禾智 on 2024/3/20.
//

import Foundation
import RxSwift

class HomeViewModel: ViewModelType {
    
    private let disposeBag = DisposeBag()
    
    struct Input {
        let tapMarvelBtn: AnyObserver<Void>
    }
    
    struct Output {
        let tapMarvelBtnAction: Observable<Void>
    }
    
    let input: Input
    let output: Output
    
    private let tapMarvelBtnSub = PublishSubject<Void>()
    
    init() {
        self.input = Input(
            tapMarvelBtn: tapMarvelBtnSub.asObserver()
        )
        self.output = Output(
            tapMarvelBtnAction: tapMarvelBtnSub.asObserver()
        )
        self.binding()
    }
    
    private func binding() {
        tapMarvelBtnSub
            .subscribe(onNext: { _ in
                print("test")
            })
            .disposed(by: disposeBag)
    }
}
