//
//  RDSSpacing.swift
//  
//
//  Created by Navnit Baldha on 19/04/23.
//

import Foundation

/// RDSSpacing description

public enum RDSSpacing {
    public static let Smallest = CGFloat(4)
    public static let XXXS = CGFloat(8)
    public static let XXS = CGFloat(16)
    public static let XS = CGFloat(24)
    public static let SM = CGFloat(32)
    public static let MD = CGFloat(40)
    public static let LG = CGFloat(48)
    public static let XL = CGFloat(64)
    public static let XXL = CGFloat(80)
    public static let XXXL = CGFloat(120)
    public static let Display = CGFloat(160)
    public static let Giant = CGFloat(280)
}

extension RDSSpacing {
    public enum Inset {
        public static let XXXS = CGFloat(4)
        public static let XXS = CGFloat(8)
        public static let XS = CGFloat(12)
        public static let SM = CGFloat(16)
        public static let MD = CGFloat(20)
        public static let LG = CGFloat(24)
        public static let XL = CGFloat(32)
        public static let XXL = CGFloat(48)
        public static let XXXL = CGFloat(64)
        public static let Display = CGFloat(180)
    }
}
