//
//  AddSpellbookVC.swift
//  Spellbook
//
//  Created by Michael Craun on 9/26/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
import CoreData

class AddSpellbookVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

    var titleBar = TitleBar()
    var spellsTable = UITableView()
    var editionButton = SelectorButton()
    var editionPicker = Picker()
    var classButton = SelectorButton()
    var classPicker = Picker()
    
    var selectedEdition = ""
    var spellbookClasses = [CharacterClass]()
    var selectedClass: CharacterClass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutView()
        
    }
    
    @objc func backButtonPressed(sender: SystemButton!) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    //MARK: TableView Setup
    func numberOfSections(in tableView: UITableView) -> Int {

        return 1        //TEMP

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 1        //TEMP

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "spellCell", for: indexPath) as! SpellCell
        
        if indexPath.row == 0 {
            
            cell.configureAddCell()
            
        } else {
            
            cell.configureCell()
            
        }
        
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
            performSegue(withIdentifier: "addSpells", sender: nil)
            
        } else {
            
            
            
        }
        
    }
    
    //MARK: PickerView Setup
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView == editionPicker {
            
            return Shared.editions.count
            
        } else {
            
            return spellbookClasses.count
            
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == editionPicker {
            
            return Shared.editions[row]
            
        } else {
            
            return spellbookClasses[row].rawValue
            
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == editionPicker {
            
            selectedEdition = Shared.editions[row]
            
        } else {
            
            selectedClass = spellbookClasses[row]
            
        }
    }
    
    @objc func editionButtonPressed(sender: SystemButton!) {
        
        layoutEditionPicker()
        
    }
    
    @objc func classButtonPressed(sender: SystemButton!) {
        
        layoutClassPicker()
        
    }
    
    @objc func updateEdition(sender: SystemButton!) {
        
        print("Done Pressed")
        editionButton.subtitle = selectedEdition
        editionButton.refreshButton()
        
        classButton.isEnabled = true
        
    }
    
    @objc func updateClass(sender: SystemButton!) {
        
        print("Done Pressed")
        classButton.subtitle = selectedClass.rawValue
        classButton.refreshButton()
        
    }
}
