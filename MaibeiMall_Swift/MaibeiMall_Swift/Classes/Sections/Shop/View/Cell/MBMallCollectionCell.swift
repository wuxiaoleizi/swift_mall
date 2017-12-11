//
//  MBMallCollectionCell.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/11.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import UIKit


class MBMallCollectionCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 5;
        self.layer.borderWidth = 1;
        self.layer.borderColor = ColorWithHex(rgb: 0x999999, alpha: 1).cgColor
        
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - SET UP UI
    
    func setupUI() {
     
        self.contentView.addSubview(goodsImage)
        self.contentView.addSubview(goodsNameLabel)
        self.contentView.addSubview(goodsPrice)
    }
    
    lazy var goodsImage: UIImageView = {
        let goodsImage: UIImageView = UIImageView.init(frame:CGRect.zero)
        goodsImage.image = UIImage.init(named: "section")
        goodsImage.layer.borderColor = ColorWithHex(rgb: 0x999999, alpha: 1).cgColor
        goodsImage.layer.borderWidth = 0.5
        goodsImage.isUserInteractionEnabled = true

        self.contentView.addSubview(goodsImage)
        
        goodsImage.snp.makeConstraints({ (make) in
            make.top.leading.trailing.equalTo(self);
            make.height.equalTo(140)
        })
        
        return goodsImage
    }()
    
    lazy var goodsNameLabel: UILabel = {
        let goodsNameLabel: UILabel = UILabel.init(frame: CGRect.zero)
        goodsNameLabel.text = "iPad min4 128GB 金色"
        goodsNameLabel.font = KFONT(size: 12)
        self.contentView.addSubview(goodsNameLabel)
        
        goodsNameLabel.snp.makeConstraints({ (make) in
            make.leading.equalTo(self.goodsImage).offset(10)
            make.trailing.equalTo(self.goodsImage)
            make.top.equalTo(self.goodsImage.snp.bottom)
            make.height.equalTo(18)
        })
        
        return goodsNameLabel;
    }()
    
    lazy var goodsPrice: UILabel =  {
        let goodsPrice: UILabel = UILabel.init(frame: CGRect.zero)
        goodsPrice.text = "¥2000"
        goodsPrice.textColor = UIColor.red
        goodsPrice.font = KFONT(size: 12)
        self.contentView.addSubview(goodsPrice)
        
        goodsPrice.snp.makeConstraints({ (make) in
            make.leading.equalTo(self.goodsImage).offset(10)
            make.trailing.equalTo(self.goodsImage)
            make.top.equalTo(self.goodsNameLabel.snp.bottom)
            make.height.equalTo(18)
        })
        
        return goodsPrice
    }()
    



    
    
}
