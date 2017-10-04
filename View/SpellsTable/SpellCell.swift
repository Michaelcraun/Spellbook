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
        addSpell.frame = CGRect(x: self.frame.width / 2 - addSpell.frame.width / 2,
                                y: self.frame.height / 2 - addSpell.frame.height / 2,
                                width: addSpell.frame.width,
                                height: addSpell.frame.height)
        
        self.addSubview(addSpell)
        
    }

}
