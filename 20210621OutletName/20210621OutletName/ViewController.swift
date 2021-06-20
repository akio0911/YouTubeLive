//
//  ViewController.swift
//  20210621OutletName
//
//  Created by akio0911youtube on 2021/06/21.
//

import UIKit

//class ViewController: UIViewController {
//
//    @IBOutlet weak var number1: UITextField!
//    @IBOutlet weak var number2: UITextField!
//
//    @IBOutlet weak var result: UILabel!
//
//    @IBAction func didTapButton(_ sender: Any) {
//        let value1 = Int(number1.text ?? "") ?? 0
//        let value2 = Int(number2.text ?? "") ?? 0
//
//        let result = value1 + value2
//
//        self.result.text = String(result)
//    }
//}


class ViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!

    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func didTapButton(_ sender: Any) {
        let value1 = Int(number1TextField.text ?? "") ?? 0
        let value2 = Int(number2TextField.text ?? "") ?? 0

        let result = value1 + value2

        resultLabel.text = String(result)
    }
}
