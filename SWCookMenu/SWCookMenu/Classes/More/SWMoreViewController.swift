//
//  SWMoreViewController.swift
//  SWCookMenu
//
//  Created by Selwyn Bi on 2017/8/31.
//  Copyright © 2017年 selwyn. All rights reserved.
//

import UIKit

//跳转key
let collection_key = "collection"
let record_key = "record"
let praise_key = "praise"

class SWMoreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dataSource = [[["title":"我的收藏","image":"More_Collection","key":collection_key],["title":"浏览记录","image":"More_Record","key":record_key]],[["title":"陛下，赏个好评吧","image":"More_Praise","key":praise_key]]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = defaultBgColor
        _initContainer()
    }

    func _initContainer() {
        
        let mainTableView = UITableView.init(frame: view.bounds, style: UITableViewStyle.plain)
        mainTableView.backgroundColor = defaultBgColor
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        view.addSubview(mainTableView)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell_id = "cell_id"
        var cell = tableView.dequeueReusableCell(withIdentifier: cell_id)
        if (cell == nil) {
             cell = UITableViewCell.init(style:.default, reuseIdentifier: cell_id)
        }
        
        cell?.textLabel?.text = dataSource[indexPath.section][indexPath.row]["title"]
        cell?.textLabel?.font = Font(s: 14)
        cell?.imageView?.image = UIImage.init(named: dataSource[indexPath.section][indexPath.row]["image"]!)
        
        cell?.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let key = dataSource[indexPath.section][indexPath.row]["key"]
        
        if (key == collection_key){
            let collectionVC = SWCollectionViewController()
            navigationController?.pushViewController(collectionVC, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section == 0) {
            return Radio(p: 10)
        }else
        {
            return Radio(p: 20)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Radio(p: 45)
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
