//
//  SelectorButton.swift
//  Spellbook
//
//  Created by Michael Craun on 9/28/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
@IBDesignable

class SelectorButton: UIButton {

    let titleLbl = UILabel()
    let subtitleLbl = UILabel()
    
    var title = "SELECTOR"
    var subtitle = "..."

    override func layoutSubviews() {
        super.layoutSubviews()
        
        layoutDivider()
        layoutTitleLabel()
        layoutSubtitle()
        
    }
    
    func layoutDivider() {
        
        let divider = UIView()
        
        divider.backgroundColor = UIColor.black
        divider.frame = CGRect(x: 0,
                               y: self.frame.height,
                               width: self.frame.width,
                               height: 1)
        
        self.addSubview(divider)
        
    }
    
    func layoutTitleLabel() {
        
        titleLbl.font = UIFont(name: "Arial", size: 8)
        titleLbl.textColor = UIColor.lightGray
        titleLbl.text = title
        titleLbl.sizeToFit()
        titleLbl.frame = CGRect(x: self.frame.width / 2 - titleLbl.frame.width / 2,
                                y: 1,
                                width: self.frame.width,
                                height: titleLbl.frame.height)
        
        self.addSubview(titleLbl)
        
    }
    
    func layoutSubtitle() {
        
        subtitleLbl.font = UIFont(name: "Hoefler Text", size: 14)
        subtitleLbl.textColor = UIColor.black
        subtitleLbl.text = subtitle
        subtitleLbl.sizeToFit()
        subtitleLbl.frame = CGRect(x: self.frame.width / 2 - subtitleLbl.frame.width / 2,
                                   y: self.frame.height - subtitleLbl.frame.height - 5,
                                   width: subtitleLbl.frame.width,
                                   height: subtitleLbl.frame.height)
        
        self.addSubview(subtitleLbl)
        
    }
    
    func refreshButton() {
        
        subtitleLbl.text = subtitle
        subtitleLbl.sizeToFit()
        subtitleLbl.frame = CGRect(x: self.frame.width / 2 - subtitleLbl.frame.width / 2,
                                   y: self.frame.height - subtitleLbl.frame.height - 5,
                                   width: subtitleLbl.frame.width,
                                   height: subtitleLbl.frame.height)
        
    }
}
