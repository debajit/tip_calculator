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
        set { saveIntegerSetting(key: Settings.PREFERRED_TIP_INDEX, value: newValue) }
    }
    
    private static let PREFERRED_TIP_INDEX = "preferred_tip_index"
    
    private let store = UserDefaults.standard

    private func integerSetting(key: String) -> Int {
        return store.integer(forKey: Settings.PREFERRED_TIP_INDEX)
    }

    private func saveIntegerSetting(key: String, value: Int) {
        store.set(value, forKey: key)
        // store.synchronize()
    }

}
