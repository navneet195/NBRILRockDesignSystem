# NBRILRockDesignSystem

A description of this package.

Easy and tidy way for creating custom UITableview and Collectionview components for iOS.

- Reused both UITableview and CollectionView component on your project and get callback on any selection on cell and more custize this package as well base on user action.
```swift
    var onCallBack: ((_ item: RDSCollectionOption) -> Void)?
```

##Requirements
- iOS v15.0
- Xcode 14.2 (Use pod version 1.0.0 for Xcode 14.2)

Dependencies declare of the packages that this package depends on.
- .package(url: "https://github.com/navneet195/NBRILRockDesignSystem", from: "1.0.0"),

## Installation

> **Embedded frameworks require a minimum deployment target of iOS 15.0**
https://github.com/navneet195/NBRILRockDesignSystem
---

## Usage

### 1. Create a custom transitioning delegate object

- SimpleTransitioningDelegate

If you want your reusable Tableview use this below code

```swift
    private let listVC = RDSList(
        list: preview, ///set  dynamic data structure model here
        bgColor: .white, /// set tableview background color
        configuration: .init( /// custom cell properties configuration
            rowHeight: 54, /// set rowHeight value
            separatorStyle: .singleLine /// set separatorStyle value
        )
    ) { model in
    /// callback method on selection
}
```

If you want your reusable CollectionView use this below code

```swift
    private let collectionVC = RDSCollection(
        collections: RDSCollectionOption.preview(),
        bgColor: .white, /// set tableview background color
        configuration: .init( /// custom cell properties configuration
            cellSize: 120, /// set cellSize value
            scrollDirection: .vertical, /// set vertical or horizotal
            edgeInsets: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10), /// set edgeInsets value
            minimumLineSpacing: 10, /// set minimumLineSpacing with CGFloat value
            minimumInteritemSpacing: 10 /// set minimumInteritemSpacing with CGFloat value
        )
    )
```


## Documentation

https://github.com/navneet195/NBRILRockDesignSystem

## License

NBRILRockDesignSystem is released under the MIT license. See LICENSE for details.
