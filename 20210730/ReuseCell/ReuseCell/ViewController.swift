//
//  ViewController.swift
//  ReuseCell
//
//  Created by akio0911 on 2021/07/30.
//

import UIKit

class CustomCell: UITableViewCell {
    static var count = 0

    var id = 0

//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//
//        id = Self.count
//
//        Self.count += 1
//
//        print("[\(id)] π΄\(#function)")
//    }

//    override func prepareForReuse() {
//        super.prepareForReuse()
//
//        print("[\(id)] π’\(#function)")
//    }
}

class ViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 100
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell

//        print("[\(cell.id)] π΅\(#function)")

        if indexPath.row % 2 == 0 {
            cell.textLabel?.text = "\(indexPath.row) εΆζ°"
        } else {
            cell.detailTextLabel?.text = "\(indexPath.row) ε₯ζ°"
        }

        return cell
    }
}
