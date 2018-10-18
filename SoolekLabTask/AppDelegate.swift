//
//  AppDelegate.swift
//  SoolekLabTask
//
//  Created by shady on 10/18/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        
        FirebaseApp.configure()
        
        
        
        return true
    }

}

