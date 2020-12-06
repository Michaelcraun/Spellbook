//
//  SpellCell.swift
//  Spellbook
//
//  Created by Michael Craun on 9/29/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

class SpellCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func configureCell() {
        
        
    }
    
    func configureAddCell() {
        
        let addSpell = UILabel()
        
        addSpell.font = UIFont(name: "Hoefler Text", size: 20)
        addSpell.textColor = UIColor.darkGray
        addSpell.text = "Add Spell"
        addSpell.sizeToFit()
        addSpell.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(addSpell)
        
        let addCenterX = addSpell.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        let addCenterY = addSpell.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        
        let addConstraints = [addCenterX, addCenterY]
        
        NSLayoutConstraint.activate(addConstraints)
        
    }
}
