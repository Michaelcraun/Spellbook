//
//  TitleBar.swift
//  Spellbook
//
//  Created by Michael Craun on 9/25/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
@IBDesignable

class TitleBar: UIView {
    
    var subtitle = "TEST"

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = UIColor.white
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowOpacity = 0.75
        
        layoutTitleBar()
        
    }
    
    func layoutTitleBar() {
        
        let titleBarDivider = UIView()
        
        titleBarDivider.backgroundColor = UIColor.black
        titleBarDivider.frame = CGRect(x: 0,
                                       y: self.frame.height,
                                       width: self.frame.width,
                                       height: 1)
        
        self.addSubview(titleBarDivider)
        
        layoutTitle()
        layoutSubtitle()
        
    }

    func layoutTitle() {
        
        let titleLabel = UILabel()
        
        titleLabel.font = UIFont(name: "Hoefler Text", size: 20)
        titleLabel.text = "SPELLBOOK"
        titleLabel.sizeToFit()
        titleLabel.frame = CGRect(x: self.frame.width / 2 - titleLabel.frame.width / 2,
                                  y: self.frame.height / 2 - titleLabel.frame.height / 2 - 5,
                                  width: titleLabel.frame.width,
                                  height: titleLabel.frame.height)
        
        self.addSubview(titleLabel)
        
    }
    
    func layoutSubtitle() {
        
        let subtitleLabel = UILabel()
        
        subtitleLabel.font = UIFont(name: "Hoefler Text", size: 10)
        subtitleLabel.textColor = UIColor.gray
        subtitleLabel.text = subtitle
        subtitleLabel.sizeToFit()
        subtitleLabel.frame = CGRect(x: self.frame.width / 2 - subtitleLabel.frame.width / 2,
                                     y: self.frame.height / 2 - subtitleLabel.frame.height / 2 + 10,
                                     width: subtitleLabel.frame.width,
                                     height: subtitleLabel.frame.height)
        
        self.addSubview(subtitleLabel)
        
    }
}
