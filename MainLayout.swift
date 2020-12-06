//
//  MainLayout.swift
//  Spellbook
//
//  Created by Michael Craun on 9/25/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation
import UIKit

extension MainVC {
    
    func layoutView() {
        
        layoutTitleBar()
        layoutSpellbookCollection()
        
    }
    
    func layoutTitleBar() {
        
        titleBar.subtitle = "SPELLBOOKS"
        titleBar.translatesAutoresizingMaskIntoConstraints = false
        
        settingsButton.addTarget(self, action: #selector(MainVC.settingsPressed(sender:)), for: .touchUpInside)
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        
        newSpellbookButton.addTarget(self, action: #selector(MainVC.newSpellbookPressed(sender:)), for: .touchUpInside)
        newSpellbookButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleBar)
        titleBar.addSubview(settingsButton)
        titleBar.addSubview(newSpellbookButton)
        
        let titleBarTop = titleBar.topAnchor.constraint(equalTo: view.topAnchor)
        let titleBarLeft = titleBar.leftAnchor.constraint(equalTo: view.leftAnchor)
        let titleBarRight = titleBar.rightAnchor.constraint(equalTo: view.rightAnchor)
        let titleBarHeight = titleBar.heightAnchor.constraint(equalToConstant: 80)
        
        let settingsWidth = settingsButton.widthAnchor.constraint(equalToConstant: 40)
        let settingsHeight = settingsButton.heightAnchor.constraint(equalToConstant: 40)
        let settingsBottom = settingsButton.bottomAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: -5)
        let settingsLeft = settingsButton.leftAnchor.constraint(equalTo: titleBar.leftAnchor, constant: 10)
        
        let newSpellbookWidth = newSpellbookButton.widthAnchor.constraint(equalToConstant: 40)
        let newSpellbookHeight = newSpellbookButton.heightAnchor.constraint(equalToConstant: 40)
        let newSpellbookBottom = newSpellbookButton.bottomAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: -5)
        let newSpellbookRight = newSpellbookButton.rightAnchor.constraint(equalTo: titleBar.rightAnchor, constant: -10)
        
        let titleBarConstraints = [titleBarTop, titleBarLeft, titleBarRight, titleBarHeight,
                                   settingsWidth, settingsHeight, settingsBottom, settingsLeft,
                                   newSpellbookWidth, newSpellbookHeight, newSpellbookBottom, newSpellbookRight]
        
        NSLayoutConstraint.activate(titleBarConstraints)
        
    }
    
    func layoutSpellbookCollection() {
        
        let layout = SpellbookCollectionLayout()
        let collectionFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        spellbookCollection = UICollectionView(frame: collectionFrame, collectionViewLayout: layout)
        spellbookCollection.register(SpellbookCell.self, forCellWithReuseIdentifier: "spellbookCell")
        spellbookCollection.translatesAutoresizingMaskIntoConstraints = false
        spellbookCollection.backgroundColor = UIColor.white
        spellbookCollection.dataSource = self
        spellbookCollection.delegate = self
        
        view.addSubview(spellbookCollection)
        
        let collectionTop = spellbookCollection.topAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: 10)
        let collectionLeft = spellbookCollection.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10)
        let collectionRight = spellbookCollection.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10)
        let collectionBottom = spellbookCollection.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        let collectionConstraints = [collectionTop, collectionLeft, collectionRight, collectionBottom]
        
        NSLayoutConstraint.activate(collectionConstraints)
        
    }
}
