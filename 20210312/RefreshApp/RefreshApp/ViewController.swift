//
//  ViewController.swift
//  RefreshApp
//
//  Created by akio0911 on 2021/03/12.
//

import UIKit

struct Item {
    var name: String
}

final class ViewController: UIViewController {
    private let refreshControl = UIRefreshControl()
    private var items: [Item] = []

    @IBOutlet private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.refreshControl = refreshControl
        refreshControl.addTarget(
            self,
            action: #selector(refresh),
            for: .valueChanged
        )

        items = makeItems()
    }

    @objc func refresh() {
        DispatchQueue.main.asyncAfter(
            deadline: .now() + 2,
            execute: { [weak self] in
                self?.refreshTableView()
            }
        )
    }

    private func refreshTableView() {
        items = makeItems()
//        items = items + [Item(name: "リンゴ")]
        tableView.reloadData()
        refreshControl.endRefreshing()
    }

    private func makeItems() -> [Item] {
        let fruits = [
            Item(name: "りんご"),
            Item(name: "バナナ"),
            Item(name: "みかん"),
            Item(name: "オレンジ"),
            Item(name: "パイナップル")
        ]

        return fruits.shuffled()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        return cell
    }
}
