//
//  TipViewController.swift
//  TipCalculator
//
//  Created by Adhikary, Debajit on 8/6/17.
//  Copyright © 2017 Debajit Adhikary. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var tipPercentagesControl:   UISegmentedControl!
    @IBOutlet weak var billAmountField:         UITextField!
    @IBOutlet weak var tipAmountLabel:          UILabel!
    @IBOutlet weak var totalAmountWithTipLabel: UILabel!
    
    var settings: Settings {
        return Settings()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTipPercentagesControl(tipPercentagesControl: tipPercentagesControl)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Update view with tip amounts calculated
        tipPercentagesControl.selectedSegmentIndex = settings.preferredTipIndex
        updateTotalAmounts()
        
        billAmountField.becomeFirstResponder()

    }

    @IBAction func tapOutsideTextField(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func updateTotalAmounts() {
        let billAmount = Double(billAmountField.text!) ?? 0
        let bill = Bill(amount: billAmount,
                        tipIndex: tipPercentagesControl.selectedSegmentIndex)

        tipAmountLabel.text = String(format: "%.2f", bill.tipAmount)
        totalAmountWithTipLabel.text = String(format: "%.2f", bill.amountWithTip)
    }
    
    private func setupTipPercentagesControl(tipPercentagesControl: UISegmentedControl) {
        tipPercentagesControl.removeAllSegments()
        
        for (index, tipPercentage) in Bill.tipPercentages.enumerated() {
            tipPercentagesControl.insertSegment(withTitle: String(format: "%.0f%%", tipPercentage), at: index, animated: true)
        }
        
        tipPercentagesControl.selectedSegmentIndex = settings.preferredTipIndex
    }
}

