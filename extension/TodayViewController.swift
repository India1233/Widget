//
//  TodayViewController.swift
//  extension
//
//  Created by Suresh Shiga on 19/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: CircleImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let sharedData = GroupDataManager.shared.retrieveData(key: "keyData") as? String
        label.text = sharedData
      
        
        if let image1 = GroupDataManager.shared.retrieveData(key: "image") as? String {
            image.image = UIImage(named: image1)
        }
        
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
