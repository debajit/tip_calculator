//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Adhikary, Debajit on 8/6/17.
//  Copyright © 2017 Debajit Adhikary. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var tipPercentagesControl: UISegmentedControl!
    @IBOutlet weak var themeControl: UISegmentedControl!
    @IBOutlet weak var preferredTipLabel: UILabel!
    @IBOutlet weak var themeLabel: UILabel!
    
    var settings: Settings {
        return Settings()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTipPercentagesControl(tipPercentagesControl: tipPercentagesControl)
        setupThemeControl(themeControl: themeControl)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        applyTheme()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func savePreferredTipIndex() {
        settings.preferredTipIndex = tipPercentagesControl.selectedSegmentIndex
    }
    
    @IBAction func saveTheme() {
        settings.theme = ThemeName(rawValue: themeControl.selectedSegmentIndex)!
    }
    
    private func setupTipPercentagesControl(tipPercentagesControl: UISegmentedControl) {
        tipPercentagesControl.removeAllSegments()
        
        for (index, tipPercentage) in Bill.tipPercentages.enumerated() {
            tipPercentagesControl.insertSegment(withTitle: String(format: "%.0f%%", tipPercentage), at: index, animated: true)
        }
        
        tipPercentagesControl.selectedSegmentIndex = settings.preferredTipIndex
    }
    
    private func setupThemeControl(themeControl: UISegmentedControl) {
        themeControl.selectedSegmentIndex = settings.theme.rawValue
    }
    
    @IBAction func themeChanged() {
        applyTheme()
    }
    
    private func applyTheme() {
        let theme = Theme()
        
        view.backgroundColor = theme.settingsBackgroundColor
        
        navigationController?.navigationBar.barTintColor = theme.navigationBarBackgroundColor
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: theme.navigationBarTextColor]
        navigationController?.navigationBar.barStyle = theme.navigationBarStyle
        
        tipPercentagesControl.tintColor = theme.settingsSegmentControlTintColor
        themeControl.tintColor = theme.settingsSegmentControlTintColor
        preferredTipLabel.textColor = theme.navigationBarTextColor
        themeLabel.textColor = theme.navigationBarTextColor
    }
    
}
