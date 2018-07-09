//
//  CheckBox.swift
//  RadioButton
//
//  Created by dohien on 7/5/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit
class CheckBox : UIButton {
    static let shared: CheckBox = CheckBox()
    let checkedImnage = UIImage(named: "checked")! as UIImage
    let uncheckedImage = UIImage(named: "unchecked")! as UIImage
    
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImnage, for: UIControlState.normal)
            }else {
                self.setImage(uncheckedImage, for: UIControlState.normal)
            }
        }
    }
    override func awakeFromNib() {
        self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControlEvents.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton){
        if sender == self{
            isChecked = !isChecked
        }
    }
}
