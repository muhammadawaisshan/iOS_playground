//
//  ColorsExt.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//
import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        let scanner = Scanner(string: hex)
        if hex.hasPrefix("#") {
            scanner.currentIndex = hex.index(after: hex.startIndex)
        }
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let red = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1.0)
    }
}

