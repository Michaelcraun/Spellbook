//
//  MainCoreDataHelper.swift
//  Spellbook
//
//  Created by Michael Craun on 9/26/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import Foundation
import CoreData

extension MainVC {
    
    func attemptFetch() {
        
        let fetchRequest: NSFetchRequest<Spellbook> = Spellbook.fetchRequest()
        let editionSort = NSSortDescriptor(key: "edition", ascending: false)
        fetchRequest.sortDescriptors = [editionSort]
        
        let controller = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        controller.delegate = self
        self.controller = controller
        
        do {
            
            try controller.performFetch()
            
        } catch {
            
            let error = error as NSError
            print("\(error)")
            
        }
    }
}
