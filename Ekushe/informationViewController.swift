//
//  informationViewController.swift
//  Ekushe
//
//  Created by alamin on 3/15/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit

class informationViewController: UIViewController {
    
   var booklistname : book?
    
    @IBOutlet weak var edition: UILabel!
    @IBOutlet weak var releasedate: UILabel!
    @IBOutlet weak var publication: UILabel!
    @IBOutlet weak var labeloutlet: UILabel!
    @IBOutlet weak var imageoutlet: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
         labeloutlet.text = "\((booklistname?.storybookname)!)"
        edition.text = "\((booklistname?.edition)!)"
          releasedate.text = "\((booklistname?.release)!)"
          publication.text = "\((booklistname?.publications)!)"
        
        
    }
    

    @IBAction func top(_ sender: Any) {
        
        
            performSegue(withIdentifier: "top", sender: self)
            
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
          segue.destination as? topViewController
            
        }
    
    @IBAction func photo(_ sender: Any) {
        
        let photo:topphotoViewController = self.storyboard?.instantiateViewController(withIdentifier: "topphoto") as! topphotoViewController
        self.navigationController?.pushViewController(photo, animated: true)
        
    }
    
}
    


