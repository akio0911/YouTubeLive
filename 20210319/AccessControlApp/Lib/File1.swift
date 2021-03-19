//
//  File1.swift
//  Lib
//
//  Created by akio0911 on 2021/03/19.
//

import Foundation

open class Repository {
    public init() {}

    internal func fetch1() {}
    public func fetch2() {}
    open func fetch3() {}
}

struct UseCase {
    func f() {
        Repository().fetch1()
        Repository().fetch2()
    }
}
