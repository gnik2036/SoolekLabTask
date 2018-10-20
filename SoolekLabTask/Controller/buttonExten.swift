//
//  buttonExten.swift
//  SoolekLabTask
//
//  Created by shady on 10/19/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

import UIKit

extension UIButton
{
    func vibration ()
    {
        let buttonVibration = CABasicAnimation(keyPath: "position")
        
        buttonVibration.duration = 0.05
        
        buttonVibration.repeatCount = 10
        
        buttonVibration.autoreverses = true
        
        buttonVibration.fromValue = CGPoint (x: self.center.x - 4.0, y: self.center.y)
        
        buttonVibration.toValue = CGPoint (x: self.center.x + 4.0, y: self.center.y)
        
        layer.add(buttonVibration, forKey: "position")
    
    }
}
