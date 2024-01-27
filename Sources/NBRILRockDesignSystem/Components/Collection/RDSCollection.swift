//
//  RDSCollection.swift
//  NBRILRockDesignSystem
//
//  Created by Navnit Baldha on 27/01/24.
//

import UIKit

public class RDSCollection: UIViewController {

    // MARK: - Variables
    var collections: [RDSCollectionOption]?
    private var configuration: Configuration
    var bgColor: UIColor
    var onCallBack: ((_ item: RDSCollectionOption) -> Void)?

    // MARK: - Init
    public struct Configuration {
        var cellSize: Int
        var scrollDirection: UICollectionView.ScrollDirection
        var edgeInsets: UIEdgeInsets
        var minimumInteritemSpacing: CGFloat
        var minimumLineSpacing: CGFloat

        // MARK: - Configuration Init
        public init(
            cellSize: Int = Int(RDSSize.CellInput.large.rawValue),
            scrollDirection: UICollectionView.ScrollDirection = .vertical,
            edgeInsets: UIEdgeInsets = UIEdgeInsets(top: RDSSpacing.Smallest, left: RDSSpacing.Smallest, bottom: RDSSpacing.Smallest, right: RDSSpacing.Smallest),
            minimumLineSpacing: CGFloat = RDSSpacing.XXXS,
            minimumInteritemSpacing: CGFloat = RDSSpacing.XXXS
        ) {
            self.cellSize = cellSize
            self.edgeInsets = edgeInsets
            self.scrollDirection = scrollDirection
            self.minimumInteritemSpacing = minimumInteritemSpacing
            self.minimumLineSpacing = minimumLineSpacing
        }
    }

    init(
        collections: [RDSCollectionOption]? = nil,
        bgColor: UIColor = .white,
        configuration: RDSCollection.Configuration,
        onCallBack: ((_ item: RDSCollectionOption) -> Void)? = nil
    ) {
        self.collections = collections
        self.bgColor = bgColor
        self.configuration = configuration
        super.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = .yellow
        addCollectionView()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Helper Functions
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cellSize = CGSize(width: configuration.cellSize, height: configuration.cellSize)
        layout.itemSize = cellSize
        layout.sectionInset = configuration.edgeInsets
        layout.minimumInteritemSpacing = configuration.minimumInteritemSpacing
        layout.minimumLineSpacing = configuration.minimumLineSpacing
        layout.scrollDirection = configuration.scrollDirection
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = bgColor
        return collectionView
    }()

    fileprivate func addCollectionView() {
        view.addSubview(collectionView)
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: RDSCollectionCellName.cellIdentifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
