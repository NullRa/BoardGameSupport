//
//  ExtensionString.swift
//  BoardGameSupport
//
//  Created by 禾智 on 2024/3/28.
//

import Foundation

extension String {
    /// 设置多语言
    var lc: String {
        return NSLocalizedString(self, comment: "")
    }
}
