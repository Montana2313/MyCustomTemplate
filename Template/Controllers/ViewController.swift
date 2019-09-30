//
//  ViewController.swift
//  Template
//
//  Created by Mac on 29.09.2019.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var denemeButton = UIButton()
    private var denemeTextField = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = masterColor
        setupViews()
        setupFrameWithPhone(withdeviceName: getDeviceModel())
    }
}
extension ViewController : SetUpViews{
    func setupViews() {
        denemeButton = {
            let btn = DefaultItems.referance.defButton(withText: "Deeneme", andButtonColor: .blue)
            return btn
        }()
        denemeTextField = {
            let txt = DefaultItems.referance.defTextField(withPlaceHolder: "deneme", andHolderColor: .black)
            return txt
        }()
        self.view.addSubview(denemeTextField)
        self.view.addSubview(denemeButton)
    }
    func setupFrameWithPhone(withdeviceName: PhoneType) {
        self.denemeButton.frame = CGRect(x: 50, y: 200, width: screenWith - 100, height: 60)
        self.denemeTextField.frame = CGRect(x: 50, y: 280, width: screenWith - 100, height: 60)
    }
}

