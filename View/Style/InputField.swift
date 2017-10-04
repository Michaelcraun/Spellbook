//
//  InputField.swift
//  Spellbook
//
//  Created by Michael Craun on 9/28/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
@IBDesignable

class InputField: UITextField {

    var title = "TITLE"

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.font = UIFont(name: "Hoefler Text", size: 14)
        
        layoutTitleLabel()
        layoutDivider()
        
    }
    
    func layoutTitleLabel() {
        
        let titleLabel = UILabel()
        
        titleLabel.font = UIFont(name: "Arial", size: 8)
        titleLabel.textColor = UIColor.lightGray
        titleLabel.text = title
        titleLabel.sizeToFit()
        titleLabel.frame = CGRect(x: 2,
                                  y: 1,
                                  width: self.frame.width,
                                  height: titleLabel.frame.height)
        
        self.addSubview(titleLabel)
        
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
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 2, dy: 10)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}
