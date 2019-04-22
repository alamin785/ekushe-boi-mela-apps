//
//  addmenubarViewController.swift
//  Ekushe
//
//  Created by alamin on 3/13/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit


class addmenubarViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var arr = ["Story Books", "History Books", "Poem Books", "Novel Books"]
    
    //let img = [UIImage(named:"book2")]
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        table.delegate = self
        table.dataSource = self
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        
        let new = tableView.dequeueReusableCell(withIdentifier: "menu") as! menuTableViewCell
        new.labeloutlet?.text = arr [indexPath.row]
       // new.addimage?.image = img[indexPath.row]
        return new
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 97.5
    }
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let booklist : BooklistViewController = self.storyboard?.instantiateViewController(withIdentifier: "BooklistViewController") as! BooklistViewController
        self.navigationController?.pushViewController(booklist, animated: true)
       

        
    }
}
