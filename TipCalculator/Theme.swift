//
//  Theme.swift
//  TipCalculator
//
//  Created by Adhikary, Debajit on 8/6/17.
//  Copyright © 2017 Debajit Adhikary. All rights reserved.
//

import UIKit

enum ThemeName: Int {
    case light = 0
    case dark
}

class Theme {

    var backgroundColor: UIColor
    var textColor: UIColor
    var billAmountTextColor: UIColor
    var tipSelectorBackgroundColor: UIColor
    var totalViewBackgroundColor: UIColor
    var tipAmountTextColor: UIColor
    var totalAmountTextColor: UIColor
    var navigationBarBackgroundColor: UIColor
    var navigationBarTextColor: UIColor
    var navigationBarStyle: UIBarStyle
    var keyboardAppearance: UIKeyboardAppearance
    
    static var settings: Settings { return Settings() }
    
    init() {
        switch Theme.settings.theme {
            
        case .light:
            
            backgroundColor = #colorLiteral(red: 0.9805292487, green: 0.9727950692, blue: 0.9600866437, alpha: 1)
            textColor = #colorLiteral(red: 0.1777966321, green: 0.1224308088, blue: 0.02345803007, alpha: 1)
            billAmountTextColor = #colorLiteral(red: 0.3872439265, green: 0.2564357817, blue: 0.02039210312, alpha: 1)
            tipSelectorBackgroundColor = #colorLiteral(red: 0.3872439265, green: 0.2564357817, blue: 0.02039210312, alpha: 1)
            totalViewBackgroundColor = #colorLiteral(red: 0.9533321261, green: 0.9377500415, blue: 0.908346355, alpha: 1)
            tipAmountTextColor = #colorLiteral(red: 0.4379560947, green: 0.5640528798, blue: 0.7923468947, alpha: 1)
            totalAmountTextColor = #colorLiteral(red: 0.0030189713, green: 0.3139387369, blue: 0.4967183471, alpha: 1)
            
            navigationBarBackgroundColor = totalViewBackgroundColor
            navigationBarTextColor = #colorLiteral(red: 0.1777966321, green: 0.1224308088, blue: 0.02345803007, alpha: 1)
            navigationBarStyle = UIBarStyle.default
            
            keyboardAppearance = .default
            
        case .dark:
            
            backgroundColor = #colorLiteral(red: 0.5945405364, green: 0.1836687922, blue: 0.215454936, alpha: 1)
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            billAmountTextColor = #colorLiteral(red: 0.9266857505, green: 0.8834068179, blue: 0.8121024966, alpha: 1)//#colorLiteral(red: 0.9533321261, green: 0.9377500415, blue: 0.908346355, alpha: 1)
            tipSelectorBackgroundColor = #colorLiteral(red: 0.9266857505, green: 0.8834068179, blue: 0.8121024966, alpha: 1)//#colorLiteral(red: 0.9533321261, green: 0.9377500415, blue: 0.908346355, alpha: 1)
            totalViewBackgroundColor = #colorLiteral(red: 0.1983256042, green: 0.06555843353, blue: 0.07220873982, alpha: 1)
            tipAmountTextColor = #colorLiteral(red: 0.5988010168, green: 0.4737485647, blue: 0.4850695133, alpha: 1)
            totalAmountTextColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            navigationBarBackgroundColor = #colorLiteral(red: 0.3924831152, green: 0.1225931272, blue: 0.148321569, alpha: 1) // #colorLiteral(red: 0.1419405215, green: 0.06544311544, blue: 0.1492374119, alpha: 1)
            navigationBarTextColor = #colorLiteral(red: 0.9266857505, green: 0.8834068179, blue: 0.8121024966, alpha: 1)
            navigationBarStyle = UIBarStyle.black
            
            keyboardAppearance = .dark
        }
        
    }
}


