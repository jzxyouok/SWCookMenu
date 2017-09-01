//
//  SWMenuBannerView.swift
//  SWCookMenu
//
//  Created by Selwyn Bi on 2017/9/1.
//  Copyright © 2017年 selwyn. All rights reserved.
//

import UIKit
import Kingfisher

class SWMenuBannerView: UIView {

    var _scrollView:UIScrollView!
    var _images = ["https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1504269242690&di=991c7d3c98e2e1b98d3cc25fdff4138c&imgtype=0&src=http%3A%2F%2Fimgq.duitang.com%2Fuploads%2Fitem%2F201404%2F27%2F20140427142359_FXSrR.jpeg","https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1504269260998&di=1ebf5289d9ca4006bef9676e8d696dcb&imgtype=0&src=http%3A%2F%2Fjiangsu.china.com.cn%2Fuploadfile%2F2015%2F0802%2F1438516101805508.jpg", "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1504259258&di=22ca8a6cd5bcc11c529689c66ab254c7&src=http://www.sinaimg.cn/qc/photo_auto/chezhan/2015/66/20/52/190048_src.jpg"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        _initContainer()
    }
    
    //MARK: 初始化ScrollView
    func _initContainer() {
        
        _scrollView = UIScrollView.init(frame: self.bounds)
        _scrollView.contentSize = CGSize.init(width: Screen_Width*CGFloat(_images.count), height: Radio(p: 150))
        _scrollView.isPagingEnabled = true
        _scrollView.showsVerticalScrollIndicator = false
        _scrollView.showsHorizontalScrollIndicator = false
        
        for (index,image) in _images.enumerated() {
            
            let imageView = UIImageView.init(frame: CGRect.init(x: Screen_Width*CGFloat(index), y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
            imageView.backgroundColor = UIColor.orange
            imageView.contentMode = UIViewContentMode.scaleAspectFill
            
            let url = URL.init(string: image)
            imageView.kf.setImage(with: url)
            _scrollView.addSubview(imageView)
        }
        
        self.addSubview(_scrollView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
