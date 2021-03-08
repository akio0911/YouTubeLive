//
//  TableViewController.swift
//  20210308CustomCell
//
//  Created by akio0911 on 2021/03/08.
//

import UIKit

struct Item {
    var firstImage: UIImage
    var secondImage: UIImage
    var message: String
}

final class TableViewController: UITableViewController {
    private let items: [Item] = [
        Item(firstImage: UIImage(systemName: "sun.min")!,
             secondImage: UIImage(systemName: "moon")!,
             message: "天気"),
        Item(firstImage: UIImage(systemName: "pencil")!,
             secondImage: UIImage(systemName: "trash")!,
             message: "ツール"),
        Item(firstImage: UIImage(systemName: "keyboard")!,
             secondImage: UIImage(systemName: "tv")!,
             message: "デバイス"),
        Item(firstImage: UIImage(systemName: "car")!,
             secondImage: UIImage(systemName: "bus")!,
             message: "交通"),
        Item(firstImage: UIImage(systemName: "cart")!,
             secondImage: UIImage(systemName: "bag")!,
             message: "コマース"),
    ]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DoubleImageCell
        cell.configure(item: items[indexPath.row])
        return cell
    }
}
