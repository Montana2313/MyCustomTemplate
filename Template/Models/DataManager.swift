//
//  DataManager.swift
//  Template
//
//  Created by Mac on 13.10.2019.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit

class DataManager {
    static let referance = DataManager()
    
    func request(withURL:String,andRequestType:OwnRequestType,process:()->Void){
        if let url = URL(string: withURL){
            let session = URLSession(configuration: .default)
            let task =  session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("Error var")
                }
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString as Any)
                }
            }
            
            task.resume()
        }else {
            print("URL OLuşmadı")
        }
    }
}
