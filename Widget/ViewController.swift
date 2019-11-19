//
//  ViewController.swift
//  Widget
//
//  Created by Suresh Shiga on 19/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

// Refferal  https://www.youtube.com/watch?v=skbWSQlcN5k

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        GroupDataManager.shared.saveData(value: "Hello Widget", key: "keyData")
        GroupDataManager.shared.saveData(value: "dog", key: "image")
    }


}

