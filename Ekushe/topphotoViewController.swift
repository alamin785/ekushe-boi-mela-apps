//
//  topphotoViewController.swift
//  Ekushe
//
//  Created by alamin on 4/7/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit

class topphotoViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

 
    @IBOutlet weak var colllabel: UICollectionView!
    
    let photoimg = [UIImage(named:"photo1"),UIImage(named:"photo2"),UIImage(named:"photo3"),UIImage(named:"photo4"),UIImage(named:"photo5"),UIImage(named:"photo6")] //as [Any]
    
    let photoname = ["humayun","rabindranath tagore","Mudhusudan Dutta","zafar iqbal","kazi nazrul islam","jasimuddin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colllabel.reloadData()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let photone = collectionView.dequeueReusableCell(withReuseIdentifier: "photo", for: indexPath) as! topphotoCollectionViewCell
        photone.photoimage?.image = photoimg[indexPath.row]
        photone.photolabel?.text = photoname[indexPath.row]
        
        return photone
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoimg.count
    }
}
