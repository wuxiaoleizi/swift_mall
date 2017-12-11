//
//  MBShopControllerController.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/8.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import UIKit

class MBShopControllerController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.title = "商城"
        
    
        
    }
    
    // MARK: - SET UP UI
    
    override func setupUI() {
        super.setupUI()
        
        self.view.addSubview(mallView)
    }
    
    lazy var mallView: MBMallView = {
        let mallView: MBMallView = MBMallView.init(frame: CGRect.zero)
        self.view.addSubview(mallView)
        
        mallView.snp.makeConstraints({ (make) in
            make.edges.equalTo(UIEdgeInsetsMake(0, 0, 0, 0))
        })
        
        return mallView
        
    }()
    
    
}


