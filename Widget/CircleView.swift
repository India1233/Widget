//
//  CircleView.swift
//  Widget
//
//  Created by Suresh Shiga on 19/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CircleImage: UIImageView {
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var maskToBounds:Bool = true {
        didSet{
            self.layer.masksToBounds = maskToBounds
        }
    }
    
    func createLiveRendering()  {
        self.layer.cornerRadius = 0.0
        self.layer.masksToBounds = true
    }
}
