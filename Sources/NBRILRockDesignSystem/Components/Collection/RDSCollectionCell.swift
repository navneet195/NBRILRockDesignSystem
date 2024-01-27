//
//  RDSCollectionCell.swift
//  NBRILRockDesignSystem
//
//  Created by Navnit Baldha on 27/01/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variables
    private var storeBack = UIView()
    var nameLabel = UILabel()

    // MARK: - Init
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    // MARK: - Helper Functions
    fileprivate func commonInit() {
        contentView.addSubview(storeBack)
        storeBack.backgroundColor = UIColor.blue
        storeBack.translatesAutoresizingMaskIntoConstraints = false
        storeBack.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        storeBack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        storeBack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        storeBack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        storeBack.addSubview(nameLabel)
        nameLabel.textColor = .white
        nameLabel.textAlignment = .center
        nameLabel.numberOfLines = 0
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: storeBack.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: storeBack.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: storeBack.trailingAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: storeBack.bottomAnchor).isActive = true
    }
}
