//
//  Dynamic.swift
//  MVVM-KVO-Swift
//
//  Created by Dhaval Trivedi on 16/01/20.
//  Copyright © 2020 Dhaval Trivedi. All rights reserved.
//

import Foundation

class Dynamic<T> {
    typealias Observer = (T) -> ()
    var observers:[Observer] = []
    var value:T {
        didSet {
            observers.forEach{
                $0(value)
            }
        }
    }
    init(_ value: T) {
        self.value = value
    }
    func bind(_ observer: @escaping Observer) {
        self.observers.append(observer)
    }
}
