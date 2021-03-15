//
//  CustomCell.swift
//  TableViewHide
//
//  Created by akio0911youtube on 2021/03/12.
//

import UIKit

class CustomCell: UITableViewCell {

    private var didTapHideButtonHandler: () -> Void = {}

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet private weak var hideButton: UIButton!

    @IBAction func didTapHideButton(_ sender: Any) {
        didTapHideButtonHandler()
    }

    func configure(name: String,
                   isHidden: Bool,
                   didTapHideButton: @escaping () -> Void) {

        nameLabel.text = name
        nameLabel.isHidden = isHidden
        hideButton.setTitle(isHidden ? "表示" : "非表示", for: .normal)
        didTapHideButtonHandler = didTapHideButton
    }
}
