//
//  Double.swift
//  CryptoApp
//
//  Created by Lehaananth Vimalanathan on 2024-08-28.
//

import Foundation

extension Double {
    
    /// Convert a double into currency format with 2-6 decimal places
    /// ```
    /// Convert 1234.567 into 1,234.56
    /// Convert 123.4567 into 123.45
    /// Convert 0.1234567 into 0.12
    /// ```
    
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Convert a double into currency as a String with 2-6 decimal places
    /// ```
    /// Convert 1234.567 into "$1,234.56"
    /// Convert 123.4567 into "$123.45"
    /// Convert 0.1234567 into "$0.12"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Convert a double into currency format with 2-6 decimal places
    /// ```
    /// Convert 1234.567 into 1,234.567
    /// Convert 123.4567 into 123.4567
    /// Convert 0.1234567 into 0.123456
    /// ```
    
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// Convert a double into currency as a String with 2-6 decimal places
    /// ```
    /// Convert 1234.567 into "$1,234.567"
    /// Convert 123.4567 into "$123.4567"
    /// Convert 0.1234567 into "$0.123456"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Convert a Double into String Representation
    /// ```
    /// Convert 12.34567 into "12.34"
    /// ```
    func asNumberString() -> String {
        return String(format:  "%.2f", self)
    }
    
    /// Convert a Double into String Representation with Percent Symbol
    /// ```
    /// Convert 12.34567 into "12.34%"
    /// ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
