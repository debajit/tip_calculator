//
//  Bill.swift
//  TipCalculator
//
//  Business logic for a bill with a tip. Implements core logic for 
//  bill-with-tip calculations, tip percentages offered etc.
//
//  Created by Debajit Adhikary on 8/6/17.
//  Copyright © 2017 Debajit Adhikary. All rights reserved.
//

class Bill {
    static let tipPercentages: [Double] = [10, 15, 20, 25]
    
    var amount: Double = 0
    var tipIndex: Int = 0
    
    init(amount: Double, tipIndex: Int) {
        self.amount = amount
        self.tipIndex = tipIndex
    }
    
    var tipAmount: Double {
        let tipPercentage = Bill.tipPercentages[tipIndex]
        return amount * tipPercentage / 100
    }
    
    var amountWithTip: Double {
        return amount + tipAmount
    }
}
