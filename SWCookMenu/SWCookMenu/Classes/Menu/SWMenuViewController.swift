//
//  SWMenuViewController.swift
//  SWCookMenu
//
//  Created by Selwyn Bi on 2017/8/31.
//  Copyright © 2017年 selwyn. All rights reserved.
//

import UIKit

class SWMenuViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var _collection:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        _initContainer()
    }
    
    func _initContainer() {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = Radio(p: 1)
        layout.minimumInteritemSpacing = Radio(p: 1)
        
        _collection = UICollectionView.init(frame: view.bounds, collectionViewLayout: layout)
        _collection.backgroundColor = defaultBgColor
        _collection.delegate = self
        _collection.dataSource = self
        
        _collection.register(SWMenuTypeCell.self, forCellWithReuseIdentifier: "type_cell_id")
        
        _collection.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "banner_header")
        
        view.addSubview(_collection)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "type_cell_id", for: indexPath) as! SWMenuTypeCell
        
        cell._titleLabel.text = "家常菜"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: (Screen_Width-3*Radio(p: 1))/4, height: Radio(p: 45))
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        var header = UICollectionReusableView()
        
        if kind == UICollectionElementKindSectionHeader{
            
            header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "banner_header", for: indexPath)
            let banner = SWMenuBannerView.init(frame: CGRect.init(x: 0, y: 0, width: Screen_Width, height: Radio(p: 200)))
            header.addSubview(banner)
        }
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.init(width: Screen_Width, height: Radio(p: 200))
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
