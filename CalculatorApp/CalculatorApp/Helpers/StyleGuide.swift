//
//  StyleGuide.swift
//  CalculatorApp
//
//  Created by Alex Kennedy on 10/12/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

import UIKit

extension UIColor {
    static let titleTint = UIColor(named: "titleTint")!
    static let subtitleTint = UIColor(named: "subtitleTint")!
    static let backgroundTint = UIColor(named: "backgroundTint")!
    static let borderTint = UIColor(named: "borderTint")!
}

extension UIView {
    func addCornerRadius(radius: CGFloat = 6) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width: CGFloat = 3, color: UIColor = .borderTint) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
