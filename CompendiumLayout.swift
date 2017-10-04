//
//  CompendiumLayout.swift
//  Spellbook
//
//  Created by Michael Craun on 10/2/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

extension CompendiumVC {
    
    func layoutView() {
        
        
    }
    
    func layoutTitleBar() {
        
        let backButton = SystemButton()
        
        titleBar.subtitle = "ADD SPELLBOOK"
        titleBar.frame = CGRect(x: 0,
                                y: 20,
                                width: Shared.screenWidth,
                                height: 50)
        
        backButton.addTarget(self, action: #selector(CompendiumVC.backButtonPressed(sender:)), for: .touchUpInside)
        backButton.frame = CGRect(x: 5,
                                  y: 5,
                                  width: 40,
                                  height: 40)
        
        view.addSubview(titleBar)
        
        titleBar.addSubview(backButton)
        
    }
    
}
