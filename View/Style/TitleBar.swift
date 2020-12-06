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
    
    let titleBarDivider = UIView()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    var subtitle = "TEST"

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = UIColor.white
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowOpacity = 0.75
        
        layoutTitleBar()
        layoutContents()
        
    }
    
    func layoutTitleBar() {
        
        titleBarDivider.backgroundColor = UIColor.black
        titleBarDivider.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleBarDivider)
        
        let dividerBottom = titleBarDivider.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        let dividerWidth = titleBarDivider.widthAnchor.constraint(equalTo: self.widthAnchor)
        let dividerHeight = titleBarDivider.heightAnchor.constraint(equalToConstant: 1)
        
        let dividerConstraints = [dividerBottom, dividerWidth, dividerHeight]
        
        NSLayoutConstraint.activate(dividerConstraints)
        
    }
    
    func layoutContents() {
        
        titleLabel.font = UIFont(name: "Hoefler Text", size: 20)
        titleLabel.text = "SPELLBOOK"
        titleLabel.sizeToFit()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        subtitleLabel.font = UIFont(name: "Hoefler Text", size: 10)
        subtitleLabel.textColor = UIColor.gray
        subtitleLabel.text = subtitle
        subtitleLabel.sizeToFit()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.addSubview(titleLabel)
        self.addSubview(subtitleLabel)
        
        let subtitleBottom = subtitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        let subtitleCenterX = subtitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        
        let titleBottom = titleLabel.bottomAnchor.constraint(equalTo: subtitleLabel.topAnchor, constant: -1)
        let titleCenterX = titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        
        let contentsConstraints = [subtitleBottom, subtitleCenterX,
                                   titleBottom, titleCenterX]
        
        NSLayoutConstraint.activate(contentsConstraints)
        
    }
}
