//
//  ViewController.swift
//  CocoaMVC
//
//  Created by akio0911youtube on 2021/03/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countLabel: UILabel!

    private let counterModel = CounterModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(
            forName: .counterModelDidChangeCount,
            object: nil,
            queue: OperationQueue.main,
            using: { [weak self] _ in
                self?.updateCountLabel()
            }
        )
    }

    private func updateCountLabel() {
        countLabel.text = String(counterModel.count)
    }

    @IBAction func inc(_ sender: Any) {
        counterModel.increase()
    }

    @IBAction func dec(_ sender: Any) {
        counterModel.decrease()
    }
}

extension Notification.Name {
    static let counterModelDidChangeCount
        = Notification.Name("CounterModel.didChangeCount")
}

class CounterModel {
    private(set) var count = 0

    func increase() {
        count += 1
        notify()
    }

    func decrease() {
        count -= 1
        notify()
    }

    private func notify() {
        NotificationCenter.default.post(
            name: .counterModelDidChangeCount,
            object: nil
        )
    }
}
