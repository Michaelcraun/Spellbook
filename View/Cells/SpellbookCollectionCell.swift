//
//  SpellbookCell.swift
//  Spellbook
//
//  Created by Michael Craun on 9/26/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit

class SpellbookCell: UICollectionViewCell {
    
    var iconView = UIImageView()
    var titleLabel = UILabel()
    var editionLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = UIColor.white
        
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        
    }
    
    func configureCell(spellbook: Spellbook) {
        
        let spellbookClass = spellbook.characterClass
        
        layoutTitleLabel(title: spellbook.characterName!)
        layoutEditionLabel(edition: spellbook.edition!)
        
        //MARK: Test calls -- Will replace with items corresponding to CoreData
        addShadow(color: .cyan)
        
    }
    
    func addShadow(color: UIColor) {
        
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowOpacity = 0.5
        
    }
    
    func layoutIconView(image: UIImage) {
        
        iconView.image = image
        iconView.contentMode = .scaleAspectFit
        
        iconView.frame = CGRect(x: 5,
                                y: 5,
                                width: self.frame.width - 10,
                                height: self.frame.height - 10)
        
        self.addSubview(iconView)
        
    }
    
    func layoutTitleLabel(title: String) {
        
        titleLabel.font = UIFont(name: "Hoefler Text", size: 10)
        titleLabel.text = title
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = UIColor(red: 15, green: 15, blue: 15, alpha: 0.5)
        titleLabel.sizeToFit()
        
        titleLabel.frame = CGRect(x: 5,
                                  y: self.frame.height - titleLabel.frame.height - 5,
                                  width: self.frame.width - 10,
                                  height: titleLabel.frame.height)
        
        self.addSubview(titleLabel)
        
    }
    
    func layoutEditionLabel(edition: String) {
        
        editionLabel.font = UIFont(name: "Hoefler Text", size: 15)
        editionLabel.text = edition
        editionLabel.textAlignment = .center
        editionLabel.backgroundColor = UIColor.white
        
        editionLabel.layer.cornerRadius = 13
        editionLabel.layer.borderColor = UIColor.black.cgColor
        editionLabel.layer.borderWidth = 1
        
        editionLabel.frame = CGRect(x: self.frame.width - 31,
                                    y: 5,
                                    width: 26,
                                    height: 26)
        
        self.addSubview(editionLabel)
        
    }
}
