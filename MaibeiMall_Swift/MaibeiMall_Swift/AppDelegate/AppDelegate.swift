//
//  AppDelegate.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/2.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController = MBTabBarController()
        self.window?.makeKeyAndVisible()
        
        
        return true
    }

   


}

