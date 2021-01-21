//
//  ViewController.swift
//  Commons
//
//  Created by Lleitao1 on 01/21/2021.
//  Copyright (c) 2021 Lleitao1. All rights reserved.
//

import UIKit
import Commons

class ViewController: UIViewController {
    
    let price = 1.99
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Formatter.currency.locale = .uk
        print(price.currency)  // "£1.99\n"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

