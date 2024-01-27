//
//  RDSBorder.swift
//  
//
//  Created by Navnit Baldha on 19/04/23.
//


import Foundation

public enum RDSBorder {
    
    /// RDSBorderRedius description
    public enum Redius {
        public static let None = CGFloat(0)
        public static let XS = CGFloat(4)
        public static let SM = CGFloat(8)
        public static let MD = CGFloat(16)
        public static let LG = CGFloat(24)
        public static let Pill = CGFloat(800)
    }
    
    /// RDSBorderWidth description
    public enum Width {
        public static let None = CGFloat(0)
        public static let Thin = 0.5
        public static let Light = CGFloat(1)
        public static let Regular = CGFloat(2)
        public static let Medium = CGFloat(4)
        public static let Heavy = CGFloat(8)
    }
}
