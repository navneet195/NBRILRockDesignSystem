//
//  RDSCollectionDataSource.swift
//  NBRILRockDesignSystem
//
//  Created by Navnit Baldha on 27/01/24.
//

import UIKit

// MARK: - UICollectionViewDelegate/DataSource
extension RDSCollection: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RDSCollectionCellName.cellIdentifier, for: indexPath) as? CollectionViewCell {
            if let dataModel = collections?[indexPath.row] {
                cell.nameLabel.text = dataModel.name
            }
            return cell
        }
        return UICollectionViewCell()
    }

    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collections?.count ?? 0
    }
}

extension RDSCollection: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
}
