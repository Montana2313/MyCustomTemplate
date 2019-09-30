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
    private var denemeView = UIView()
    private var denemeTableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = masterColor
        setupViews()
        setupFrameWithPhone(withdeviceName: getDeviceModel())
    }
    @objc func denemeTapped(){
        exView.referance.showAlert(with: self.view)
    }
}
extension ViewController : SetUpViews{
    func setupViews() {
        denemeButton = {
            let btn = DefaultItems.referance.defButton(withText: "Deeneme", andButtonColor: .blue)
            btn.addTarget(self, action: #selector(ViewController.denemeTapped), for: .touchUpInside)
            return btn
        }()
        denemeTextField = {
            let txt = DefaultItems.referance.defTextField(withPlaceHolder: "Deneme", andHolderColor: .black)
            return txt
        }()
        denemeView = {
            let view = DefaultItems.referance.defView(withColor: .green)
            return view
        }()
        denemeTableView = {
            let tableView = DefaultItems.referance.defTableView(with: exCell.self)
            tableView.delegate = self
            tableView.dataSource = self
            return tableView
        }()
        self.denemeView.addSubview(denemeTextField)
        self.denemeView.addSubview(denemeButton)
        self.view.addSubview(denemeView)
        self.view.addSubview(denemeTableView)
    }
    func setupFrameWithPhone(withdeviceName: PhoneType) {
        self.denemeView.frame = CGRect(x: 10, y: 100, width: screenWith - 20, height: 400)
        self.denemeButton.frame = CGRect(x: 50, y: 200, width: screenWith - 100, height: 60)
        self.denemeTextField.frame = CGRect(x: 50, y: 280, width: screenWith - 100, height: 60)
        self.denemeTableView.frame = CGRect(x: 0, y: 510, width: screenWith, height: screenHeigth - 510)
        
        CustomizeItems.referance.roundedView25(with: self.denemeView)
        CustomizeItems.referance.roundedButton25(with: self.denemeButton)
        CustomizeItems.referance.roundedTextfield25(with: self.denemeTextField)
    }
}
extension ViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! exCell
        cell.AnasayfaKonuName.text = "deneme"
        cell.AnasayfaKonuYazar.text = "deneme"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}

