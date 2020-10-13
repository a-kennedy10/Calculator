//
//  CalculatorViewController.swift
//  CalculatorApp
//
//  Created by Alex Kennedy on 10/12/20.
//  Copyright © 2020 Alex Kennedy. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    // MARK: - outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var chooseTipTitleLabel: UILabel!
    @IBOutlet weak var tipTitleLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalTitleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var twentyfiveButton: UIButton!
    
    
    // MARK: - properties
    
    // MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }
    
    // MARK: - actions
    @IBAction func tenButtonTapped(_ sender: Any) {
        tenPercentTip()
    }
    @IBAction func fifteenButtonTapped(_ sender: Any) {
        fifteenPercentTip()
    }
    @IBAction func twentyButtonTapped(_ sender: Any) {
        twentyPercentTip()
    }
    @IBAction func twentyFiveButtonTapped(_ sender: Any) {
        twentyfivePercentTip()
    }
    
    // MARK: - helper functions
    
    func setUpViews() {
        self.view.backgroundColor = .backgroundTint
        
        self.billTextField.addCornerRadius()
        self.totalAmountLabel.addCornerRadius()
        self.tipAmountLabel.addCornerRadius()
        
        self.billTextField.addAccentBorder()
        self.totalAmountLabel.addAccentBorder()
        self.tipAmountLabel.addAccentBorder()
        
        DispatchQueue.main.async {
            self.tenButton.backgroundColor = .orange
            self.fifteenButton.backgroundColor = .orange
            self.twentyButton.backgroundColor = .orange
            self.twentyfiveButton.backgroundColor = .orange
        }
    }
    
    func tenPercentTip() {
        guard let billAmountText = self.billTextField.text,
            let billAmount = Double(billAmountText) else { return }
        let tipPercent = 0.1
        let tipAmount = billAmount * tipPercent
        let roundedTipAmount = (100 * tipAmount).rounded() / 100
        
        tipAmountLabel.text = "\(roundedTipAmount)"
        totalAmountLabel.text = "\(billAmount + roundedTipAmount)"
        
        print("Tip Amount: \(roundedTipAmount)")
        print("Total Amount: \(totalAmountLabel.text)")
    }
    
    func fifteenPercentTip() {
        guard let billAmountText = self.billTextField.text,
            let billAmount = Double(billAmountText) else { return }
        let tipPercent = 0.15
        let tipAmount = billAmount * tipPercent
        let roundedTipAmount = (100 * tipAmount).rounded() / 100
        
        tipAmountLabel.text = "\(roundedTipAmount)"
        totalAmountLabel.text = "\(billAmount + roundedTipAmount)"
        
        print("Tip Amount: \(roundedTipAmount)")
        print("Total Amount: \(totalAmountLabel.text)")
        
    }
    
    func twentyPercentTip() {
        guard let billAmountText = self.billTextField.text,
            let billAmount = Double(billAmountText) else { return }
        let tipPercent = 0.2
        let tipAmount = billAmount * tipPercent
        let roundedTipAmount = (100 * tipAmount).rounded() / 100
        
        tipAmountLabel.text = "\(roundedTipAmount)"
        totalAmountLabel.text = "\(billAmount + roundedTipAmount)"
        
        print("Tip Amount: \(roundedTipAmount)")
        print("Total Amount: \(totalAmountLabel.text)")
    }
    
    func twentyfivePercentTip() {
        guard let billAmountText = self.billTextField.text,
            let billAmount = Double(billAmountText) else { return }
        let tipPercent = 0.25
        let tipAmount = billAmount * tipPercent
        let roundedTipAmount = (100 * tipAmount).rounded() / 100
        
        tipAmountLabel.text = "\(roundedTipAmount)"
        totalAmountLabel.text = "\(billAmount + roundedTipAmount)"
        
        print("Tip Amount: \(roundedTipAmount)")
        print("Total Amount: \(totalAmountLabel.text)")
    }
}
