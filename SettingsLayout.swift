//
//  SettingsLayout.swift
//  Spellbook
//
//  Created by Michael Craun on 10/17/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

extension SettingsVC {
    
    func layoutView() {
        
        layoutTitleBar()
        
    }
    
    func layoutTitleBar() {
        
        let backButton = SystemButton()
        let compendiumButton = SystemButton()
        
        titleBar.subtitle = "ADD SPELLBOOK"
        titleBar.translatesAutoresizingMaskIntoConstraints = false
        
        backButton.addTarget(self, action: #selector(SettingsVC.backButtonPressed(sender:)), for: .touchUpInside)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        compendiumButton.addTarget(self, action: #selector(SettingsVC.compendiumButtonPressed(sender:)), for: .touchUpInside)
        compendiumButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleBar)
        titleBar.addSubview(backButton)
        titleBar.addSubview(compendiumButton)
        
        let titleBarTop = titleBar.topAnchor.constraint(equalTo: view.topAnchor)
        let titleBarLeft = titleBar.leftAnchor.constraint(equalTo: view.leftAnchor)
        let titleBarRight = titleBar.rightAnchor.constraint(equalTo: view.rightAnchor)
        let titleBarHeight = titleBar.heightAnchor.constraint(equalToConstant: 80)
        
        let backWidth = backButton.widthAnchor.constraint(equalToConstant: 40)
        let backHeight = backButton.heightAnchor.constraint(equalToConstant: 40)
        let backBottom = backButton.bottomAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: -5)
        let backLeft = backButton.leftAnchor.constraint(equalTo: titleBar.leftAnchor, constant: 10)
        
        let compendiumWidth = compendiumButton.widthAnchor.constraint(equalToConstant: 40)
        let compendiumHeight = compendiumButton.heightAnchor.constraint(equalToConstant: 40)
        let compendiumBottom = compendiumButton.bottomAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: -5)
        let compendiumRight = compendiumButton.rightAnchor.constraint(equalTo: titleBar.rightAnchor, constant: -10)
        
        let titleBarConstraints = [titleBarTop, titleBarLeft, titleBarRight, titleBarHeight,
                                   backWidth, backHeight, backBottom, backLeft,
                                   compendiumWidth, compendiumHeight, compendiumBottom, compendiumRight]
        NSLayoutConstraint.activate(titleBarConstraints)
        
    }
    
    func layoutSettingsTable() {
        
        settingsTable.dataSource = self
        settingsTable.delegate = self
        settingsTable.separatorStyle = .none
        settingsTable.allowsMultipleSelection = false
        settingsTable.register(SettingsCell.self, forCellReuseIdentifier: "settingsCell")
        settingsTable.translatesAutoresizingMaskIntoConstraints = false
        settingsTable.rowHeight = 30
        settingsTable.clearsContextBeforeDrawing = true
        
        view.addSubview(settingsTable)
        
        let tableTop = settingsTable.topAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: 10)
        let tableLeft = settingsTable.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let tableRight = settingsTable.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        let tableBottom = settingsTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        let tableConstraints = [tableTop, tableLeft, tableRight, tableBottom]
        NSLayoutConstraint.activate(tableConstraints)
        
    }
}
