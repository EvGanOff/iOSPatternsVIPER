//
//  SwitchTableViewCell.swift
//  iOSPatternsVIPER
//
//  Created by Евгений Ганусенко on 1/5/22.
//

import Foundation
import UIKit

class SwitchTableViewCell: SimpleCell {

    static let reuseIdentifier = "SwitchTableViewCell"

    var switchCell: UISwitch = {
        let switchCell = UISwitch()
        return switchCell
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
        contentView.addSubview(switchCell)
        accessoryType = .none
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

// MARK: - SetupHierarchy
    override func setupHierarchy() {
        super.setupHierarchy()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        label.text = nil
        iconContainer.backgroundColor = nil
        switchCell.isOn = false
    }

    public func configurate(model: SettingsSwitchType) {
        label.text = model.title
        iconImageView.image = model.icon
        iconContainer.backgroundColor = model.iconBackgroundColor
        switchCell.isOn = model.isSwitch
    }

// MARK: - SetupLayout
    override func setupLayout() {
        super.setupLayout()
        switchCell.sizeToFit()
        switchCell.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            switchCell.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            switchCell.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}
