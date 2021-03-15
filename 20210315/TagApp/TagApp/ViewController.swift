//
//  ViewController.swift
//  TagApp
//
//  Created by akio0911youtube on 2021/03/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

//        if let label1 = view.viewWithTag(1) as? UILabel {
//            label1.text = "labal 1"
//        }
//
//        if let label2 = view.viewWithTag(2) as? UILabel {
//            label2.text = "labal 2"
//        }
//
//        if let label3 = view.viewWithTag(3) as? UILabel {
//            label3.text = "labal 3"
//        }

        label1.text = "label 1"
        label2.text = "label 2"
        label3.text = "label 3"
    }
}
