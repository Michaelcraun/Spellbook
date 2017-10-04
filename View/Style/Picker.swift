//
//  Picker.swift
//  Spellbook
//
//  Created by Michael Craun on 9/29/17.
//  Copyright © 2017 Craunic Productions. All rights reserved.
//

import UIKit
@IBDesignable

class Picker: UIPickerView {
    
    let doneButton = SystemButton()

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        
        layoutControlBar()
        
    }

    func layoutControlBar() {
        
        let controlBar = UIView()
        
        controlBar.backgroundColor = UIColor.lightGray
        controlBar.frame = CGRect(x: 0,
                                  y: 0,
                                  width: self.frame.width,
                                  height: 35)
        
        doneButton.addTarget(self, action: #selector(donePressed(sender:)), for: .touchUpInside)
        doneButton.frame = CGRect(x: controlBar.frame.width - doneButton.frame.width - 5,
                                  y: controlBar.frame.height / 2 - doneButton.frame.height / 2,
                                  width: 30,
                                  height: 30)
        
        self.addSubview(controlBar)
        controlBar.addSubview(doneButton)
        
    }
    
    @objc func donePressed(sender: SystemButton!) {
        
        print("done pressed")
        
    }
}
