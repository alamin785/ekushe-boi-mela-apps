//
//  BooklistViewController.swift
//  Ekushe
//
//  Created by alamin on 3/14/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit
class book{
    var storybookname:String?
    var edition:String?
    var release:String?
    var publications:String?
    
    init(storyname:String,editionname:String,releases:String,publi:String) {
        self.storybookname = storyname
        self.edition = editionname
        self.release = releases
        self.publications = publi
    }
}


class BooklistViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var booklisttable: UITableView!
    
    
    var bookarray = [book]()
    //var storybooks = ["paradoxical sajid", "java", "mysql"]
    
      //var name = ["film"]
    
 
 
   // var storybooks  = [String]()
    
    //var str : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = book(storyname: "paradox",editionname: "second",releases: "February",publi: "seba publication")
        bookarray.append(book1)
        let book2 = book(storyname: "java",editionname:"First Edition",releases: "january",publi: "rokomari publication")
        bookarray.append(book2)

     
        booklisttable.delegate = self
        booklisttable.dataSource = self
       
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookarray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let next = tableView.dequeueReusableCell(withIdentifier: "booklist") as! //BooklistTableViewCell
        
        var next = tableView.dequeueReusableCell(withIdentifier: "information") //as! menuTableViewCell
        //new.labeloutlet?.text = arr [indexPath.row]
        if next == nil{
            next = UITableViewCell(style: .subtitle, reuseIdentifier: "information")
        }
        
        next?.textLabel?.text = bookarray[indexPath.row].storybookname
         //next?.textLabel?.text = bookarray[indexPath.row].edition
        
        return next!
    }
    
 

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 305.5
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "information", sender: self)
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destion = segue.destination as? informationViewController{
    destion.booklistname = bookarray[(booklisttable.indexPathForSelectedRow?.row)!]
    }
    }

}
