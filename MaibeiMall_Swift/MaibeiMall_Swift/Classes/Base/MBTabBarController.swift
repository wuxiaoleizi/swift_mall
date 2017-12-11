//
//  MBTabBarController.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/8.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import UIKit


class MBTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shopVC: MBShopControllerController = MBShopControllerController()
        let mineVC: MBMineController = MBMineController()
        
        self.tabBarSubController(title: "商城", image:"home_my_n", cls: shopVC)
        self.tabBarSubController(title: "我的", image:"home_cash_n", cls: mineVC)
    }
    
    func tabBarSubController(title: String, image:String, cls: UIViewController) {
        
        cls.tabBarItem.title = title
        cls.tabBarItem.image = UIImage.init(named: image)
        cls.tabBarItem.selectedImage = UIImage.init(named: image + "-selected")
    
        let nav = UINavigationController.init()
        self.addChildViewController(nav)
        
        nav.title = title as String
        nav.addChildViewController(cls)
        
    }
 
}
