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
        
        let settingsButton = SystemButton()
        let newSpellbookButton = SystemButton()
        
        titleBar.subtitle = "SPELLBOOKS"
        titleBar.frame = CGRect(x: 0,
                                y: 20,
                                width: Shared.screenWidth,
                                height: 50)
        
        settingsButton.addTarget(self, action: #selector(MainVC.settingsPressed(sender:)), for: .touchUpInside)
        settingsButton.frame = CGRect(x: 5,
                                      y: 5,
                                      width: 40,
                                      height: 40)
        
        newSpellbookButton.addTarget(self, action: #selector(MainVC.newSpellbookPressed(sender:)), for: .touchUpInside)
        newSpellbookButton.frame = CGRect(x: titleBar.frame.width - 45,
                                          y: 5,
                                          width: 40,
                                          height: 40)
        
        view.addSubview(titleBar)
        
        titleBar.addSubview(settingsButton)
        titleBar.addSubview(newSpellbookButton)
        
    }
    
    func layoutSpellbookCollection() {
        
        let layout = SpellbookCollectionLayout()
        let collectionFrame = CGRect(x: 5,
                                     y: 75,
                                     width: Shared.screenWidth - 10,
                                     height: Shared.screenHeight - 75)
        
        spellbookCollection = UICollectionView(frame: collectionFrame, collectionViewLayout: layout)
        spellbookCollection.register(SpellbookCell.self, forCellWithReuseIdentifier: "spellbookCell")
        spellbookCollection.backgroundColor = UIColor.white
        spellbookCollection.dataSource = self
        spellbookCollection.delegate = self
        
        view.addSubview(spellbookCollection)
        
    }
}
