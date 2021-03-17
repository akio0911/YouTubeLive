//
//  ViewController.swift
//  ActionApp
//
//  Created by akio0911 on 2021/03/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        print(button.actions(forTarget: self, forControlEvent: .touchUpInside))
//
//        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
//
//        print(button.actions(forTarget: self, forControlEvent: .touchUpInside))
    }

    @IBAction func didTapButton(_ sender: Any) {
        print(#function)
    }
}
