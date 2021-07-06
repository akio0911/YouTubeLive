//
//  ViewController.swift
//  ModalApp
//
//  Created by akio0911youtube on 2021/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()

        textField.text = UserDefaults.standard.string(forKey: "message")
    }

    @IBAction func didTapSaveButton(_ sender: Any) {
        print(#function)

        UserDefaults.standard.set(
            textField.text ?? "",
            forKey: "message"
        )
    }

}
