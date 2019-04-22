//
//  topViewController.swift
//  Ekushe
//
//  Created by alamin on 4/6/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit

class topViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    

    @IBOutlet weak var collection: UICollectionView!
    
    let arrimg = [UIImage(named:"book1"),UIImage(named:"book2"),UIImage(named:"book3"),UIImage(named:"book4"),UIImage(named:"book5"),UIImage(named:"book6"),UIImage(named:"book7"),UIImage(named:"book8"),UIImage(named:"book9"),UIImage(named:"book10")] //as [Any]
    
    let lv = ["book1","book2","book3","book4","book5","book6","book7","book8","book9","book10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "press", for: indexPath) as! topratedCollectionViewCell
        cell.imgoutlet.image = arrimg[indexPath.row]
        cell.lboutlet.text = lv[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrimg.count
    }
}
