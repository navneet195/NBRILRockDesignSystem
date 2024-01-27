//
//  RDSListDataSource.swift
//  NBRILRockDesignSystem
//
//  Created by Navnit Baldha on 27/01/24.
//

import UIKit

// MARK: - TableViewDelegate/DataSource
extension RDSList {
    
    // MARK: - Lifecycle

    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list?.count ?? 0
    }

    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RDSListCellName.cellIdentifier, for: indexPath)
        if let dataModel = list?[indexPath.row] {
            cell.textLabel?.text = dataModel.name
        }
        return cell
    }
}
