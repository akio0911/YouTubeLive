//
//  File1.swift
//  AccessControlApp
//
//  Created by akio0911 on 2021/03/19.
//

import Foundation
import Lib

struct Type1 {
    private let a = 1
    fileprivate let b = 1

    func f1() {
        print(a)
        print(b)
    }
}

struct Type3 {
    func f3() {
        Type1().a
        Type1().b // fileprivateなのでアクセスできる

        Repository().fetch1()
        Repository().fetch2()
    }
}

class CustomRepository: Repository {
    override func fetch2() {
    }

    override func fetch3() {
    }
}
