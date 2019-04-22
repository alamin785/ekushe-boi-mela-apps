//
//  BooklistTableViewCell.swift
//  Ekushe
//
//  Created by alamin on 3/14/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit

class BooklistTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var imagecelloutlet: UIImageView!
    
    @IBOutlet weak var labelcelloutlet: UILabel!
    
    
    @IBOutlet weak var labelcelloutlet2: UILabel!
    @IBOutlet weak var imagecelloutlet2: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
