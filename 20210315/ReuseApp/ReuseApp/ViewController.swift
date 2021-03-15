//
//  ViewController.swift
//  ReuseApp
//
//  Created by akio0911youtube on 2021/03/15.
//

import UIKit

class TableViewController: UITableViewController {
    private var items: [String]
        = (0...99).map { "Item \($0)" }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = items[indexPath.row]

//        if indexPath.row % 2 == 0 {
//            cell.detailTextLabel?.text = "偶数"
//        } else {
//            cell.detailTextLabel?.text = ""
//        }

//        cell.detailTextLabel?.text
//            = indexPath.row % 2 == 0 ? "偶数" : ""

        cell.detailTextLabel?.text = {
            if indexPath.row % 2 == 0 {
                return "偶数"
            } else {
                return ""
            }
        }()

        return cell
    }
}

