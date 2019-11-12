//
//  LoginScreen.swift
//  Template
//
//  Created by Mac on 13.11.2019.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    let login = CustomLoginScreen(borderColor: .orange, buttoncolor: .cyan)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        login.setView(currentView: self.view)
    }
}
