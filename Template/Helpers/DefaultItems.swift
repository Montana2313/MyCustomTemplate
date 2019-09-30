//
//  DefaultItems.swift
//  Template
//
//  Created by Mac on 29.09.2019.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit

class DefaultItems {
    static let referance = DefaultItems()
    func defTextField(withPlaceHolder:String, andHolderColor:UIColor)->UITextField{
        let textfield = UITextField()
        textfield.attributedPlaceholder = NSAttributedString(string: withPlaceHolder, attributes: [NSAttributedString.Key.foregroundColor : andHolderColor])
        textfield.textColor = .black
        textfield.backgroundColor = .white
        return textfield
    }
    func defButton(withText:String,andButtonColor:UIColor)->UIButton{
        let button = UIButton()
        button.setTitle(withText, for: .normal)
        button.backgroundColor = andButtonColor
        return button
    }
    func defLabel(withText:String,andLabelColor:UIColor) -> UILabel {
        let label = UILabel()
        label.text = withText
        label.textColor = andLabelColor
        return label
    }
    func defView(withColor : UIColor)->UIView{
        let view = UIView()
        view.backgroundColor = withColor
        return view
    }
    
}
