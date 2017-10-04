//
//  AddSpellbookLayout.swift
//  Spellbook
//
//  Created by Michael Craun on 9/28/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

extension AddSpellbookVC {
    
    func layoutView() {
        
        classButton.isEnabled = false
        
        layoutTitleBar()
        layoutNewSpellbookForm()
        
    }
    
    func layoutTitleBar() {
        
        let backButton = SystemButton()
        
        titleBar.subtitle = "ADD SPELLBOOK"
        titleBar.frame = CGRect(x: 0,
                                y: 20,
                                width: Shared.screenWidth,
                                height: 50)
        
        backButton.addTarget(self, action: #selector(AddSpellbookVC.backButtonPressed(sender:)), for: .touchUpInside)
        backButton.frame = CGRect(x: 5,
                                  y: 5,
                                  width: 40,
                                  height: 40)
        
        view.addSubview(titleBar)
        
        titleBar.addSubview(backButton)
        
    }
    
    func layoutNewSpellbookForm() {
        
        let characterNameField = InputField()
        
        characterNameField.title = "CHARACTER NAME"
        characterNameField.frame = CGRect(x: 0,
                                          y: 25 + titleBar.frame.height,
                                          width: Shared.screenWidth,
                                          height: 35)
        
        editionButton.addTarget(self, action: #selector(AddSpellbookVC.editionButtonPressed(sender:)), for: .touchUpInside)
        editionButton.title = "EDITION"
        editionButton.frame = CGRect(x: 0,
                                     y: 25 + titleBar.frame.height + characterNameField.frame.height,
                                     width: 50,
                                     height: 35)
        
        classButton.addTarget(self, action: #selector(AddSpellbookVC.classButtonPressed(sender:)), for: .touchUpInside)
        classButton.title = "CLASS"
        classButton.frame = CGRect(x: editionButton.frame.width,
                                   y: editionButton.frame.origin.y,
                                   width: Shared.screenWidth - 50,
                                   height: 35)
        
        spellsTable.dataSource = self
        spellsTable.delegate = self
        spellsTable.separatorColor = UIColor.lightGray
        spellsTable.separatorInset.left = 0
        spellsTable.separatorInset.right = 0
        spellsTable.register(SpellCell.self, forCellReuseIdentifier: "spellCell")
        spellsTable.frame = CGRect(x: 0,
                                   y: editionButton.frame.maxY,
                                   width: Shared.screenWidth,
                                   height: Shared.screenHeight - characterNameField.frame.height - editionButton.frame.height)
        
        view.addSubview(characterNameField)
        view.addSubview(editionButton)
        view.addSubview(classButton)
        view.addSubview(spellsTable)
        
    }
    
    func layoutEditionPicker() {
        
        editionPicker.dataSource = self
        editionPicker.delegate = self
        editionPicker.backgroundColor = UIColor.white
        editionPicker.doneButton.addTarget(self, action: #selector(AddSpellbookVC.updateEdition(sender:)), for: .touchUpInside)
        editionPicker.frame = CGRect(x: -1,
                                     y: Shared.screenHeight - 133,
                                     width: Shared.screenWidth + 2,
                                     height: 135)
        
        view.addSubview(editionPicker)
        
    }
    
    func layoutClassPicker() {
        
        classPicker.dataSource = self
        classPicker.delegate = self
        classPicker.backgroundColor = UIColor.white
        classPicker.doneButton.addTarget(self, action: #selector(AddSpellbookVC.updateClass(sender:)), for: .touchUpInside)
        classPicker.frame = CGRect(x: -1,
                                   y: Shared.screenHeight - 133,
                                   width: Shared.screenWidth + 2,
                                   height: 135)
        
        view.addSubview(classPicker)
        
    }
}
