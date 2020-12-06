//
//  AddSpellbookFunctions.swift
//  Spellbook
//
//  Created by Michael Craun on 11/13/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

extension AddSpellbookVC {
    
    @objc func backButtonPressed(sender: SystemButton!) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @objc func donePicker(sender: UIBarButtonItem!) {
        
        if sender.title == "Done" {
            
            if selectedClass != nil {
                
                classField.text = selectedClass.rawValue
                classField.resignFirstResponder()
                
            } else {
                
                editionField.text = selectedEdition
                classField.isEnabled = true
                configureClassSelection()
                classPicker.reloadAllComponents()
                editionField.resignFirstResponder()
                
            }
            
        } else {
            
            classField.resignFirstResponder()
            editionField.resignFirstResponder()
            
        }
    }
    
    @objc func doneEditionPicker(sender: UIBarButtonItem!) {
        
        if sender.title == "Done" {
            
            if selectedEdition != "" {
                
                editionField.text = selectedEdition
                classField.isEnabled = true
                classField.text = ""
                configureClassSelection()
                classPicker.reloadAllComponents()
                editionField.resignFirstResponder()
                
            }
            
        } else {
            
            editionField.resignFirstResponder()
            
        }
    }
    
    @objc func doneClassPicker(sender: UIBarButtonItem!) {
        
        if sender.title == "Done" {
            
            if selectedClass != nil {
                
                classField.text = selectedClass.rawValue
                classField.resignFirstResponder()
                
            }
            
        } else {
            
            classField.resignFirstResponder()
            
        }
    }
    
    func configureClassSelection() {
        
        switch selectedEdition {
        case "5e": spellbookClasses = Shared.classes5e
        default: break
        }
    }
    
    @objc func savePressed(sender: SystemButton!) {
        
        if selectedEdition != "" && selectedClass != nil && characterNameField.text != "" {
            
            let newSpellbook = Spellbook(context: context)
            
            newSpellbook.characterName = characterNameField.text!
            newSpellbook.edition = selectedEdition
//            newSpellbook.characterClass = selectedClass
//            newSpellbook.spells =
            
        }
    }
}
