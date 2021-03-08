//
//  DoubleImageCell.swift
//  20210308CustomCell
//
//  Created by akio0911 on 2021/03/08.
//

import UIKit

final class DoubleImageCell: UITableViewCell {
    
    @IBOutlet private weak var firstImageView: UIImageView!
    @IBOutlet private weak var secondImageView: UIImageView!
    @IBOutlet private weak var messageLabel: UILabel!

    func configure(item: Item) {
        firstImageView.image = item.firstImage
        secondImageView.image = item.secondImage
        messageLabel.text = item.message
    }
}
