//
//  MBMallHeaderReusableView.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/11.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import UIKit

class MBMallHeaderReusableView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(picture)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: - SET UP UI
    lazy var picture: UIImageView = {
       let picture: UIImageView = UIImageView.init(frame: CGRect.zero)
        picture.layer.borderColor = ColorWithHex(rgb: 0x999999).cgColor
        picture.image = UIImage.init(named: "head")
        self.addSubview(picture)
        
        picture.snp.makeConstraints({ (make) in
            make.top.leading.trailing.equalTo(self)
            make.height.equalTo(180)
        })
        
        return picture
    }()
    
    
}
