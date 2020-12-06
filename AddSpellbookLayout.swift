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
        
        classField.isEnabled = false
        
        layoutTitleBar()
        layoutNameField()
        layoutEditionPicker()
        layoutClassPicker()
        layoutSpellsTable()
        
    }
    
    func layoutTitleBar() {
        
        let backButton = SystemButton()
        
        titleBar.subtitle = "ADD SPELLBOOK"
        titleBar.translatesAutoresizingMaskIntoConstraints = false
        
        backButton.addTarget(self, action: #selector(AddSpellbookVC.backButtonPressed(sender:)), for: .touchUpInside)
        backButton.setTitle("Back", for: .normal)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleBar)
        titleBar.addSubview(backButton)
        
        let titleBarTop = titleBar.topAnchor.constraint(equalTo: view.topAnchor)
        let titleBarLeft = titleBar.leftAnchor.constraint(equalTo: view.leftAnchor)
        let titleBarRight = titleBar.rightAnchor.constraint(equalTo: view.rightAnchor)
        let titleBarHeight = titleBar.heightAnchor.constraint(equalToConstant: 80)
        
        let backWidth = backButton.widthAnchor.constraint(equalToConstant: 40)
        let backHeight = backButton.heightAnchor.constraint(equalToConstant: 40)
        let backBottom = backButton.bottomAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: -5)
        let backLeft = backButton.leftAnchor.constraint(equalTo: titleBar.leftAnchor, constant: 10)
        
        let titleBarConstraints = [titleBarTop, titleBarLeft, titleBarRight, titleBarHeight,
                                   backWidth, backHeight, backBottom, backLeft]
        
        NSLayoutConstraint.activate(titleBarConstraints)
        
    }
    
    func layoutNameField() {
        
        characterNameField.title = "CHARACTER NAME"
        characterNameField.font = Shared.inputFont
        characterNameField.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(characterNameField)
        
        let nameTop = characterNameField.topAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: 10)
        let nameLeft = characterNameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10)
        let nameRight = characterNameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10)
        let nameHeight = characterNameField.heightAnchor.constraint(equalToConstant: 35)
        
        let nameConstraints = [nameTop, nameLeft, nameRight, nameHeight]
        NSLayoutConstraint.activate(nameConstraints)
        
    }
    
    func layoutEditionPicker() {
        
        let toolbar = UIToolbar()
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: UIBarButtonItemStyle.plain,
                                         target: self,
                                         action: #selector(AddSpellbookVC.doneEditionPicker(sender:)))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace,
                                          target: nil,
                                          action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel",
                                           style: UIBarButtonItemStyle.plain,
                                           target: self,
                                           action: #selector(AddSpellbookVC.doneEditionPicker(sender:)))
        
        editionField.title = "EDITION"
        editionField.font = Shared.inputFont
        editionField.inputView = editionPickerView
        editionField.translatesAutoresizingMaskIntoConstraints = false
        
        editionPickerView.backgroundColor = .white
        editionPickerView.translatesAutoresizingMaskIntoConstraints = false
        editionPickerView.frame = CGRect(x: 0,
                                  y: Shared.screenHeight - toolbar.frame.height - 200,
                                  width: Shared.screenWidth,
                                  height: 200 + toolbar.frame.height)
        
        editionPicker.dataSource = self
        editionPicker.delegate = self
        editionPicker.translatesAutoresizingMaskIntoConstraints = false
        
        toolbar.barStyle = UIBarStyle.default
        toolbar.isTranslucent = true
        toolbar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolbar.items![0].tintColor = UIColor.red
        toolbar.items![2].tintColor = UIColor.green
        toolbar.sizeToFit()
        toolbar.isUserInteractionEnabled = true
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(editionField)
        editionPickerView.addSubview(editionPicker)
        editionPickerView.addSubview(toolbar)
        
        let editionTop = editionField.topAnchor.constraint(equalTo: characterNameField.bottomAnchor, constant: 1)
        let editionLeft = editionField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10)
        let editionWidth = editionField.widthAnchor.constraint(equalToConstant: 50)
        let editionHeight = editionField.heightAnchor.constraint(equalToConstant: 35)
        
        let editionPickerLeft = editionPicker.leftAnchor.constraint(equalTo: editionPickerView.leftAnchor)
        let editionPickerRight = editionPicker.rightAnchor.constraint(equalTo: editionPickerView.rightAnchor)
        let editionPickerBottom = editionPicker.bottomAnchor.constraint(equalTo: editionPickerView.bottomAnchor)
        let editionPickerHeight = editionPicker.heightAnchor.constraint(equalToConstant: 200)
        
        let toolbarLeft = toolbar.leftAnchor.constraint(equalTo: editionPickerView.leftAnchor)
        let toolbarRight = toolbar.rightAnchor.constraint(equalTo: editionPickerView.rightAnchor)
        let toolbarBottom = toolbar.bottomAnchor.constraint(equalTo: editionPicker.topAnchor)
        let toolbarHeight = toolbar.heightAnchor.constraint(equalToConstant: 44)
        
        let editionConstraints = [editionTop, editionLeft, editionWidth, editionHeight,
                                  editionPickerLeft, editionPickerRight, editionPickerBottom, editionPickerHeight,
                                  toolbarLeft, toolbarRight, toolbarBottom, toolbarHeight]
        NSLayoutConstraint.activate(editionConstraints)
        
    }
    
    func layoutClassPicker() {
        
        let toolbar = UIToolbar()
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: UIBarButtonItemStyle.plain,
                                         target: self,
                                         action: #selector(AddSpellbookVC.doneClassPicker(sender:)))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace,
                                          target: nil,
                                          action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel",
                                           style: UIBarButtonItemStyle.plain,
                                           target: self,
                                           action: #selector(AddSpellbookVC.doneClassPicker(sender:)))
        
        classField.title = "CLASS"
        classField.font = Shared.inputFont
        classField.inputView = classPickerView
        classField.translatesAutoresizingMaskIntoConstraints = false
        
        classPickerView.backgroundColor = .white
        classPickerView.translatesAutoresizingMaskIntoConstraints = false
        classPickerView.frame = CGRect(x: 0,
                                       y: Shared.screenHeight - toolbar.frame.height - 200,
                                       width: Shared.screenWidth,
                                       height: 200 + toolbar.frame.height)
        
        classPicker.dataSource = self
        classPicker.delegate = self
        classPicker.backgroundColor = UIColor.white
        classPicker.translatesAutoresizingMaskIntoConstraints = false
        
        toolbar.barStyle = UIBarStyle.default
        toolbar.isTranslucent = true
        toolbar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolbar.items![0].tintColor = UIColor.red
        toolbar.items![2].tintColor = UIColor.green
        toolbar.sizeToFit()
        toolbar.isUserInteractionEnabled = true
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(classField)
        classPickerView.addSubview(classPicker)
        classPickerView.addSubview(toolbar)
        
        let classTop = classField.topAnchor.constraint(equalTo: characterNameField.bottomAnchor, constant: 1)
        let classLeft = classField.leftAnchor.constraint(equalTo: editionField.rightAnchor)
        let classRight = classField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10)
        let classHeight = classField.heightAnchor.constraint(equalToConstant: 35)
        
        let classPickerLeft = classPicker.leftAnchor.constraint(equalTo: classPickerView.leftAnchor)
        let classPickerRight = classPicker.rightAnchor.constraint(equalTo: classPickerView.rightAnchor)
        let classPickerBottom = classPicker.bottomAnchor.constraint(equalTo: classPickerView.bottomAnchor)
        let classPickerHeight = classPicker.heightAnchor.constraint(equalToConstant: 200)
        
        let toolbarLeft = toolbar.leftAnchor.constraint(equalTo: classPickerView.leftAnchor)
        let toolbarRight = toolbar.rightAnchor.constraint(equalTo: classPickerView.rightAnchor)
        let toolbarBottom = toolbar.bottomAnchor.constraint(equalTo: classPicker.topAnchor)
        let toolbarHeight = toolbar.heightAnchor.constraint(equalToConstant: 44)
        
        let classConstraints = [classTop, classLeft, classRight, classHeight,
                                classPickerLeft, classPickerRight, classPickerBottom, classPickerHeight,
                                toolbarLeft, toolbarRight, toolbarBottom, toolbarHeight]
        NSLayoutConstraint.activate(classConstraints)
        
    }
    
    func layoutSpellsTable() {
        
        spellsTable.dataSource = self
        spellsTable.delegate = self
        spellsTable.separatorColor = UIColor.lightGray
        spellsTable.separatorInset.left = 10
        spellsTable.separatorInset.right = 10
        spellsTable.register(SpellCell.self, forCellReuseIdentifier: "spellCell")
        spellsTable.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(spellsTable)
        
        let tableTop = spellsTable.topAnchor.constraint(equalTo: editionField.bottomAnchor, constant: 1)
        let tableLeft = spellsTable.leftAnchor.constraint(equalTo: view.leftAnchor)
        let tableRight = spellsTable.rightAnchor.constraint(equalTo: view.rightAnchor)
        let tableBottom = spellsTable.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        let tableConstraints = [tableTop, tableLeft, tableRight, tableBottom]
        NSLayoutConstraint.activate(tableConstraints)
        
    }
}
