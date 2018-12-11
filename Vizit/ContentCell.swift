//
//  ContentCell.swift
//  Vizit
//
//  Created by Sandesh Basnet on 12/10/18.
//  Copyright © 2018 Vizit. All rights reserved.
//

import UIKit

class ContentCell: UITableViewCell {
    
    
    @IBOutlet weak var contentType: UILabel!
    
    @IBOutlet weak var contentImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
