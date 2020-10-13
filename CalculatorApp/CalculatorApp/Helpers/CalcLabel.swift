//
//  CalcLabel.swift
//  CalculatorApp
//
//  Created by Alex Kennedy on 10/12/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

import UIKit

class CalculatorLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textColor = .titleTint
    }
}


class CalculatorLabelSub: CalculatorLabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.textColor = .subtitleTint
    }
}
