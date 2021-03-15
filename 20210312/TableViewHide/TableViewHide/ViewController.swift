//
//  ViewController.swift
//  TableViewHide
//
//  Created by akio0911youtube on 2021/03/12.
//

import UIKit

struct Item {
    var name: String
    var isHidden: Bool
}

class ViewController: UITableViewController {
//    private var items: [Item]
//        = ["リンゴ", "バナナ", "みかん", "オレンジ"]
//            .map { Item(name: $0, isHidden: false) }

    private var items: [Item]
        = (1...5)
            .map {
                Item(name: String($0), isHidden: false)
            }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        let item = items[indexPath.row]
        cell.configure(
            name: item.name,
            isHidden: item.isHidden,
            didTapHideButton: { [weak self] in
                self?.didTapHideButton(indexPath: indexPath)
            }
        )
        return cell
    }

    private func didTapHideButton(indexPath: IndexPath) {
        items[indexPath.row].isHidden.toggle()

        tableView.reloadRows(
            at: [indexPath],
            with: .automatic
        )
    }
}
