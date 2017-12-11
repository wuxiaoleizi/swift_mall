//
//  MBMallView.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/11.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import UIKit

class MBMallView: BaseView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let mallCell: String = "mallCell";
    let headerIdentifier: String = "headerIdentifier"
    let minLineSpace: CGFloat = 10
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        self.setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupUI() {
        
        self.addSubview(collectionView)
    }
    
    // MARK: - UI

    lazy var collectionView: UICollectionView = {
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize.init(width: (KMB_WIDTH() - 40) / 2, height: 180)

        let collectionView: UICollectionView = UICollectionView.init(frame: CGRect.zero, collectionViewLayout:layout)
        collectionView.backgroundColor = UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.register(MBMallCollectionCell.classForCoder(), forCellWithReuseIdentifier: mallCell)
        collectionView.register(MBMallHeaderReusableView.classForCoder(), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerIdentifier)
        
        self.addSubview(collectionView)
        
        collectionView.snp.makeConstraints({ (make) in
            make.edges.equalTo(UIEdgeInsetsMake(0, 10, 0, 10))
        })
        return collectionView
    }()
    
    lazy var headerView: MBMallHeaderReusableView = {
        let headerView: MBMallHeaderReusableView = MBMallHeaderReusableView.init(frame: CGRect.zero)
        
        self.addSubview(headerView)
        
        headerView.snp.makeConstraints({ (make) in
            make.top.leading.trailing.equalTo(self)
            make.height.equalTo(200)
        })
        
        return headerView
    }()
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MBMallCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: mallCell, for: indexPath) as!  MBMallCollectionCell
        return cell
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return minLineSpace
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        return minLineSpace
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
    {
        return CGSize.init(width: KMB_WIDTH(), height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
    {
        let footer: UICollectionReusableView = UICollectionReusableView.init(frame: CGRect.zero)
        if kind == UICollectionElementKindSectionHeader {
            self.headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerIdentifier, for: indexPath) as! MBMallHeaderReusableView
            return self.headerView
        } else {
            return footer
        }
    }

    
    
    
}
