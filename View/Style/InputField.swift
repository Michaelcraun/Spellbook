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
        
        layoutTitleLabel()
        layoutDivider()
        
    }
    
    func layoutTitleLabel() {
        
        let titleLabel = UILabel()
        
        titleLabel.font = UIFont(name: "Arial", size: 8)
        titleLabel.textColor = UIColor.lightGray
        titleLabel.text = title
        titleLabel.sizeToFit()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.frame = CGRect(x: 2,
//                                  y: 1,
//                                  width: self.frame.width,
//                                  height: titleLabel.frame.height)
        
        self.addSubview(titleLabel)
        
        let titleLeft = titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 2)
        let titleTop = titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 1)
        
        let titleConstraints = [titleLeft, titleTop]
        NSLayoutConstraint.activate(titleConstraints)
        
    }
    
    func layoutDivider() {
        
        let divider = UIView()
        
        divider.backgroundColor = UIColor.black
        divider.translatesAutoresizingMaskIntoConstraints = false
//        divider.frame = CGRect(x: 0,
//                               y: self.frame.height,
//                               width: self.frame.width,
//                               height: 1)
        
        self.addSubview(divider)
        
        let dividerLeft = divider.leftAnchor.constraint(equalTo: self.leftAnchor)
        let dividerRight = divider.rightAnchor.constraint(equalTo: self.rightAnchor)
        let dividerBottom = divider.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        let dividerHeight = divider.heightAnchor.constraint(equalToConstant: 1)
        
        let dividerConstraints = [dividerLeft, dividerRight, dividerBottom, dividerHeight]
        NSLayoutConstraint.activate(dividerConstraints)
        
    }
    
//    override func textRect(forBounds bounds: CGRect) -> CGRect {
//        return bounds.insetBy(dx: 2, dy: 4)
//    }
//    
//    override func editingRect(forBounds bounds: CGRect) -> CGRect {
//        return textRect(forBounds: bounds)
//    }
}
