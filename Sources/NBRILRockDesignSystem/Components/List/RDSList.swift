//
//  RDSList.swift
//  NBRILRockDesignSystem
//
//  Created by Navnit Baldha on 27/01/24.
//

import UIKit

public class RDSList: UITableViewController {

    // MARK: - Variables
    var list: [RDSListOption]?
    private var configuration: Configuration
    var bgColor: UIColor
    var onCallBack: ((_ item: RDSListOption) -> Void)?

    // MARK: - Init
    public struct Configuration {
        var rowHeight: CGFloat
        var separatorStyle: UITableViewCell.SeparatorStyle

        public init(
            rowHeight: CGFloat = RDSSize.CellInput.medium.rawValue,
            separatorStyle: UITableViewCell.SeparatorStyle = .none
        ) {
            self.rowHeight = rowHeight
            self.separatorStyle = separatorStyle
        }
    }

    // MARK: - Configuration Init
    init(
        list: [RDSListOption]? = nil,
        bgColor: UIColor = .white,
        configuration: RDSList.Configuration,
        onCallBack: ((_ item: RDSListOption) -> Void)? = nil
    ) {
        self.list = list
        self.bgColor = bgColor
        self.configuration = configuration
        super.init(nibName: nil, bundle: nil)
        self.configureTableView()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Helper Functions
    private func configureTableView() {
        view.backgroundColor = bgColor
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = configuration.separatorStyle
        tableView.rowHeight = configuration.rowHeight
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: RDSListCellName.cellIdentifier)
    }
}

