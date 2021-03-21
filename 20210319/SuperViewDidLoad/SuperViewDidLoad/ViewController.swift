//
//  ViewController.swift
//  SuperViewDidLoad
//
//  Created by akio0911youtube on 2021/03/19.
//

import UIKit

// UIViewController -> ViewController -> SubViewController

class ViewController: UIViewController {
    var number1 = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        print("ViewController", #function)
        number1 = 10
        print("number1: \(number1)")
    }
}

class SubViewController: ViewController {
    var number2 = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        print("SubViewController", #function)
        number2 = 20
        print("number1: \(number1)")
        print("number2: \(number2)")
    }
}
