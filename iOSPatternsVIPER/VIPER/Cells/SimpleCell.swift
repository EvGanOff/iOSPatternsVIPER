//
//  SimpleCell.swift
//  iOSPatternsVIPER
//
//  Created by Евгений Ганусенко on 1/5/22.
//

import Foundation
import UIKit

class SimpleCell: UITableViewCell {

    var iconContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.layer.cornerRadius = Cell.containerCornerRadius
        return view
    }()

    var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        return imageView
    }()

    var label: UILabel = {
        let labal = UILabel()
        labal.numberOfLines = 1
        return labal
    }()
// MARK: - SetupHierarchy

    func setupHierarchy() {
        contentView.addSubview(label)
        contentView.addSubview(iconContainer)
        iconContainer.addSubview(iconImageView)
    }

// MARK: - SetupLayout
    func setupLayout() {
        let containerSize: CGFloat = contentView.frame.size.height - Cell.iconContainer
        iconContainer.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            iconContainer.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: Cell.iconContainerLeft),
            iconContainer.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconContainer.widthAnchor.constraint(equalToConstant: containerSize),
            iconContainer.heightAnchor.constraint(equalToConstant: containerSize),

            iconImageView.centerXAnchor.constraint(equalTo: iconContainer.centerXAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: containerSize * Cell.iconSize),
            iconImageView.heightAnchor.constraint(equalToConstant: containerSize * Cell.iconSize),

            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            label.leftAnchor.constraint(equalTo: iconContainer.rightAnchor, constant: Cell.labelLeft)
        ])
    }
}
