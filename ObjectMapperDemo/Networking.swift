//
//  Networking.swift
//  ObjectMapperDemo
//
//  Created by FARHAN IT SOLUTION on 16/03/17.
//  Copyright © 2017 Addon Web Solutions. All rights reserved.
//

import Foundation
import Alamofire

// data loader
class NetworkManager {
    
    class func request(string: String, block: @escaping ([String: Any]?)->()) {
        Alamofire.request(string).responseJSON { response in
            
            // print(response.request)  // original URL request
            // print(response.response) // HTTP URL response
            // print(response.data)     // server data
            // print(response.result)   // result of response serialization
            
            if let result = response.result.value as? [String: Any] {
                block(result)
            } else {
                block(nil)
            }
        }
    }
}
