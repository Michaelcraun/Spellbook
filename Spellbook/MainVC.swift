//
//  ViewController.swift
//  Spellbook
//
//  Created by Michael Craun on 9/21/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
import CoreData

class MainVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, NSFetchedResultsControllerDelegate {
    
    //MARK: UI Variables
    let titleBar = TitleBar()
    let settingsButton = SystemButton()
    let newSpellbookButton = SystemButton()
    var spellbookCollection: UICollectionView!
    
    var controller: NSFetchedResultsController<Spellbook>!
    var spellbooks = [Spellbook]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateTestData()
        attemptFetch()
        layoutView()
        createClassArrays()
        
    }
    
    func generateTestData() {
        
        let spellbook1 = Spellbook(context: context)
        spellbook1.edition = "5e"
        spellbook1.characterName = "Alberich Battlehammer"
        
        let spellbook2 = Spellbook(context: context)
        spellbook2.edition = "5e"
        spellbook2.characterName = "fsdakjf;df"
        
        let spellbook3 = Spellbook(context: context)
        spellbook3.edition = "5e"
        spellbook3.characterName = "upeqwrioupeirq"
        
        let spellbook4 = Spellbook(context: context)
        spellbook4.edition = "5e"
        spellbook4.characterName = "vnmxz.c,vz.xcvz"
        
    }
    
    @objc func settingsPressed(sender: UIButton!) {
        
        performSegue(withIdentifier: "showSettings", sender: sender)
        
    }
    
    @objc func newSpellbookPressed(sender: UIButton!) {
        
        performSegue(withIdentifier: "addSpellbook", sender: nil)
        
    }
    
    func createClassArrays() {
        
        for characterClass in CharacterClass.allClasses {
            
            for edition in characterClass.editions {
                
                if edition == "5e" {
                    
                    Shared.classes5e.append(characterClass)
                    
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSettings" {
            
            if let destination = segue.destination as? SettingsVC {
                
                destination.modalPresentationStyle = .popover
                
            }
        }
    }
    
    //MARK: CollectionView DataSource and Delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let objects = controller.fetchedObjects, objects.count > 0 {
            
            return objects.count
            
        } else {
            
            return 0
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "spellbookCell", for: indexPath) as! SpellbookCell
        
        if let objects = controller.fetchedObjects, objects.count > 0 {
            
            cell.configureCell(spellbook: objects[indexPath.row])
            
        }
        
        return cell
        
    }
}
