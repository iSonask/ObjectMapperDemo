//
//  ItunceItem.swift
//  ObjectMapperDemo
//
//  Created by FARHAN IT SOLUTION on 16/03/17.
//  Copyright © 2017 Addon Web Solutions. All rights reserved.
//

import Foundation
import ObjectMapper

class ItunceItem: Mappable {
    var wrapperType: String?
    var artistId:Int?
    var trackName:String?
    var trackPrice: Double?
    var currency:String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    private func unwrapedDescription(value: Any?) -> String {
        if let value = value {
            return "\(value)"
        }
        return "[no data]"
    }
    
    var description: String {
        var _result = " trackName: \(unwrapedDescription(value: trackName))\n"
        _result += " artistId: \(unwrapedDescription(value: artistId))\n"
        _result += " wrapperType: \(unwrapedDescription(value: wrapperType))\n"
        _result += " price: "
        
        if let trackPrice = self.trackPrice, let currency = self.currency {
            _result += "\(trackPrice) \(currency)\n"
        } else {
            _result += "[no data]"
        }
        return _result
    }
    
    func mapping(map: Map) {
        trackName           <- map["trackName"]
        artistId            <- map["artistId"]
        wrapperType         <- map["wrapperType"]
        trackPrice          <- map["trackPrice"]
        currency            <- map["currency"]
    }
}

class RandomItem: Mappable {
    var gender: String?
    var email:String?
    var dob:String?
    var registered: String?
    var phone:String?
    
    
    var product_id: Int?
    var name:String?
    var price:Int?
    var image_url: String?

    required convenience init?(map: Map) {
        self.init()
    }
    
    private func unwrapedDescription(value: Any?) -> String {
        if let value = value {
            return "\(value)"
        }
        return "[no data]"
    }
    
    var description: String {
        var _result = " gender: \(unwrapedDescription(value: gender))\n"
        _result += " email: \(unwrapedDescription(value: email))\n"
        _result += " registered: \(unwrapedDescription(value: registered))\n"
        _result += " dob:  \(unwrapedDescription(value: dob))\n"
        _result += " phone:  \(unwrapedDescription(value: phone))\n"
        

        _result += " product id: \(unwrapedDescription(value: product_id))\n"
        _result += " name: \(unwrapedDescription(value: name))\n"
        _result += " price:  \(unwrapedDescription(value: price))\n"
        _result += " image_url:  \(unwrapedDescription(value: image_url))\n"
        

        if let dob_ = self.dob, let phone_ = self.phone {
            _result += "\(dob_) \(phone_)\n"
        } else {
            _result += "[no data]"
        }
        return _result
    }
    
    func mapping(map: Map) {
        gender           <- map["gender"]
        email            <- map["email"]
        dob         <- map["dob"]
        registered          <- map["registered"]
        phone            <- map["phone"]
        product_id         <- map["product_id"]
        name         <- map["name"]
        price         <- map["price"]
        image_url         <- map["image_url"]
    }
}
