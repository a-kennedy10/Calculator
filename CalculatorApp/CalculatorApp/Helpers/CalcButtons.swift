//
//  CalcButtons.swift
//  CalculatorApp
//
//  Created by Alex Kennedy on 10/12/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

import UIKit

class CalculatorButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setUpViews() {
        self.backgroundColor = .subtitleTint
        self.setTitleColor(.black, for: .normal)
        self.addCornerRadius()
    }
}
