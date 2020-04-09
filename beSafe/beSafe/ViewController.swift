//
//  ViewController.swift
//  beSafe
//
//  Created by Subomi Popoola on 3/2/20.
//  Copyright © 2020 Subomi Popoola. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func makeRequest(){
        let parameters: [String: AnyObject] = ["Authorization": "Bearer popoolaogooluwasubomi@gmail.com:1NtyDSQg3ZF/W7Oul39XKA=="]
        let url = "https://sandbox-authservice.priaid.ch/login"
        print("YEs")
        Alamofire.request(.POST, url, parameters: parameters, encoding: .JSON)
            .responseJSON { request, response, JSON, error in
                print("YS")
                print(response)
                print(JSON)
                print(error)
            }
    }

}

