import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!

    @IBOutlet weak var resultLabel: UILabel!

//    var total = 0

    @IBAction func didTapCalculationButton() {
        guard let num1 = Int(textField1.text ?? "") else { return }
        guard let num2 = Int(textField2.text ?? "") else { return }

        let total = num1 + num2

        resultLabel.text = String(total)
    }

//    func f1() {
//        total = 0
//    }
//
//    func f2() {
//        total += 10
//    }
//
//    func f3() {
//        total *= 10
//    }
}
