//
//  BaseController.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/2.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import UIKit


class BaseController: UIViewController {

    var backButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        self.view.backgroundColor = ColorWithHex(rgb: BGColor())
        
        self.navigationController?.navigationBar .titleTextAttributes = [ NSAttributedStringKey.foregroundColor: UIColor.black]
        
        backUI()
        
        hideFirstBackButton()
        
        setupUI()
        
        
    }
    
    open func setupUI() {
        
    }
    
    func hideFirstBackButton() {
        
        guard let controller = self.navigationController?.viewControllers.first else {
            print("当前类为空")
            return
        }

        
        if controller.isEqual(self) {
            self.backButton?.isHidden = true
            self.navigationController?.navigationBar.tintColor = UIColor.yellow
        }
        
    
    }
    
    func backUI() {
//        self.backButton = UIButton.init(type: UIButtonType.custom)!
        self.backButton = UIButton.init(type: UIButtonType.custom)
        self.backButton?.isHidden = false
        self.backButton?.frame = CGRect.init(x: -20, y: 0, width: 50, height: 30)
        self.backButton?.setImage(KImage(name: "icon_my_next"), for: UIControlState.normal)
        self.backButton?.imageEdgeInsets = UIEdgeInsetsMake(0, -40, 0, 0)
        
        let leftButton = UIBarButtonItem.init(customView: self.backButton!)
        self.navigationItem.leftBarButtonItem = leftButton
        
        self.backButton?.addTarget(self, action:#selector(back), for: UIControlEvents.touchUpInside)
        
    }
    
  
    
    @objc func back() {
        print("点击按钮")
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
}
