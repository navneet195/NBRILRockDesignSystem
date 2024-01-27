//
//  RDSListOption.swift
//  NBRILRockDesignSystem
//
//  Created by Navnit Baldha on 27/01/24.
//

import Foundation

public struct RDSListOption: Hashable {

    public let id: String?
    public let name: String

    public init(id: String? = UUID().uuidString, name: String) {
        self.id = id
        self.name = name
    }

    public static func == (lhs: RDSListOption, rhs: RDSListOption) -> Bool {
        lhs.id == rhs.id
    }

    // MARK: - Mock data Preview
    public static func preview() -> [RDSListOption] {
        return [
            RDSListOption(name: "1"),
            RDSListOption(name: "2"),
            RDSListOption(name: "3"),
            RDSListOption(name: "4"),
            RDSListOption(name: "5"),
            RDSListOption(name: "6"),
            RDSListOption(name: "7"),
            RDSListOption(name: "8"),
            RDSListOption(name: "9"),
            RDSListOption(name: "10"),
            RDSListOption(name: "11"),
            RDSListOption(name: "12"),
            RDSListOption(name: "13"),
            RDSListOption(name: "14"),
            RDSListOption(name: "15"),
            RDSListOption(name: "16"),
            RDSListOption(name: "17"),
            RDSListOption(name: "18"),
            RDSListOption(name: "19"),
            RDSListOption(name: "20")
        ]
    }
}
