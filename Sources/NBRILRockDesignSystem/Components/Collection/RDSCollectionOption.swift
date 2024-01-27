//
//  RDSCollectionOption.swift
//  
//
//  Created by Navnit Baldha on 27/01/24.
//

import Foundation

public struct RDSCollectionOption: Hashable {

    // MARK: - Variables
    public let id: String?
    public let name: String

    // MARK: - Init
    public init(id: String? = UUID().uuidString, name: String) {
        self.id = id
        self.name = name
    }

    public static func == (lhs: RDSCollectionOption, rhs: RDSCollectionOption) -> Bool {
        lhs.id == rhs.id
    }

    // MARK: - Mock data Preview
    public static func preview() -> [RDSCollectionOption] {
        return [
            RDSCollectionOption(name: "1"),
            RDSCollectionOption(name: "2"),
            RDSCollectionOption(name: "3"),
            RDSCollectionOption(name: "4"),
            RDSCollectionOption(name: "5"),
            RDSCollectionOption(name: "6"),
            RDSCollectionOption(name: "7"),
            RDSCollectionOption(name: "8"),
            RDSCollectionOption(name: "9"),
            RDSCollectionOption(name: "10"),
            RDSCollectionOption(name: "11"),
            RDSCollectionOption(name: "12"),
            RDSCollectionOption(name: "13"),
            RDSCollectionOption(name: "14"),
            RDSCollectionOption(name: "15"),
            RDSCollectionOption(name: "16"),
            RDSCollectionOption(name: "17"),
            RDSCollectionOption(name: "18"),
            RDSCollectionOption(name: "19"),
            RDSCollectionOption(name: "20")
        ]
    }
}
