//
//  NSObject++.swift
//
//  Created by 박신영
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}
