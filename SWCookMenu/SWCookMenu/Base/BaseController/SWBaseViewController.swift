//
//  SWBaseViewController.swift
//  SWCookMenu
//
//  Created by Selwyn Bi on 2017/8/31.
//  Copyright © 2017年 selwyn. All rights reserved.
//

import UIKit

class SWBaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.edgesForExtendedLayout = []
        _initNavBackItem()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func _initNavBackItem(){
        
        let backItem = UIBarButtonItem(title: "", style: .plain, target: self,
                                         action: #selector(backToPrevious))
        backItem.image = UIImage(named: "Nav_Back")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        //用于消除左边空隙，要不然按钮顶不到最前面
        let spacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        spacer.width = -10;
        
        self.navigationItem.leftBarButtonItems = [spacer, backItem]
    }
    
    //返回按钮点击响应
    func backToPrevious(){
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
