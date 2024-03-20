//
//  ViewModelType.swift
//  BoardGameSupport
//
//  Created by 禾智 on 2024/3/20.
//

import Foundation

protocol ViewModelType: AnyObject {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
}
