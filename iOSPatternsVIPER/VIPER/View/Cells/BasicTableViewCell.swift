//
//  BasicTableViewCell.swift
//  iOSPatternsVIPER
//
//  Created by Евгений Ганусенко on 1/5/22.
//

import Foundation
import UIKit

class BasicTableViewCell: SimpleCell {

    static let reuseIdentifier = "BasicTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setupHierarchy() {
        super.setupHierarchy()
    }

    override func setupLayout() {
        super.setupLayout()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
        iconImageView.image = nil
        iconContainer.backgroundColor = nil
    }

    public func configurate(model: SettingsOption) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
    }
}
