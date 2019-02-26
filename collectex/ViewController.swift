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
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        cell?.list.text = arr[indexPath.row]
            //String(indexPath.row)
        //cell!.list(with: arr[indexPath.row])
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

