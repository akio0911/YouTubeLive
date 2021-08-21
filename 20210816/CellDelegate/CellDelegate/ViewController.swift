//
//  ViewController.swift
//  CellDelegate
//
//  Created by akio0911 on 2021/08/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell

        cell.delegate = self

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 100
    }


}

extension ViewController: CustomCellDelegate {
    func didTapButton() {

        let second = SecondViewController()
        navigationController?.pushViewController(second, animated: true)

    }
}
