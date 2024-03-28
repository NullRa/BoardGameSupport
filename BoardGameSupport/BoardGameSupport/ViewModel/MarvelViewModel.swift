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
    private let villainList = BehaviorRelay<[String]>(value: ["Rhino", "Klaw", "Ultron", "Random"])
    
    private let modularSetList = BehaviorRelay<[String]>(value: ["Bomb Scare", "Masters of Evil", "Under Attack", "Legions of Hydra", "The Doomsday Chair", "Random"])
    
    private let villainLevelList = BehaviorRelay<[String]>(value: ["Lv1 -> Lv2", "Lv2 -> Lv3"])
    
    private let heroList = BehaviorRelay<[String]>(value: ["Spider-Man", "Captain Marvel", "She-Hulk", "Iron Man", "Black Panther"])
    
    private let disposeBag = DisposeBag()
    
    struct Input {}
    
    struct Output {
        let villainList: BehaviorRelay<[String]>
        let modularSetList: BehaviorRelay<[String]>
        let villainLevelList: BehaviorRelay<[String]>
        let heroList: BehaviorRelay<[String]>
    }
    
    let input: Input
    
    let output: Output
    
    init() {
        self.input = Input()
        self.output = Output(
            villainList: villainList, 
            modularSetList: modularSetList,
            villainLevelList: villainLevelList,
            heroList: heroList
        )
    }
}
