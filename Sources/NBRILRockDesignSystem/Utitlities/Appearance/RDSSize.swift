//
//  RDSSize.swift
//  
//
//  Created by Navnit Baldha on 19/04/23.
//

import Foundation

public enum RDSSize {
    
    /// sizes specific to Font
    public enum Font {
        public static let Smallest = CGFloat(12)
        public static let XXXS = CGFloat(14)
        public static let XXS = CGFloat(16)
        public static let XS = CGFloat(18)
        public static let SM = CGFloat(20)
        public static let MD = CGFloat(24)
        public static let LG = CGFloat(32)
        public static let XL = CGFloat(40)
        public static let XXL = CGFloat(48)
        public static let XXXL = CGFloat(64)
        public static let Display = CGFloat(80)
        public static let Giant = CGFloat(96)
    }
    
    /// Return size for Icon heights
    public enum Icon: CGFloat {
        case XXXS = 12.0
        case XXS = 14.0
        case XS = 16.0
        case SM = 18.0
        case MD = 24.0
        case LG = 32.0
        case XL = 40.0
        case XXL = 48.0
    }
    
    /// Return size for buton heights
    public enum Buton: CGFloat {
        case small = 32.0
        case medium = 64.0
        case large = 88.0
    }
    
    /// Return size for text heights
    public enum TextInput: CGFloat {
        case medium = 54.0
        case large = 64.0
    }

    /// Return size for text heights
    public enum CellInput: CGFloat {
        case small = 32.0
        case medium = 54.0
        case large = 120.0
    }
}
