//
//  SWConstants.swift
//  SWCookMenu
//
//  Created by Selwyn Bi on 2017/8/31.
//  Copyright © 2017年 selwyn. All rights reserved.
//

import UIKit

func SWLog<T>(_ message: T, filePath: String = #file, rowCount: Int = #line) {
    #if DEBUG
        let fileName = (filePath as NSString).lastPathComponent.replacingOccurrences(of: ".swift", with: "")
        print("file:" + fileName + "-line:" + "\(rowCount)" + "-msg:" + "\(message)" + "\n")
    #endif
}

//MARK: RGB色值
func RGB(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor{
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
}
let defaultBgColor = RGB(r: 246, g: 246, b: 246) //默认背景色
let defaultOrange = RGB(r: 252, g: 108, b: 33) //主题色


//MARK: 屏幕宽高
let Screen_Width = UIScreen.main.bounds.size.width
let Screen_Height = UIScreen.main.bounds.size.height

//MARK: 屏幕适配比例 比例系数375.0
func Radio(p:CGFloat) -> CGFloat{
    return p*(Screen_Width/375.0)
}
		
func Font(s:CGFloat) -> UIFont{
    return UIFont.systemFont(ofSize: s)
}






