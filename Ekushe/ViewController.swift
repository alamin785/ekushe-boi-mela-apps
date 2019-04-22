//
//  ViewController.swift
//  Ekushe
//
//  Created by alamin on 3/13/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var add : addmenubarViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        add = self.storyboard?.instantiateViewController(withIdentifier: "addmenubar") as! addmenubarViewController
        
    }

    @IBAction func actionmenu(_ sender: Any) {
        
        if AppDelegate .menubool{
            show()
        }else{
        close()

    }
        
    }
        
        func show(){
            
    self.addChild(add)
    self.view.addSubview(add.view)
    self.add.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
     AppDelegate.menubool =  false
            
        }
        func close(){
            
           self.add.view.removeFromSuperview()
            AppDelegate.menubool = true
            
        }
    
}

