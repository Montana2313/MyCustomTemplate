//
//  CustomizeItems.swift
//  Template
//
//  Created by Mac on 30.09.2019.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit

class CustomizeItems {
    static let referance = CustomizeItems()
    func roundedView25(with view:UIView){
        view.layer.cornerRadius = view.frame.size.width / 25.0
        view.layer.masksToBounds = true
        view.clipsToBounds = true
    }
    func roundedButton25(with button:UIButton){
        button.layer.cornerRadius = button.frame.size.width / 25.0
        button.layer.masksToBounds = true
        button.clipsToBounds = true
    }
    func roundedTextfield25(with textfield:UITextField){
        textfield.layer.cornerRadius = textfield.frame.size.width / 25.0
        textfield.layer.masksToBounds = true
        textfield.clipsToBounds = true
    }
    func roundedImageView(with imageView:UIImageView){
        imageView.layer.cornerRadius = imageView.frame.size.width / 2.0
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
    }
}
