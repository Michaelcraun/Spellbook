//
//  SystemButton.swift
//  Spellbook
//
//  Created by Michael Craun on 9/26/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
@IBDesignable

class SystemButton: UIButton {
    
    var iconView = UIImageView()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        
    }

    func addIcon(image: UIImage) {
        
        
    }
}
