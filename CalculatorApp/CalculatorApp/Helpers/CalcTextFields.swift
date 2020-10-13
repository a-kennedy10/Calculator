//
//  CalcTextFields.swift
//  CalculatorApp
//
//  Created by Alex Kennedy on 10/12/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

import UIKit

class CalculatorTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }
    
    func setUpViews() {
        self.addCornerRadius(radius: 14)
        self.addAccentBorder()
        self.textColor = .black
        self.backgroundColor = .white
        self.layer.masksToBounds = true
    }
}
