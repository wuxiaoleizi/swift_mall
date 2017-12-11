//
//  Header.swift
//  MaibeiMall_Swift
//
//  Created by l.wu on 2017/12/2.
//  Copyright © 2017年 l.wu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit


//#define KButtonColor @"#29a1f7"
//#define KBUTTON_UNSELECTED_COLOR @"#dadada"
//#define KBGColor @"#f5f5f9"
//#define KWritingBlackColor @"#221815"

func BGColor() -> Int{
    return 0xf5f5f9
}

func ColorWithHex(rgb: Int) ->UIColor {
    
    return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((rgb & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(rgb & 0xFF)) / 255.0,
                   alpha: 1)
    
}

func ColorWithHex(rgb: Int, alpha: CGFloat) -> UIColor {
    return UIColor.init(red: ((CGFloat)((rgb & 0xFF0000) >> 16)) / 255.0,
                        green: ((CGFloat)((rgb & 0xFF00) >> 8)) / 255.0,
                        blue: ((CGFloat)(rgb & 0xFF)) / 255.0,
                        alpha: alpha)
}

func KMB_WIDTH() -> CGFloat {
    return UIScreen.main.bounds.size.width
}

func KMB_HEIGHT() ->CGFloat {
    return UIScreen.main.bounds.size.height
}

func KFONT(size: CGFloat) ->UIFont {
    
    return UIFont.systemFont(ofSize: size)
}

func KBOLD_FONT(size: CGFloat) ->UIFont {
    return UIFont.boldSystemFont(ofSize: size)
}

func KImage(name: NSString) ->UIImage {
    return UIImage.init(named: name as String)!
}

func ImageWidth(imageName: String) -> CGFloat {
    
    return UIImage.init(named: imageName)!.size.width
}

func ImageHeight(imageName: String) -> CGFloat {
    return UIImage.init(named: imageName)! .size.height
}


