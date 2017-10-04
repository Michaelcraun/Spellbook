//
//  CompendiumVC.swift
//  Spellbook
//
//  Created by Michael Craun on 10/2/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

class CompendiumVC: UIViewController {

    var titleBar = TitleBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        layoutView()
        
    }
    
    @objc func backButtonPressed(sender: SystemButton!) {
    
        dismiss(animated: true, completion: nil)
        
    }
}
