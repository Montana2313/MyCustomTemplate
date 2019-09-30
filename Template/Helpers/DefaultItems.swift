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
        textfield.textAlignment = .center
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
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.white.cgColor
        view.backgroundColor = withColor
        return view
    }
    func defTableView(with registeredClass:AnyClass?)->UITableView{
        let tableView = UITableView()
        tableView.separatorStyle = .none
        if registeredClass != nil{
            tableView.register(registeredClass, forCellReuseIdentifier: "cell")
        }
        tableView.backgroundColor = .clear
        return tableView
    }
}
