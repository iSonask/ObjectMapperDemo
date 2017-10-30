//
//  ViewController.swift
//  ObjectMapperDemo
//
//  Created by FARHAN IT SOLUTION on 16/03/17.
//  Copyright © 2017 Addon Web Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib. https://api.randomuser.me/?page=3&results=10
        NetworkManager.request(string: "https://itunes.apple.com/search?term=Linkin+Park") { json in
            if let json = json, let array = json["results"] as? [[String:Any]] {
                for item in array {
                    if let itunceItem = ItunceItem(JSON: item) {
                        print("----------------------------------------------")
                        print(itunceItem.description)
                    }
                }
            }
        }

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        callAPI()
        callEME()
    }
    func callAPI() -> Void {
        NetworkManager.request(string: "https://api.randomuser.me/?page=3&results=10") { json in
            if let json = json, let array = json["results"] as? [[String:Any]] {
                for item in array {
                    if let itunceItem = RandomItem(JSON: item) {
                        print("----------------------------------------------")
                        print(itunceItem.description)
                        print(itunceItem.dob!)
                    }
                }
            }
        }

    }
    //https://www.emeraldsbazar.com/Webservice/catalogproductlistpandent.php 
    func callEME() -> Void {
        NetworkManager.request(string: "https://www.emeraldsbazar.com/Webservice/catalogproductlistpandent.php ") { json in
            if let json = json, let array = json["data"] as? [[String:Any]] {
                for item in array {
                    if let itunceItem = RandomItem(JSON: item) {
                        print("----------------------------------------------")
                        print(itunceItem.description)
                        print(itunceItem.name!)
                        print(itunceItem.image_url!)
                        print(itunceItem.price!)
                        print(itunceItem.product_id!)
                    }
                }
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

