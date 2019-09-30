//
//  Generals.swift
//  Template
//
//  Created by Mac on 29.09.2019.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit
//import NVActivityIndicatorView

//TANIMLAMALAR
let screenWith = UIScreen.main.bounds.width
let screenHeigth = UIScreen.main.bounds.height
let masterColor = UIColor.white
// REnK TANIMLAMALARI

var currentUserId : String {
    get{
//        return Auth.auth().currentUser!.uid
         return ""
    }
}
//FOMKSİYONLAR
func getDeviceModel() -> PhoneType {
    guard let appDel = UIApplication.shared.delegate as? AppDelegate else {fatalError("error")}
    let deviceModel : PhoneType = appDel.deviceModel()
    return deviceModel
}
//func getCustomLoader() -> NVActivityIndicatorView{
//     let loader = NVActivityIndicatorView(frame: CGRect(x:(screenWith / 2) - 50, y: (screenHeigth / 2) - 50, width: 100, height: 100), type: .orbit, color: buttoncolor, padding: 0)
//    return loader
//}
func getUserName()->String {
    if let username = UserDefaults.standard.string(forKey: "username"){
        return username
    }
    return ""
}
func setUserDefaultsString(withValue:String,forKey:String){
    UserDefaults.standard.setValue(withValue, forKey: forKey)
    UserDefaults.standard.synchronize()
}
func createDefaultAlert(withTitle:String , andDesc:String , andButtonTitle:String)->UIAlertController{
    let alertController = UIAlertController(title: withTitle, message: andDesc, preferredStyle: .alert)
    let actionButton = UIAlertAction(title: andButtonTitle, style: .cancel, handler: nil)
    alertController.addAction(actionButton)
    return alertController
}
//PROTOKOLLER
protocol CreateView {
    func MasterPage()
}
protocol SetUpViews {
    func setupViews()
    func setupFrameWithPhone(withdeviceName:PhoneType)
}
protocol FirebaseProcess {
    func getFirebaseDatas() // Veriler burada çekilir.
    func setDataOnFirebase() // Veriler burada aktarılır.
}
// ENUMLAR
enum PageType {
    // Page Names
    case FirstScreen
    case Anasayfa
    case PlusVC
    case ProfileVC
}
enum PhoneType {
    // Phone Types
    case iPhoneXR
    case iPhoneX
    case iPhoneXSMax
    case iPhone8Plus
    case iPhone8
    case iPhoneSE
    case Hata
}
