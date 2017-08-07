//
//  Settings.swift
//  TipCalculator
//
//  User settings model. Provides properties to save and access
//  all user preferences, for convenience.
//
//  Created by Debajit Adhikary on 8/6/17.
//  Copyright © 2017 Debajit Adhikary. All rights reserved.
//

import Foundation

class Settings {
    
    var preferredTipIndex: Int {
        get { return integerSetting(key: Settings.PREFERRED_TIP_INDEX) }
        set { saveSetting(key: Settings.PREFERRED_TIP_INDEX, value: newValue) }
    }
    
    var lastAmount: Double {
        get { return doubleSetting(key: Settings.LAST_AMOUNT) }
        set { saveSetting(key: Settings.LAST_AMOUNT, value: newValue) }
    }

    private static let PREFERRED_TIP_INDEX = "preferred_tip_index"
    private static let LAST_AMOUNT = "last_amount"
    
    private let store = UserDefaults.standard

    private func saveSetting<T>(key: String, value: T) {
        store.set(value, forKey: key)
    }

    private func integerSetting(key: String) -> Int {
        return store.integer(forKey: key)
    }

    private func doubleSetting(key: String) -> Double {
        return store.double(forKey: key)
    }

}
