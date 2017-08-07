//
//  Double.swift
//  TipCalculator
//
//  Created by Adhikary, Debajit on 8/6/17.
//  Copyright © 2017 Debajit Adhikary. All rights reserved.
//

import Foundation

extension Double {
    var asLocaleCurrency: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        
        return formatter.string(from: self as NSNumber)!
    }
}
