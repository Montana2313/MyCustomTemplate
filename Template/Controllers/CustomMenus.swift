//
//  CustomMenus.swift
//  Template
//
//  Created by Mac on 15.11.2019.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class CustomMenus: UIViewController {
    private var topMenuButton = UIButton()
    private var topMenuView = UIView()
    private var topMenuButton1 = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupViews()
        self.setupFrameWithPhone(withdeviceName: getDeviceModel())
        animateFrameWith(deviceName: getDeviceModel())
    }
    // buralara devam edilecek
    @objc func leftButtonTapped(){
        self.topMenuView.addSubview(self.topMenuButton1)
        UIView.animate(withDuration: 2.0) {
            self.topMenuView.frame = CGRect(x: 20, y: 50, width: screenWith - 40, height: 200)
            self.animateFrameWith(deviceName: getDeviceModel())
        }
//        self.view.addSubview(CustomAlerts.referance.createCustomAlertviewwithDefaultButton(withCurrent: self.view, andColor: .red, desc: "Selamlar arkadşalar bu benim ilk alertim", buttonDesc: "Anladım", buttonColor: .red))
    }
}
extension CustomMenus:SetUpViews{
    func setupViews() {
        self.topMenuButton = {
            let button = DefaultItems.referance.defButton(withText: "TopMenu", andButtonColor: .black)
            button.addTarget(self, action: #selector(leftButtonTapped), for: .touchUpInside)
            return button
        }()
        self.topMenuView = {
            return DefaultItems.referance.defView(withColor: .red)
        }()
        self.topMenuButton1 = {
            return DefaultItems.referance.defButton(withText: "Anasayfa", andButtonColor: .black)
        }()
        self.view.addSubview(self.topMenuView)
        self.view.addSubview(self.topMenuButton)
    }
    
    func setupFrameWithPhone(withdeviceName: PhoneType) {
        self.topMenuView.frame = CGRect(x:20, y: -200, width: screenWith - 40, height: 200)
        self.topMenuButton.frame = Frames(width: 100, height: 50).topToBottomBeyond
    }
    func animateFrameWith(deviceName: PhoneType) {
        UIView.animate(withDuration: 1.0) {
            self.topMenuButton.frame = Frames(width: 100, height: 50).topToBottom
        }
    }
    
    
}
