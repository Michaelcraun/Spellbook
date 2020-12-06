//
//  SettingsVC.swift
//  Spellbook
//
//  Created by Michael Craun on 10/17/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let titleBar = TitleBar()
    let settingsTable = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        layoutView()
        
    }
    
    @objc func backButtonPressed(sender: SystemButton!) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @objc func compendiumButtonPressed(sender: SystemButton!) {
        
        performSegue(withIdentifier: "showCompendium", sender: nil)
        
    }
    
    //MARK: TableView setup
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell") as! SettingsCell
        
        return cell
        
    }
}
