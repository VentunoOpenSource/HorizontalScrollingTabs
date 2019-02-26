//
//  ViewController.swift
//  collectex
//
//  Created by Ventuno Technologies on 26/02/19.
//  Copyright © 2019 Ventuno Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate

{
    
    var arr:[String] = ["India","Australia","England","Newzealand","Pakistan"]
    var previous_index:IndexPath?
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        
        cell?.list.text = String(indexPath.row)
       
            
        return cell!
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Index \(indexPath.row)")
        
        //Fallback Background
        let FallbackCell: UICollectionViewCell? = collectionView.cellForItem(at: previous_index ?? indexPath)
        FallbackCell?.layer.backgroundColor = UIColor.white.cgColor
        
        //Chnage Current Background
        let cell: UICollectionViewCell? = collectionView.cellForItem(at: indexPath)
        //cell?.layer.cornerRadius = cellWidth / 2.0
        cell?.layer.backgroundColor = UIColor.red.cgColor
        
        self.previous_index = indexPath
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

