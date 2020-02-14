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
func removeUserDefaultString(forkey:String){
    UserDefaults.standard.removeObject(forKey: forkey)
    UserDefaults.standard.synchronize()
}
//PROTOKOLLER
protocol CreateView {
    func MasterPage()
}
protocol SetUpViews {
    func setupViews()
    func setupFrameWithPhone(withdeviceName:PhoneType)
    func animateFrameWith(deviceName:PhoneType)
}
protocol FirebaseProcess {
    func getFirebaseDatas() // Veriler burada çekilir.
    func setDataOnFirebase() // Veriler burada aktarılır.
}
// Classlar
class UserType {
    var id:String = ""
    var username :String = ""
    var email:String = ""
    var userImage:String = ""
    init(){
        // do nothing
    }
    init(userId:String , userusername:String , useremail:String , userUserImage:String) {
        self.id = userId
        self.username = userusername
        self.email = useremail
        self.userImage = userUserImage
    }
    func setUser(){
        if self.email != "" && self.id != "" && self.userImage != "" && self.username != ""{
            if email != "" {
                UserDefaults.standard.setValue(email, forKey: "email")
                UserDefaults.standard.synchronize()
            }
            if username != "" {
                UserDefaults.standard.setValue(username, forKey: "username")
                UserDefaults.standard.synchronize()
            }
            if id != "" {
                UserDefaults.standard.setValue(id, forKey: "id")
                UserDefaults.standard.synchronize()
            }
            if userImage != "" {
                UserDefaults.standard.setValue(userImage, forKey: "imageURL")
                UserDefaults.standard.synchronize()
            }
        }
    }
    func getUser()->UserType{
        let user = UserType()
        user.email = UserDefaults.standard.string(forKey: "email") ?? ""
        user.username = UserDefaults.standard.string(forKey: "username") ?? ""
        user.id = UserDefaults.standard.string(forKey: "id") ?? ""
        user.userImage = UserDefaults.standard.string(forKey: "imageURL") ?? ""
        return user
    }
    func removeUser() {
        UserDefaults.standard.removeObject(forKey: "email")
        UserDefaults.standard.removeObject(forKey: "username")
        UserDefaults.standard.removeObject(forKey: "id")
        UserDefaults.standard.removeObject(forKey: "imageURL")
        UserDefaults.standard.synchronize()
    }
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
enum OwnRequestType {
    case GET
    case PUT
    case DELETE
    case POST
}
enum LoginScreen {
    case Login
    case CreateUser
}
enum Side {
    case Left
    case Top
    case Bottom
    case Right
}
