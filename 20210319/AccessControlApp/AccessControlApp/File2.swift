//
//  File2.swift
//  AccessControlApp
//
//  Created by akio0911 on 2021/03/19.
//

import Foundation

struct Type2 {
    private let b = 2

    func f1() {
        Type1().a // privateなのでアクセスできない
    }
}

struct Type4 {
    func f4() {
        Type1().b // fileprivateなのでアクセスできない
    }
}
