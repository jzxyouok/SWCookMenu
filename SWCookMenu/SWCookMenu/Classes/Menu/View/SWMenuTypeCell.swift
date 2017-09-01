//
//  SWMenuTypeCell.swift
//  SWCookMenu
//
//  Created by Selwyn Bi on 2017/9/1.
//  Copyright © 2017年 selwyn. All rights reserved.
//

import UIKit


class SWMenuTypeCell: UICollectionViewCell {
    
    var _titleLabel:UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        _titleLabel = UILabel.init(frame: contentView.bounds)
        _titleLabel.textAlignment = NSTextAlignment.center
        _titleLabel.font = Font(s: 14)
        
        contentView.addSubview(_titleLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
