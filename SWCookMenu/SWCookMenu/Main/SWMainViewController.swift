//
//  SWMainViewController.swift
//  SWCookMenu
//
//  Created by Selwyn Bi on 2017/8/31.
//  Copyright © 2017年 selwyn. All rights reserved.
//

import UIKit

class SWMainViewController: UITabBarController {

    let _menuVC = SWMenuViewController()
    let _typeVC = SWTypeViewController()
    let _moreVC = SWMoreViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = UIColor.white
        tabBar.tintColor = defaultOrange
        
        _initTabBarItem(controller: _menuVC, title: "菜谱大全", image: "Home_Menu", selectedImage: "Home_Menu_Selected")
        _initTabBarItem(controller: _typeVC, title: "菜谱类别", image: "Home_Type", selectedImage: "Home_Type_Selected")
        _initTabBarItem(controller: _moreVC, title: "更多", image: "Home_More", selectedImage: "Home_More_Selected")
    }
    
    
    func _initTabBarItem(controller:UIViewController, title:String, image:String, selectedImage:String) {
        
        controller.title = title
        controller.tabBarItem.image = UIImage.init(named: image)
        controller.tabBarItem.selectedImage = UIImage.init(named: selectedImage)
        
        let nav = UINavigationController.init(rootViewController: controller)
        
        addChildViewController(nav)
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
