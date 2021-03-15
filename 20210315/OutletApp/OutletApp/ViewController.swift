//
//  ViewController.swift
//  OutletApp
//
//  Created by akio0911 on 2021/03/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label999: UILabel!

}

class SecondViewController: UIViewController {

    @IBOutlet var labels: [UILabel]!

    override func viewDidLoad() {
        super.viewDidLoad()

        for label in labels {
            label.text = "Hello"
        }

        labels[0].text = "Hello"
        labels[1].text = "Hello"
        labels[2].text = "Hello"
    }
}
