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
    
    private let disposeBag = DisposeBag()
    
    struct Input {
        let villainIndex: AnyObserver<Int>
    }
    
    struct Output {
        let villainList: BehaviorRelay<[String]>
        let modularSetList: BehaviorRelay<[String]>
        let villainLevelList: BehaviorRelay<[String]>
        let heroList: BehaviorRelay<[String]>
        let heroStyleList: BehaviorRelay<[String]>
        let villainIndex: BehaviorRelay<Int>
    }
    
    let input: Input
    
    let output: Output
    
    private let villainList = BehaviorRelay<[String]>(value: ["Rhino", "Klaw", "Ultron", "Random"])
    private let modularSetList = BehaviorRelay<[String]>(value: ["Bomb Scare", "Masters of Evil", "Under Attack", "Legions of Hydra", "The Doomsday Chair", "Random"])
    private let villainLevelList = BehaviorRelay<[String]>(value: ["Lv1 -> Lv2", "Lv2 -> Lv3"])
    private let heroList = BehaviorRelay<[String]>(value: ["Spider-Man", "Captain Marvel", "She-Hulk", "Iron Man", "Black Panther", "Random"])
    private let heroStyleList = BehaviorRelay<[String]>(value: ["Aggression", "Leadership", "Protection", "Justice", "Random"])
    private let villainIndex = BehaviorRelay<Int>(value: 0)
    
    private let villainIndexSub = PublishSubject<Int>()
    
    init() {
        self.input = Input(
            villainIndex: villainIndexSub.asObserver()
        )
        self.output = Output(
            villainList: villainList, 
            modularSetList: modularSetList,
            villainLevelList: villainLevelList,
            heroList: heroList,
            heroStyleList: heroStyleList,
            villainIndex: villainIndex
        )
        
        self.binding()
    }
    
    private func binding() {
        villainIndexSub
            .subscribe(onNext: { [weak self] index in
                guard let self = self else { return }
                self.villainIndex.accept(index)
            })
            .disposed(by: self.disposeBag)
    }
    
    func changeVillain(index: Int){
        self.villainIndexSub.onNext(index)
    }
}
