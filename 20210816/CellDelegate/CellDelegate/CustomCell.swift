//
//  CustomCell.swift
//  CellDelegate
//
//  Created by akio0911 on 2021/08/12.
//

import UIKit

protocol CustomCellDelegate: AnyObject {
    func didTapButton()
}

class CustomCell: UITableViewCell {
    weak var delegate: CustomCellDelegate?

    @IBAction func didTapButton(_ sender: Any) {
        delegate?.didTapButton()
    }
}



